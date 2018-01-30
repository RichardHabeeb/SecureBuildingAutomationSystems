#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <benchmark.h>
#include <api/syscall.h>
#include <api/failures.h>
#include <api/faults.h>
#include <kernel/cspace.h>
#include <kernel/faulthandler.h>
#include <kernel/thread.h>
#include <kernel/vspace.h>
#include <machine/io.h>
#include <object/interrupt.h>
#include <model/statedata.h>
#include <string.h>

#ifdef DEBUG
#include <arch/machine/capdl.h>
#endif

/* The haskell function 'handleEvent' is split into 'handleXXX' variants
 * for each event causing a kernel entry */

exception_t
handleInterruptEntry(void)
{
    irq_t irq;

    irq = getActiveIRQ();
    if (irq != irqInvalid) {
        handleInterrupt(irq);
    } else {
        printf("Spurious interrupt\n");
        handleSpuriousIRQ();
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleUnknownSyscall(word_t w)
{
#ifdef DEBUG
    if (w == SysDebugPutChar) {
        kernel_putchar(getRegister(ksCurThread, capRegister));
        return EXCEPTION_NONE;
    }
    if (w == SysDebugHalt) {
        printf("Debug halt syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
        while(1){
            handle_reset_on_serial();
        }
        halt();
    }
    if (w == SysDebugSnapshot) {
        printf("Debug snapshot syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
        capDL();
        return EXCEPTION_NONE;
    }
    if (w == SysDebugCapIdentify) {
        word_t cptr = getRegister(ksCurThread, capRegister);
        lookupCapAndSlot_ret_t lu_ret = lookupCapAndSlot(ksCurThread, cptr);
        uint32_t cap_type = cap_get_capType(lu_ret.cap);
        setRegister(ksCurThread, capRegister, cap_type);
        return EXCEPTION_NONE;
    }
    if (w == SysDebugNameThread) {
        /* This is a syscall meant to aid debugging, so if anything goes wrong
         * then assume the system is completely misconfigured and halt */
        const char *name;
        word_t cptr = getRegister(ksCurThread, capRegister);
        lookupCapAndSlot_ret_t lu_ret = lookupCapAndSlot(ksCurThread, cptr);
        /* ensure we got a TCB cap */
        uint32_t cap_type = cap_get_capType(lu_ret.cap);
        if (cap_type != cap_thread_cap) {
            userError("SysDebugNameThread: cap is not a TCB, halting");
            halt();
        }
        /* Add 1 to the IPC buffer to skip the message info word */
        name = (const char*)(lookupIPCBuffer(true, ksCurThread) + 1);
        if (!name) {
            userError("SysDebugNameThread: Failed to lookup IPC buffer, halting");
            halt();
        }
        /* ensure the name isn't too long */
        if (name[strnlen(name, seL4_MsgMaxLength * sizeof(word_t))] != '\0') {
            userError("SysDebugNameThread: Name too long, halting");
            halt();
        }
        setThreadName(TCB_PTR(cap_thread_cap_get_capTCBPtr(lu_ret.cap)), name);
        return EXCEPTION_NONE;
    }
#endif

#ifdef DANGEROUS_CODE_INJECTION
    if (w == SysDebugRun) {
        ((void (*) (void *))getRegister(ksCurThread, capRegister))((void*)getRegister(ksCurThread, msgInfoRegister));
        return EXCEPTION_NONE;
    }
#endif

#ifdef CONFIG_BENCHMARK
    if (w == SysBenchmarkResetLog) {
        ksLogIndex = 0;
        return EXCEPTION_NONE;
    } else if (w == SysBenchmarkDumpLog) {
        int i;
        word_t *buffer = lookupIPCBuffer(true, ksCurThread);
        word_t start = getRegister(ksCurThread, capRegister);
        word_t size = getRegister(ksCurThread, msgInfoRegister);
        word_t logSize = ksLogIndex > MAX_LOG_SIZE ? MAX_LOG_SIZE : ksLogIndex;

        if (buffer == NULL) {
            userError("Cannot dump benchmarking log to a thread without an ipc buffer\n");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (start > logSize) {
            userError("Start > logsize\n");
            current_syscall_error.type = seL4_InvalidArgument;
            return EXCEPTION_SYSCALL_ERROR;
        }

        /* Assume we have access to an ipc buffer 1024 words big.
         * Do no write to the first 4 bytes as these are overwritten */
        if (size > MAX_IPC_BUFFER_STORAGE) {
            size = MAX_IPC_BUFFER_STORAGE;
        }

        /* trim to size */
        if ((start + size) > logSize) {
            size = logSize - start;
        }

        /* write to ipc buffer */
        for (i = 0; i < size; i++) {
            buffer[i + 1] = ksLog[i + start];
        }

        /* Return the amount written */
        setRegister(ksCurThread, capRegister, size);
        return EXCEPTION_NONE;
    } else if (w == SysBenchmarkLogSize) {
        /* Return the amount of log items we tried to log (may exceed max size) */
        setRegister(ksCurThread, capRegister, ksLogIndex);
        return EXCEPTION_NONE;
    }
#endif /* CONFIG_BENCHMARK */

    current_fault = fault_unknown_syscall_new(w);
    handleFault(ksCurThread);

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleUserLevelFault(word_t w_a, word_t w_b)
{
    current_fault = fault_user_exception_new(w_a, w_b);
    handleFault(ksCurThread);

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleVMFaultEvent(vm_fault_type_t vm_faultType)
{
    exception_t status;

    status = handleVMFault(ksCurThread, vm_faultType);
    if (status != EXCEPTION_NONE) {
        handleFault(ksCurThread);
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}


static exception_t
handleInvocation(bool_t isCall, bool_t isBlocking)
{
    message_info_t info;
    cptr_t cptr;
    lookupCapAndSlot_ret_t lu_ret;
    word_t *buffer;
    exception_t status;
    word_t length;
    tcb_t *thread;

    thread = ksCurThread;

    info = messageInfoFromWord(getRegister(thread, msgInfoRegister));
    cptr = getRegister(thread, capRegister);

    /* faulting section */
    lu_ret = lookupCapAndSlot(thread, cptr);

    if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
        userError("Invocation of invalid cap #%d.", (int)cptr);
        current_fault = fault_cap_fault_new(cptr, false);

        if (isBlocking) {
            handleFault(thread);
        }

        return EXCEPTION_NONE;
    }

    buffer = lookupIPCBuffer(false, thread);

    status = lookupExtraCaps(thread, buffer, info);

    if (unlikely(status != EXCEPTION_NONE)) {
        userError("Lookup of extra caps failed.");
        if (isBlocking) {
            handleFault(thread);
        }
        return EXCEPTION_NONE;
    }

    /* Syscall error/Preemptible section */
    length = message_info_get_msgLength(info);
    if (unlikely(length > n_msgRegisters && !buffer)) {
        length = n_msgRegisters;
    }
    status = decodeInvocation(message_info_get_msgLabel(info), length,
                              cptr, lu_ret.slot, lu_ret.cap,
                              current_extra_caps, isBlocking, isCall,
                              buffer);

    if (unlikely(status == EXCEPTION_PREEMPTED)) {
        return status;
    }

    if (unlikely(status == EXCEPTION_SYSCALL_ERROR)) {
        if (isCall) {
            replyFromKernel_error(thread);
        }
        return EXCEPTION_NONE;
    }

    if (unlikely(
                thread_state_get_tsType(thread->tcbState) == ThreadState_Restart)) {
        if (isCall) {
            replyFromKernel_success_empty(thread);
        }
        setThreadState(thread, ThreadState_Running);
    }

    return EXCEPTION_NONE;
}

static void
handleReply(void)
{
    cte_t *callerSlot;
    cap_t callerCap;

    callerSlot = TCB_PTR_CTE_PTR(ksCurThread, tcbCaller);
    callerCap = callerSlot->cap;
    switch (cap_get_capType(callerCap)) {
    case cap_reply_cap: {
        tcb_t *caller;

        if (cap_reply_cap_get_capReplyMaster(callerCap)) {
            break;
        }
        caller = TCB_PTR(cap_reply_cap_get_capTCBPtr(callerCap));
        /* Haskell error:
         * "handleReply: caller must not be the current thread" */
        assert(caller != ksCurThread);
        doReplyTransfer(ksCurThread, caller, callerSlot);
        //deleteCallerCap(ksCurThread);
        return;
    }

    case cap_null_cap:
        userError("Attempted reply operation when no reply cap present.");
        return;

    default:
        break;
    }

    fail("handleReply: invalid caller cap");
}

static void
handleWait(bool_t isBlocking)
{
    word_t epCPtr;
    lookupCap_ret_t lu_ret;

    epCPtr = getRegister(ksCurThread, capRegister);

    lu_ret = lookupCap(ksCurThread, epCPtr);
    if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
        /* current_lookup_fault has been set by lookupCap */
        current_fault = fault_cap_fault_new(epCPtr, true);
        handleFault(ksCurThread);
        return;
    }

    switch (cap_get_capType(lu_ret.cap)) {
    case cap_endpoint_cap:

        if (unlikely(!cap_endpoint_cap_get_capCanReceive(lu_ret.cap) || !isBlocking)) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = fault_cap_fault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }

        deleteCallerCap(ksCurThread);
        receiveIPC(ksCurThread, lu_ret.cap);
        break;

    case cap_async_endpoint_cap: {
        async_endpoint_t *aepptr;
        tcb_t *boundTCB;
        aepptr = AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(lu_ret.cap));
        boundTCB = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aepptr);
        if (unlikely(!cap_async_endpoint_cap_get_capAEPCanReceive(lu_ret.cap)
                     || (boundTCB && boundTCB != ksCurThread))) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = fault_cap_fault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }

        receiveAsyncIPC(ksCurThread, lu_ret.cap, isBlocking);
        break;
    }
    default:
        current_lookup_fault = lookup_fault_missing_capability_new(0);
        current_fault = fault_cap_fault_new(epCPtr, true);
        handleFault(ksCurThread);
        break;
    }
}

static void
handleYield(void)
{
    tcbSchedDequeue(ksCurThread);
    tcbSchedAppend(ksCurThread);
    rescheduleRequired();
}

exception_t
handleSyscall(syscall_t syscall)
{
    exception_t ret;
    irq_t irq;

    switch (syscall) {
    case SysSend:
        ret = handleInvocation(false, true);
        if (unlikely(ret != EXCEPTION_NONE)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysNBSend:
        ret = handleInvocation(false, false);
        if (unlikely(ret != EXCEPTION_NONE)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysCall:
        ret = handleInvocation(true, true);
        if (unlikely(ret != EXCEPTION_NONE)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysWait:
        handleWait(true);
        break;

    case SysReply:
        handleReply();
        break;

    case SysReplyWait:
        handleReply();
        handleWait(true);
        break;

    case SysPoll:
        handleWait(false);
        break;

    case SysYield:
        handleYield();
        break;

    default:
        fail("Invalid syscall");
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/benchmark.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#ifdef CONFIG_BENCHMARK

#include <benchmark.h>
#include <arch/benchmark.h>

uint32_t ksEntry;
uint32_t ksExit;
uint32_t ksLogIndex = 0;
uint32_t *ksLog;

#endif /* CONFIG_BENCHMARK */


#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <object.h>
#include <kernel/vspace.h>
#include <api/faults.h>
#include <api/syscall.h>

bool_t
handleFaultReply(tcb_t *receiver, tcb_t *sender)
{
    message_info_t tag;
    word_t label;
    fault_t fault;
    unsigned int length;

    /* These lookups are moved inward from doReplyTransfer */
    tag = messageInfoFromWord(getRegister(sender, msgInfoRegister));
    label = message_info_get_msgLabel(tag);
    length = message_info_get_msgLength(tag);
    fault = receiver->tcbFault;

    switch (fault_get_faultType(fault)) {
    case fault_cap_fault:
        return true;

    case fault_vm_fault:
        return true;

    case fault_unknown_syscall: {
        unsigned int i;
        register_t r;
        word_t v;
        word_t *sendBuf;

        sendBuf = lookupIPCBuffer(false, sender);

        /* Assumes n_syscallMessage > n_msgRegisters */
        for (i = 0; i < length && i < n_msgRegisters; i++) {
            r = syscallMessage[i];
            v = getRegister(sender, msgRegisters[i]);
            setRegister(receiver, r, sanitiseRegister(r, v));
        }

        if (sendBuf) {
            for (; i < length && i < n_syscallMessage; i++) {
                r = syscallMessage[i];
                v = sendBuf[i + 1];
                setRegister(receiver, r, sanitiseRegister(r, v));
            }
        }
    }
    return (label == 0);

    case fault_user_exception: {
        unsigned int i;
        register_t r;
        word_t v;

        /* Assumes n_exceptionMessage <= n_msgRegisters */
        for (i = 0; i < length && i < n_exceptionMessage; i++) {
            r = exceptionMessage[i];
            v = getRegister(sender, msgRegisters[i]);
            setRegister(receiver, r, sanitiseRegister(r, v));
        }
    }
    return (label == 0);

    default:
        fail("Invalid fault");
    }
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#ifdef CONFIG_BENCHMARK

#include <arch/benchmark.h>

void
armv_init_ccnt(void)
{
    uint32_t val, pmcr;

    /* enable them */
    val = 1;
    asm volatile (
        "mcr p15, 0, %0, c9, c14, 0\n"
        :
        : "r" (val)
    );

    /* reset to 0 and make available at user level */
    pmcr = (1 << 2) | 1;
    asm volatile (
        "mcr p15, 0, %0, c9, c12, 0\n"
        : /* no outputs */
        : "r" (pmcr)
    );

    /* turn the cycle counter on */
    val = (1U << 31);
    asm volatile (
        "mcr p15, 0, %0, c9, c12, 1\n"
        : /* no outputs */
        : "r" (val)
    );
}

#endif /* CONFIG_BENCHMARK */
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <arch/machine/hardware.h>

/** MODIFIES: [*] */
static inline void invalidateByWSL(word_t wsl)
{
    asm volatile("mcr p15, 0, %0, c7, c6, 2" : : "r"(wsl));
}
/** MODIFIES: [*] */
static inline void cleanByWSL(word_t wsl)
{
    asm volatile("mcr p15, 0, %0, c7, c10, 2" : : "r"(wsl));
}
/** MODIFIES: [*] */
static inline void cleanInvalidateByWSL(word_t wsl)
{
    asm volatile("mcr p15, 0, %0, c7, c14, 2" : : "r"(wsl));
}

static inline word_t readCLID(void)
{
    word_t CLID;
    asm volatile("mrc p15, 1, %0, c0, c0, 1" : "=r"(CLID));
    return CLID;
}

#define LOUU(x)    (((x) >> 27)        & MASK(3))
#define LOC(x)     (((x) >> 24)        & MASK(3))
#define LOUIS(x)   (((x) >> 21)        & MASK(3))
#define CTYPE(x,n) (((x) >> (n*3))     & MASK(3))

enum arm_cache_type {
    ARMCacheNone = 0,
    ARMCacheI =    1,
    ARMCacheD =    2,
    ARMCacheID =   3,
    ARMCacheU =    4,
};

static inline word_t readCacheSize(int level, bool_t instruction)
{
    word_t size, csselr_old;
    /* Save CSSELR */
    asm volatile("mrc p15, 2, %0, c0, c0, 0" : "=r"(csselr_old));
    /* Select cache level */
    asm volatile("mcr p15, 2, %0, c0, c0, 0" : : "r"((level << 1) | instruction));
    /* Read 'size' */
    asm volatile("mrc p15, 1, %0, c0, c0, 0" : "=r"(size));
    /* Restore CSSELR */
    asm volatile("mcr p15, 2, %0, c0, c0, 0" : : "r"(csselr_old));
    return size;
}

/* Number of bits to index within a cache line.  The field is log2(nwords) - 2
 * , and thus by adding 4 we get log2(nbytes). */
#define LINEBITS(s) (( (s)        & MASK(3))  + 4)
/* Associativity, field is assoc - 1. */
#define ASSOC(s)    ((((s) >> 3)  & MASK(10)) + 1)
/* Number of sets, field is nsets - 1. */
#define NSETS(s)    ((((s) >> 13) & MASK(15)) + 1)

void
clean_D_PoU(void)
{
    int clid = readCLID();
    int lou = LOUU(clid);
    int l;

    for (l = 0; l < lou; l++) {
        if (CTYPE(clid, l) > ARMCacheI) {
            word_t s = readCacheSize(l, 0);
            int lbits = LINEBITS(s);
            int assoc = ASSOC(s);
            int assoc_bits = wordBits - CLZ(assoc - 1);
            int nsets = NSETS(s);
            int w;

            for (w = 0; w < assoc; w++) {
                int s;

                for (s = 0; s < nsets; s++) {
                    cleanByWSL((w << (32 - assoc_bits)) |
                               (s << lbits) | (l << 1));
                }
            }
        }
    }
}

void
cleanInvalidate_D_PoC(void)
{
    int clid = readCLID();
    int loc = LOC(clid);
    int l;

    for (l = 0; l < loc; l++) {
        if (CTYPE(clid, l) > ARMCacheI) {
            word_t s = readCacheSize(l, 0);
            int lbits = LINEBITS(s);
            int assoc = ASSOC(s);
            int assoc_bits = wordBits - CLZ(assoc - 1);
            int nsets = NSETS(s);
            int w;

            for (w = 0; w < assoc; w++) {
                int s;

                for (s = 0; s < nsets; s++) {
                    cleanInvalidateByWSL((w << (32 - assoc_bits)) |
                                         (s << lbits) | (l << 1));
                }
            }
        }
    }
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <machine/hardware.h>
#include <arch/user_access.h>

#define PMUSERENR_ENABLE BIT(0)

#define CNTKCTL_PL0PCTEN BIT(0)
#define CNTKCTL_PL0VCTEN BIT(1)
#define CNTKCTL_PL0VTEN  BIT(8)
#define CNTKCTL_PL0PTEN  BIT(9)

#define ID_DFR0_PMU_MASK (0xf << 28)
#define ID_DFR0_PMU_NONE (0xf << 28)

#define ID_PFR1_GENERIC_TIMER BIT(16)

static void
check_export_pmu(void)
{
#ifdef CONFIG_EXPORT_PMU_USER
    /* Export performance counters */
    uint32_t v;
    v = PMUSERENR_ENABLE;
    MCR(PMUSERENR, v);
#endif
}

static void
check_export_arch_timer(void)
{
    uint32_t v;
    MRC(CNTKCTL, v);
#ifdef CONFIG_EXPORT_PCNT_USER
    v |= CNTKCTL_PL0PCTEN;
#endif
#ifdef CONFIG_EXPORT_VCNT_USER
    v |= CNTKCTL_PL0VCTEN;
#endif
    MCR(CNTKCTL, v);
}

void
armv_init_user_access(void)
{
    uint32_t v;
    /* Performance Monitoring Unit */
    MRC(ID_DFR0, v);
    if ((v & ID_DFR0_PMU_MASK) != ID_DFR0_PMU_NONE) {
        check_export_pmu();
    }
    /* Arch timers */
    MRC(ID_PFR1, v);
    if (v & ID_PFR1_GENERIC_TIMER) {
        check_export_arch_timer();
    }
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <util.h>
#include <api/syscall.h>
#include <kernel/thread.h>
#include <machine/io.h>
#include <machine/profiler.h>
#include <machine/registerset.h>
#include <model/statedata.h>
#include <object/cnode.h>
#include <object/structures.h>
#include <config.h>
#include <assert.h>
#include <arch/fastpath/fastpath.h>
#include <armv/context_switch.h>
#include <arch/machine/registerset.h>

/* When building the fastpath the assembler in traps.S makes these
 * assumptions. Because compile_asserts are hard to do in assembler,
 * we place them here */
compile_assert(SysCall_Minus1, SysCall == -1)
compile_assert(SysReplyWait_Minus2, SysReplyWait == -2)

/* Return back to user. */
__attribute__((noreturn))
static inline void
fastpath_restore(word_t badge, word_t msgInfo, tcb_t *cur_thread)
{
    register word_t r0 asm ("r0") = badge;
    register word_t r1 asm ("r1") = msgInfo;
    asm volatile (
        "add sp, %[cur_thread], %[offset]\n\t"
        "ldmdb sp, {r2-lr}^\n\t"
        "rfeia sp\n\t"
        :
        : [offset] "i" (PT_LR_svc),
        [cur_thread] "r" (cur_thread),
        "r"(r0), "r"(r1)
        : "memory" );

    /*
     * We need to avoid a warning about returning in a noreturn
     * function.  gcc provides this neat builtin since 4.5,
     * __builtin_unreachable(), but using that currently generates a
     * slower fastpath on ARM11.  Should compilers change, we should
     * test that again.
     */

    while (1);
}

/* Fastpath cap lookup.  Returns a null_cap on failure. */
static inline cap_t FORCE_INLINE
lookup_fp(cap_t cap, cptr_t cptr)
{
    word_t cptr2;
    cte_t *slot;
    word_t radixBits, bits;
    word_t radix;

    if (unlikely(! cap_capType_equals(cap, cap_cnode_cap))) {
        return cap_null_cap_new();
    }

    bits = cap_cnode_cap_get_capCNodeGuardSize(cap);
    do {
        radixBits = cap_cnode_cap_get_capCNodeRadix(cap);
        cptr2 = cptr << bits;
        radix = cptr2 >> (32 - radixBits);
        slot = CTE_PTR(cap_cnode_cap_get_capCNodePtr(cap)) + radix;

        cap = slot->cap;
        bits += radixBits;
    } while (unlikely(bits < 32) && likely(cap_capType_equals(cap, cap_cnode_cap)));

    return cap;
}

static inline uint32_t
cap_page_directory_cap_get_capPDBasePtr_np(cap_t cap)
{
    return (cap.words[0] & 0xffffffe0);
}

/** DONT_TRANSLATE */
static inline void
clearExMonitor_fp(void)
{
    uint32_t temp1 = 0;
    uint32_t temp2;
    asm volatile (
        "strex %[output], %[mem], [%[mem]]"
        : [output]"+r"(temp1)
        : [mem]"r"(&temp2)
    );
}

static inline void FORCE_INLINE
switchToThread_fp(tcb_t *thread, pde_t *cap_pd, pde_t stored_hw_asid)
{
    hw_asid_t hw_asid;

    hw_asid = pde_pde_invalid_get_stored_hw_asid(stored_hw_asid);

    armv_contextSwitch_HWASID(cap_pd, hw_asid);

    *armKSGlobalsFrame = thread->tcbIPCBuffer;
    ksCurThread = thread;
    clearExMonitor_fp();
}

static inline void
thread_state_ptr_set_tsType_np(thread_state_t *ts_ptr, word_t tsType)
{
    ts_ptr->words[0] = tsType;
}

static inline void
thread_state_ptr_mset_blockingIPCEndpoint_tsType(thread_state_t *ts_ptr,
                                                 word_t ep_ref,
                                                 word_t tsType)
{
    ts_ptr->words[0] = ep_ref | tsType;
}

static inline void
thread_state_ptr_set_blockingIPCDiminish_np(thread_state_t *ts_ptr, word_t dim)
{
    ts_ptr->words[2] = dim;
}

static inline void
cap_reply_cap_ptr_new_np(cap_t *cap_ptr, word_t capCallerSlot)
{
    /* 1 is capReplyMaster */
    cap_ptr->words[1] = CTE_REF(capCallerSlot) | 1;
    cap_ptr->words[0] = cap_reply_cap;
}

static inline void
cap_reply_cap_ptr_new_np2(cap_t *cap_ptr, word_t isMaster, word_t capTCBPtr)
{
    cap_ptr->words[0] = TCB_REF(capTCBPtr) | cap_reply_cap;
    cap_ptr->words[1] = isMaster;
}

static inline void
endpoint_ptr_mset_epQueue_tail_state(endpoint_t *ep_ptr, word_t epQueue_tail,
                                     word_t state)
{
    ep_ptr->words[0] = epQueue_tail | state;
}

static inline void
endpoint_ptr_set_epQueue_head_np(endpoint_t *ep_ptr, word_t epQueue_head)
{
    ep_ptr->words[1] = epQueue_head;
}

static inline bool_t
isValidVTableRoot_fp(cap_t pd_cap)
{
    return (pd_cap.words[0] & MASK(4)) == cap_page_directory_cap;
}

/* This is an accelerated check that msgLength, which appears
   in the bottom of the msgInfo word, is <= 4 and that msgExtraCaps
   which appears above it is zero. We are assuming that n_msgRegisters == 4
   for this check to be useful. */
compile_assert (n_msgRegisters_eq_4, n_msgRegisters == 4)
static inline int
fastpath_mi_check(word_t msgInfo)
{
    return (msgInfo & MASK(seL4_MsgLengthBits + seL4_MsgExtraCapBits)) > 4;
}

static inline void
fastpath_copy_mrs(unsigned int length, tcb_t *src, tcb_t *dest)
{
    if (likely(!length)) {
        return;
    }

    assert(length <= 4);
    assert(msgRegisters[0] == 2);
    assert(msgRegisters[1] == 3);
    assert(msgRegisters[2] == 4);
    assert(msgRegisters[3] == 5);

    /* Unrolling the loop manually speeds up all 1-4-length IPCs. */
    if (length >= 1) {
        setRegister(dest, 2, getRegister(src, 2));
    }
    if (length >= 2) {
        setRegister(dest, 3, getRegister(src, 3));
    }
    if (length >= 3) {
        setRegister(dest, 4, getRegister(src, 4));
    }
    if (length >= 4) {
        setRegister(dest, 5, getRegister(src, 5));
    }
}

void
fastpath_call(word_t cptr, word_t msgInfo)
{
    message_info_t info;
    cap_t ep_cap;
    endpoint_t *ep_ptr;
    unsigned int length;
    tcb_t *dest;
    word_t badge;
    cte_t *replySlot, *callerSlot;
    cap_t newVTable;
    pde_t *cap_pd;
    pde_t stored_hw_asid;
    uint32_t fault_type;
    uint32_t blockingIPCDiminishCaps;

    /*
     * Get message info, length, and fault type.
     *
     * Note that we don't ever need to read the contents of the
     * msgCapsUnwrapped field. However, when we return to the user, they should
     * be set to 0. We can save a few cycles by zeroing those bits out now.
     */
    info = message_info_set_msgCapsUnwrapped(messageInfoFromWord_raw(msgInfo), 0);
    length = message_info_get_msgLength(info);
    fault_type = fault_get_faultType(ksCurThread->tcbFault);

    /* Check there's no extra caps, the length is ok and there's no
     * saved fault. */
    if (unlikely(fastpath_mi_check(msgInfo) ||
                 fault_type != fault_null_fault)) {
        slowpath(SysCall);
    }

    /* Check there is nothing waiting on the async endpoint */
    if (ksCurThread->boundAsyncEndpoint &&
            async_endpoint_ptr_get_state(ksCurThread->boundAsyncEndpoint) == AEPState_Active) {
        slowpath(SysCall);
    }

    /* Lookup the cap */
    ep_cap = lookup_fp(TCB_PTR_CTE_PTR(ksCurThread, tcbCTable)->cap, cptr);

    /* Check it's an endpoint */
    if (unlikely(! cap_capType_equals(ep_cap, cap_endpoint_cap) ||
                 !cap_endpoint_cap_get_capCanSend(ep_cap))) {
        slowpath(SysCall);
    }

    /* Get the endpoint address */
    ep_ptr = EP_PTR(cap_endpoint_cap_get_capEPPtr(ep_cap));

    /* Get the destination thread, which is only going to be valid
     * if the endpoint is valid. */
    dest = TCB_PTR(endpoint_ptr_get_epQueue_head(ep_ptr));

    /* Check that there's a thread waiting to receive */
    if (unlikely(endpoint_ptr_get_state(ep_ptr) != EPState_Recv)) {
        slowpath(SysCall);
    }

    /* Get destination thread.*/
    newVTable = TCB_PTR_CTE_PTR(dest, tcbVTable)->cap;

    /* Get Page Directory. */
    cap_pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr_np(newVTable));

    blockingIPCDiminishCaps = thread_state_ptr_get_blockingIPCDiminishCaps(&dest->tcbState);

    /* Ensure that the destination has a valid VTable. */
    if (unlikely(! isValidVTableRoot_fp(newVTable))) {
        slowpath(SysCall);
    }

    /* Get HW ASID */
    stored_hw_asid = cap_pd[PD_ASID_SLOT];

    /* Ensure the destination has a higher/equal priority to us. */
    if (unlikely(dest->tcbPriority < ksCurThread->tcbPriority)) {
        slowpath(SysCall);
    }

    /* Ensure that the endpoint has standard non-diminishing rights. */
    if (unlikely(!cap_endpoint_cap_get_capCanGrant(ep_cap) ||
                 blockingIPCDiminishCaps)) {
        slowpath(SysCall);
    }

    if (unlikely(!pde_pde_invalid_get_stored_asid_valid(stored_hw_asid))) {
        slowpath(SysCall);
    }

    /* Ensure the original caller is in the current domain and can be scheduled directly. */
    if (CONFIG_NUM_DOMAINS > 1 && unlikely(dest->tcbDomain != ksCurDomain)) {
        slowpath(SysCall);
    }

    /*
     * --- POINT OF NO RETURN ---
     *
     * At this stage, we have committed to performing the IPC.
     */

    /* Dequeue the destination. */
    endpoint_ptr_set_epQueue_head_np(ep_ptr, TCB_REF(dest->tcbEPNext));
    if (unlikely(dest->tcbEPNext)) {
        dest->tcbEPNext->tcbEPPrev = NULL;
    } else {
        endpoint_ptr_mset_epQueue_tail_state(ep_ptr, 0, EPState_Idle);
    }

    badge = cap_endpoint_cap_get_capEPBadge(ep_cap);

    /* Block sender */
    thread_state_ptr_set_tsType_np(&ksCurThread->tcbState,
                                   ThreadState_BlockedOnReply);

    /* Get sender reply slot */
    replySlot = TCB_PTR_CTE_PTR(ksCurThread, tcbReply);

    /* Get dest caller slot */
    callerSlot = TCB_PTR_CTE_PTR(dest, tcbCaller);

    /* Insert reply cap */
    cap_reply_cap_ptr_new_np2(&callerSlot->cap, 0, TCB_REF(ksCurThread));
    cap_reply_cap_ptr_new_np(&replySlot->cap, CTE_REF(callerSlot));

    fastpath_copy_mrs (length, ksCurThread, dest);

    /* Dest thread is set Running, but not queued. */
    thread_state_ptr_set_tsType_np(&dest->tcbState,
                                   ThreadState_Running);
    switchToThread_fp(dest, cap_pd, stored_hw_asid);

    msgInfo = wordFromMessageInfo(info);
    fastpath_restore(badge, msgInfo, ksCurThread);
}

void
fastpath_reply_wait(word_t cptr, word_t msgInfo)
{
    message_info_t info;
    cap_t ep_cap;
    endpoint_t *ep_ptr;
    unsigned int length;
    cte_t *callerSlot;
    cte_t *replySlot;
    cap_t callerCap;
    tcb_t *caller;
    word_t badge;
    tcb_t *endpointTail;
    uint32_t fault_type;

    cap_t newVTable;
    pde_t *cap_pd;
    pde_t stored_hw_asid;

    /*
     * Get message info, length, and fault type.
     *
     * Note that we don't ever need to read the contents of the
     * msgCapsUnwrapped field. However, when we return to the user, they should
     * be set to 0. We can save a few cycles by zeroing those bits out now.
     */
    info = message_info_set_msgCapsUnwrapped(messageInfoFromWord_raw(msgInfo), 0);
    length = message_info_get_msgLength(info);
    fault_type = fault_get_faultType(ksCurThread->tcbFault);

    /* Check there's no extra caps, the length is ok and there's no
     * saved fault. */
    if (unlikely(fastpath_mi_check(msgInfo) ||
                 fault_type != fault_null_fault)) {
        slowpath(SysReplyWait);
    }

    /* Lookup the cap */
    ep_cap = lookup_fp(TCB_PTR_CTE_PTR(ksCurThread, tcbCTable)->cap,
                       cptr);

    /* Check it's an endpoint */
    if (unlikely(!cap_capType_equals(ep_cap, cap_endpoint_cap) ||
                 !cap_endpoint_cap_get_capCanReceive(ep_cap))) {
        slowpath(SysReplyWait);
    }

    /* Check there is nothing waiting on the async endpoint */
    if (ksCurThread->boundAsyncEndpoint &&
            async_endpoint_ptr_get_state(ksCurThread->boundAsyncEndpoint) == AEPState_Active) {
        slowpath(SysReplyWait);
    }

    /* Get the endpoint address */
    ep_ptr = EP_PTR(cap_endpoint_cap_get_capEPPtr(ep_cap));
    callerSlot = TCB_PTR_CTE_PTR(ksCurThread, tcbCaller);
    callerCap = callerSlot->cap;

    /* Check that there's not a thread waiting to send */
    if (unlikely(endpoint_ptr_get_state(ep_ptr) == EPState_Send)) {
        slowpath(SysReplyWait);
    }

    /* Only reply if the reply cap is valid. */
    if (unlikely(callerCap.words[0] == 0)) {
        slowpath(SysReplyWait);
    }

    /* Determine who the caller is. */
    caller = TCB_PTR(cap_reply_cap_get_capTCBPtr(callerCap));

    /* Get reply slot from the caller */
    replySlot = TCB_PTR_CTE_PTR(caller, tcbReply);

    /* Get destination thread.*/
    newVTable = TCB_PTR_CTE_PTR(caller, tcbVTable)->cap;

    /* Get Page Directory. */
    cap_pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr_np(newVTable));

    /* Check that the caller has not faulted, in which case a fault
       reply is generated instead. */
    fault_type = fault_get_faultType(caller->tcbFault);
    if (unlikely(fault_type != fault_null_fault)) {
        slowpath(SysReplyWait);
    }

    /* Ensure that the destination has a valid MMU. */
    if (unlikely(! isValidVTableRoot_fp (newVTable))) {
        slowpath(SysReplyWait);
    }

    /* Get HWASID. */
    stored_hw_asid = cap_pd[PD_ASID_SLOT];

    /* Ensure the original caller can be scheduled directly. */
    if (unlikely(caller->tcbPriority < ksCurThread->tcbPriority)) {
        slowpath(SysReplyWait);
    }

    /* Ensure the HWASID is valid. */
    if (unlikely(!pde_pde_invalid_get_stored_asid_valid(stored_hw_asid))) {
        slowpath(SysReplyWait);
    }

    /* Ensure the original caller is in the current domain and can be scheduled directly. */
    if (CONFIG_NUM_DOMAINS > 1 && unlikely(caller->tcbDomain != ksCurDomain)) {
        slowpath(SysReplyWait);
    }

    /*
     * --- POINT OF NO RETURN ---
     *
     * At this stage, we have committed to performing the IPC.
     */

    /* Set thread state to BlockedOnReceive */
    thread_state_ptr_mset_blockingIPCEndpoint_tsType(
        &ksCurThread->tcbState, (word_t)ep_ptr, ThreadState_BlockedOnReceive);
    thread_state_ptr_set_blockingIPCDiminish_np(
        &ksCurThread->tcbState, ! cap_endpoint_cap_get_capCanSend(ep_cap));

    /* Place the thread in the endpoint queue */
    endpointTail = TCB_PTR(endpoint_ptr_get_epQueue_tail(ep_ptr));
    if (likely(!endpointTail)) {
        ksCurThread->tcbEPPrev = NULL;

        /* Set head/tail of queue and endpoint state. */
        endpoint_ptr_set_epQueue_head_np(ep_ptr, TCB_REF(ksCurThread));
    } else {
        /* Append current thread onto the queue. */
        endpointTail->tcbEPNext = ksCurThread;
        ksCurThread->tcbEPPrev = endpointTail;
    }

    /* Update tail of queue. */
    endpoint_ptr_mset_epQueue_tail_state(ep_ptr, TCB_REF(ksCurThread),
                                         EPState_Recv);

    ksCurThread->tcbEPNext = NULL;

    /* Delete the reply cap. */
    cap_reply_cap_ptr_new_np(&replySlot->cap, CTE_REF(NULL));
    callerSlot->cap = cap_null_cap_new();

    /* I know there's no fault, so straight to the transfer. */

    /* Replies don't have a badge. */
    badge = 0;

    fastpath_copy_mrs (length, ksCurThread, caller);

    /* Dest thread is set Running, but not queued. */
    thread_state_ptr_set_tsType_np(&caller->tcbState,
                                   ThreadState_Running);
    switchToThread_fp(caller, cap_pd, stored_hw_asid);

    msgInfo = wordFromMessageInfo(info);
    fastpath_restore(badge, msgInfo, ksCurThread);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <kernel/boot.h>
#include <machine/io.h>
#include <model/statedata.h>
#include <object/interrupt.h>
#include <arch/machine.h>
#include <arch/kernel/boot.h>
#include <arch/kernel/vspace.h>
#include <arch/benchmark.h>
#include <arch/user_access.h>
#include <arch/linker.h>
#include <plat/machine/hardware.h>
#include <machine.h>


/* pointer to the end of boot code/data in kernel image */
/* need a fake array to get the pointer from the linker script */
extern char ki_boot_end[1];
/* pointer to end of kernel image */
extern char ki_end[1];

/**
 * Split mem_reg about reserved_reg. If memory exists in the lower
 * segment, insert it. If memory exists in the upper segment, return it.
 */
BOOT_CODE static region_t
insert_region_excluded(region_t mem_reg, region_t reserved_reg)
{
    region_t residual_reg = mem_reg;
    bool_t result UNUSED;

    if (reserved_reg.start < mem_reg.start) {
        /* Reserved region is below the provided mem_reg. */
        mem_reg.end = 0;
        mem_reg.start = 0;
        /* Fit the residual around the reserved region */
        if (reserved_reg.end > residual_reg.start) {
            residual_reg.start = reserved_reg.end;
        }
    } else if (mem_reg.end > reserved_reg.start) {
        /* Split mem_reg around reserved_reg */
        mem_reg.end = reserved_reg.start;
        residual_reg.start = reserved_reg.end;
    } else {
        /* reserved_reg is completely above mem_reg */
        residual_reg.start = 0;
        residual_reg.end = 0;
    }
    /* Add the lower region if it exists */
    if (mem_reg.start < mem_reg.end) {
        result = insert_region(mem_reg);
        assert(result);
    }
    /* Validate the upper region */
    if (residual_reg.start > residual_reg.end) {
        residual_reg.start = residual_reg.end;
    }

    return residual_reg;
}

BOOT_CODE static void
init_freemem(region_t ui_reg)
{
    unsigned int i;
    bool_t result UNUSED;
    region_t cur_reg;
    region_t res_reg[] = {
        {
            .start = kernelBase,
            .end   = (pptr_t)ki_end
        },
        {
            .start = ui_reg.start,
            .end = ui_reg.end
        },
        {
            .start = (PD_ASID_SLOT + 0) << pageBitsForSize(ARMSection),
            .end   = (PD_ASID_SLOT + 1) << pageBitsForSize(ARMSection)
        }
    };

    for (i = 0; i < MAX_NUM_FREEMEM_REG; i++) {
        ndks_boot.freemem[i] = REG_EMPTY;
    }

    /* Force ordering and exclusivity of reserved regions. */
    assert(res_reg[0].start < res_reg[0].end);
    assert(res_reg[1].start < res_reg[1].end);
    assert(res_reg[2].start < res_reg[2].end);
    assert(res_reg[0].end  <= res_reg[1].start);
    assert(res_reg[1].end  <= res_reg[2].start);
    for (i = 0; i < get_num_avail_p_regs(); i++) {
        cur_reg = paddr_to_pptr_reg(get_avail_p_reg(i));
        /* Adjust region if it exceeds the kernel window
         * Note that we compare physical address in case of overflow.
         */
        if (pptr_to_paddr((void*)cur_reg.end) > PADDR_TOP) {
            cur_reg.end = PPTR_TOP;
        }
        if (pptr_to_paddr((void*)cur_reg.start) > PADDR_TOP) {
            cur_reg.start = PPTR_TOP;
        }

        cur_reg = insert_region_excluded(cur_reg, res_reg[0]);
        cur_reg = insert_region_excluded(cur_reg, res_reg[1]);
        cur_reg = insert_region_excluded(cur_reg, res_reg[2]);
        if (cur_reg.start != cur_reg.end) {
            result = insert_region(cur_reg);
            assert(result);
        }
    }
}

BOOT_CODE static void
init_irqs(cap_t root_cnode_cap)
{
    irq_t i;

    for (i = 0; i <= maxIRQ; i++) {
        setIRQState(IRQInactive, i);
    }
    setIRQState(IRQTimer, KERNEL_TIMER_IRQ);
    setIRQState(IRQReserved, 59);

    /* provide the IRQ control cap */
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IRQ_CTRL), cap_irq_control_cap_new());
}

/* Create a frame cap for the initial thread. */

BOOT_CODE cap_t
create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large)
{
    vm_page_size_t page_size = use_large ? ARMSection : ARMSmallPage;
    return
        cap_frame_cap_new(
            0,                             /* capFMappedObjectHigh */
            0,                             /* capFMappedIndex      */
            page_size,                     /* capFSize             */
            wordFromVMRights(VMReadWrite), /* capFVMRights         */
            0,                             /* capFMappedObjectLow  */
            pptr                           /* capFBasePtr          */
        );
}

BOOT_CODE cap_t
create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, bool_t use_large, bool_t executable)
{
    pde_t *pd = PD_PTR(cap_page_directory_cap_get_capPDBasePtr(pd_cap));
    uint32_t pd_index = vptr >> pageBitsForSize(ARMSection);
    cap_t cap;
    if (use_large) {
        cap =
            cap_frame_cap_new(
                FMAPPED_OBJECT_HIGH(PD_REF(pd)), /* capFMappedObjectHigh */
                pd_index,                        /* capFMappedIndex      */
                ARMSection,                      /* capFSize             */
                wordFromVMRights(VMReadWrite),   /* capFVMRights         */
                FMAPPED_OBJECT_LOW(PD_REF(pd)),  /* capFMappedObjectLow  */
                pptr                             /* capFBasePtr          */
            );
    } else {
        uint32_t pt_index = ((vptr & MASK(pageBitsForSize(ARMSection)))
                             >> pageBitsForSize(ARMSmallPage));
        pte_t *pt = ptrFromPAddr(pde_pde_coarse_get_address(pd[pd_index]));
        cap = cap_frame_cap_new(
                  FMAPPED_OBJECT_HIGH(PT_REF(pt)), /* capFMappedObjectHigh */
                  pt_index,                        /* capFMappedIndex      */
                  ARMSmallPage,                    /* capFSize             */
                  wordFromVMRights(VMReadWrite),   /* capFVMRights         */
                  FMAPPED_OBJECT_LOW(PT_REF(pt)),  /* capFMappedObjectLow  */
                  pptr                             /* capFBasePtr          */
              );
    }
    map_it_frame_cap(cap);
    return cap;
}

/* Create a page table for the initial thread */

static BOOT_CODE cap_t
create_it_page_table_cap(cap_t pd, pptr_t pptr, vptr_t vptr)
{
    cap_t cap;
    uint32_t pd_index = vptr >> pageBitsForSize(ARMSection);
    cap = cap_page_table_cap_new(
              cap_page_directory_cap_get_capPDBasePtr(pd), /* capPTMappedObject */
              pd_index,                                    /* capPTMappedIndex  */
              pptr                                         /* capPTBasePtr      */
          );
    map_it_pt_cap(cap);
    return cap;
}

/* Create an address space for the initial thread.
 * This includes page directory and page tables */
BOOT_CODE static cap_t
create_it_address_space(cap_t root_cnode_cap, v_region_t it_v_reg)
{
    cap_t      pd_cap;
    vptr_t     pt_vptr;
    pptr_t     pt_pptr;
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    pptr_t pd_pptr;

    /* create PD obj and cap */
    pd_pptr = alloc_region(PD_SIZE_BITS);
    if (!pd_pptr) {
        return cap_null_cap_new();
    }
    memzero(PDE_PTR(pd_pptr), 1 << PD_SIZE_BITS);
    copyGlobalMappings(PDE_PTR(pd_pptr));
    cleanCacheRange_PoU(pd_pptr, pd_pptr + (1 << PD_SIZE_BITS) - 1,
                        addrFromPPtr((void *)pd_pptr));
    pd_cap =
        cap_page_directory_cap_new(
            pd_pptr  /* capPDBasePtr    */
        );
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_VSPACE), pd_cap);

    /* create all PT objs and caps necessary to cover userland image */
    slot_pos_before = ndks_boot.slot_pos_cur;

    for (pt_vptr = ROUND_DOWN(it_v_reg.start, PT_BITS + PAGE_BITS);
            pt_vptr < it_v_reg.end;
            pt_vptr += BIT(PT_BITS + PAGE_BITS)) {
        pt_pptr = alloc_region(PT_SIZE_BITS);
        if (!pt_pptr) {
            return cap_null_cap_new();
        }
        memzero(PTE_PTR(pt_pptr), 1 << PT_SIZE_BITS);
        if (!provide_cap(root_cnode_cap,
                         create_it_page_table_cap(pd_cap, pt_pptr, pt_vptr))
           ) {
            return cap_null_cap_new();
        }
    }

    slot_pos_after = ndks_boot.slot_pos_cur;
    ndks_boot.bi_frame->ui_pt_caps = (slot_region_t) {
        slot_pos_before, slot_pos_after
    };

    return pd_cap;
}

BOOT_CODE static bool_t
create_device_untypeds(cap_t root_cnode_cap)
{
    slot_pos_t     slot_pos_before;
    slot_pos_t     slot_pos_after;
    uint32_t       i;

    slot_pos_before = ndks_boot.slot_pos_cur;
    for (i = 0; i < get_num_dev_p_regs(); i++) {
        if (!create_untypeds_for_region(root_cnode_cap, true, paddr_to_pptr_reg(get_dev_p_reg(i)), ndks_boot.bi_frame->ut_obj_caps.start)) {
            return false;
        }
    }
    slot_pos_after = ndks_boot.slot_pos_cur;
    ndks_boot.bi_frame->ut_device_obj_caps = (slot_region_t) {
        slot_pos_before, slot_pos_after
    };
    return true;
}

/* This and only this function initialises the CPU. It does NOT initialise any kernel state. */

BOOT_CODE static void
init_cpu(void)
{
    activate_global_pd();
}

/* This and only this function initialises the platform. It does NOT initialise any kernel state. */

BOOT_CODE static void
init_plat(void)
{
    initIRQController();
    initTimer();
    initL2Cache();
}

/* Main kernel initialisation function. */


static BOOT_CODE bool_t
try_init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t  v_entry
)
{
    cap_t root_cnode_cap;
    cap_t it_pd_cap;
    cap_t ipcbuf_cap;
    region_t ui_reg = paddr_to_pptr_reg((p_region_t) {
        ui_p_reg_start, ui_p_reg_end
    });
    pptr_t bi_frame_pptr;
    vptr_t bi_frame_vptr;
    vptr_t ipcbuf_vptr;
    create_frames_of_region_ret_t create_frames_ret;

    /* convert from physical addresses to userland vptrs */
    v_region_t ui_v_reg;
    v_region_t it_v_reg;
    ui_v_reg.start = ui_p_reg_start - pv_offset;
    ui_v_reg.end   = ui_p_reg_end   - pv_offset;

    ipcbuf_vptr = ui_v_reg.end;
    bi_frame_vptr = ipcbuf_vptr + BIT(PAGE_BITS);

    /* The region of the initial thread is the user image + ipcbuf and boot info */
    it_v_reg.start = ui_v_reg.start;
    it_v_reg.end = bi_frame_vptr + BIT(PAGE_BITS);

    /* setup virtual memory for the kernel */
    map_kernel_window();

    /* initialise the CPU */
    init_cpu();

    init_serial();

    /* debug output via serial port is only available from here */
    printf("Bootstrapping kernel\n");

    /* initialise the platform */
    init_plat();

    /* make the free memory available to alloc_region() */
    init_freemem(ui_reg);

    /* create the root cnode */
    root_cnode_cap = create_root_cnode();
    if (cap_get_capType(root_cnode_cap) == cap_null_cap) {
        return false;
    }

    /* create the cap for managing thread domains */
    create_domain_cap(root_cnode_cap);

    /* create the IRQ CNode */
    if (!create_irq_cnode()) {
        return false;
    }

    /* initialise the IRQ states and provide the IRQ control cap */
    init_irqs(root_cnode_cap);

    /* create the bootinfo frame */
    bi_frame_pptr = allocate_bi_frame(0, 1, ipcbuf_vptr);
    if (!bi_frame_pptr) {
        return false;
    }

    /* Construct an initial address space with enough virtual addresses
     * to cover the user image + ipc buffer and bootinfo frames */
    it_pd_cap = create_it_address_space(root_cnode_cap, it_v_reg);
    if (cap_get_capType(it_pd_cap) == cap_null_cap) {
        return false;
    }

    /* Create and map bootinfo frame cap */
    create_bi_frame_cap(
        root_cnode_cap,
        it_pd_cap,
        bi_frame_pptr,
        bi_frame_vptr
    );

    /* create the initial thread's IPC buffer */
    ipcbuf_cap = create_ipcbuf_frame(root_cnode_cap, it_pd_cap, ipcbuf_vptr);
    if (cap_get_capType(ipcbuf_cap) == cap_null_cap) {
        return false;
    }

    /* create all userland image frames */
    create_frames_ret =
        create_frames_of_region(
            root_cnode_cap,
            it_pd_cap,
            ui_reg,
            true,
            pv_offset
        );
    if (!create_frames_ret.success) {
        return false;
    }
    ndks_boot.bi_frame->ui_frame_caps = create_frames_ret.region;

    /* create the idle thread */
    if (!create_idle_thread()) {
        return false;
    }

    /* Before creating the initial thread (which also switches to it)
     * we clean the cache so that any page table information written
     * as a result of calling create_frames_of_region will be correctly
     * read by the hardware page table walker */
    cleanInvalidateL1Caches();

    /* create the initial thread */
    if (!create_initial_thread(
                root_cnode_cap,
                it_pd_cap,
                v_entry,
                bi_frame_vptr,
                ipcbuf_vptr,
                ipcbuf_cap
            )) {
        return false;
    }

    /* convert the remaining free memory into UT objects and provide the caps */
    if (!create_untypeds(
                root_cnode_cap,
    (region_t) {
    kernelBase, (pptr_t)ki_boot_end
    } /* reusable boot code/data */
            )) {
        return false;
    }

    /* create device frames */
    if (!create_device_untypeds(root_cnode_cap)) {
        return false;
    }

    /* no shared-frame caps (ARM has no multikernel support) */
    ndks_boot.bi_frame->sh_frame_caps = S_REG_EMPTY;

    /* finalise the bootinfo frame */
    bi_finalise();

    /* make everything written by the kernel visible to userland. Cleaning to PoC is not
     * strictly neccessary, but performance is not critical here so clean and invalidate
     * everything to PoC */
    cleanInvalidateL1Caches();

#ifdef CONFIG_BENCHMARK
    armv_init_ccnt();
#endif /* CONFIG_BENCHMARK */

    /* Export selected CPU features for access by PL0 */
    armv_init_user_access();

    /* kernel successfully initialized */
    return true;
}

BOOT_CODE VISIBLE void
init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t  v_entry
)
{
    bool_t result;

    result = try_init_kernel(ui_p_reg_start,
                             ui_p_reg_end,
                             pv_offset,
                             v_entry);
    if (!result) {
        fail ("Kernel init failed for some reason :(");
    }
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <object.h>
#include <machine.h>
#include <arch/model/statedata.h>
#include <arch/kernel/vspace.h>
#include <arch/kernel/thread.h>
#include <arch/linker.h>

void
Arch_switchToThread(tcb_t *tcb)
{
    setVMRoot(tcb);
    *armKSGlobalsFrame = tcb->tcbIPCBuffer;
    clearExMonitor();
}

BOOT_CODE void
Arch_configureIdleThread(tcb_t *tcb)
{
    setRegister(tcb, CPSR, CPSR_IDLETHREAD);
    setRegister(tcb, LR_svc, (word_t)idleThreadStart);
}

void
Arch_switchToIdleThread(void)
{
    *armKSGlobalsFrame = 0;
}

void CONST
Arch_activateIdleThread(tcb_t *tcb)
{
    /* Don't need to do anything */
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <benchmark.h>
#include <api/failures.h>
#include <api/syscall.h>
#include <kernel/boot.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <kernel/cdt.h>
#include <machine/io.h>
#include <model/statedata.h>
#include <object/cnode.h>
#include <object/untyped.h>
#include <arch/api/invocation.h>
#include <arch/kernel/vspace.h>
#include <arch/linker.h>
#include <arch/object/tcb.h>
#include <plat/machine/devices.h>
#include <plat/machine/hardware.h>
#include <armv/context_switch.h>

/* ARM uses multiple identical mappings in a page table / page directory to construct
 * large mappings. In both cases it happens to be 16 entries, which can be calculated by
 * looking at the size difference of the mappings, and is done this way to remove magic
 * numbers littering this code and make it clear what is going on */
#define SECTIONS_PER_SUPER_SECTION BIT(ARMSuperSectionBits - ARMSectionBits)
#define PAGES_PER_LARGE_PAGE BIT(ARMLargePageBits - ARMSmallPageBits)

/* helper stuff to avoid fencepost errors when
 * getting the last byte of a PTE or PDE */
#define LAST_BYTE_PTE(PTE,LENGTH) ((word_t)&(PTE)[(LENGTH)-1] + (BIT(PTE_SIZE_BITS)-1))
#define LAST_BYTE_PDE(PDE,LENGTH) ((word_t)&(PDE)[(LENGTH)-1] + (BIT(PDE_SIZE_BITS)-1))

/* need a fake array to get the pointer from the linker script */
extern char arm_vector_table[1];

/* This is the ARM kernel stack. It is accessed from a remapped address. */
char arm_kernel_stack[4096] ALIGN_BSS(4096) VISIBLE;

struct resolve_ret {
    paddr_t frameBase;
    vm_page_size_t frameSize;
    bool_t valid;
};
typedef struct resolve_ret resolve_ret_t;

void doFlush(int label, vptr_t start, vptr_t end, paddr_t pstart);
static pte_t *lookupPTSlot_nofail(pte_t *pt, vptr_t vptr);
static resolve_ret_t resolveVAddr(pde_t *pd, vptr_t vaddr);
static exception_t performPDFlush(int label, pde_t *pd,
                                  vptr_t start, vptr_t end, paddr_t pstart);
static exception_t performPageFlush(int label, pde_t *pd,
                                    vptr_t start, vptr_t end, paddr_t pstart);
static exception_t performPageGetAddress(void *vbase_ptr);
static exception_t decodeARMPageDirectoryInvocation(word_t label,
                                                    unsigned int length, cptr_t cptr, cte_t *cte, cap_t cap,
                                                    extra_caps_t extraCaps, word_t *buffer);
static pde_t PURE loadHWASID(pde_t *pd);

static word_t CONST
APFromVMRights(vm_rights_t vm_rights)
{
    switch (vm_rights) {
    case VMNoAccess:
        return 0;

    case VMKernelOnly:
        return 1;

    case VMReadOnly:
        return 2;

    case VMReadWrite:
        return 3;

    default:
        fail("Invalid VM rights");
    }
}

BOOT_CODE void
map_it_pt_cap(cap_t pt_cap)
{
    pde_t* pd   = PDE_PTR(cap_page_table_cap_get_capPTMappedObject(pt_cap));
    pte_t* pt   = PTE_PTR(cap_page_table_cap_get_capPTBasePtr(pt_cap));
    uint32_t pdIndex = cap_page_table_cap_get_capPTMappedIndex(pt_cap);
    pde_t* targetSlot = pd + pdIndex;

    *targetSlot = pde_pde_coarse_new(
                      addrFromPPtr(pt), /* address */
                      true,             /* P       */
                      0                 /* Domain  */
                  );
}

BOOT_CODE void
map_it_frame_cap(cap_t frame_cap)
{
    pte_t* pt;
    pte_t* targetSlot;
    uint32_t index;
    void*  frame = (void*)cap_frame_cap_get_capFBasePtr(frame_cap);

    pt = PT_PTR(cap_frame_cap_get_capFMappedObject(frame_cap));
    index = cap_frame_cap_get_capFMappedIndex(frame_cap);
    targetSlot = pt + index;
    *targetSlot = pte_pte_small_new(
                      addrFromPPtr(frame),
                      1, /* not global */
                      0, /* not shared */
                      0, /* APX = 0, privileged full access */
                      0, /* TEX = 0 */
                      APFromVMRights(VMReadWrite),
                      1, /* cacheable */
                      1, /* write-back caching */
                      0  /* executable */
                  );
}

BOOT_CODE void
map_kernel_frame(paddr_t paddr, pptr_t vaddr, vm_rights_t vm_rights, vm_attributes_t attributes)
{
    uint32_t idx = (vaddr & MASK(pageBitsForSize(ARMSection))) >> pageBitsForSize(ARMSmallPage);

    assert(vaddr >= PPTR_TOP); /* vaddr lies in the region the global PT covers */

    armKSGlobalPT[idx] =
        pte_pte_small_new(
            paddr,
            0, /* global */
            0, /* Not shared */
            0, /* APX = 0, privileged full access */
            0, /* TEX = 0 */
            APFromVMRights(vm_rights),
            vm_attributes_get_armPageCacheable(attributes),
            1, /* Write-back caching */
            0  /* executable */
        );
}

BOOT_CODE void
map_kernel_window(void)
{
    paddr_t  phys;
    uint32_t idx;
    pde_t    pde;

    /* mapping of kernelBase (virtual address) to kernel's physBase  */
    /* up to end of virtual address space minus 16M using 16M frames */
    phys = physBase;
    idx = kernelBase >> pageBitsForSize(ARMSection);

    while (idx < BIT(PD_BITS) - SECTIONS_PER_SUPER_SECTION) {
        uint32_t idx2;

        pde = pde_pde_section_new(
                  phys,
                  1, /* SuperSection */
                  0, /* global */
                  0, /* Not shared */
                  0, /* APX = 0, privileged full access */
                  0, /* TEX = 0 */
                  1, /* VMKernelOnly */
                  1, /* Parity enabled */
                  0, /* Domain 0 */
                  0, /* XN not set */
                  1, /* Cacheable */
                  1  /* Write-back */
              );
        for (idx2 = idx; idx2 < idx + SECTIONS_PER_SUPER_SECTION; idx2++) {
            armKSGlobalPD[idx2] = pde;
        }
        phys += BIT(pageBitsForSize(ARMSuperSection));
        idx += SECTIONS_PER_SUPER_SECTION;
    }
#ifdef CONFIG_BENCHMARK
    /* steal the last MB for logging */
    while (idx < BIT(PD_BITS) - 2) {
#else
    /* mapping of the next 15M using 1M frames */
    while (idx < BIT(PD_BITS) - 1) {
#endif /* CONFIG_BENCHMARK */
        pde = pde_pde_section_new(
                  phys,
                  0, /* Section */
                  0, /* global */
                  0, /* Not shared */
                  0, /* APX = 0, privileged full access */
                  0, /* TEX = 0 */
                  1, /* VMKernelOnly */
                  1, /* Parity enabled */
                  0, /* Domain 0 */
                  0, /* XN not set */
                  1, /* Cacheable */
                  1  /* Write-back */
              );
        armKSGlobalPD[idx] = pde;
        phys += BIT(pageBitsForSize(ARMSection));
        idx++;
    }

#ifdef CONFIG_BENCHMARK
    /* allocate a 1M buffer for logging */
    pde = pde_pde_section_new(
              phys,
              0, /* Section */
              0, /* global */
              0, /* Not Shared */
              0, /* APX = 0, privileged full access */
              0, /* TEX = 0 */
              1, /* VMKernelOnly */
              1, /* Parity Enabled */
              0, /* Domain 0 */
              0, /* XN not set */
              1, /* Cacheable */
              0  /* Write-through to minimise perf hit */
          );
    armKSGlobalPD[idx] = pde;
    ksLog = (word_t *) ptrFromPAddr(phys);

    /* we remove the address PADDR_TOP - 1MB from the
     * available physical memory for the sabre.
     *
     * if you are using a different platform this may need
     * adjusting or you may need to do something completely different
     * to get a 1mb, write through buffer*/
    assert(ksLog == ((word_t *) KS_LOG_PADDR));
    phys += BIT(pageBitsForSize(ARMSection));
    idx++;
#endif /* CONFIG_BENCHMARK */

    /* crosscheck whether we have mapped correctly so far */
    assert(phys == PADDR_TOP);

    /* map page table covering last 1M of virtual address space to page directory */
    armKSGlobalPD[idx] =
        pde_pde_coarse_new(
            addrFromPPtr(armKSGlobalPT), /* address */
            true,                        /* P       */
            0                            /* Domain  */
        );

    /* now start initialising the page table */
    memzero(armKSGlobalPT, 1 << PT_SIZE_BITS);

    /* map vector table */
    map_kernel_frame(
        addrFromPPtr(arm_vector_table),
        PPTR_VECTOR_TABLE,
        VMKernelOnly,
        vm_attributes_new(
            false, /* armExecuteNever */
            true,  /* armParityEnabled */
            true   /* armPageCacheable */
        )
    );

    /* map globals frame */
    map_kernel_frame(
        addrFromPPtr(armKSGlobalsFrame),
        PPTR_GLOBALS_PAGE,
        VMReadOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            true,  /* armParityEnabled */
            true   /* armPageCacheable */
        )
    );

    /* map stack frame */
    map_kernel_frame(
        addrFromPPtr(arm_kernel_stack),
        PPTR_KERNEL_STACK,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            true,  /* armParityEnabled */
            true   /* armPageCacheable */
        )
    );

    map_kernel_devices();
}

BOOT_CODE void
activate_global_pd(void)
{
    /* Ensure that there's nothing stale in newly-mapped regions, and
       that everything we've written (particularly the kernel page tables)
       is committed. */
    cleanInvalidateL1Caches();
    setCurrentPD(addrFromPPtr(armKSGlobalPD));
    invalidateTLB();
    lockTLBEntry(kernelBase);
    lockTLBEntry(PPTR_VECTOR_TABLE);
}

/* ==================== BOOT CODE FINISHES HERE ==================== */

void
copyGlobalMappings(pde_t *newPD)
{
    unsigned int i;
    pde_t *global_pd = armKSGlobalPD;

    for (i = kernelBase >> ARMSectionBits; i < BIT(PD_BITS); i++) {
        if (i != PD_ASID_SLOT) {
            newPD[i] = global_pd[i];
        }
    }
}

word_t * PURE
lookupIPCBuffer(bool_t isReceiver, tcb_t *thread)
{
    word_t w_bufferPtr;
    cap_t bufferCap;
    vm_rights_t vm_rights;

    w_bufferPtr = thread->tcbIPCBuffer;
    bufferCap = TCB_PTR_CTE_PTR(thread, tcbBuffer)->cap;

    if (unlikely(cap_get_capType(bufferCap) != cap_frame_cap)) {
        return NULL;
    }

    vm_rights = cap_frame_cap_get_capFVMRights(bufferCap);
    if (likely(vm_rights == VMReadWrite ||
               (!isReceiver && vm_rights == VMReadOnly))) {
        word_t basePtr;
        unsigned int pageBits;

        basePtr = cap_frame_cap_get_capFBasePtr(bufferCap);
        pageBits = pageBitsForSize(cap_frame_cap_get_capFSize(bufferCap));
        return (word_t *)(basePtr + (w_bufferPtr & MASK(pageBits)));
    } else {
        return NULL;
    }
}

static unsigned int CONST
makePDIndex(vptr_t vptr)
{
    return vptr >> 20;
}

lookupPTSlot_ret_t
lookupPTSlot(pde_t *pd, vptr_t vptr)
{
    lookupPTSlot_ret_t ret;
    pde_t *pdSlot;

    pdSlot = pd + makePDIndex(vptr);

    if (unlikely(pde_ptr_get_pdeType(pdSlot) != pde_pde_coarse)) {
        current_lookup_fault = lookup_fault_missing_capability_new(20);

        ret.pt = NULL;
        ret.ptIndex = 0;
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    } else {
        pte_t *pt;
        unsigned int ptIndex;

        pt = ptrFromPAddr(pde_pde_coarse_ptr_get_address(pdSlot));
        ptIndex = (vptr >> 12) & 0xff;

        ret.pt = pt;
        ret.ptIndex = ptIndex;
        ret.status = EXCEPTION_NONE;
        return ret;
    }
}

static pte_t *
lookupPTSlot_nofail(pte_t *pt, vptr_t vptr)
{
    unsigned int ptIndex;

    ptIndex = (vptr >> 12) & MASK(8);
    return pt + ptIndex;
}

exception_t
handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType)
{
    switch (vm_faultType) {
    case ARMDataAbort: {
        word_t addr, fault;

        addr = getFAR();
        fault = getDFSR();
        current_fault = fault_vm_fault_new(addr, fault, false);
        return EXCEPTION_FAULT;
    }

    case ARMPrefetchAbort: {
        word_t pc, fault;

        pc = getRestartPC(thread);
        fault = getIFSR();

        current_fault = fault_vm_fault_new(pc, fault, true);
        return EXCEPTION_FAULT;
    }

    default:
        fail("Invalid VM fault type");
    }
}

static void
invalidateASID(pde_t *pd)
{
    pd[PD_ASID_SLOT] = pde_pde_invalid_new(0, false);
}

#if 0

static void
invalidateASIDEntry(pde_t *pd)
{
    pde_t stored_hw_asid;

    stored_hw_asid = loadHWASID(asid);
    if (pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)) {
        armKSHWASIDTable[pde_pde_invalid_get_stored_hw_asid(stored_hw_asid)] =
            asidInvalid;
    }
    invalidateASID(asid);
}

#endif

void
unmapPageTable(pde_t *pd, uint32_t pdIndex, pte_t* pt)
{
    assert(pd);
    assert(pt);
    assert(pde_get_pdeType(pd[pdIndex]) == pde_pde_coarse);
    assert(ptrFromPAddr (pde_pde_coarse_get_address(pd[pdIndex])) == pt);

    pd[pdIndex] = pde_pde_invalid_new(0, 0);
    cleanByVA_PoU((word_t)&pd[pdIndex], addrFromPPtr(&pd[pdIndex]));
    flushTable(pd, pdIndex << 20, pt);
}

void
unmapAllPageTables(pde_t *pd)
{
    unsigned int i;

    for (i = 0; i < kernelBase >> ARMSectionBits;) {
        switch (pde_get_pdeType(pd[i])) {
        case pde_pde_coarse: {
            cap_t ptCap;
            cte_t *ptCte;
            ptCte = cdtFind(cap_page_table_cap_new(PD_REF(pd), i, (uint32_t)paddr_to_pptr(pde_pde_coarse_get_address(pd[i]))));
            assert(ptCte);
            ptCap = cap_page_table_cap_set_capPTMappedObject(ptCte->cap, 0);
            cdtUpdate(ptCte, ptCap);
            unmapPageTable(pd, i, PT_PTR(cap_page_table_cap_get_capPTBasePtr(ptCap)));
            i++;
            break;
        }
        case pde_pde_section:
            if (pde_pde_section_get_size(pd[i])) {
                cap_t frameCap;
                cte_t *frameCte;
                frameCte = cdtFind(cap_frame_cap_new(FMAPPED_OBJECT_HIGH(pd), i, ARMSuperSection, 0, FMAPPED_OBJECT_LOW(pd), (uint32_t)paddr_to_pptr(pde_pde_section_get_address(pd[i]))));
                assert(frameCte);
                frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
                cdtUpdate(frameCte, frameCap);
                unmapPagePDE(ARMSuperSection, pd, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
                i++;
            } else {
                cap_t frameCap;
                cte_t *frameCte;
                frameCte = cdtFind(cap_frame_cap_new(FMAPPED_OBJECT_HIGH(pd), i, ARMSection, 0, FMAPPED_OBJECT_LOW(pd), (uint32_t)paddr_to_pptr(pde_pde_section_get_address(pd[i]))));
                assert(frameCte);
                frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
                cdtUpdate(frameCte, frameCap);
                unmapPagePDE(ARMSection, pd, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
                i++;
            }
            break;
        case pde_pde_invalid:
            i++;
            break;
        }
    }
}

static pte_t pte_pte_invalid_new(void)
{
    /* Invalid as every PTE must have bit 0 set (large PTE) or bit 1 set (small
     * PTE). 0 == 'translation fault' in ARM parlance.
     */
    return (pte_t) {
        {
            0
        }
    };
}

void unmapPagePTE(vm_page_size_t page_size, pte_t *pt, unsigned int ptIndex, void *pptr)
{
    paddr_t addr = addrFromPPtr(pptr);
    cte_t *ptCte;
    pde_t *pd;
    unsigned int pdIndex;

    (void)addr;

    ptCte = cdtFindWithExtra(cap_page_table_cap_new(0, 0, PT_REF(pt)));
    assert(ptCte);
    pd = PD_PTR(cap_page_table_cap_get_capPTMappedObject(ptCte->cap));
    pdIndex = cap_page_table_cap_get_capPTMappedIndex(ptCte->cap);

    switch (page_size) {
    case ARMSmallPage: {
        /* When recycling a cap the finaliseCap function gets called twice. Unfortunately
         * there is no way to distinguish when this is going to be a duplicate call, vs
         * a single call from delete. Therefore we need to handle attempting to remove
         * a mapping that has already been removed, so just silently succeed */
        if (pt[ptIndex].words[0] == pte_pte_invalid_new().words[0]) {
            return;
        }
        assert(pte_get_pteType(pt[ptIndex]) == pte_pte_small);
        assert(pte_pte_small_get_address(pt[ptIndex]) == addr);

        pt[ptIndex] = pte_pte_invalid_new();
        cleanByVA_PoU((word_t)&pt[ptIndex], addrFromPPtr(&pt[ptIndex]));

        break;
    }

    case ARMLargePage: {
        unsigned int i;

        /* When recycling a cap the finaliseCap function gets called twice. Unfortunately
         * there is no way to distinguish when this is going to be a duplicate call, vs
         * a single call from delete. Therefore we need to handle attempting to remove
         * a mapping that has already been removed, so just silently succeed */
        if (pt[ptIndex].words[0] == pte_pte_invalid_new().words[0]) {
            return;
        }
        assert(pte_get_pteType(pt[ptIndex]) == pte_pte_large);
        assert(pte_pte_large_get_address(pt[ptIndex]) == addr);

        for (i = 0; i < PAGES_PER_LARGE_PAGE; i++) {
            pt[ptIndex + i] = pte_pte_invalid_new();
        }
        cleanCacheRange_PoU((word_t)&pt[ptIndex],
                            LAST_BYTE_PTE(&pt[ptIndex], PAGES_PER_LARGE_PAGE),
                            addrFromPPtr(&pt[ptIndex]));

        break;
    }
    default:
        fail("Invalid page size");
    }

    if (pd) {
        flushPage(page_size, pd, (pdIndex << 20) |  (ptIndex << 12));
    }
}
void
unmapPagePDE(vm_page_size_t page_size, pde_t *pd, unsigned int pdIndex, void *pptr)
{
    paddr_t addr = addrFromPPtr(pptr);

    (void)addr;

    switch (page_size) {
    case ARMSection: {

        /* When recycling a cap the finaliseCap function gets called twice. Unfortunately
         * there is no way to distinguish when this is going to be a duplicate call, vs
         * a single call from delete. Therefore we need to handle attempting to remove
         * a mapping that has already been removed, so just silently succeed */
        if (pd[pdIndex].words[0] == pde_pde_invalid_new(0, 0).words[0]) {
            return;
        }

        assert(pde_get_pdeType(pd[pdIndex]) == pde_pde_section);
        assert(pde_pde_section_get_size(pd[pdIndex]) == 0);
        assert(pde_pde_section_get_address(pd[pdIndex]) == addr);

        pd[pdIndex] = pde_pde_invalid_new(0, 0);
        cleanByVA_PoU((word_t)&pd[pdIndex], addrFromPPtr(&pd[pdIndex]));

        break;
    }

    case ARMSuperSection: {
        unsigned int i;

        /* When recycling a cap the finaliseCap function gets called twice. Unfortunately
         * there is no way to distinguish when this is going to be a duplicate call, vs
         * a single call from delete. Therefore we need to handle attempting to remove
         * a mapping that has already been removed, so just silently succeed */
        if (pd[pdIndex].words[0] == pde_pde_invalid_new(0, 0).words[0]) {
            return;
        }

        assert(pde_get_pdeType(pd[pdIndex]) == pde_pde_section);
        assert(pde_pde_section_get_size(pd[pdIndex]) == 1);
        assert(pde_pde_section_get_address(pd[pdIndex]) == addr);

        for (i = 0; i < SECTIONS_PER_SUPER_SECTION; i++) {
            pd[pdIndex + i] = pde_pde_invalid_new(0, 0);
        }
        cleanCacheRange_PoU((word_t)&pd[pdIndex], LAST_BYTE_PDE(&pd[pdIndex], SECTIONS_PER_SUPER_SECTION),
                            addrFromPPtr(&pd[pdIndex]));

        break;
    }

    default:
        fail("Invalid ARM page type");
        break;
    }

    /* Flush the page now that the mapping has been updated */
    flushPage(page_size, pd, pdIndex << 20);
}

void unmapAllPages(pde_t *pd, uint32_t pdIndex, pte_t *pt)
{
    uint32_t i;
    for (i = 0; i < BIT(PT_BITS);) {
        switch (pte_get_pteType(pt[i])) {
        case pte_pte_small: {
            cte_t *frameCte;
            cap_t frameCap;
            frameCte = cdtFind(cap_frame_cap_new(FMAPPED_OBJECT_HIGH(pt), i, ARMSmallPage, 0, FMAPPED_OBJECT_LOW(pt), (uint32_t)paddr_to_pptr(pte_pte_small_ptr_get_address(pt + i))));
            assert(frameCte);
            frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
            cdtUpdate(frameCte, frameCap);
            unmapPagePTE(ARMSmallPage, pt, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
            i++;
            break;
        }
        case pte_pte_large: {
            cte_t *frameCte;
            cap_t frameCap;
            frameCte = cdtFind(cap_frame_cap_new(FMAPPED_OBJECT_HIGH(pt), i, ARMLargePage, 0, FMAPPED_OBJECT_LOW(pt), (uint32_t)paddr_to_pptr(pte_pte_large_ptr_get_address(pt + i))));
            assert(frameCte);
            frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
            cdtUpdate(frameCte, frameCap);
            unmapPagePTE(ARMLargePage, pt, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
            i += 16;
            break;
        }
        case pte_pte_invalid:
            i++;
            break;
        }
    }
}

void
setVMRoot(tcb_t *tcb)
{
    cap_t threadRoot;
    pde_t *pd;

    threadRoot = TCB_PTR_CTE_PTR(tcb, tcbVTable)->cap;

    if (cap_get_capType(threadRoot) != cap_page_directory_cap) {
        setCurrentPD(addrFromPPtr(armKSGlobalPD));
        return;
    }

    pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(threadRoot));

    armv_contextSwitch(pd);
}

static bool_t
setVMRootForFlush(pde_t* pd)
{
    cap_t threadRoot;

    threadRoot = TCB_PTR_CTE_PTR(ksCurThread, tcbVTable)->cap;

    if (cap_get_capType(threadRoot) == cap_page_directory_cap &&
            PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(threadRoot)) == pd) {
        return false;
    }

    armv_contextSwitch(pd);

    return true;
}

bool_t CONST
isValidVTableRoot(cap_t cap)
{
    return cap_get_capType(cap) == cap_page_directory_cap;
}

exception_t
checkValidIPCBuffer(vptr_t vptr, cap_t cap)
{
    if (unlikely(cap_get_capType(cap) != cap_frame_cap)) {
        userError("Requested IPC Buffer is not a frame cap.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (unlikely(vptr & MASK(9))) {
        userError("Requested IPC Buffer location 0x%x is not aligned.",
                  (int)vptr);
        current_syscall_error.type = seL4_AlignmentError;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

vm_rights_t CONST
maskVMRights(vm_rights_t vm_rights, cap_rights_t cap_rights_mask)
{
    if (vm_rights == VMNoAccess) {
        return VMNoAccess;
    }
    if (vm_rights == VMReadOnly &&
            cap_rights_get_capAllowRead(cap_rights_mask)) {
        return VMReadOnly;
    }
    if (vm_rights == VMReadWrite &&
            cap_rights_get_capAllowRead(cap_rights_mask)) {
        if (!cap_rights_get_capAllowWrite(cap_rights_mask)) {
            return VMReadOnly;
        } else {
            return VMReadWrite;
        }
    }
    return VMKernelOnly;
}

/* ARM Hardware ASID allocation */

static void
storeHWASID(pde_t *pd, hw_asid_t hw_asid)
{
    /* Store HW ASID in the last entry
       Masquerade as an invalid PDE */
    pd[PD_ASID_SLOT] = pde_pde_invalid_new(hw_asid, true);

    armKSHWASIDTable[hw_asid] = pd;
}

static pde_t PURE
loadHWASID(pde_t *pd)
{
    return pd[PD_ASID_SLOT];
}

hw_asid_t
findFreeHWASID(void)
{
    word_t hw_asid_offset;
    hw_asid_t hw_asid;

    /* Find a free hardware ASID */
    for (hw_asid_offset = 0;
            hw_asid_offset <= (word_t)((hw_asid_t) - 1);
            hw_asid_offset ++) {
        hw_asid = armKSNextASID + ((hw_asid_t)hw_asid_offset);
        if (!armKSHWASIDTable[hw_asid]) {
            return hw_asid;
        }
    }

    hw_asid = armKSNextASID;

    /* If we've scanned the table without finding a free ASID */
    invalidateASID(armKSHWASIDTable[hw_asid]);

    /* Flush TLB */
    invalidateTLB_ASID(hw_asid);
    armKSHWASIDTable[hw_asid] = NULL;

    /* Increment the NextASID index */
    armKSNextASID++;

    return hw_asid;
}

hw_asid_t
getHWASID(pde_t *pd)
{
    pde_t stored_hw_asid;

    stored_hw_asid = loadHWASID(pd);
    if (pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)) {
        return pde_pde_invalid_get_stored_hw_asid(stored_hw_asid);
    } else {
        hw_asid_t new_hw_asid;

        new_hw_asid = findFreeHWASID();
        storeHWASID(pd, new_hw_asid);
        return new_hw_asid;
    }
}

/* Cache and TLB consistency */

void
flushPage(vm_page_size_t page_size, pde_t* pd, word_t vptr)
{
    pde_t stored_hw_asid;
    word_t base_addr;
    bool_t root_switched;

    assert((vptr & MASK(pageBitsForSize(page_size))) == 0);

    /* Switch to the address space to allow a cache clean by VA */
    root_switched = setVMRootForFlush(pd);
    stored_hw_asid = loadHWASID(pd);

    if (pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)) {
        base_addr = vptr & ~MASK(12);

        /* Do the TLB flush */
        invalidateTLB_VAASID(base_addr | pde_pde_invalid_get_stored_hw_asid(stored_hw_asid));

        if (root_switched) {
            setVMRoot(ksCurThread);
        }
    }
}

void
flushTable(pde_t* pd, word_t vptr, pte_t* pt)
{
    pde_t stored_hw_asid;
    bool_t root_switched;

    assert((vptr & MASK(PT_BITS + ARMSmallPageBits)) == 0);

    /* Switch to the address space to allow a cache clean by VA */
    root_switched = setVMRootForFlush(pd);
    stored_hw_asid = loadHWASID(pd);

    if (pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)) {
        invalidateTLB_ASID(pde_pde_invalid_get_stored_hw_asid(stored_hw_asid));
        if (root_switched) {
            setVMRoot(ksCurThread);
        }
    }
}

/* The rest of the file implements the ARM object invocations */

static pte_t CONST
makeUserPTE(vm_page_size_t page_size, paddr_t paddr,
            bool_t cacheable, bool_t nonexecutable, vm_rights_t vm_rights)
{
    pte_t pte;
    word_t ap;

    ap = APFromVMRights(vm_rights);

    switch (page_size) {
    case ARMSmallPage: {
        if (cacheable) {
            pte = pte_pte_small_new(paddr,
                                    1, /* not global */
                                    0, /* not shared */
                                    0, /* APX = 0, privileged full access */
                                    5, /* TEX = 0b101, outer write-back, write-allocate */
                                    ap,
                                    0, 1, /* Inner write-back, write-allocate (except on ARM11) */
                                    nonexecutable);
        } else {
            pte = pte_pte_small_new(paddr,
                                    1, /* not global */
                                    1, /* shared */
                                    0, /* APX = 0, privileged full access */
                                    0, /* TEX = 0b000, strongly-ordered. */
                                    ap,
                                    0, 0,
                                    nonexecutable);
        }
        break;
    }

    case ARMLargePage: {
        if (cacheable) {
            pte = pte_pte_large_new(paddr,
                                    nonexecutable,
                                    5, /* TEX = 0b101, outer write-back, write-allocate */
                                    1, /* not global */
                                    0, /* not shared */
                                    0, /* APX = 0, privileged full access */
                                    ap,
                                    0, 1, /* Inner write-back, write-allocate (except on ARM11) */
                                    1 /* reserved */);
        } else {
            pte = pte_pte_large_new(paddr,
                                    nonexecutable,
                                    0, /* TEX = 0b000, strongly-ordered */
                                    1, /* not global */
                                    1, /* shared */
                                    0, /* APX = 0, privileged full access */
                                    ap,
                                    0, 0,
                                    1 /* reserved */);
        }
        break;
    }

    default:
        fail("Invalid PTE frame type");
    }

    return pte;
}

static pde_t CONST
makeUserPDE(vm_page_size_t page_size, paddr_t paddr, bool_t parity,
            bool_t cacheable, bool_t nonexecutable, word_t domain,
            vm_rights_t vm_rights)
{
    word_t ap, size2;

    ap = APFromVMRights(vm_rights);

    switch (page_size) {
    case ARMSection:
        size2 = 0;
        break;

    case ARMSuperSection:
        size2 = 1;
        break;

    default:
        fail("Invalid PDE frame type");
    }

    if (cacheable) {
        return pde_pde_section_new(paddr, size2,
                                   1, /* not global */
                                   0, /* not shared */
                                   0, /* APX = 0, privileged full access */
                                   5, /* TEX = 0b101, outer write-back, write-allocate */
                                   ap, parity, domain, nonexecutable,
                                   0, 1 /* Inner write-back, write-allocate (except on ARM11) */);
    } else {
        return pde_pde_section_new(paddr, size2,
                                   1, /* not global */
                                   1, /* shared */
                                   0, /* APX = 0, privileged full access */
                                   0, /* TEX = 0b000, strongly-ordered */
                                   ap, parity, domain, nonexecutable,
                                   0, 0);
    }
}

static inline bool_t CONST
checkVPAlignment(vm_page_size_t sz, word_t w)
{
    return (w & MASK(pageBitsForSize(sz))) == 0;
}

static exception_t
decodeARMPageTableInvocation(word_t label, unsigned int length,
                             cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                             word_t *buffer)
{
    word_t vaddr, pdIndex;
    vm_attributes_t attr;
    cap_t pdCap;
    pde_t *pd, *pdSlot;
    pde_t pde;
    paddr_t paddr;

    if (label == ARMPageTableUnmap) {
        if (unlikely(! cdtIsFinal(cte))) {
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageTableInvocationUnmap (cap, cte);
    }

    if (unlikely(label != ARMPageTableMap)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (unlikely(length < 2 || extraCaps.excaprefs[0] == NULL)) {
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (unlikely(cdtFindWithExtra(cap))) {
        current_syscall_error.type =
            seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vaddr = getSyscallArg(0, buffer);
    attr = vmAttributesFromWord(getSyscallArg(1, buffer));
    pdCap = extraCaps.excaprefs[0]->cap;

    if (unlikely(cap_get_capType(pdCap) != cap_page_directory_cap)) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(pdCap));

    if (unlikely(vaddr >= kernelBase)) {
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pdIndex = vaddr >> 20;
    pdSlot = &pd[pdIndex];
    if (unlikely(pde_ptr_get_pdeType(pdSlot) != pde_pde_invalid)) {
        current_syscall_error.type = seL4_DeleteFirst;

        return EXCEPTION_SYSCALL_ERROR;
    }

    paddr = addrFromPPtr(
                PTE_PTR(cap_page_table_cap_get_capPTBasePtr(cap)));
    pde = pde_pde_coarse_new(
              paddr,
              vm_attributes_get_armParityEnabled(attr),
              0 /* Domain */
          );

    cap = cap_page_table_cap_set_capPTMappedObject(cap, PD_REF(pd));
    cap = cap_page_table_cap_set_capPTMappedIndex(cap, pdIndex);

    setThreadState(ksCurThread, ThreadState_Restart);
    return performPageTableInvocationMap(cap, cte, pde, pdSlot);
}

struct create_mappings_pte_return {
    exception_t status;
    pte_t pte;
    pte_range_t pte_entries;
};
typedef struct create_mappings_pte_return create_mappings_pte_return_t;

struct create_mappings_pde_return {
    exception_t status;
    pde_t pde;
    pde_range_t pde_entries;
};
typedef struct create_mappings_pde_return create_mappings_pde_return_t;

static create_mappings_pte_return_t
createSafeMappingEntries_PTE
(paddr_t base, word_t vaddr, vm_page_size_t frameSize,
 vm_rights_t vmRights, vm_attributes_t attr, pde_t *pd)
{

    create_mappings_pte_return_t ret;
    lookupPTSlot_ret_t lu_ret;
    unsigned int i;

    switch (frameSize) {

    case ARMSmallPage:

        ret.pte_entries.pt = NULL; /* to avoid uninitialised warning */
        ret.pte_entries.start = 0;
        ret.pte_entries.length = 1;

        ret.pte = makeUserPTE(ARMSmallPage, base,
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              vmRights);

        lu_ret = lookupPTSlot(pd, vaddr);
        if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
            current_syscall_error.type =
                seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource =
                false;
            ret.status = EXCEPTION_SYSCALL_ERROR;
            /* current_lookup_fault will have been set by
             * lookupPTSlot */
            return ret;
        }

        ret.pte_entries.pt = lu_ret.pt;
        ret.pte_entries.start = lu_ret.ptIndex;

        if (unlikely(pte_get_pteType(ret.pte_entries.pt[ret.pte_entries.start]) !=
                     pte_pte_invalid)) {
            current_syscall_error.type =
                seL4_DeleteFirst;

            ret.status = EXCEPTION_SYSCALL_ERROR;
            return ret;
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    case ARMLargePage:

        ret.pte_entries.pt = NULL; /* to avoid uninitialised warning */
        ret.pte_entries.start = 0;
        ret.pte_entries.length = PAGES_PER_LARGE_PAGE;

        ret.pte = makeUserPTE(ARMLargePage, base,
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              vmRights);

        lu_ret = lookupPTSlot(pd, vaddr);
        if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
            current_syscall_error.type =
                seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource =
                false;
            ret.status = EXCEPTION_SYSCALL_ERROR;
            /* current_lookup_fault will have been set by
             * lookupPTSlot */
            return ret;
        }

        ret.pte_entries.pt = lu_ret.pt;
        ret.pte_entries.start = lu_ret.ptIndex;

        for (i = 0; i < PAGES_PER_LARGE_PAGE; i++) {
            if (unlikely(pte_get_pteType(ret.pte_entries.pt[ret.pte_entries.start + i]) !=
                         pte_pte_invalid)) {
                current_syscall_error.type =
                    seL4_DeleteFirst;

                ret.status = EXCEPTION_SYSCALL_ERROR;
                return ret;
            }
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        fail("Invalid or unexpected ARM page type.");

    }
}

static create_mappings_pde_return_t
createSafeMappingEntries_PDE
(paddr_t base, word_t vaddr, vm_page_size_t frameSize,
 vm_rights_t vmRights, vm_attributes_t attr, pde_t *pd)
{

    create_mappings_pde_return_t ret;
    pde_tag_t currentPDEType;
    unsigned int i;

    switch (frameSize) {

        /* PDE mappings */
    case ARMSection:
        ret.pde_entries.pd = pd;
        ret.pde_entries.start = makePDIndex(vaddr);
        ret.pde_entries.length = 1;

        ret.pde = makeUserPDE(ARMSection, base,
                              vm_attributes_get_armParityEnabled(attr),
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              0,
                              vmRights);

        currentPDEType =
            pde_get_pdeType(ret.pde_entries.pd[ret.pde_entries.start]);
        if (unlikely(currentPDEType != pde_pde_invalid)) {
            current_syscall_error.type =
                seL4_DeleteFirst;
            ret.status = EXCEPTION_SYSCALL_ERROR;

            return ret;
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    case ARMSuperSection:
        ret.pde_entries.pd = pd;
        ret.pde_entries.start = makePDIndex(vaddr);
        ret.pde_entries.length = SECTIONS_PER_SUPER_SECTION;

        ret.pde = makeUserPDE(ARMSuperSection, base,
                              vm_attributes_get_armParityEnabled(attr),
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              0,
                              vmRights);

        for (i = 0; i < SECTIONS_PER_SUPER_SECTION; i++) {
            currentPDEType =
                pde_get_pdeType(ret.pde_entries.pd[ret.pde_entries.start + i]);
            if (unlikely(currentPDEType != pde_pde_invalid)) {
                current_syscall_error.type =
                    seL4_DeleteFirst;
                ret.status = EXCEPTION_SYSCALL_ERROR;

                return ret;
            }
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        fail("Invalid or unexpected ARM page type.");

    }
}

static exception_t
decodeARMFrameInvocation(word_t label, unsigned int length,
                         cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                         word_t *buffer)
{
    switch (label) {
    case ARMPageMap: {
        word_t vaddr, vtop, w_rightsMask;
        paddr_t capFBasePtr;
        cap_t pdCap;
        pde_t *pd;
        vm_rights_t capVMRights, vmRights;
        vm_page_size_t frameSize;
        vm_attributes_t attr;

        if (unlikely(length < 3 || extraCaps.excaprefs[0] == NULL)) {
            current_syscall_error.type =
                seL4_TruncatedMessage;

            return EXCEPTION_SYSCALL_ERROR;
        }

        vaddr = getSyscallArg(0, buffer);
        w_rightsMask = getSyscallArg(1, buffer);
        attr = vmAttributesFromWord(getSyscallArg(2, buffer));
        pdCap = extraCaps.excaprefs[0]->cap;

        frameSize = cap_frame_cap_get_capFSize(cap);
        capVMRights = cap_frame_cap_get_capFVMRights(cap);

        if (unlikely(cap_frame_cap_get_capFMappedObject(cap))) {
            current_syscall_error.type =
                seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;

            return EXCEPTION_SYSCALL_ERROR;
        }

        if (unlikely(cap_get_capType(pdCap) != cap_page_directory_cap)) {
            current_syscall_error.type =
                seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }
        pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(
                         pdCap));

        vtop = vaddr + BIT(pageBitsForSize(frameSize)) - 1;

        if (unlikely(vtop >= kernelBase)) {
            current_syscall_error.type =
                seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;

            return EXCEPTION_SYSCALL_ERROR;
        }

        vmRights =
            maskVMRights(capVMRights, rightsFromWord(w_rightsMask));

        if (unlikely(!checkVPAlignment(frameSize, vaddr))) {
            current_syscall_error.type =
                seL4_AlignmentError;

            return EXCEPTION_SYSCALL_ERROR;
        }

        capFBasePtr = addrFromPPtr((void *)
                                   cap_frame_cap_get_capFBasePtr(cap));

        if (frameSize == ARMSmallPage || frameSize == ARMLargePage) {
            create_mappings_pte_return_t map_ret;
            map_ret = createSafeMappingEntries_PTE(capFBasePtr, vaddr,
                                                   frameSize, vmRights,
                                                   attr, pd);
            if (unlikely(map_ret.status != EXCEPTION_NONE)) {
                return map_ret.status;
            }

            setThreadState(ksCurThread, ThreadState_Restart);
            return performPageInvocationMapPTE(cap, cte,
                                               map_ret.pte,
                                               map_ret.pte_entries);
        } else {
            create_mappings_pde_return_t map_ret;
            map_ret = createSafeMappingEntries_PDE(capFBasePtr, vaddr,
                                                   frameSize, vmRights,
                                                   attr, pd);
            if (unlikely(map_ret.status != EXCEPTION_NONE)) {
                return map_ret.status;
            }

            setThreadState(ksCurThread, ThreadState_Restart);
            return performPageInvocationMapPDE(cap, cte,
                                               map_ret.pde,
                                               map_ret.pde_entries);
        }
    }

    case ARMPageUnmap: {
        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageInvocationUnmap(cap, cte);
    }

    case ARMPageClean_Data:
    case ARMPageInvalidate_Data:
    case ARMPageCleanInvalidate_Data:
    case ARMPageUnify_Instruction: {
        vptr_t vaddr;
        vptr_t start, end;
        paddr_t pstart;
        word_t page_size;
        word_t page_base;
        vm_page_size_t frameSize;
        pte_t *pt;
        unsigned int ptIndex;
        unsigned int pdIndex;
        pde_t *pd;
        cte_t *ptCte;

        if (length < 2) {
            userError("Page Flush: Truncated message.");
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        frameSize = cap_frame_cap_get_capFSize(cap);

        if (frameSize == ARMSmallPage || frameSize == ARMLargePage) {
            pt = PT_PTR(cap_frame_cap_get_capFMappedObject(cap));
            if (unlikely(!pt)) {
                userError("Page Flush: Frame is not mapped.");
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }
            ptIndex = cap_frame_cap_get_capFMappedIndex(cap);

            ptCte = cdtFindWithExtra(cap_page_table_cap_new(0, 0, PT_REF(pt)));
            assert(ptCte);
            pd = PD_PTR(cap_page_table_cap_get_capPTMappedObject(ptCte->cap));
            if (unlikely(!pd)) {
                userError("Page Flush: Page Table is not mapped.");
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }

            pdIndex = cap_page_table_cap_get_capPTMappedIndex(ptCte->cap);

            vaddr = (pdIndex << 20) |  (ptIndex << 12);
        } else {
            pd = PD_PTR(cap_frame_cap_get_capFMappedObject(cap));
            if (unlikely(!pd)) {
                userError("Page Flush: Frame is not mapped.");
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }
            pdIndex = cap_frame_cap_get_capFMappedIndex(cap);

            vaddr = (pdIndex << 20);
        }

        /* start and end are currently relative inside this page */
        start = getSyscallArg(0, buffer);
        end =   getSyscallArg(1, buffer);

        /* check that the range is sane */
        if (end <= start) {
            userError("PageFlush: Invalid range");
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 1;
            return EXCEPTION_SYSCALL_ERROR;
        }

        page_size = 1 << pageBitsForSize(frameSize);
        page_base = addrFromPPtr((void*)cap_frame_cap_get_capFBasePtr(cap));

        if (start >= page_size || end > page_size) {
            userError("Page Flush: Requested range not inside page");
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        /* turn start and end into absolute addresses */
        pstart = page_base + start;
        start += vaddr;
        end += vaddr;

        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageFlush(label, pd, start, end - 1, pstart);
    }

    case ARMPageGetAddress: {


        /* Check that there are enough message registers */
        assert(n_msgRegisters >= 1);

        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageGetAddress((void*)cap_frame_cap_get_capFBasePtr(cap));
    }

    default:
        current_syscall_error.type = seL4_IllegalOperation;

        return EXCEPTION_SYSCALL_ERROR;
    }
}

static const resolve_ret_t default_resolve_ret_t;

static resolve_ret_t
resolveVAddr(pde_t *pd, vptr_t vaddr)
{
    pde_t *pde = pd + (vaddr >> 20);
    resolve_ret_t ret = default_resolve_ret_t;

    ret.valid = true;

    switch (pde_ptr_get_pdeType(pde)) {
    case pde_pde_section:
        ret.frameBase = pde_pde_section_ptr_get_address(pde);
        if (pde_pde_section_ptr_get_size(pde)) {
            ret.frameSize = ARMSuperSection;
        } else {
            ret.frameSize = ARMSection;
        }
        return ret;

    case pde_pde_coarse: {
        pte_t *pt = ptrFromPAddr(pde_pde_coarse_ptr_get_address(pde));
        pte_t *pte = lookupPTSlot_nofail(pt, vaddr);

        switch (pte_ptr_get_pteType(pte)) {
        case pte_pte_large:
            ret.frameBase = pte_pte_large_ptr_get_address(pte);
            ret.frameSize = ARMLargePage;
            return ret;

        case pte_pte_small:
            ret.frameBase = pte_pte_small_ptr_get_address(pte);
            ret.frameSize = ARMSmallPage;
            return ret;
        }
        break;
    }
    }

    ret.valid = false;
    return ret;
}

static inline vptr_t
pageBase(vptr_t vaddr, vm_page_size_t size)
{
    return vaddr & ~MASK(pageBitsForSize(size));
}

static exception_t
decodeARMPageDirectoryInvocation(word_t label, unsigned int length,
                                 cptr_t cptr, cte_t *cte, cap_t cap,
                                 extra_caps_t extraCaps, word_t *buffer)
{
    switch (label) {
    case ARMPDClean_Data:
    case ARMPDInvalidate_Data:
    case ARMPDCleanInvalidate_Data:
    case ARMPDUnify_Instruction: {
        vptr_t start, end;
        paddr_t pstart;
        pde_t *pd;
        resolve_ret_t resolve_ret;

        if (length < 2) {
            userError("PD Flush: Truncated message.");
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        start = getSyscallArg(0, buffer);
        end =   getSyscallArg(1, buffer);

        /* Check sanity of arguments */
        if (end <= start) {
            userError("PD Flush: Invalid range");
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 1;
            return EXCEPTION_SYSCALL_ERROR;
        }

        /* Don't let applications flush kernel regions. */
        if (start >= kernelBase || end > kernelBase) {
            userError("PD Flush: Overlaps kernel region.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        pd = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(cap));

        /* Look up the frame containing 'start'. */
        resolve_ret = resolveVAddr(pd, start);

        /* Check that there's actually something there. */
        if (!resolve_ret.valid) {
            /* Fail silently, as there can't be any stale cached data (for the
             * given address space), and getting a syscall error because the
             * relevant page is non-resident would be 'astonishing'. */
            setThreadState(ksCurThread, ThreadState_Restart);
            return EXCEPTION_NONE;
        }

        /* Refuse to cross a page boundary. */
        if (pageBase(start, resolve_ret.frameSize) !=
                pageBase(end - 1, resolve_ret.frameSize)) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = start;
            current_syscall_error.rangeErrorMax =
                pageBase(start, resolve_ret.frameSize) +
                MASK(pageBitsForSize(resolve_ret.frameSize));
            return EXCEPTION_SYSCALL_ERROR;
        }


        /* Calculate the physical start address. */
        pstart = resolve_ret.frameBase
                 + (start & MASK(pageBitsForSize(resolve_ret.frameSize)));


        setThreadState(ksCurThread, ThreadState_Restart);
        return performPDFlush(label, pd, start, end - 1, pstart);
    }

    default:
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

}

exception_t
decodeARMMMUInvocation(word_t label, unsigned int length, cptr_t cptr,
                       cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                       word_t *buffer)
{
    switch (cap_get_capType(cap)) {
    case cap_page_directory_cap:
        return decodeARMPageDirectoryInvocation(label, length, cptr, cte,
                                                cap, extraCaps, buffer);

    case cap_page_table_cap:
        return decodeARMPageTableInvocation (label, length, cte,
                                             cap, extraCaps, buffer);

    case cap_frame_cap:
        return decodeARMFrameInvocation (label, length, cte,
                                         cap, extraCaps, buffer);
    default:
        fail("Invalid ARM arch cap type");
    }
}

exception_t
performPageTableInvocationMap(cap_t cap, cte_t *ctSlot,
                              pde_t pde, pde_t *pdSlot)
{
    cdtUpdate(ctSlot, cap);
    *pdSlot = pde;
    cleanByVA_PoU((word_t)pdSlot, addrFromPPtr(pdSlot));

    return EXCEPTION_NONE;
}

exception_t
performPageTableInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
    if (cap_page_table_cap_get_capPTMappedObject(cap)) {
        unmapPageTable(
            PD_PTR(cap_page_table_cap_get_capPTMappedObject(cap)),
            cap_page_table_cap_get_capPTMappedIndex(cap),
            PT_PTR(cap_page_table_cap_get_capPTBasePtr(cap)));
    }
    cdtUpdate(ctSlot, cap_page_table_cap_set_capPTMappedObject(cap, 0));

    return EXCEPTION_NONE;
}

static exception_t
performPageGetAddress(void *vbase_ptr)
{
    paddr_t capFBasePtr;

    /* Get the physical address of this frame. */
    capFBasePtr = addrFromPPtr(vbase_ptr);

    /* return it in the first message register */
    setRegister(ksCurThread, msgRegisters[0], capFBasePtr);
    setRegister(ksCurThread, msgInfoRegister,
                wordFromMessageInfo(message_info_new(0, 0, 0, 1)));

    return EXCEPTION_NONE;
}

exception_t
performPageInvocationMapPTE(cap_t cap, cte_t *ctSlot, pte_t pte,
                            pte_range_t pte_entries)
{
    unsigned int i, j UNUSED;

    cap = cap_frame_cap_set_capFMappedObject(cap, PT_REF(pte_entries.pt));
    cap = cap_frame_cap_set_capFMappedIndex(cap, pte_entries.start);
    cdtUpdate(ctSlot, cap);

    j = pte_entries.length;
    /** GHOSTUPD: "(\<acute>j <= 16, id)" */

    j = pte_entries.length;
    /** GHOSTUPD: "(\<acute>j <= 16, id)" */

    for (i = 0; i < pte_entries.length; i++) {
        pte_entries.pt[pte_entries.start + i] = pte;
    }
    cleanCacheRange_PoU((word_t)(pte_entries.pt + pte_entries.start),
                        ((word_t)LAST_BYTE_PTE(pte_entries.pt + pte_entries.start, pte_entries.length)),
                        addrFromPPtr(pte_entries.pt + pte_entries.start));

    return EXCEPTION_NONE;
}

exception_t
performPageInvocationMapPDE(cap_t cap, cte_t *ctSlot, pde_t pde,
                            pde_range_t pde_entries)
{
    unsigned int i;

    cap = cap_frame_cap_set_capFMappedObject(cap, PD_REF(pde_entries.pd));
    cap = cap_frame_cap_set_capFMappedIndex(cap, pde_entries.start);
    cdtUpdate(ctSlot, cap);

    for (i = 0; i < pde_entries.length; i++) {
        pde_entries.pd[pde_entries.start + i] = pde;
    }
    cleanCacheRange_PoU((word_t)&pde_entries.pd[pde_entries.start],
                        ((word_t)LAST_BYTE_PDE(pde_entries.pd + pde_entries.start, pde_entries.length)),
                        addrFromPPtr(&pde_entries.pd[pde_entries.start]));

    return EXCEPTION_NONE;
}

exception_t
performPageInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
    if (cap_frame_cap_get_capFMappedObject(cap)) {
        switch (cap_frame_cap_get_capFSize(cap)) {
        case ARMSmallPage:
        case ARMLargePage:
            unmapPagePTE(cap_frame_cap_get_capFSize(cap),
                         PT_PTR(cap_frame_cap_get_capFMappedObject(cap)),
                         cap_frame_cap_get_capFMappedIndex(cap),
                         (void *)cap_frame_cap_get_capFBasePtr(cap));
            break;
        case ARMSection:
        case ARMSuperSection:
            unmapPagePDE(cap_frame_cap_get_capFSize(cap),
                         PD_PTR(cap_frame_cap_get_capFMappedObject(cap)),
                         cap_frame_cap_get_capFMappedIndex(cap),
                         (void *)cap_frame_cap_get_capFBasePtr(cap));
            break;
        default:
            fail("Invalid ARM page type");
            break;
        }
    }

    cdtUpdate(ctSlot, cap_frame_cap_set_capFMappedObject(cap, 0));

    return EXCEPTION_NONE;
}

void
doFlush(int label, vptr_t start, vptr_t end, paddr_t pstart)
{
    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end, id)" */

    switch (label) {
    case ARMPDClean_Data:
    case ARMPageClean_Data:
        cleanCacheRange_RAM(start, end, pstart);
        break;
    case ARMPDInvalidate_Data:
    case ARMPageInvalidate_Data:
        invalidateCacheRange_RAM(start, end, pstart);
        break;
    case ARMPDCleanInvalidate_Data:
    case ARMPageCleanInvalidate_Data:
        cleanInvalidateCacheRange_RAM(start, end, pstart);
        break;
    case ARMPDUnify_Instruction:
    case ARMPageUnify_Instruction:
        /* First clean data lines to point of unification
           (L2 cache)... */
        cleanCacheRange_PoU(start, end, pstart);
        /* Ensure it's been written. */
        dsb();
        /* ...then invalidate the corresponding instruction lines
           to point of unification... */
        invalidateCacheRange_I(start, end, pstart);
        /* ...then invalidate branch predictors. */
        branchFlushRange(start, end, pstart);
        /* Ensure new instructions come from fresh cache lines. */
        isb();
        break;
    default:
        fail("Invalid operation, shouldn't get here.\n");
    }
}

static exception_t
performPageFlush(int label, pde_t *pd, vptr_t start,
                 vptr_t end, paddr_t pstart)
{
    bool_t root_switched;

    /* now we can flush. But only if we were given a non zero range */
    if (start < end) {
        root_switched = setVMRootForFlush(pd);

        doFlush(label, start, end, pstart);

        if (root_switched) {
            setVMRoot(ksCurThread);
        }
    }

    return EXCEPTION_NONE;
}

static exception_t
performPDFlush(int label, pde_t *pd, vptr_t start,
               vptr_t end, paddr_t pstart)
{
    bool_t root_switched;

    /* Flush if given a non zero range */
    if (start < end) {
        root_switched = setVMRootForFlush(pd);

        doFlush(label, start, end, pstart);

        if (root_switched) {
            setVMRoot(ksCurThread);
        }
    }

    return EXCEPTION_NONE;
}

#ifdef DEBUG
void kernelPrefetchAbort(word_t pc) VISIBLE;
void kernelDataAbort(word_t pc) VISIBLE;

void
kernelPrefetchAbort(word_t pc)
{
    word_t ifsr = getIFSR();

    printf("\n\nKERNEL PREFETCH ABORT!\n");
    printf("Faulting instruction: 0x%x\n", (unsigned int)pc);
    printf("IFSR: 0x%x\n", (unsigned int)ifsr);

    halt();
}

void
kernelDataAbort(word_t pc)
{
    word_t dfsr = getDFSR();
    word_t far = getFAR();

    printf("\n\nKERNEL DATA ABORT!\n");
    printf("Faulting instruction: 0x%x\n", (unsigned int)pc);
    printf("FAR: 0x%x DFSR: 0x%x\n", (unsigned int)far, (unsigned int)dfsr);

    halt();
}
#endif
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <api/types.h>
#include <arch/machine.h>
#include <arch/machine/hardware.h>

#define LINE_START(a) ROUND_DOWN(a, L1_CACHE_LINE_SIZE_BITS)
#define LINE_INDEX(a) (LINE_START(a)>>L1_CACHE_LINE_SIZE_BITS)
#define L1_CACHE_LINE_SIZE BIT(L1_CACHE_LINE_SIZE_BITS)

static void
cleanCacheRange_PoC(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        cleanByVA(line, pstart + (line - start));
    }
}

void
cleanInvalidateCacheRange_RAM(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;
    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end, id)" */

    /* First clean the L1 range */
    cleanCacheRange_PoC(start, end, pstart);

    /* ensure operation completes and visible in L2 */
    dsb();

    /* Now clean and invalidate the L2 range */
    plat_cleanInvalidateL2Range(pstart, pstart + (end - start));

    /* Finally clean and invalidate the L1 range. The extra clean is only strictly neccessary
     * in a multiprocessor environment to prevent a write being lost if another core is
     * attempting a store at the same time. As the range should already be clean asking
     * it to clean again should not affect performance */
    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        cleanInvalByVA(line, pstart + (line - start));
    }
    /* ensure clean and invalidate complete */
    dsb();
}

void
cleanCacheRange_RAM(vptr_t start, vptr_t end, paddr_t pstart)
{
    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end
        \<and> \<acute>pstart <= \<acute>pstart + (\<acute>end - \<acute>start), id)" */

    /* clean l1 to l2 */
    cleanCacheRange_PoC(start, end, pstart);

    /* ensure cache operation completes before cleaning l2 */
    dsb();

    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end
        \<and> \<acute>pstart <= \<acute>pstart + (\<acute>end - \<acute>start), id)" */

    /* now clean l2 to RAM */
    plat_cleanL2Range(pstart, pstart + (end - start));
}

void
cleanCacheRange_PoU(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end
        \<and> \<acute>pstart <= \<acute>pstart + (\<acute>end - \<acute>start), id)" */

    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        cleanByVA_PoU(line, pstart + (line - start));
    }
}

void
invalidateCacheRange_RAM(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    /* If the start and end are not aligned to a cache line boundary
     * then we need to clean the line first to prevent invalidating
     * bytes we didn't mean to. Calling the functions in this way is
     * not the most efficient method, but we assume the user will
     * rarely be this silly */
    if (start != LINE_START(start)) {
        cleanCacheRange_RAM(start, start, pstart);
    }
    if (end + 1 != LINE_START(end + 1)) {
        line = LINE_START(end);
        cleanCacheRange_RAM(line, line, pstart + (line - start));
    }

    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end
        \<and> \<acute>pstart <= \<acute>pstart + (\<acute>end - \<acute>start), id)" */

    /* Invalidate L2 range. Invalidating the L2 before the L1 is the order
     * given in the l2c_310 manual, as an L1 line might be allocated from the L2
     * before the L2 can be invalidated. */
    plat_invalidateL2Range(pstart, pstart + (end - start));

    /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> \<acute>end - \<acute>start <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
        \<and> \<acute>start <= \<acute>end
        \<and> \<acute>pstart <= \<acute>pstart + (\<acute>end - \<acute>start), id)" */

    /* Now invalidate L1 range */
    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        invalidateByVA(line, pstart + (line - start));
    }
    /* Ensure invalidate completes */
    dsb();
}

void
invalidateCacheRange_I(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        invalidateByVA_I(line, pstart + (line - start));
    }
}

void
branchFlushRange(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    for (index = LINE_INDEX(start); index < LINE_INDEX(end) + 1; index++) {
        line = index << L1_CACHE_LINE_SIZE_BITS;
        branchFlush(line, pstart + (line - start));
    }
}

void
cleanCaches_PoU(void)
{
    dsb();
    clean_D_PoU();
    dsb();
    invalidate_I_PoU();
    dsb();
}

void
cleanInvalidateL1Caches(void)
{
    dsb();
    cleanInvalidate_D_PoC();
    dsb();
    invalidate_I_PoU();
    dsb();
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#ifdef DEBUG

#include <object/structures.h>
#include <object/tcb.h>
#include <model/statedata.h>
#include <machine/capdl.h>
#include <arch/machine/capdl.h>
#include <plat/machine/debug_helpers.h>
#include <plat/machine/hardware.h>

#define ARCH 0xe0

#define PD_READ_SIZE         BIT(PD_BITS)
#define PT_READ_SIZE         BIT(PT_BITS)

static int getDecodedChar(unsigned char *result)
{
    unsigned char c;
    c = getDebugChar();
    if (c == START) {
        return 1;
    }
    if (c == ESCAPE) {
        c = getDebugChar();
        if (c == START) {
            return 1;
        }
        switch (c) {
        case ESCAPE_ESCAPE:
            *result = ESCAPE;
            break;
        case START_ESCAPE:
            *result = START;
            break;
        case END_ESCAPE:
            *result = END;
            break;
        default:
            if (c >= 20 && c < 40) {
                *result = c - 20;
            }
        }
        return 0;
    } else {
        *result = c;
        return 0;
    }
}

static void putEncodedChar(unsigned char c)
{
    switch (c) {
    case ESCAPE:
        putDebugChar(ESCAPE);
        putDebugChar(ESCAPE_ESCAPE);
        break;
    case START:
        putDebugChar(ESCAPE);
        putDebugChar(START_ESCAPE);
        break;
    case END:
        putDebugChar(ESCAPE);
        putDebugChar(END_ESCAPE);
        break;
    default:
        if (c < 20) {
            putDebugChar(ESCAPE);
            putDebugChar(c + 20);
        } else {
            putDebugChar(c);
        }
    }
}

static int getArg32(unsigned int *res)
{
    unsigned char b1 = 0;
    unsigned char b2 = 0;
    unsigned char b3 = 0;
    unsigned char b4 = 0;
    if (getDecodedChar(&b1)) {
        return 1;
    }
    if (getDecodedChar(&b2)) {
        return 1;
    }
    if (getDecodedChar(&b3)) {
        return 1;
    }
    if (getDecodedChar(&b4)) {
        return 1;
    }
    *res = (b1 << 24 ) | (b2 << 16) | (b3 << 8) | b4;
    return 0;
}

static void sendWord(unsigned int word)
{
    putEncodedChar(word & 0xff);
    putEncodedChar((word >> 8) & 0xff);
    putEncodedChar((word >> 16) & 0xff);
    putEncodedChar((word >> 24) & 0xff);
}

static void sendPD(unsigned int address)
{
    unsigned int i, exists;
    pde_t *start = (pde_t *)address;
    for (i = 0; i < PD_READ_SIZE; i++) {
        pde_t pde = start[i];
        exists = 0;
        if (pde_get_pdeType(pde) == pde_pde_coarse && pde_pde_coarse_get_address(pde) != 0) {
            exists = 1;
        } else if (pde_get_pdeType(pde) == pde_pde_section && (pde_pde_section_get_address(pde) != 0 ||
                                                               pde_pde_section_get_AP(pde))) {
            exists = 1;
        }
        if (exists != 0 && i < kernelBase >> pageBitsForSize(ARMSection)) {
            sendWord(i);
            sendWord(pde.words[0]);
        }
    }
}

static void sendPT(unsigned int address)
{
    unsigned int i, exists;
    pte_t *start = (pte_t *)address;
    for (i = 0; i < PT_READ_SIZE; i++) {
        pte_t pte = start[i];
        exists = 0;
        if (pte_get_pteType(pte) == pte_pte_large && (pte_pte_large_get_address(pte) != 0 ||
                                                      pte_pte_large_get_AP(pte))) {
            exists = 1;
        } else if (pte_get_pteType(pte) == pte_pte_small && (pte_pte_small_get_address(pte) != 0 ||
                                                             pte_pte_small_get_AP(pte))) {
            exists = 1;
        }
        if (exists != 0) {
            sendWord(i);
            sendWord(pte.words[0]);
        }
    }
}

static void sendRunqueues(void)
{
    unsigned int i;
    sendWord((unsigned int)ksCurThread);
    for (i = 0; i < NUM_READY_QUEUES; i++) {
        tcb_t *current = ksReadyQueues[i].head;
        if (current != 0) {
            while (current != ksReadyQueues[i].end) {
                sendWord((unsigned int)current);
                current = current -> tcbSchedNext;
            }
            sendWord((unsigned int)current);
        }
    }
}

static void sendEPQueue(unsigned int epptr)
{
    tcb_t *current = (tcb_t *)endpoint_ptr_get_epQueue_head((endpoint_t *)epptr);
    tcb_t *tail = (tcb_t *)endpoint_ptr_get_epQueue_tail((endpoint_t *)epptr);
    if (current == 0) {
        return;
    }
    while (current != tail) {
        sendWord((unsigned int)current);
        current = current->tcbEPNext;
    }
    sendWord((unsigned int)current);
}

static void sendCNode(unsigned int address, unsigned int sizebits)
{
    unsigned int i;
    cte_t *start = (cte_t *)address;
    for (i = 0; i < (1 << sizebits); i++) {
        cap_t cap = start[i].cap;
        if (cap_get_capType(cap) != cap_null_cap) {
            sendWord(i);
            sendWord(cap.words[0]);
            sendWord(cap.words[1]);
        }
    }
}

static void sendIRQNode(void)
{
    sendCNode((unsigned int)intStateIRQNode, 8);
}

static void sendVersion(void)
{
    sendWord(ARCH);
    sendWord(CAPDL_VERSION);
}

void capDL(void)
{
    int result;
    int done = 0;
    while (done == 0) {
        unsigned char c;
        do {
            c = getDebugChar();
        } while (c != START);
        do {
            result = getDecodedChar(&c);
            if (result) {
                continue;
            }
            switch (c) {
            case PD_COMMAND: {
                /*pgdir */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendPD(arg);
                putDebugChar(END);
            }
            break;
            case PT_COMMAND: {
                /*pg table */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendPT(arg);
                putDebugChar(END);
            }
            break;
            case RQ_COMMAND: {
                /*runqueues */
                sendRunqueues();
                putDebugChar(END);
                result = 0;
            }
            break;
            case EP_COMMAND: {
                /*endpoint waiters */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendEPQueue(arg);
                putDebugChar(END);
            }
            break;
            case CN_COMMAND: {
                /*cnode */
                unsigned int address, sizebits;
                result = getArg32(&address);
                if (result) {
                    continue;
                }
                result = getArg32(&sizebits);
                if (result) {
                    continue;
                }

                sendCNode(address, sizebits);
                putDebugChar(END);
            }
            break;
            case IRQ_COMMAND: {
                sendIRQNode();
                putDebugChar(END);
                result = 0;
            }
            break;
            case VERSION_COMMAND: {
                sendVersion();
                putDebugChar(END);
            }
            break;
            case DONE: {
                done = 1;
                putDebugChar(END);
            }
            default:
                result = 0;
                break;
            }
        } while (result);
    }
}

#endif
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <stdint.h>
#include <util.h>
#include <arch/machine/debug.h>
#include <machine/io.h>
#include <model/statedata.h>

typedef struct {
    uint32_t va;
    break_handler_t handler;
} breakpoint_t;

breakpoint_t breakpoints[MAX_BREAKPOINTS] VISIBLE;
int n_breakpoints;

void
debug_init(void)
{
    uint32_t didr;
    int version, variant, revision;
    unsigned int i;

    didr = getDIDR();
    n_breakpoints = ((didr >> DIDR_BRP_OFFSET) & MASK(DIDR_BRP_SIZE)) + 1;
    version = (didr >> DIDR_VERSION_OFFSET) & MASK(DIDR_VERSION_SIZE);
    variant = (didr >> DIDR_VARIANT_OFFSET) & MASK(DIDR_VARIANT_SIZE);
    revision = (didr >> DIDR_REVISION_OFFSET) & MASK(DIDR_REVISION_SIZE);

    printf("debug_init:  variant %d  revision %d  debug version %d\n",
           variant, revision, version);
    printf("debug_init:  breakpoint registers %d\n", n_breakpoints);

    /* Enable monitor mode debugging */
    setDSCR(BIT(DSCR_MONITOR_MODE_ENABLE));

    /* Disable all breakpoints and vector catch */
    for (i = 0; i < n_breakpoints; i++) {
        breakpoints[i].handler = 0;
        setBCR(i, 0);
    }
    setVCR(0);
}

void
software_breakpoint(uint32_t va, user_context_t *context)
{
    unsigned int i;

    printf("Software breakpoint at %x, context:\n", (unsigned int)va);
    for (i = 0; i < 10; i++) {
        printf("r%d  %x\n", i, (unsigned int)context->registers[i]);
    }
    for (i = 10; i < 15; i++) {
        printf("r%d %x\n", i, (unsigned int)context->registers[i]);
    }
    printf("LR_abt %x\n", (unsigned int)context->registers[15]);
    printf("CPSR %x\n", (unsigned int)context->registers[16]);

    printf("ksCurThread context:\n");
    for (i = 0; i < 10; i++) {
        printf("r%d  %x\n", i,
               (unsigned int)ksCurThread->tcbArch.tcbContext.registers[i]);
    }
    for (i = 10; i < 15; i++) {
        printf("r%d %x\n", i,
               (unsigned int)ksCurThread->tcbArch.tcbContext.registers[i]);
    }
    printf("LR_abt %x\n", (unsigned int)ksCurThread->tcbArch.tcbContext.registers[15]);
    printf("CPSR %x\n", (unsigned int)ksCurThread->tcbArch.tcbContext.registers[16]);
}

void
breakpoint_multiplexer(uint32_t va, user_context_t *context)
{
    unsigned int i;

    for (i = 0; i < n_breakpoints && (breakpoints[i].va != va ||
                                      !breakpoints[i].handler); i++);

    if (i == n_breakpoints) {
        printf("Unhandled breakpoint @ %x\n", (unsigned int)va);
    } else {
        breakpoints[i].handler(context);
    }
}

int
set_breakpoint(uint32_t va, break_handler_t handler)
{
    unsigned int i;

    for (i = 0; i < n_breakpoints && breakpoints[i].handler; i++);

    if (i == n_breakpoints) {
        return -1;
    }

    breakpoints[i].va = va;
    breakpoints[i].handler = handler;

    /* Set breakpoint address */
    setBVR(i, va);

    /* Set breakpoint control for full word, user and supervisor and enabled */
    setBCR(i, (0xf << BCR_BYTE_SELECT) |
           (0x3 << BCR_SUPERVISOR) |
           BIT(BCR_ENABLE));

    return i;
}

void
clear_breakpoint(uint32_t va)
{
    unsigned int i;

    for (i = 0; i < n_breakpoints; i++) {
        if (breakpoints[i].va == va && breakpoints[i].handler) {
            /* Disable breakpoint */
            setBCR(i, 0);
            breakpoints[i].handler = 0;
        }
    }
}

catch_handler_t catch_handler VISIBLE;

void
set_catch_handler(catch_handler_t handler)
{
    catch_handler = handler;
}

void
catch_vector(vector_t vector)
{
    uint32_t vcr;

    vcr = getVCR();
    vcr |=  BIT(vector);
    setVCR(vcr);
}

void
uncatch_vector(vector_t vector)
{
    uint32_t vcr;

    vcr = getVCR();
    vcr &=  ~BIT(vector);
    setVCR(vcr);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <config.h>
#include <api/types.h>
#include <arch/machine.h>
#include <arch/machine/hardware.h>

/* Prototyped here as this is referenced from assembly */
void arm_errata(void);

#ifdef ARM1136_WORKAROUND
/*
 * Potentially work around ARM1136 errata #364296, which can cause data
 * cache corruption.
 *
 * The fix involves disabling hit-under-miss via an undocumented bit in
 * the aux control register, as well as the FI bit in the control
 * register. The result of enabling these two bits is for fast
 * interrupts to *not* be enabled, but hit-under-miss to be disabled. We
 * only need to do this for a particular revision of the ARM1136.
 */
BOOT_CODE static void
errata_arm1136(void)
{
    /* See if we are affected by the errata. */
    if ((getProcessorID() & ~0xf) == ARM1136_R0PX) {

        /* Enable the Fast Interrupts bit in the control register. */
        writeSystemControlRegister(
            readSystemControlRegister() | BIT(CONTROL_FI));

        /* Set undocumented bit 31 in the auxiliary control register */
        writeAuxiliaryControlRegister(
            readAuxiliaryControlRegister() | BIT(31));
    }
}
#endif

#ifdef CONFIG_ARM_ERRATA_773022
/*
 * There is an errata for Cortex-A15 up to r0p4 where the loop buffer
 * may deliver incorrect instructions. The work around is to disable
 * the loop buffer. Errata is number 773022.
 */
BOOT_CODE static void errata_armA15_773022(void)
{
    /* Fetch the processor primary part number. */
    uint32_t proc_id = getProcessorID();
    uint32_t variant = (proc_id >> 20) & MASK(4);
    uint32_t revision = proc_id & MASK(4);
    uint32_t part = (proc_id >> 4) & MASK(12);

    /* Check that we are running A15 and a revision upto r0p4. */
    if (part == 0xc0f && variant == 0 && revision <= 4) {
        /* Disable loop buffer in the auxiliary control register */
        writeAuxiliaryControlRegister(
            readAuxiliaryControlRegister() | BIT(1));
    }
}
#endif

BOOT_CODE void  __attribute__((externally_visible)) arm_errata(void)
{
#ifdef ARM1136_WORKAROUND
    errata_arm1136();
#endif
#ifdef CONFIG_ARM_ERRATA_773022
    (void)errata_armA15_773022;
    errata_armA15_773022();
#endif
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <arch/machine/gic_pl390.h>


/* Setters/getters helpers */
#define IRQ_REG(IRQ) ((IRQ) / 32)
#define IRQ_BIT(IRQ) BIT((IRQ) % 32)
#define IRQ_MASK MASK(10)
#define IS_IRQ_VALID(X) (((X)&IRQ_MASK) < SPECIAL_IRQ_START)

#define CPU(X) (1<<(X))
#define TARGET_CPU_ALLINT(CPU) ( \
        ( ((CPU)&0xff)<<0  ) |\
        ( ((CPU)&0xff)<<8  ) |\
        ( ((CPU)&0xff)<<16 ) |\
        ( ((CPU)&0xff)<<24 ) \
    )
#define TARGET_CPU0_ALLINT   TARGET_CPU_ALLINT(CPU(0))


#define IRQ_SET_ALL 0xffffffff;

/* Special IRQ's */
#define SPECIAL_IRQ_START 1020
#define IRQ_NONE          1023

/* Memory map for GIC distributor */
struct gic_dist_map {
    uint32_t enable;                /* 0x000 */
    uint32_t ic_type;               /* 0x004 */
    uint32_t dist_ident;            /* 0x008 */
    uint32_t res1[29];              /* [0x00C, 0x080) */

    uint32_t security[32];          /* [0x080, 0x100) */

    uint32_t enable_set[32];        /* [0x100, 0x180) */
    uint32_t enable_clr[32];        /* [0x180, 0x200) */
    uint32_t pending_set[32];       /* [0x200, 0x280) */
    uint32_t pending_clr[32];       /* [0x280, 0x300) */
    uint32_t active[32];            /* [0x300, 0x380) */
    uint32_t res2[32];              /* [0x380, 0x400) */

    uint32_t priority[255];         /* [0x400, 0x7FC) */
    uint32_t res3;                  /* 0x7FC */

    uint32_t targets[255];            /* [0x800, 0xBFC) */
    uint32_t res4;                  /* 0xBFC */

    uint32_t config[64];             /* [0xC00, 0xD00) */

    uint32_t spi[32];               /* [0xD00, 0xD80) */
    uint32_t res5[20];              /* [0xD80, 0xDD0) */
    uint32_t res6;                  /* 0xDD0 */
    uint32_t legacy_int;            /* 0xDD4 */
    uint32_t res7[2];               /* [0xDD8, 0xDE0) */
    uint32_t match_d;               /* 0xDE0 */
    uint32_t enable_d;              /* 0xDE4 */
    uint32_t res8[70];               /* [0xDE8, 0xF00) */

    uint32_t sgi_control;           /* 0xF00 */
    uint32_t res9[3];               /* [0xF04, 0xF10) */
    uint32_t sgi_pending_clr[4];    /* [0xF10, 0xF20) */
    uint32_t res10[40];             /* [0xF20, 0xFC0) */

    uint32_t periph_id[12];         /* [0xFC0, 0xFF0) */
    uint32_t component_id[4];       /* [0xFF0, 0xFFF] */
};


/* Memory map for GIC  cpu interface */
struct gic_cpu_iface_map {
    uint32_t icontrol;              /*  0x000         */
    uint32_t pri_msk_c;             /*  0x004         */
    uint32_t pb_c;                  /*  0x008         */
    uint32_t int_ack;               /*  0x00C         */
    uint32_t eoi;                   /*  0x010         */
    uint32_t run_priority;          /*  0x014         */
    uint32_t hi_pend;               /*  0x018         */
    uint32_t ns_alias_bp_c;         /*  0x01C         */
    uint32_t ns_alias_ack;          /*  0x020 GIC400 only */
    uint32_t ns_alias_eoi;          /*  0x024 GIC400 only */
    uint32_t ns_alias_hi_pend;      /*  0x028 GIC400 only */

    uint32_t res1[5];               /* [0x02C, 0x040) */

    uint32_t integ_en_c;            /*  0x040 PL390 only */
    uint32_t interrupt_out;         /*  0x044 PL390 only */
    uint32_t res2[2];               /* [0x048, 0x050)    */

    uint32_t match_c;               /*  0x050 PL390 only */
    uint32_t enable_c;              /*  0x054 PL390 only */

    uint32_t res3[30];              /* [0x058, 0x0FC)  */
    uint32_t active_priority[4];    /* [0x0D0, 0xDC] GIC400 only */
    uint32_t ns_active_priority[4]; /* [0xE0,0xEC] GIC400 only */
    uint32_t res4[3];

    uint32_t cpu_if_ident;          /*  0x0FC         */
    uint32_t res5[948];             /* [0x100. 0xFC0) */

    uint32_t periph_id[8];          /* [0xFC0, 9xFF0) PL390 only */
    uint32_t component_id[4];       /* [0xFF0, 0xFFF] PL390 only */
};

#ifndef GIC_PL390_DISTRIBUTOR_PPTR
#error GIC_PL390_DISTRIBUTOR_PPTR must be defined for virtual memory access to the gic distributer
#else  /* GIC_DISTRIBUTOR_PPTR */
volatile struct gic_dist_map *gic_dist =
    (volatile struct gic_dist_map*)(GIC_PL390_DISTRIBUTOR_PPTR);
#endif /* GIC_DISTRIBUTOR_PPTR */

#ifndef GIC_PL390_CONTROLLER_PPTR
#error GIC_PL390_CONTROLLER_PPTR must be defined for virtual memory access to the gic cpu interface
#else  /* GIC_CONTROLLER_PPTR */
volatile struct gic_cpu_iface_map *gic_cpuiface =
    (volatile struct gic_cpu_iface_map*)(GIC_PL390_CONTROLLER_PPTR);
#endif /* GIC_CONTROLLER_PPTR */


/* Helpers */
static inline int
is_irq_pending(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->pending_set[word] & BIT(bit));
}

static inline int
is_irq_active(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->active[word] & BIT(bit));
}

static inline int
is_irq_enabled(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->enable_set[word] & BIT(bit));
}

static inline int
is_irq_edge_triggered(irq_t irq)
{
    int word = irq / 16;
    int bit = ((irq & 0xf) * 2);
    return !!(gic_dist->config[word] & BIT(bit + 1));
}

static inline int
is_irq_1_N(irq_t irq)
{
    int word = irq / 16;
    int bit = ((irq & 0xf) * 2);
    return !!(gic_dist->config[word] & BIT(bit + 0));
}

static inline int
is_irq_N_N(irq_t irq)
{
    return !(is_irq_1_N(irq));
}

static inline void
dist_pending_clr(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    /* Using |= here is detrimental to your health */
    gic_dist->pending_clr[word] = BIT(bit);
}

static inline void
dist_pending_set(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    gic_dist->pending_set[word] = BIT(bit);
}

static inline void
dist_enable_clr(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    /* Using |= here is detrimental to your health */
    gic_dist->enable_clr[word] = BIT(bit);
}

static inline void
dist_enable_set(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    gic_dist->enable_set[word] = BIT(bit);
}



/**
   DONT_TRANSLATE
 */
BOOT_CODE static void
dist_init(void)
{
    int i;
    int nirqs = 32 * ((gic_dist->ic_type & 0x1f) + 1);
    gic_dist->enable = 0;

    for (i = 0; i < nirqs; i += 32) {
        /* disable */
        gic_dist->enable_clr[i / 32] = IRQ_SET_ALL;
        /* clear pending */
        gic_dist->pending_clr[i / 32] = IRQ_SET_ALL;
    }

    /* reset interrupts priority */
    for (i = 32; i < nirqs; i += 4) {
        gic_dist->priority[i / 4] = 0x0;
    }

    /*
     * reset int target to cpu 0
     * (Should really query which processor we're running on and use that)
     */
    for (i = 0; i < nirqs; i += 4) {
        gic_dist->targets[i / 4] = TARGET_CPU0_ALLINT;
    }

    /* level-triggered, 1-N */
    for (i = 64; i < nirqs; i += 32) {
        gic_dist->config[i / 32] = 0x55555555;
    }
    /* configure to group 0 for security */
    for (i = 0; i < nirqs; i += 32) {
        gic_dist->security[i / 32] = 0;
    }
    /* enable the int controller */
    gic_dist->enable = 1;
}

/**
   DONT_TRANSLATE
 */
BOOT_CODE static void
cpu_iface_init(void)
{
    uint32_t i;

    /* For non-Exynos4, the registers are banked per CPU, need to clear them */
    gic_dist->enable_clr[0] = IRQ_SET_ALL;
    gic_dist->pending_clr[0] = IRQ_SET_ALL;
    gic_dist->priority[0] = 0x0;
    /* put everything in group 0 */

    /* clear any software generated interrupts */
    for (i = 0; i < 16; i += 4) {
        gic_dist->sgi_pending_clr[i / 4] = IRQ_SET_ALL;
    }

    gic_cpuiface->icontrol = 0;
    gic_cpuiface->pri_msk_c = 0x000000f0;
    gic_cpuiface->pb_c = 0x00000003;

    while (((i = gic_cpuiface->int_ack) & IRQ_MASK) != IRQ_NONE) {
        gic_cpuiface->eoi = i;
    }
    gic_cpuiface->icontrol = 1;
}

/**
   DONT_TRANSLATE
 */
BOOT_CODE void
initIRQController(void)
{
    dist_init();
    cpu_iface_init();
}



/*
 * The only sane way to get an GIC IRQ number that can be properly
 * ACKED later is through the int_ack register. Unfortunately, reading
 * this register changes the interrupt state to pending so future
 * reads will not return the same value For this reason, we have a
 * global variable to store the IRQ number.
 */
static uint32_t active_irq = IRQ_NONE;

/**
   DONT_TRANSLATE
 */
interrupt_t
getActiveIRQ(void)
{
    uint32_t irq;
    if (!IS_IRQ_VALID(active_irq)) {
        active_irq = gic_cpuiface->int_ack;
    }

    if (IS_IRQ_VALID(active_irq)) {
        irq = active_irq & IRQ_MASK;
    } else {
        irq = irqInvalid;
    }

    return irq;
}

/*
 * GIC has 4 states: pending->active(+pending)->inactive
 * seL4 expects two states: active->inactive.
 * We ignore the active state in GIC to conform
 */
/**
   DONT_TRANSLATE
 */
bool_t
isIRQPending(void)
{
    return IS_IRQ_VALID(gic_cpuiface->hi_pend);
}


/**
   DONT_TRANSLATE
 */
void
maskInterrupt(bool_t disable, interrupt_t irq)
{
    if (disable) {
        dist_enable_clr(irq);
    } else {
        dist_enable_set(irq);
    }
}

/**
   DONT_TRANSLATE
 */
void
ackInterrupt(irq_t irq)
{
    assert(IS_IRQ_VALID(active_irq) && (active_irq & IRQ_MASK) == irq);
    if (is_irq_edge_triggered(irq)) {
        dist_pending_clr(irq);
    }
    gic_cpuiface->eoi = active_irq;
    active_irq = IRQ_NONE;
}

void
handleSpuriousIRQ(void)
{
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <machine/registerset.h>
#include <arch/machine.h>

word_t PURE
getRestartPC(tcb_t *thread)
{
    return getRegister(thread, FaultInstruction);
}

void
setNextPC(tcb_t *thread, word_t v)
{
    setRegister(thread, LR_svc, v);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <config.h>
#include <arch/machine/l2c_310.h>

#define L2_LINE_SIZE_BITS 5
#define L2_LINE_SIZE BIT(L2_LINE_SIZE_BITS) /* 32 byte line size */

#define L2_LINE_START(a) ROUND_DOWN(a, L2_LINE_SIZE_BITS)

compile_assert(l2_l1_same_line_size, L2_LINE_SIZE_BITS == L1_CACHE_LINE_SIZE_BITS)

/* MSHIELD Control */
#define MSHIELD_SMC_ROM_CTRL_CTRL         0x102
#define MSHIELD_SMC_ROM_CTRL_AUX          0x109
#define MSHIELD_SMC_ROM_CTRL_LATENCY      0x112
/* MSHIELD Address Filter */
#define MSHIELD_SMC_ROM_ADDR_FILT_START   /* ? */
#define MSHIELD_SMC_ROM_ADDR_FILT_END     /* ? */
/* MSHIELD Control 2 */
#define MSHIELD_SMC_ROM_CTRL2_DEBUG       0x100
#define MSHIELD_SMC_ROM_CTRL2_PREFETCH    0x113 /* ? */
#define MSHIELD_SMC_ROM_CTRL2_POWER       /* ? */
/* MSHIELD Cache maintenance */
#define MSHIELD_SMC_ROM_MAINT_INVALIDATE  0x101


/* Cache ID */
#define PL310_LOCKDOWN_BY_MASK            (0xf<<25)
#define PL310_LOCKDOWN_BY_MASTER          (0xe<<25)
#define PL310_LOCKDOWN_BY_LINE            (0xf<<25)

/* Primary control */
#define CTRL_CTRL_EN BIT(0)

/* Auxiliary control */
#define CTRL_AUX_EARLY_BRESP_EN                            BIT(30)
#define CTRL_AUX_IPREFETCH_EN                              BIT(29)
#define CTRL_AUX_DPREFETCH_EN                              BIT(28)
#define CTRL_AUX_NSECURE_INT_ACCESS                        BIT(27)
#define CTRL_AUX_NSECURE_LOCKDOWN_EN                       BIT(26)
#define CTRL_AUX_REPLACEMENT_POLICY                        BIT(25)
#define CTRL_AUX_FORCE_WR_ALLOC(X)            (((X)&0x3) * BIT(23)
#define CTRL_AUX_SHARED_ATTRIB_OVERRIDE_EN                 BIT(22)
#define CTRL_AUX_PARITY_EN                                 BIT(21)
#define CTRL_AUX_EVENT_MONITOR_BUS_EN                      BIT(20)
#define CTRL_AUX_WAYSIZE(X)                   (((X)&0x7) * BIT(17) )
#define CTRL_AUX_ASSOCIATIVITY                             BIT(16)
#define CTRL_AUX_SHARED_ATTRIB_INVALIDATE_EN               BIT(13)
#define CTRL_AUX_EXCLUSIVE_CACHE_CONFIG                    BIT(12)
#define CTRL_AUX_STOREBUFDEV_LIMIT_EN                      BIT(11)
#define CTRL_AUX_HIGH_PRIO_SODEV_EN                        BIT(10)
#define CTRL_AUX_FULL_LINE_ZEROS_ENABLE                    BIT( 0)

#define CTRL_AUX_WAYSIZE_16K         CTRL_AUX_WAYSIZE(1)
#define CTRL_AUX_WAYSIZE_32K         CTRL_AUX_WAYSIZE(2)
#define CTRL_AUX_WAYSIZE_64K         CTRL_AUX_WAYSIZE(3)
#define CTRL_AUX_WAYSIZE_128K        CTRL_AUX_WAYSIZE(4)
#define CTRL_AUX_WAYSIZE_256K        CTRL_AUX_WAYSIZE(5)
#define CTRL_AUX_WAYSIZE_512K        CTRL_AUX_WAYSIZE(6)

#define CTRL_AUX_ASSOCIATIVITY_8WAY   (0 * CTRL_AUX_ASSOCIATIVITY)
#define CTRL_AUX_ASSOCIATIVITY_16WAY  (1 * CTRL_AUX_ASSOCIATIVITY)

#define CTRL_AUS_REPLPOLICY_RROBIN    (0 * CTRL_AUX_REPLACEMENT_POLICY)
#define CTRL_AUS_REPLPOLICY_PRAND     (1 * CTRL_AUX_REPLACEMENT_POLICY)

/* Latency */
#define CTRL_RAM_LATENCY_SET(X,S)    (((X)&0x7) * BIT(S))
#define CTRL_RAM_LATENCY_SETUP(X)    CTRL_RAM_LATENCY_SET(X, 0)
#define CTRL_RAM_LATENCY_READ(X)     CTRL_RAM_LATENCY_SET(X, 4)
#define CTRL_RAM_LATENCY_WRITE(X)    CTRL_RAM_LATENCY_SET(X, 8)

#define CTRL_RAM_LATENCY(W,R,S)    ( CTRL_RAM_LATENCY_SETUP(S) \
                                   | CTRL_RAM_LATENCY_READ(R)  \
                                   | CTRL_RAM_LATENCY_WRITE(W) )


/* Maintenance */
#define MAINTENANCE_PENDING          BIT(0)

/* POWER */
#define CTRL2_PWR_DYNAMIC_CLK_EN     BIT(1)
#define CTRL2_PWR_STANDBY_ON         BIT(0)

/* PREFECTCH */
#define CTRL2_PFET_DBL_LINEFILL_EN              BIT(30)
#define CTRL2_PFET_INST_PREFETCH_EN             BIT(29)
#define CTRL2_PFET_DATA_PREFETCH_EN             BIT(28)
#define CTRL2_PFET_DBL_LINEFILL_ON_WRAP_EN      BIT(27)
#define CTRL2_PFET_PREFETCH_DROP_EN             BIT(24)
#define CTRL2_PFET_INCR_DBL_LINEFILL_EN         BIT(23)
#define CTRL2_PFET_NOT_SAME_ID_ON_EXCL_SEQ_EN   BIT(21)
#define CTRL2_PFET_PREFETCH_OFFSET(X)    ((X) * BIT( 0) )


struct l2cc_map {

    struct {
        uint32_t cache_id;              /* 0x000 */
        uint32_t cache_type;            /* 0x004 */
        uint32_t res[62];
    } id /* reg0 */;

    struct {
        uint32_t control;               /* 0x100 */
        uint32_t aux_control;           /* 0x104 */
        uint32_t tag_ram_control;       /* 0x108 */
        uint32_t data_ram_control;      /* 0x10C */
        uint32_t res[60];
    } control /* reg1 */;

    struct {
        uint32_t ev_counter_ctrl;       /* 0x200 */
        uint32_t ev_counter1_cfg;       /* 0x204 */
        uint32_t ev_counter0_cfg;       /* 0x208 */
        uint32_t ev_counter1;           /* 0x20C */
        uint32_t ev_counter0;           /* 0x210 */
        uint32_t int_mask;              /* 0x214 */
        uint32_t int_mask_status;       /* 0x218 */
        uint32_t int_raw_status;        /* 0x21C */
        uint32_t int_clear;             /* 0x220 */
        uint32_t res[55];
    } interrupt /* reg2 */;

    struct {
        uint32_t res[64];
    } reg3;
    struct {
        uint32_t res[64];
    } reg4;
    struct {
        uint32_t res[64];
    } reg5;
    struct {
        uint32_t res[64];
    } reg6;

    struct {
        uint32_t res[12];
        uint32_t cache_sync;            /* 0x730 */
        uint32_t res1[15];
        uint32_t inv_pa;                /* 0x770 */
        uint32_t res2[2];
        uint32_t inv_way;               /* 0x77C */
        uint32_t res3[12];
        uint32_t clean_pa;              /* 0x7B0 */
        uint32_t res4[1];
        uint32_t clean_index;           /* 0x7B8 */
        uint32_t clean_way;             /* 0x7BC */
        uint32_t res5[12];
        uint32_t clean_inv_pa;          /* 0x7F0 */
        uint32_t res6[1];
        uint32_t clean_inv_index;       /* 0x7F8 */
        uint32_t clean_inv_way;         /* 0x7FC */
    } maintenance /* reg7 */;

    struct {
        uint32_t res[64];
    } reg8;

    struct {
        uint32_t d_lockdown0;           /* 0x900 */
        uint32_t i_lockdown0;           /* 0x904 */
        uint32_t d_lockdown1;           /* 0x908 */
        uint32_t i_lockdown1;           /* 0x90C */
        uint32_t d_lockdown2;           /* 0x910 */
        uint32_t i_lockdown2;           /* 0x914 */
        uint32_t d_lockdown3;           /* 0x918 */
        uint32_t i_lockdown3;           /* 0x91C */
        uint32_t d_lockdown4;           /* 0x920 */
        uint32_t i_lockdown4;           /* 0x924 */
        uint32_t d_lockdown5;           /* 0x928 */
        uint32_t i_lockdown5;           /* 0x92C */
        uint32_t d_lockdown6;           /* 0x930 */
        uint32_t i_lockdown6;           /* 0x934 */
        uint32_t d_lockdown7;           /* 0x938 */
        uint32_t i_lockdown7;           /* 0x93C */
        uint32_t res[4];
        uint32_t lock_line_eng;         /* 0x950 */
        uint32_t unlock_wayg;           /* 0x954 */
        uint32_t res1[42];
    } lockdown /* reg9 */;

    struct {
        uint32_t res[64];
    } reg10;
    struct {
        uint32_t res[64];
    } reg11;

    struct {
        uint32_t addr_filtering_start;  /* 0xC00 */
        uint32_t addr_filtering_end;    /* 0xC04 */
        uint32_t res[62];
    } filter /* reg12 */;

    struct {
        uint32_t res[64];
    } reg13;
    struct {
        uint32_t res[64];
    } reg14;

    struct {
        uint32_t res[16];
        uint32_t debug_ctrl;            /* 0xF40 */
        uint32_t res1[7];
        uint32_t prefetch_ctrl;         /* 0xF60 */
        uint32_t res2[7];
        uint32_t power_ctrl;            /* 0xF80 */
        uint32_t res3[31];
    } control2 /* reg15 */;
};


#ifndef L2CC_L2C310_PPTR
#error L2CC_L2C310_PPTR must be defined for virtual memory access to the L2 cache controller
#else  /* L2CC_PPTR */
volatile struct l2cc_map *l2cc = (volatile struct l2cc_map*)L2CC_L2C310_PPTR;
#endif /* !L2CC_PPTR */


#ifdef TI_MSHIELD
/**
   DONT_TRANSLATE
 */
BOOT_CODE static void
mshield_smc(uint32_t callid, uint32_t arg1, uint32_t arg2)
{
    register uint32_t _arg1 asm ("r0") = arg1;
    register uint32_t _arg2 asm ("r1") = arg2;
    register uint32_t _callid asm ("r12") = callid;
    asm volatile ("push {r2-r12, lr}\n"
                  "dsb\n"
                  "smc #0\n"
                  "pop {r2-r12, lr}"
                  :: "r"(_callid), "r"(_arg1), "r"(_arg2));
}
#endif /* TI_MSHIELD */

/**
   DONT_TRANSLATE
 */
BOOT_CODE void
initL2Cache(void)
{
#ifndef CONFIG_DEBUG_DISABLE_L2_CACHE
    uint32_t aux;
    uint32_t tag_ram;
    uint32_t data_ram;
    uint32_t prefetch;

    prefetch = CTRL2_PFET_INST_PREFETCH_EN | CTRL2_PFET_DATA_PREFETCH_EN;
#if defined(IMX6)
    tag_ram  = CTRL_RAM_LATENCY(1, 2, 1);
    data_ram = CTRL_RAM_LATENCY(1, 2, 1);
#else
    tag_ram  = CTRL_RAM_LATENCY(1, 1, 0);
    data_ram = CTRL_RAM_LATENCY(1, 2, 0);
#endif

    aux      = 0
               | CTRL_AUX_IPREFETCH_EN
               | CTRL_AUX_DPREFETCH_EN
               | CTRL_AUX_NSECURE_INT_ACCESS
               | CTRL_AUX_NSECURE_LOCKDOWN_EN
               | CTRL_AUX_ASSOCIATIVITY_16WAY
               | CTRL_AUS_REPLPOLICY_RROBIN;

#if defined(EXYNOS4) || defined(IMX6) || defined(PLAT_ZYNQ7000) || defined(PLAT_ALLWINNERA20)
    aux |= CTRL_AUX_WAYSIZE_64K;
#elif defined(OMAP4)
    aux |= CTRL_AUX_WAYSIZE_32K;
#else /* ! (EXYNOS4 || OMAP4 || IMX6) */
#error Unknown platform for L2C-310
#endif /* EXYNOS4 || OMAP4 || IMX6 */

#ifdef TI_MSHIELD
    /* Access secure registers through Security Middleware Call */
    /* 1: Write to aux Tag RAM latentcy, Data RAM latency, prefect, power control registers  */
    mshield_smc(MSHIELD_SMC_ROM_CTRL_CTRL, 0, 0);
    mshield_smc(MSHIELD_SMC_ROM_CTRL_AUX , aux, 0);
    mshield_smc(MSHIELD_SMC_ROM_CTRL_LATENCY, tag_ram, data_ram);

#else /* !TI_MSHIELD */
    /* Direct register access */
    /* 1: Write to aux Tag RAM latentcy, Data RAM latency, prefect, power control registers  */
    l2cc->control.aux_control      = aux;
    l2cc->control.tag_ram_control  = tag_ram;
    l2cc->control.data_ram_control = data_ram;
    l2cc->control2.prefetch_ctrl   = prefetch;

#endif /* TI_MSHIELD */

    /* 2: Invalidate by way. */
    l2cc->maintenance.inv_way = 0xffff;
    while ( l2cc->maintenance.inv_way & MAINTENANCE_PENDING );

    /* 3: write to lockdown D & I reg9 if required  */
    if ( (l2cc->id.cache_type & PL310_LOCKDOWN_BY_MASK) == PL310_LOCKDOWN_BY_MASTER) {
        /* disable lockdown */
        l2cc->lockdown.d_lockdown0 = 0;
        l2cc->lockdown.i_lockdown0 = 0;
        l2cc->lockdown.d_lockdown1 = 0;
        l2cc->lockdown.i_lockdown1 = 0;
        l2cc->lockdown.d_lockdown2 = 0;
        l2cc->lockdown.i_lockdown2 = 0;
        l2cc->lockdown.d_lockdown3 = 0;
        l2cc->lockdown.i_lockdown3 = 0;
        l2cc->lockdown.d_lockdown4 = 0;
        l2cc->lockdown.i_lockdown4 = 0;
        l2cc->lockdown.d_lockdown5 = 0;
        l2cc->lockdown.i_lockdown5 = 0;
        l2cc->lockdown.d_lockdown6 = 0;
        l2cc->lockdown.i_lockdown6 = 0;
        l2cc->lockdown.d_lockdown7 = 0;
        l2cc->lockdown.i_lockdown7 = 0;
    }
    if ( (l2cc->id.cache_type & PL310_LOCKDOWN_BY_MASK) == PL310_LOCKDOWN_BY_LINE) {
        /* disable lockdown */
        l2cc->lockdown.lock_line_eng = 0;
    }

    /* 4: write to interrupt clear register to clear any residual raw interrupts set */
    l2cc->interrupt.int_mask  = 0x0;
    /* 5: write to interrupt mask register if you want to enable interrupts (active high) */
    l2cc->interrupt.int_clear = MASK(9);

    /* 6: Enable the L2 cache */
#ifdef TI_MSHIELD
    /* Access secure registers through Security Middleware Call */
    mshield_smc(MSHIELD_SMC_ROM_CTRL_CTRL, 1, 0);
#else /* !TI_MSHIELD */
    /* Direct register access */
    l2cc->control.control |= CTRL_CTRL_EN;
#endif /* TI_MSHIELD */

#endif /* !CONFIG_DEBUG_DISABLE_L2_CACHE */
}

static inline void L2_cacheSync(void)
{
    dmb();
    l2cc->maintenance.cache_sync = 0;
    while (l2cc->maintenance.cache_sync & MAINTENANCE_PENDING);
}

void plat_cleanCache(void)
{
#ifndef CONFIG_DEBUG_DISABLE_L2_CACHE
    /* Clean by way. */
    l2cc->maintenance.clean_way = 0xffff;
    while ( l2cc->maintenance.clean_way & MAINTENANCE_PENDING );
    L2_cacheSync();
#endif /* !CONFIG_DEBUG_DISABLE_L2_CACHE */
}

void plat_cleanL2Range(paddr_t start, paddr_t end)
{
#ifndef CONFIG_DEBUG_DISABLE_L2_CACHE
    /* Documentation specifies this as the only possible line size */
    assert(((l2cc->id.cache_type >> 12) & 0x3) == 0x0);

    for (start = L2_LINE_START(start);
            start != L2_LINE_START(end + L2_LINE_SIZE);
            start += L2_LINE_SIZE) {
        l2cc->maintenance.clean_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();
#endif /* !CONFIG_DEBUG_DISABLE_L2_CACHE */
}

void plat_invalidateL2Range(paddr_t start, paddr_t end)
{
#ifndef CONFIG_DEBUG_DISABLE_L2_CACHE
    /* Documentation specifies this as the only possible line size */
    assert(((l2cc->id.cache_type >> 12) & 0x3) == 0x0);

    /* We assume that if this is a partial line that whoever is calling us
     * has already done the clean, so we just blindly invalidate all the lines */

    for (start = L2_LINE_START(start);
            start != L2_LINE_START(end + L2_LINE_SIZE);
            start += L2_LINE_SIZE) {
        l2cc->maintenance.inv_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();
#endif /* !CONFIG_DEBUG_DISABLE_L2_CACHE */
}

void plat_cleanInvalidateL2Range(paddr_t start, paddr_t end)
{
#ifndef CONFIG_DEBUG_DISABLE_L2_CACHE
    /* Documentation specifies this as the only possible line size */
    assert(((l2cc->id.cache_type >> 12) & 0x3) == 0x0);

    for (start = L2_LINE_START(start);
            start != L2_LINE_START(end + L2_LINE_SIZE);
            start += L2_LINE_SIZE) {
        /* Work around an errata and call the clean and invalidate separately */
        l2cc->maintenance.clean_pa = start;
        dmb();
        l2cc->maintenance.inv_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();
#endif /* !CONFIG_DEBUG_DISABLE_L2_CACHE */
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/priv_timer.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/* A9 MPCORE private timer */

/* 32 bit down counter */
volatile struct priv_timer {
    uint32_t load;
    uint32_t count;
    uint32_t ctrl;
    uint32_t ints;
} *priv_timer = (volatile struct priv_timer*)ARM_MP_PRIV_TIMER_PPTR;

#define TMR_CTRL_ENABLE      BIT(0)
#define TMR_CTRL_AUTORELOAD  BIT(1)
#define TMR_CTRL_IRQEN       BIT(2)
#define TMR_CTRL_PRESCALE    8

#define TMR_INTS_EVENT       BIT(0)


#define CLK_MHZ 400ULL
#define TIMER_INTERVAL_MS    (CONFIG_TIMER_TICK_MS)
#define TIMER_COUNT_BITS 32

#define PRESCALE ((CLK_MHZ*1000 * TIMER_INTERVAL_MS) >> TIMER_COUNT_BITS)
#define TMR_LOAD ((CLK_MHZ*1000 * TIMER_INTERVAL_MS) / (PRESCALE + 1))

/**
   DONT_TRANSLATE
 */
BOOT_CODE void
initTimer(void)
{
    /* reset */
    priv_timer->ctrl = 0;
    priv_timer->ints = 0;

    /* setup */
    priv_timer->load = TMR_LOAD;
    priv_timer->ctrl |= ((PRESCALE) << (TMR_CTRL_PRESCALE))
                        | TMR_CTRL_AUTORELOAD | TMR_CTRL_IRQEN;

    /* Enable */
    priv_timer->ctrl |= TMR_CTRL_ENABLE;
}

/**
   DONT_TRANSLATE
 */
void
resetTimer(void)
{
    priv_timer->ints = TMR_INTS_EVENT;
}



#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/registerset.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <arch/machine/registerset.h>

const register_t msgRegisters[] = {
    R2, R3, R4, R5
};

const register_t frameRegisters[] = {
    FaultInstruction, SP, CPSR,
    R0, R1, R8, R9, R10, R11, R12
};

const register_t gpRegisters[] = {
    R2, R3, R4, R5, R6, R7, R14
};

const register_t exceptionMessage[] = {
    FaultInstruction, SP, CPSR
};

const register_t syscallMessage[] = {
    R0, R1, R2, R3, R4, R5, R6, R7, FaultInstruction, SP, LR, CPSR
};
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <util.h>
#include <api/types.h>
#include <arch/types.h>
#include <arch/model/statedata.h>
#include <arch/object/structures.h>
#include <arch/linker.h>
#include <plat/machine/hardware.h>

/* The global frame, mapped in all address spaces */
word_t armKSGlobalsFrame[BIT(ARMSmallPageBits) / sizeof(word_t)]
ALIGN_BSS(BIT(ARMSmallPageBits));

/* The hardware ASID to virtual ASID mapping table */
pde_t *armKSHWASIDTable[BIT(hwASIDBits)];
hw_asid_t armKSNextASID;

/* The global, privileged, physically-mapped PD */
pde_t armKSGlobalPD[BIT(PD_BITS)] ALIGN_BSS(BIT(PD_SIZE_BITS));

/* The global, privileged, page table. */
pte_t armKSGlobalPT[BIT(PT_BITS)] ALIGN_BSS(BIT(PT_SIZE_BITS));
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <api/failures.h>

#include <arch/object/interrupt.h>

exception_t
Arch_decodeInterruptControl(unsigned int length, extra_caps_t extraCaps)
{
    current_syscall_error.type = seL4_IllegalOperation;
    return EXCEPTION_SYSCALL_ERROR;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <api/failures.h>
#include <kernel/vspace.h>
#include <object/structures.h>
#include <arch/machine.h>
#include <arch/model/statedata.h>
#include <arch/object/objecttype.h>

deriveCap_ret_t
Arch_deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    switch (cap_get_capType(cap)) {
    case cap_page_table_cap:
        ret.cap = cap_page_table_cap_set_capPTMappedObject(cap, 0);
        ret.status = EXCEPTION_NONE;
        return ret;

    case cap_page_directory_cap:
        ret.cap = cap;
        ret.status = EXCEPTION_NONE;
        return ret;

    case cap_frame_cap:
        ret.cap = cap_frame_cap_set_capFMappedObject(cap, 0);
        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        /* This assert has no equivalent in haskell,
         * as the options are restricted by type */
        fail("Invalid arch cap");
    }
}

cap_t CONST
Arch_updateCapData(bool_t preserve, word_t data, cap_t cap)
{
    return cap;
}

cap_t CONST
Arch_maskCapRights(cap_rights_t cap_rights_mask, cap_t cap)
{
    if (cap_get_capType(cap) == cap_frame_cap) {
        vm_rights_t vm_rights;

        vm_rights = vmRightsFromWord(
                        cap_frame_cap_get_capFVMRights(cap));
        vm_rights = maskVMRights(vm_rights, cap_rights_mask);
        return cap_frame_cap_set_capFVMRights(cap,
                                              wordFromVMRights(vm_rights));
    } else {
        return cap;
    }
}

cap_t
Arch_finaliseCap(cap_t cap, bool_t final)
{
    switch (cap_get_capType(cap)) {
    case cap_page_directory_cap:
        if (final) {
            pde_t *pdPtr = PD_PTR(cap_page_directory_cap_get_capPDBasePtr(cap));
            unmapAllPageTables(pdPtr);
            memzero(pdPtr, (kernelBase >> ARMSectionBits) << PDE_SIZE_BITS);
        }
        break;

    case cap_page_table_cap:
        if (cap_page_table_cap_get_capPTMappedObject(cap)) {
            unmapPageTable(
                PD_PTR(cap_page_table_cap_get_capPTMappedObject(cap)),
                cap_page_table_cap_get_capPTMappedIndex(cap),
                PTE_PTR(cap_page_table_cap_get_capPTBasePtr(cap)));
        }
        if (final) {
            unmapAllPages(
                PD_PTR(cap_page_table_cap_get_capPTMappedObject(cap)),
                cap_page_table_cap_get_capPTMappedIndex(cap),
                PT_PTR(cap_page_table_cap_get_capPTBasePtr(cap)));
            clearMemory((void *)cap_get_capPtr(cap), cap_get_capSizeBits(cap));
        }
        break;

    case cap_frame_cap:
        if (cap_frame_cap_get_capFMappedObject(cap)) {
            switch (cap_frame_cap_get_capFSize(cap)) {
            case ARMSmallPage:
            case ARMLargePage:
                unmapPagePTE(cap_frame_cap_get_capFSize(cap),
                             PT_PTR(cap_frame_cap_get_capFMappedObject(cap)),
                             cap_frame_cap_get_capFMappedIndex(cap),
                             (void *)cap_frame_cap_get_capFBasePtr(cap));
                break;
            case ARMSection:
            case ARMSuperSection:
                unmapPagePDE(cap_frame_cap_get_capFSize(cap),
                             PD_PTR(cap_frame_cap_get_capFMappedObject(cap)),
                             cap_frame_cap_get_capFMappedIndex(cap),
                             (void *)cap_frame_cap_get_capFBasePtr(cap));
                break;
            }
        }
        break;
    }
    return cap_null_cap_new();
}

static cap_t CONST
resetMemMapping(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        return cap_frame_cap_set_capFMappedObject(cap, 0);
    case cap_page_table_cap:
        return cap_page_table_cap_set_capPTMappedObject(cap, 0);
    }

    return cap;
}

cap_t
Arch_recycleCap(bool_t is_final, cap_t cap)
{
    int sz;

    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        sz = cap_get_capSizeBits(cap);
        /** GHOSTUPD: "((gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
            \<or> 2 ^ unat \<acute>sz___int <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state)
            \<and> \<acute>sz___int < 32, id)" */

        clearMemory((void *)cap_get_capPtr(cap), sz);
        Arch_finaliseCap(cap, is_final);
        clearMemory((void *)cap_get_capPtr(cap), cap_get_capSizeBits(cap));
        return resetMemMapping(cap);

    case cap_page_table_cap: {
        Arch_finaliseCap(cap, true);
        return resetMemMapping(cap);
    }
    case cap_page_directory_cap: {
        pde_t *pdPtr
            = PDE_PTR(cap_page_directory_cap_get_capPDBasePtr(cap));
        Arch_finaliseCap(cap, true);
        memzero(pdPtr, (kernelBase >> ARMSectionBits) << PDE_SIZE_BITS);
        cleanCacheRange_PoU((word_t)pdPtr,
                            ((word_t)pdPtr) + (1 << PD_SIZE_BITS) - 1,
                            addrFromPPtr(pdPtr));
        return cap;
    }

    default:
        fail("Arch_recycleCap: invalid cap type");
    }

    return cap_null_cap_new();
}

bool_t CONST
Arch_hasRecycleRights(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        return cap_frame_cap_get_capFVMRights(cap) == VMReadWrite;

    default:
        return true;
    }
}


bool_t CONST
Arch_sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_frame_cap:
        if (cap_get_capType(cap_b) == cap_frame_cap) {
            word_t botA, botB, topA, topB;
            botA = cap_frame_cap_get_capFBasePtr(cap_a);
            botB = cap_frame_cap_get_capFBasePtr(cap_b);
            topA = botA + MASK (pageBitsForSize(cap_frame_cap_get_capFSize(cap_a)));
            topB = botB + MASK (pageBitsForSize(cap_frame_cap_get_capFSize(cap_b))) ;
            return ((botA <= botB) && (topA >= topB) && (botB <= topB));
        }
        break;

    case cap_page_table_cap:
        if (cap_get_capType(cap_b) == cap_page_table_cap) {
            return cap_page_table_cap_get_capPTBasePtr(cap_a) ==
                   cap_page_table_cap_get_capPTBasePtr(cap_b);
        }
        break;

    case cap_page_directory_cap:
        if (cap_get_capType(cap_b) == cap_page_directory_cap) {
            return cap_page_directory_cap_get_capPDBasePtr(cap_a) ==
                   cap_page_directory_cap_get_capPDBasePtr(cap_b);
        }
        break;
    }

    return false;
}


bool_t CONST
Arch_sameObjectAs(cap_t cap_a, cap_t cap_b)
{
    if ((cap_get_capType(cap_a) == cap_frame_cap) &&
            (cap_get_capType(cap_b) == cap_frame_cap)) {
        return ((cap_frame_cap_get_capFBasePtr(cap_a) ==
                 cap_frame_cap_get_capFBasePtr(cap_b)) &&
                (cap_frame_cap_get_capFSize(cap_a) ==
                 cap_frame_cap_get_capFSize(cap_b)));
    }
    return Arch_sameRegionAs(cap_a, cap_b);
}

word_t
Arch_getObjectSize(word_t t)
{
    switch (t) {
    case seL4_ARM_SmallPageObject:
        return ARMSmallPageBits;
    case seL4_ARM_LargePageObject:
        return ARMLargePageBits;
    case seL4_ARM_SectionObject:
        return ARMSectionBits;
    case seL4_ARM_SuperSectionObject:
        return ARMSuperSectionBits;
    case seL4_ARM_PageTableObject:
        return PTE_SIZE_BITS + PT_BITS;
    case seL4_ARM_PageDirectoryObject:
        return PDE_SIZE_BITS + PD_BITS;
    default:
        fail("Invalid object type");
        return 0;
    }
}

cap_t
Arch_createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory)
{
    switch (t) {
    case seL4_ARM_SmallPageObject:
        if (!deviceMemory) {
            memzero(regionBase, 1 << ARMSmallPageBits);
            /** AUXUPD: "(True, ptr_retyps 1
                     (Ptr (ptr_val \<acute>regionBase) :: user_data_C ptr))" */
            /** GHOSTUPD: "(True, gs_new_frames vmpage_size.ARMSmallPage
                                                (ptr_val \<acute>regionBase)
                                                (unat ARMSmallPageBits))" */
            cleanCacheRange_PoU((word_t)regionBase,
                                (word_t)regionBase + (1 << ARMSmallPageBits) - 1,
                                addrFromPPtr(regionBase));
        }
        return cap_frame_cap_new(
                   0 , 0, ARMSmallPage, VMReadWrite, 0,
                   (word_t)regionBase);

    case seL4_ARM_LargePageObject:
        if (!deviceMemory) {
            memzero(regionBase, 1 << ARMLargePageBits);
            /** AUXUPD: "(True, ptr_retyps 16
                     (Ptr (ptr_val \<acute>regionBase) :: user_data_C ptr))" */
            /** GHOSTUPD: "(True, gs_new_frames vmpage_size.ARMLargePage
                                                (ptr_val \<acute>regionBase)
                                                (unat ARMLargePageBits))" */
            cleanCacheRange_PoU((word_t)regionBase,
                                (word_t)regionBase + (1 << ARMLargePageBits) - 1,
                                addrFromPPtr(regionBase));
        }
        return cap_frame_cap_new(
                   0 , 0, ARMLargePage, VMReadWrite, 0,
                   (word_t)regionBase);

    case seL4_ARM_SectionObject:
        if (!deviceMemory) {
            memzero(regionBase, 1 << ARMSectionBits);
            /** AUXUPD: "(True, ptr_retyps 256
                     (Ptr (ptr_val \<acute>regionBase) :: user_data_C ptr))" */
            /** GHOSTUPD: "(True, gs_new_frames vmpage_size.ARMSection
                                                (ptr_val \<acute>regionBase)
                                                (unat ARMSectionBits))" */
            cleanCacheRange_PoU((word_t)regionBase,
                                (word_t)regionBase + (1 << ARMSectionBits) - 1,
                                addrFromPPtr(regionBase));
        }
        return cap_frame_cap_new(
                   0 , 0, ARMSection, VMReadWrite, 0,
                   (word_t)regionBase);

    case seL4_ARM_SuperSectionObject:
        if (!deviceMemory) {
            memzero(regionBase, 1 << ARMSuperSectionBits);
            /** AUXUPD: "(True, ptr_retyps 4096
                     (Ptr (ptr_val \<acute>regionBase) :: user_data_C ptr))" */
            /** GHOSTUPD: "(True, gs_new_frames vmpage_size.ARMSuperSection
                                                (ptr_val \<acute>regionBase)
                                                (unat ARMSuperSectionBits))" */
            cleanCacheRange_PoU((word_t)regionBase,
                                (word_t)regionBase + (1 << ARMSuperSectionBits) - 1,
                                addrFromPPtr(regionBase));
        }
        return cap_frame_cap_new(
                   0 , 0, ARMSuperSection, VMReadWrite, 0,
                   (word_t)regionBase);

    case seL4_ARM_PageTableObject:
        memzero(regionBase, 1 << (PTE_SIZE_BITS + PT_BITS));
        /** AUXUPD: "(True, ptr_retyps 256
              (Ptr (ptr_val \<acute>regionBase) :: pte_C ptr))" */
        cleanCacheRange_PoU((word_t)regionBase,
                            (word_t)regionBase + (1 << (PT_BITS + PTE_SIZE_BITS)) - 1,
                            addrFromPPtr(regionBase));

        return cap_page_table_cap_new(0, 0,
                                      (word_t)regionBase);

    case seL4_ARM_PageDirectoryObject:
        memzero(regionBase, 1 << (PDE_SIZE_BITS + PD_BITS));
        /** AUXUPD: "(True, ptr_retyps 4096
              (Ptr (ptr_val \<acute>regionBase) :: pde_C ptr))" */
        copyGlobalMappings((pde_t *)regionBase);
        cleanCacheRange_PoU((word_t)regionBase,
                            (word_t)regionBase + (1 << (PD_BITS + PDE_SIZE_BITS)) - 1,
                            addrFromPPtr(regionBase));

        return cap_page_directory_cap_new((word_t)regionBase);

    default:
        /*
         * This is a conflation of the haskell error: "Arch.createNewCaps
         * got an API type" and the case where an invalid object type is
         * passed (which is impossible in haskell).
         */
        fail("Arch_createObject got an API type or invalid object type");
    }
}

exception_t
Arch_decodeInvocation(word_t label, unsigned int length, cptr_t cptr,
                      cte_t *slot, cap_t cap, extra_caps_t extraCaps,
                      word_t *buffer)
{
    return decodeARMMMUInvocation(label, length, cptr, slot, cap, extraCaps, buffer);
}

void
Arch_prepareThreadDelete(tcb_t *thread)
{
    /* No action required on ARM. */
}

bool_t
Arch_isFrameType(word_t t)
{
    switch (t) {
    case seL4_ARM_SmallPageObject:
    case seL4_ARM_LargePageObject:
    case seL4_ARM_SectionObject:
    case seL4_ARM_SuperSectionObject:
        return true;
    default:
        return false;
    }
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <api/failures.h>
#include <machine/registerset.h>
#include <object/structures.h>
#include <arch/machine.h>
#include <arch/object/tcb.h>

static inline unsigned int
setMR(tcb_t *receiver, word_t* receiveIPCBuffer,
      unsigned int offset, word_t reg)
{
    if (offset >= n_msgRegisters) {
        if (receiveIPCBuffer) {
            receiveIPCBuffer[offset + 1] = reg;
            return offset + 1;
        } else {
            return n_msgRegisters;
        }
    } else {
        setRegister(receiver, msgRegisters[offset], reg);
        return offset + 1;
    }
}

static inline unsigned int
setMRs_lookup_failure(tcb_t *receiver, word_t* receiveIPCBuffer,
                      lookup_fault_t luf, unsigned int offset)
{
    word_t lufType = lookup_fault_get_lufType(luf);
    unsigned int i;

    i = setMR(receiver, receiveIPCBuffer, offset, lufType + 1);

    switch (lufType) {
    case lookup_fault_invalid_root:
        return i;

    case lookup_fault_missing_capability:
        return setMR(receiver, receiveIPCBuffer, offset + 1,
                     lookup_fault_missing_capability_get_bitsLeft(luf));

    case lookup_fault_depth_mismatch:
        setMR(receiver, receiveIPCBuffer, offset + 1,
              lookup_fault_depth_mismatch_get_bitsLeft(luf));
        return setMR(receiver, receiveIPCBuffer, offset + 2,
                     lookup_fault_depth_mismatch_get_bitsFound(luf));

    case lookup_fault_guard_mismatch:
        setMR(receiver, receiveIPCBuffer, offset + 1,
              lookup_fault_guard_mismatch_get_bitsLeft(luf));
        setMR(receiver, receiveIPCBuffer, offset + 2,
              lookup_fault_guard_mismatch_get_guardFound(luf));
        return setMR(receiver, receiveIPCBuffer, offset + 3,
                     lookup_fault_guard_mismatch_get_bitsFound(luf));

    default:
        fail("Invalid lookup failure");
    }
}

unsigned int
setMRs_fault(tcb_t *sender, tcb_t* receiver, word_t *receiveIPCBuffer)
{
    switch (fault_get_faultType(sender->tcbFault)) {
    case fault_cap_fault:
        setMR(receiver, receiveIPCBuffer, 0, getRestartPC(sender));
        setMR(receiver, receiveIPCBuffer, 1,
              fault_cap_fault_get_address(sender->tcbFault));
        setMR(receiver, receiveIPCBuffer, 2,
              fault_cap_fault_get_inReceivePhase(sender->tcbFault));
        return setMRs_lookup_failure(receiver, receiveIPCBuffer,
                                     sender->tcbLookupFailure, 3);

    case fault_vm_fault:
        setMR(receiver, receiveIPCBuffer, 0, getRestartPC(sender));
        setMR(receiver, receiveIPCBuffer, 1,
              fault_vm_fault_get_address(sender->tcbFault));
        setMR(receiver, receiveIPCBuffer, 2,
              fault_vm_fault_get_instructionFault(sender->tcbFault));
        return setMR(receiver, receiveIPCBuffer, 3,
                     fault_vm_fault_get_FSR(sender->tcbFault));

    case fault_unknown_syscall: {
        unsigned int i;

        assert (n_syscallMessage >= n_msgRegisters);
        for (i = 0; i < n_msgRegisters; i++) {
            setRegister(receiver, msgRegisters[i],
                        getRegister(sender, syscallMessage[i]));
        }
        if (receiveIPCBuffer) {
            for (; i < n_syscallMessage; i++) {
                receiveIPCBuffer[i + 1] =
                    getRegister(sender, syscallMessage[i]);
            }

            receiveIPCBuffer[i + 1] =
                fault_unknown_syscall_get_syscallNumber(sender->tcbFault);
            return n_syscallMessage + 1;
        } else {
            return n_msgRegisters;
        }
    }

    case fault_user_exception: {
        unsigned int i;

        assert (n_exceptionMessage < n_msgRegisters);
        for (i = 0; i < n_exceptionMessage; i++) {
            setRegister(receiver, msgRegisters[i],
                        getRegister(sender, exceptionMessage[i]));
        }

        setMR(receiver, receiveIPCBuffer, n_exceptionMessage,
              fault_user_exception_get_number(sender->tcbFault));
        return setMR(receiver, receiveIPCBuffer, n_exceptionMessage + 1,
                     fault_user_exception_get_code(sender->tcbFault));
    }

    default:
        fail("Invalid fault");
    }
}

unsigned int
setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer)
{
    switch (current_syscall_error.type) {
    case seL4_InvalidArgument:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.invalidArgumentNumber);

    case seL4_InvalidCapability:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.invalidCapNumber);

    case seL4_IllegalOperation:
        return 0;

    case seL4_RangeError:
        setMR(thread, receiveIPCBuffer, 0,
              current_syscall_error.rangeErrorMin);
        return setMR(thread, receiveIPCBuffer, 1,
                     current_syscall_error.rangeErrorMax);

    case seL4_AlignmentError:
        return 0;

    case seL4_FailedLookup:
        setMR(thread, receiveIPCBuffer, 0,
              current_syscall_error.failedLookupWasSource ? 1 : 0);
        return setMRs_lookup_failure(thread, receiveIPCBuffer,
                                     current_lookup_fault, 1);

    case seL4_TruncatedMessage:
    case seL4_DeleteFirst:
    case seL4_RevokeFirst:
        return 0;
    case seL4_NotEnoughMemory:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.memoryLeft);
    default:
        fail("Invalid syscall error");
    }
}

word_t CONST
Arch_decodeTransfer(word_t flags)
{
    return 0;
}

exception_t CONST
Arch_performTransfer(word_t arch, tcb_t *tcb_src, tcb_t *tcb_dest)
{
    return EXCEPTION_NONE;
}

void
Arch_leaveVMAsyncTransfer(tcb_t *tcb)
{
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/assert.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <machine/io.h>

#ifdef DEBUG

void _fail(
    const char*  s,
    const char*  file,
    unsigned int line,
    const char*  function)
{
    printf(
        "seL4 called fail at %s:%u in function %s, saying \"%s\"\n",
        file,
        line,
        function,
        s
    );
    halt();
}

void _assert_fail(
    const char*  assertion,
    const char*  file,
    unsigned int line,
    const char*  function)
{
    printf("seL4 failed assertion '%s' at %s:%u in function %s\n",
           assertion,
           file,
           line,
           function
          );
    halt();
}

#endif
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/inlines.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <api/failures.h>

lookup_fault_t current_lookup_fault;
fault_t current_fault;
syscall_error_t current_syscall_error;
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <kernel/boot.h>
#include <kernel/thread.h>
#include <kernel/cdt.h>
#include <machine/io.h>
#include <machine/registerset.h>
#include <model/statedata.h>
#include <arch/machine.h>
#include <arch/kernel/boot.h>
#include <arch/kernel/vspace.h>
#include <arch/linker.h>
#include <plat/machine/hardware.h>

/* (node-local) state accessed only during bootstrapping */

ndks_boot_t ndks_boot BOOT_DATA;

BOOT_CODE bool_t
insert_region(region_t reg)
{
    unsigned int i;

    assert(reg.start <= reg.end);
    if (is_reg_empty(reg)) {
        return true;
    }
    for (i = 0; i < MAX_NUM_FREEMEM_REG; i++) {
        if (is_reg_empty(ndks_boot.freemem[i])) {
            ndks_boot.freemem[i] = reg;
            return true;
        }
    }
    return false;
}

BOOT_CODE static inline uint32_t
reg_size(region_t reg)
{
    return reg.end - reg.start;
}

BOOT_CODE pptr_t
alloc_region(uint32_t size_bits)
{
    unsigned int i;
    unsigned int reg_index = 0; /* gcc cannot work out that this will not be used uninitialized */
    region_t reg = REG_EMPTY;
    region_t rem_small = REG_EMPTY;
    region_t rem_large = REG_EMPTY;
    region_t new_reg;
    region_t new_rem_small;
    region_t new_rem_large;

    /* Search for a freemem region that will be the best fit for an allocation. We favour allocations
     * that are aligned to either end of the region. If an allocation must split a region we favour
     * an unbalanced split. In both cases we attempt to use the smallest region possible. In general
     * this means we aim to make the size of the smallest remaining region smaller (ideally zero)
     * followed by making the size of the largest remaining region smaller */

    for (i = 0; i < MAX_NUM_FREEMEM_REG; i++) {
        /* Determine whether placing the region at the start or the end will create a bigger left over region */
        if (ROUND_UP(ndks_boot.freemem[i].start, size_bits) - ndks_boot.freemem[i].start <
                ndks_boot.freemem[i].end - ROUND_DOWN(ndks_boot.freemem[i].end, size_bits)) {
            new_reg.start = ROUND_UP(ndks_boot.freemem[i].start, size_bits);
            new_reg.end = new_reg.start + BIT(size_bits);
        } else {
            new_reg.end = ROUND_DOWN(ndks_boot.freemem[i].end, size_bits);
            new_reg.start = new_reg.end - BIT(size_bits);
        }
        if (new_reg.end > new_reg.start &&
                new_reg.start >= ndks_boot.freemem[i].start &&
                new_reg.end <= ndks_boot.freemem[i].end) {
            if (new_reg.start - ndks_boot.freemem[i].start < ndks_boot.freemem[i].end - new_reg.end) {
                new_rem_small.start = ndks_boot.freemem[i].start;
                new_rem_small.end = new_reg.start;
                new_rem_large.start = new_reg.end;
                new_rem_large.end = ndks_boot.freemem[i].end;
            } else {
                new_rem_large.start = ndks_boot.freemem[i].start;
                new_rem_large.end = new_reg.start;
                new_rem_small.start = new_reg.end;
                new_rem_small.end = ndks_boot.freemem[i].end;
            }
            if ( is_reg_empty(reg) ||
                    (reg_size(new_rem_small) < reg_size(rem_small)) ||
                    (reg_size(new_rem_small) == reg_size(rem_small) && reg_size(new_rem_large) < reg_size(rem_large)) ) {
                reg = new_reg;
                rem_small = new_rem_small;
                rem_large = new_rem_large;
                reg_index = i;
            }
        }
    }
    if (is_reg_empty(reg)) {
        printf("Kernel init failing: not enough memory\n");
        return 0;
    }
    /* Remove the region in question */
    ndks_boot.freemem[reg_index] = REG_EMPTY;
    /* Add the remaining regions in largest to smallest order */
    insert_region(rem_large);
    if (!insert_region(rem_small)) {
        printf("alloc_region(): wasted 0x%x bytes due to alignment, try to increase MAX_NUM_FREEMEM_REG\n",
               (unsigned int)(rem_small.end - rem_small.start));
    }
    return reg.start;
}

BOOT_CODE void
write_slot(slot_ptr_t slot_ptr, cap_t cap)
{
    slot_ptr->cap = cap;
    cdtInsert(NULL, slot_ptr);

    //slot_ptr->cteMDBNode = nullMDBNode;
    //mdb_node_ptr_set_mdbRevocable  (&slot_ptr->cteMDBNode, true);
    //mdb_node_ptr_set_mdbFirstBadged(&slot_ptr->cteMDBNode, true);
}

/* Our root CNode needs to be able to fit all the initial caps and not
 * cover all of memory.
 */
compile_assert(root_cnode_size_valid,
               CONFIG_ROOT_CNODE_SIZE_BITS < 32 - CTE_SIZE_BITS &&
               (1U << CONFIG_ROOT_CNODE_SIZE_BITS) >= BI_CAP_DYN_START)

BOOT_CODE cap_t
create_root_cnode(void)
{
    pptr_t  pptr;
    cap_t   cap;

    /* write the number of root CNode slots to global state */
    ndks_boot.slot_pos_max = BIT(CONFIG_ROOT_CNODE_SIZE_BITS);

    /* create an empty root CNode */
    pptr = alloc_region(CONFIG_ROOT_CNODE_SIZE_BITS + CTE_SIZE_BITS);
    if (!pptr) {
        printf("Kernel init failing: could not create root cnode\n");
        return cap_null_cap_new();
    }
    memzero(CTE_PTR(pptr), 1U << (CONFIG_ROOT_CNODE_SIZE_BITS + CTE_SIZE_BITS));
    cap =
        cap_cnode_cap_new(
            CONFIG_ROOT_CNODE_SIZE_BITS,      /* radix      */
            32 - CONFIG_ROOT_CNODE_SIZE_BITS, /* guard size */
            0,                                /* guard      */
            pptr                              /* pptr       */
        );

    /* write the root CNode cap into the root CNode */
    write_slot(SLOT_PTR(pptr, BI_CAP_IT_CNODE), cap);

    return cap;
}

compile_assert(irq_cnode_size, BIT(PAGE_BITS - CTE_SIZE_BITS) > maxIRQ)

BOOT_CODE bool_t
create_irq_cnode(void)
{
    pptr_t pptr;
    /* create an empty IRQ CNode */
    pptr = alloc_region(PAGE_BITS);
    if (!pptr) {
        printf("Kernel init failing: could not create irq cnode\n");
        return false;
    }
    memzero((void*)pptr, 1 << PAGE_BITS);
    intStateIRQNode = (cte_t*)pptr;
    return true;
}

/* Check domain scheduler assumptions. */
compile_assert(num_domains_valid,
               CONFIG_NUM_DOMAINS >= 1 && CONFIG_NUM_DOMAINS <= 256)
compile_assert(num_priorities_valid,
               CONFIG_NUM_PRIORITIES >= 1 && CONFIG_NUM_PRIORITIES <= 256)

BOOT_CODE void
create_domain_cap(cap_t root_cnode_cap)
{
    cap_t cap;
    unsigned int i;

    /* Check domain scheduler assumptions. */
    assert(ksDomScheduleLength > 0);
    for (i = 0; i < ksDomScheduleLength; i++) {
        assert(ksDomSchedule[i].domain < CONFIG_NUM_DOMAINS);
        assert(ksDomSchedule[i].length > 0);
    }

    cap = cap_domain_cap_new();
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_DOM), cap);
}


BOOT_CODE cap_t
create_ipcbuf_frame(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr)
{
    cap_t cap;
    pptr_t pptr;

    /* allocate the IPC buffer frame */
    pptr = alloc_region(PAGE_BITS);
    if (!pptr) {
        printf("Kernel init failing: could not create ipc buffer frame\n");
        return cap_null_cap_new();
    }
    clearMemory((void*)pptr, PAGE_BITS);

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_IPCBUF), cap);

    return cap;
}

BOOT_CODE void
create_bi_frame_cap(
    cap_t      root_cnode_cap,
    cap_t      pd_cap,
    pptr_t     pptr,
    vptr_t     vptr
)
{
    cap_t cap;

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_BI_FRAME), cap);
}

BOOT_CODE pptr_t
allocate_bi_frame(
    node_id_t  node_id,
    uint32_t   num_nodes,
    vptr_t ipcbuf_vptr
)
{
    pptr_t pptr;

    /* create the bootinfo frame object */
    pptr = alloc_region(BI_FRAME_SIZE_BITS);
    if (!pptr) {
        printf("Kernel init failed: could not allocate bootinfo frame\n");
        return 0;
    }
    clearMemory((void*)pptr, PAGE_BITS);

    /* initialise bootinfo-related global state */
    ndks_boot.bi_frame = BI_PTR(pptr);
    ndks_boot.slot_pos_cur = BI_CAP_DYN_START;

    BI_PTR(pptr)->node_id = node_id;
    BI_PTR(pptr)->num_nodes = num_nodes;
    BI_PTR(pptr)->num_iopt_levels = 0;
    BI_PTR(pptr)->ipcbuf_vptr = ipcbuf_vptr;
    BI_PTR(pptr)->it_cnode_size_bits = CONFIG_ROOT_CNODE_SIZE_BITS;
    BI_PTR(pptr)->it_domain = ksDomSchedule[ksDomScheduleIdx].domain;

    return pptr;
}

BOOT_CODE bool_t
provide_cap(cap_t root_cnode_cap, cap_t cap)
{
    if (ndks_boot.slot_pos_cur >= ndks_boot.slot_pos_max) {
        printf("Kernel init failed: ran out of cap slots\n");
        return false;
    }
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), ndks_boot.slot_pos_cur), cap);
    ndks_boot.slot_pos_cur++;
    return true;
}

BOOT_CODE create_frames_of_region_ret_t
create_frames_of_region(
    cap_t    root_cnode_cap,
    cap_t    pd_cap,
    region_t reg,
    bool_t   do_map,
    int32_t  pv_offset
)
{
    pptr_t     f;
    cap_t      frame_cap;
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;

    slot_pos_before = ndks_boot.slot_pos_cur;

    for (f = reg.start; f < reg.end; f += BIT(PAGE_BITS)) {
        if (do_map) {
            frame_cap = create_mapped_it_frame_cap(pd_cap, f, f - BASE_OFFSET - pv_offset, false, false);
        } else {
            frame_cap = create_unmapped_it_frame_cap(f, false);
        }
        if (!provide_cap(root_cnode_cap, frame_cap))
            return (create_frames_of_region_ret_t) {
            S_REG_EMPTY, false
        };
    }

    slot_pos_after = ndks_boot.slot_pos_cur;

    return (create_frames_of_region_ret_t) {
        (slot_region_t) { slot_pos_before, slot_pos_after }, true
    };
}

BOOT_CODE bool_t
create_idle_thread(void)
{
    pptr_t pptr;
    pptr = alloc_region(TCB_BLOCK_SIZE_BITS);
    if (!pptr) {
        printf("Kernel init failed: Unable to allocate tcb for idle thread\n");
        return false;
    }
    memzero((void *)pptr, 1 << TCB_BLOCK_SIZE_BITS);
    ksIdleThread = TCB_PTR(pptr + TCB_OFFSET);
    configureIdleThread(ksIdleThread);
    return true;
}

BOOT_CODE bool_t
create_initial_thread(
    cap_t  root_cnode_cap,
    cap_t  it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t  ipcbuf_cap
)
{
    pptr_t pptr;
    cap_t  cap;
    tcb_t* tcb;
    deriveCap_ret_t dc_ret;

    /* allocate TCB */
    pptr = alloc_region(TCB_BLOCK_SIZE_BITS);
    if (!pptr) {
        printf("Kernel init failed: Unable to allocate tcb for initial thread\n");
        return false;
    }
    memzero((void*)pptr, 1 << TCB_BLOCK_SIZE_BITS);
    tcb = TCB_PTR(pptr + TCB_OFFSET);
    tcb->tcbTimeSlice = CONFIG_TIME_SLICE;
    Arch_initContext(&tcb->tcbArch.tcbContext);

    /* derive a copy of the IPC buffer cap for inserting */
    dc_ret = deriveCap(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_IPCBUF), ipcbuf_cap);
    if (dc_ret.status != EXCEPTION_NONE) {
        printf("Failed to derive copy of IPC Buffer\n");
        return false;
    }

    /* initialise TCB (corresponds directly to abstract specification) */
    cteInsert(
        root_cnode_cap,
        SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_CNODE),
        SLOT_PTR(pptr, tcbCTable)
    );
    cteInsert(
        it_pd_cap,
        SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_VSPACE),
        SLOT_PTR(pptr, tcbVTable)
    );
    cteInsert(
        dc_ret.cap,
        SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_IPCBUF),
        SLOT_PTR(pptr, tcbBuffer)
    );
    tcb->tcbIPCBuffer = ipcbuf_vptr;
    setRegister(tcb, capRegister, bi_frame_vptr);
    setNextPC(tcb, ui_v_entry);

    /* initialise TCB */
    tcb->tcbPriority = seL4_MaxPrio;
    setupReplyMaster(tcb);
    setThreadState(tcb, ThreadState_Running);
    ksSchedulerAction = SchedulerAction_ResumeCurrentThread;
    ksCurThread = ksIdleThread;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;
    assert(ksCurDomain < CONFIG_NUM_DOMAINS && ksDomainTime > 0);

    /* initialise current thread pointer */
    switchToThread(tcb); /* initialises ksCurThread */

    /* create initial thread's TCB cap */
    cap = cap_thread_cap_new(TCB_REF(tcb));
    write_slot(SLOT_PTR(pptr_of_cap(root_cnode_cap), BI_CAP_IT_TCB), cap);

#ifdef DEBUG
    setThreadName(tcb, "rootserver");
#endif

    return true;
}

BOOT_CODE static bool_t
provide_untyped_cap(
    cap_t      root_cnode_cap,
    bool_t     deviceMemory,
    pptr_t     pptr,
    uint32_t   size_bits,
    slot_pos_t first_untyped_slot
)
{
    bool_t ret;
    unsigned int i = ndks_boot.slot_pos_cur - first_untyped_slot;
    if (i < CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS) {
        ndks_boot.bi_frame->ut_obj_paddr_list[i] = pptr_to_paddr((void*)pptr);
        ndks_boot.bi_frame->ut_obj_size_bits_list[i] = size_bits;
        ret = provide_cap(root_cnode_cap, cap_untyped_cap_new(deviceMemory, size_bits, pptr));
    } else {
        printf("Kernel init: Too many untyped regions for boot info\n");
        ret = true;
    }
    return ret;
}

/**
  DONT_TRANSLATE
*/
BOOT_CODE static uint32_t boot_clz (uint32_t x)
{
    return CLZ (x);
}

/**
  DONT_TRANSLATE
*/
BOOT_CODE static uint32_t boot_ctz (uint32_t x)
{
    return CTZ (x);
}

BOOT_CODE bool_t
create_untypeds_for_region(
    cap_t      root_cnode_cap,
    bool_t     deviceMemory,
    region_t   reg,
    slot_pos_t first_untyped_slot
)
{
    uint32_t align_bits;
    uint32_t size_bits;

    while (!is_reg_empty(reg)) {
        /* Due to a limitation on the mdb we cannot give out an untyped to the
         * the start of the kernel region. The reason for this is that cte pointers
         * in mdb nodes are stored with the high bits masked out. To recreate a cte pointer
         * we then need to put the high bits back in after reading it out. HOWEVER, we
         * still need a way to store and identify a NULL pointer. This means reserving
         * the bottom address as the 'null' address so that no one creates an cnode
         * there resulting in a 'null' (yet valid) cte
         */
        if (!deviceMemory && reg.start == kernelBase) {
            reg.start += BIT(PAGE_BITS);
        }
        /* Determine the maximum size of the region */
        size_bits = WORD_BITS - 1 - boot_clz(reg.end - reg.start);

        /* Determine the alignment of the region */
        align_bits = boot_ctz(reg.start);

        /* Reduce size bits to align if needed */
        if (align_bits < size_bits) {
            size_bits = align_bits;
        }

        assert(size_bits >= WORD_BITS / 8);
        if (!provide_untyped_cap(root_cnode_cap, deviceMemory, reg.start, size_bits, first_untyped_slot)) {
            return false;
        }
        reg.start += BIT(size_bits);
    }
    return true;
}

BOOT_CODE bool_t
create_untypeds(cap_t root_cnode_cap, region_t boot_mem_reuse_reg)
{
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    uint32_t   i;
    region_t   reg;

    slot_pos_before = ndks_boot.slot_pos_cur;

    /* if boot_mem_reuse_reg is not empty, we can create UT objs from boot code/data frames */
    if (!create_untypeds_for_region(root_cnode_cap, false, boot_mem_reuse_reg, slot_pos_before)) {
        return false;
    }

    /* convert remaining freemem into UT objects and provide the caps */
    for (i = 0; i < MAX_NUM_FREEMEM_REG; i++) {
        reg = ndks_boot.freemem[i];
        ndks_boot.freemem[i] = REG_EMPTY;
        if (!create_untypeds_for_region(root_cnode_cap, false, reg, slot_pos_before)) {
            return false;
        }
    }

    slot_pos_after = ndks_boot.slot_pos_cur;
    ndks_boot.bi_frame->ut_obj_caps = (slot_region_t) {
        slot_pos_before, slot_pos_after
    };
    return true;
}

BOOT_CODE void
bi_finalise(void)
{
    slot_pos_t slot_pos_start = ndks_boot.slot_pos_cur;
    slot_pos_t slot_pos_end = ndks_boot.slot_pos_max;
    ndks_boot.bi_frame->null_caps = (slot_region_t) {
        slot_pos_start, slot_pos_end
    };
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <machine.h>
#include <model/statedata.h>
#include <object/structures.h>
#include <object/objecttype.h>

#define GT  ( 1)
#define EQ  ( 0)
#define LT  (-1)

void printCTE(char *msg, cte_t *cte);

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot);
static cte_t *aaRemove(bool_t isSwapped, cte_t *rootSlot, cte_t *targetSlot);
static cte_t *aaTraverseBackward(cte_t *slot);
static cte_t *aaTraverseForward(cte_t *slot);

typedef int (*comp_t)(cte_t *, cte_t *);
typedef int (*tie_comp_t)(cte_t *, cte_t *, comp_t);
typedef int (*type_comp_t)(cte_t *, cte_t *, tie_comp_t);

#define compare(a, b) \
    ({ typeof(a) _a = (a); \
       typeof(b) _b = (b); \
       _a == _b ? EQ : (_a > _b ? GT : LT); \
    })

static inline bool_t
capsEqual(cap_t a, cap_t b)
{
    return (cap_get_capSpaceType(a) == cap_get_capSpaceType(b)) &&
           ((word_t)cap_get_capSpacePtr(a) == (word_t)cap_get_capSpacePtr(b)) &&
           (cap_get_capSpaceSize(a) == cap_get_capSpaceSize(b)) &&
           (cap_get_capBadge(a)   == cap_get_capBadge(b)) &&
           (cap_get_capExtraComp(a) == cap_get_capExtraComp(b));
}

static inline int
tie_break_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check the depth */
    cmp = compare(mdb_node_get_cdtDepth(a->cteMDBNode), mdb_node_get_cdtDepth(b->cteMDBNode));
    if (cmp != EQ) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != EQ) {
            return cmp;
        }
    }
    /* compare on the slot as a last resort */
    return compare(a, b);
}

static inline int
untyped_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* Compare base address and size of the untyped object */
    cmp = compare(cap_untyped_cap_get_capPtr(a->cap), cap_untyped_cap_get_capPtr(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    cmp = - compare(cap_untyped_cap_get_capBlockSize(a->cap), cap_untyped_cap_get_capBlockSize(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    /* Do common late comparisons */
    return tie_break(a, b, NULL);
}

static inline int
endpoint_cap_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* compare on the badge */
    cmp = compare(cap_endpoint_cap_get_capEPBadge(a->cap), cap_endpoint_cap_get_capEPBadge(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    /* tiebreak as normal */
    return tie_break(a, b, NULL);
}

static inline int
async_endpoint_cap_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* compare on the badge */
    cmp = compare(cap_async_endpoint_cap_get_capAEPBadge(a->cap), cap_async_endpoint_cap_get_capAEPBadge(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    /* tiebreak as normal */
    return tie_break(a, b, NULL);
}

static inline int cap_extra_comp(cte_t *a, cte_t *b)
{
    return compare(cap_get_capExtraComp(a->cap), cap_get_capExtraComp(b->cap));
}

static inline int
frame_cap_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
page_table_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
page_directory_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
pdpt_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
io_page_table_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
io_space_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
ept_pdpt_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
ept_page_directory_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
ept_page_table_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, cap_extra_comp);
}

static inline int
just_tie_break(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    return tie_break(a, b, NULL);
}

static inline int
typed_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    cap_tag_t type;
    type_comp_t comp;
    static type_comp_t comparator[] = {
        [cap_endpoint_cap]       = endpoint_cap_comparator,
        [cap_async_endpoint_cap] = async_endpoint_cap_comparator,
        [cap_cnode_cap]          = just_tie_break,
        [cap_thread_cap]         = just_tie_break,
        [cap_frame_cap]          = frame_cap_comparator,
        [cap_page_table_cap]     = page_table_comparator,
        [cap_page_directory_cap] = page_directory_comparator,
#ifdef ARCH_IA32
        [cap_pdpt_cap]           = pdpt_comparator,
#endif
        [cap_zombie_cap]         = just_tie_break,
#ifdef CONFIG_IOMMU
        [cap_io_page_table_cap]  = io_page_table_comparator,
        [cap_io_space_cap]       = io_space_comparator,
#endif
#ifdef CONFIG_VTX
        [cap_vcpu_cap]           = just_tie_break,
        [cap_ept_page_directory_pointer_table_cap] = ept_pdpt_comparator,
        [cap_ept_page_directory_cap]               = ept_page_directory_comparator,
        [cap_ept_page_table_cap]                   = ept_page_table_comparator,
#endif
    };
    /* Typed objects do not overlap, so sufficient to compare base address */
    cmp = compare(cap_get_capPtr(a->cap), cap_get_capPtr(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    /* at this point we *know* the types must be equal, so call the
     * per cap type comparator, if it needs one. */
    type = cap_get_capType(a->cap);
    assert(type < ARRAY_SIZE(comparator));
    comp = comparator[type];
    assert(comp);
    return comp(a, b, tie_break);
}

static inline int
irq_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    cap_tag_t typeA, typeB;
    /* The IRQ control cap can be thought of as having an 'address' of 0 and a 'size' of
     * the entire IRQ space. IRQ handlers then have an address that is their irq and a size
     * of 1. Since IRQ control caps cannot be subdivided this is equivalent to putting
     * all IRQ control caps first, then sorting IRQ handlers by their IRQ */
    typeA = cap_get_capType(a->cap);
    typeB = cap_get_capType(b->cap);
    if (typeA == typeB) {
        if (typeA == cap_irq_control_cap) {
            /* both control caps, tie break */
            return tie_break(a, b, NULL);
        } else {
            /* both irq handlers, compare on irq */
            assert(typeA == cap_irq_handler_cap);
            cmp = compare(cap_irq_handler_cap_get_capIRQ(a->cap), cap_irq_handler_cap_get_capIRQ(b->cap));
            if (cmp != EQ) {
                return cmp;
            }
            return tie_break(a, b, NULL);
        }
    } else if (typeA == cap_irq_control_cap) {
        return LT;
    } else {
        assert(typeA == cap_irq_handler_cap);
        return GT;
    }
}

#ifdef ARCH_IA32
static inline int
ioport_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    uint32_t firstA, firstB, lastA, lastB;
    /* ioports have a base address and size that is defined by their start port and end port */
    firstA = cap_io_port_cap_get_capIOPortFirstPort(a->cap);
    firstB = cap_io_port_cap_get_capIOPortFirstPort(b->cap);
    cmp = compare(firstA, firstB);
    if (cmp != EQ) {
        return cmp;
    }
    lastA = cap_io_port_cap_get_capIOPortLastPort(a->cap);
    lastB = cap_io_port_cap_get_capIOPortLastPort(b->cap);
    cmp = - compare(lastA - firstA, lastB - firstB);
    if (cmp != EQ) {
        return cmp;
    }
    return tie_break(a, b, NULL);
}
#endif

#ifdef CONFIG_IOMMU
static inline int
iospace_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* order by pci device this is assigned to and then by domain ID */
    cmp = compare(cap_io_space_cap_get_capPCIDevice(a->cap), cap_io_space_cap_get_capPCIDevice(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    cmp = compare(cap_io_space_cap_get_capDomainID(a->cap), cap_io_space_cap_get_capDomainID(b->cap));
    if (cmp != EQ) {
        return cmp;
    }
    return tie_break(a, b, NULL);
}
#endif

static inline int
compare_space(int space, cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    type_comp_t comp;
    static type_comp_t comparator[] = {
        [capSpaceUntypedMemory] = untyped_comparator,
        [capSpaceTypedMemory] = typed_comparator,
        [capSpaceDomain] = just_tie_break,
        [capSpaceIRQ] = irq_comparator,
#ifdef CONFIG_IOMMU
        [capSpaceIOSpace] = iospace_comparator,
#endif
#ifdef ARCH_IA32
        [capSpaceIOPort] = ioport_comparator,
        [capSpaceIPI] = just_tie_break,
#endif
    };
    assert(space < ARRAY_SIZE(comparator));
    comp = comparator[space];
    assert(comp);
    return comp(a, b, tie_break);
}

static inline int
compSlotWith(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    /* check space */
    int spaceA = cap_get_capSpaceType(a->cap);
    int spaceB = cap_get_capSpaceType(b->cap);
    int cmp = compare(spaceA, spaceB);
    if (cmp != EQ) {
        return cmp;
    }
    /* now call the space specific comparator */
    return compare_space(spaceA, a, b, tie_break);
}

static inline int
compSlot(cte_t *a, cte_t *b)
{
    /* We know nothing, call general comparator for caps and tie break on slots */
    return compSlotWith(a, b, tie_break_comparator);
}

static inline int has_extra_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check depth as per normal */
    cmp = compare(mdb_node_get_cdtDepth(a->cteMDBNode), mdb_node_get_cdtDepth(b->cteMDBNode));
    if (cmp != EQ) {
        return cmp;
    }
    assert(pre_slot);
    cmp = pre_slot(a, b);
    /* if the extra comparison was not equal then we found something, so we will claim that we found equality,
     * otherwise return a psudo-random result */
    if (cmp != EQ) {
        return EQ;
    }
    return LT;
}

cte_t *
cdtFindWithExtra(cap_t hypothetical)
{
    uint32_t i;
    unsigned int depth_bits = cte_depth_bits_cap(hypothetical);
    for (i = 0; i < BIT(depth_bits); i++) {
        cte_t *current;
        cte_t *next;

        cte_t slot = (cte_t) {
            .cap = hypothetical,
             .cteMDBNode = mdb_node_new(0, i, 0, 0)
        };

        next = ksRootCTE;
        do {
            int cmp;
            current = next;
            /* we are searching for a slot that is mostly equal to this node,
             * except that it has a non zero extra component */
            cmp = compSlotWith(current, &slot, has_extra_comparator);
            switch (cmp) {
            case LT:
                next = CTE_PTR(mdb_node_get_cdtRight(current->cteMDBNode));
                break;
            case GT:
                next = CTE_PTR(mdb_node_get_cdtLeft(current->cteMDBNode));
                break;
            case EQ:
                return current;
            }
        } while (next);
    }
    return NULL;
}

static inline int slot_eq_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check depth and pre_slot as per normal */
    cmp = compare(mdb_node_get_cdtDepth(a->cteMDBNode), mdb_node_get_cdtDepth(b->cteMDBNode));
    if (cmp != EQ) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != EQ) {
            return cmp;
        }
    }
    /* Slot is always EQ */
    return EQ;
}

cte_t *
cdtFindAtDepth(cap_t hypothetical, uint32_t depth)
{
    cte_t *current;
    cte_t *next;

    cte_t slot = (cte_t) {
        .cap = hypothetical,
         .cteMDBNode = mdb_node_new(0, depth, 0, 0)
    };

    next = ksRootCTE;
    /* we want to find the entry in the tree that is equal to this node
     * in every way except that it will have a different slot. So we will
     * do a search with a comparator that always returns equality on slots */
    do {
        current = next;
        switch (compSlotWith(current, &slot, slot_eq_comparator)) {
        case LT:
            next = CTE_PTR(mdb_node_get_cdtRight(current->cteMDBNode));
            break;
        case GT:
            next = CTE_PTR(mdb_node_get_cdtLeft(current->cteMDBNode));
            break;
        case EQ:
            return current;
        }
    } while (next);
    return NULL;
}

cte_t *
cdtFind(cap_t hypothetical)
{
    uint32_t i;
    cte_t *ret;
    unsigned int depth_bits = cte_depth_bits_cap(hypothetical);
    for (i = 0; i < BIT(depth_bits); i++) {
        ret = cdtFindAtDepth(hypothetical, i);
        if (ret) {
            return ret;
        }
    }
    return NULL;
}

bool_t
cdtIsFinal(cte_t *slot)
{
    cte_t *closest;

    /* For finality testing it is sufficient to check the objects immediately
     * before and after us in cdt ordering. This is because we are only
     * interested in equivalent objects, not whether something is actually
     * a parent or not */
    closest = aaTraverseForward(slot);
    if (closest && sameObjectAs(closest->cap, slot->cap)) {
        return false;
    }
    closest = aaTraverseBackward(slot);
    if (closest && sameObjectAs(closest->cap, slot->cap)) {
        return false;
    }
    return true;
}

static inline cap_t
build_largest_child(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_domain_cap:
#ifdef ARCH_IA32
    case cap_ipi_cap:
#endif
    case cap_irq_handler_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
#ifdef CONFIG_VTX
    case cap_vcpu_cap:
#endif
    case cap_zombie_cap:
        return cap;
#ifdef CONFIG_IA32
    case cap_io_port_cap:
        /* We order on base address first, so set it has high as possible, size doesn't matter then.
           But size shouldn't be zero */
        return cap_io_port_cap_new(cap_io_port_cap_get_capIOPortLastPort(cap) - 1, 1);
#endif
    case cap_irq_control_cap:
        /* Largest child is a irq handler with biggest irq */
        return cap_irq_handler_cap_new(0xff);
    case cap_untyped_cap:
        /* untyped cap of smallest size at the end of this region */
        return cap_untyped_cap_new(0, 4, cap_untyped_cap_get_capPtr(cap) + BIT(cap_untyped_cap_get_capBlockSize(cap)) - BIT(4));
    case cap_endpoint_cap:
        if (cap_endpoint_cap_get_capEPBadge(cap) == 0) {
            return cap_endpoint_cap_new(BIT(28) - 1, 0, 0, 0, cap_endpoint_cap_get_capEPPtr(cap));
        }
        return cap;
    case cap_async_endpoint_cap:
        if (cap_async_endpoint_cap_get_capAEPBadge(cap) == 0) {
            return cap_async_endpoint_cap_new(BIT(28) - 1, 0, 0, cap_async_endpoint_cap_get_capAEPPtr(cap));
        }
        return cap;
        /* We get away with not setting the extra higher as we will always be comparing
         * with an infinite depth, hence any 'extra' is not relevant */
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
#ifdef ARCH_IA32
    case cap_pdpt_cap:
#endif
#ifdef CONFIG_VTX
    case cap_ept_page_directory_pointer_table_cap:
    case cap_ept_page_directory_cap:
    case cap_ept_page_table_cap:
#endif
#ifdef CONFIG_IOMMU
    case cap_io_page_table_cap:
    case cap_io_space_cap:
#endif
        return cap;
    default:
        fail("Unknown cap type");
    }
}

static inline int largest_child_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    /* Tie breaking for largest child is easy. Their depth is always less than ours */
    return LT;
}

static inline int slot_lt_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check depth and pre_slot as per normal */
    cmp = compare(mdb_node_get_cdtDepth(a->cteMDBNode), mdb_node_get_cdtDepth(b->cteMDBNode));
    if (cmp != EQ) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != EQ) {
            return cmp;
        }
    }
    /* Slot is always LT */
    return LT;
}

static inline cte_t *
aaFindFromBelow(cte_t *hypothetical, tie_comp_t tie_break)
{
    cte_t *current;
    cte_t *largest;
    cte_t *next;
    next = ksRootCTE;
    largest = NULL;
    do {
        int cmp;
        current = next;
        cmp = compSlotWith(current, hypothetical, tie_break);
        if (cmp == LT) {
            next = CTE_PTR(mdb_node_get_cdtRight(current->cteMDBNode));
            if (!largest || compSlot(current, largest) == GT) {
                largest = current;
            }
        } else {
            next = CTE_PTR(mdb_node_get_cdtLeft(current->cteMDBNode));
        }
    } while (next);
    return largest;
}

/* Finding a child is complicated because your child may not
 * live directly after you in cdt order. That is, if you take
 * ever node in the tree and squash it into a list, directly
 * after you may be some N number of siblings, then your
 * children. This is why we need to do a creative search
 * where as cdtIsFinal was able to get away with checking
 * neighbouring nodes */
static cte_t *
_cdtFindChild(cte_t *parentSlot)
{
    cte_t *child;
    /* Construct a hypothetical child. This needs to be the largest
     * possible child such that anything greater than it would no
     * longer be our child and anything less than it is either
     * our sibling or our child. We do not worry about the depth
     * as we will use a fake comparator that assumes our node
     * is of infinite depth */
    cte_t hypothetical = {
        .cap = build_largest_child(parentSlot->cap),
    };

    /* Search for hypothetical cap from below. */
    child = aaFindFromBelow(&hypothetical, largest_child_comparator);

    /* Verify that this is in fact a child (we could have none). To ensure
     * we did not find ourself or a sibling we ensure that we are strictly
     * greater than ignoring slot tie breaks */
    if (!child || compSlotWith(child, parentSlot, slot_lt_comparator) != GT) {
        return NULL;
    }
    return child;
}

cte_t *
cdtFindTypedInRange(word_t base, unsigned int size_bits)
{
    cte_t *child;
    /* Construct the smallest typed object we know about at the top
     * of the memory range and search for it */
    cte_t hypothetical = {
        .cap = cap_endpoint_cap_new(0, 0, 0, 0, base + BIT(size_bits) - BIT(EP_SIZE_BITS)),
    };
    /* Search for it from below */
    child = aaFindFromBelow(&hypothetical, largest_child_comparator);
    /* Check we found something in the right range. Construct a fake untyped
     * to reuse existing range checking */
    if (child && sameRegionAs(cap_untyped_cap_new(0, size_bits, base), child->cap)) {
        return child;
    }
    return NULL;
}

cte_t *
cdtFindChild(cte_t *parentSlot)
{
    if (cap_get_capSpaceType(parentSlot->cap) == capSpaceUntypedMemory) {
        /* Find anything in this range that is typed */
        cte_t *result = cdtFindTypedInRange(cap_untyped_cap_get_capPtr(parentSlot->cap), cap_untyped_cap_get_capBlockSize(parentSlot->cap));
        if (result) {
            return result;
        }
    }
    return _cdtFindChild(parentSlot);
}

static inline void
cdtInsertTree(cte_t *slot)
{
    ksRootCTE = aaInsert(ksRootCTE, slot);
}

void
cdtInsert(cte_t *parentSlot, cte_t *newSlot)
{
    word_t depth;
    assert(cap_get_capType(newSlot->cap) != cap_null_cap);
    assert(!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap);
    if (!parentSlot || (cap_get_capSpaceType(parentSlot->cap) != cap_get_capSpaceType(newSlot->cap))) {
        depth = 0;
    } else {
        depth = mdb_node_get_cdtDepth(parentSlot->cteMDBNode) + 1;
        if (depth == BIT(cte_depth_bits_cap(newSlot->cap))) {
            depth--;
        }
    }
    newSlot->cteMDBNode = mdb_node_new(0, depth, 0, 0);
    cdtInsertTree(newSlot);
}

void
cdtRemove(cte_t *slot)
{
    assert(cap_get_capType(slot->cap) != cap_null_cap);
    ksRootCTE = aaRemove(false, ksRootCTE, slot);
    slot->cteMDBNode = nullMDBNode;
}

void
cdtMove(cte_t *oldSlot, cte_t *newSlot)
{
    assert(cap_get_capType(oldSlot->cap) != cap_null_cap);
    assert(cap_get_capType(newSlot->cap) != cap_null_cap);
    ksRootCTE = aaRemove(false, ksRootCTE, oldSlot);

    newSlot->cteMDBNode = mdb_node_new(0, mdb_node_get_cdtDepth(oldSlot->cteMDBNode), 0, 0);
    oldSlot->cteMDBNode = mdb_node_new(0, 0, 0, 0);

    ksRootCTE = aaInsert(ksRootCTE, newSlot);
}

void
cdtUpdate(cte_t *slot, cap_t newCap)
{
    if (capsEqual(slot->cap, newCap)) {
        slot->cap = newCap;
    } else {
        ksRootCTE = aaRemove(false, ksRootCTE, slot);
        slot->cteMDBNode = mdb_node_new(0, mdb_node_get_cdtDepth(slot->cteMDBNode), 0, 0);
        slot->cap = newCap;
        ksRootCTE = aaInsert(ksRootCTE, slot);
    }
}

void
cdtSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2)
{
    word_t depth1, depth2;
    assert(slot1 != slot2);
    if (cap_get_capType(slot1->cap) != cap_null_cap) {
        ksRootCTE = aaRemove(false, ksRootCTE, slot1);
    }
    if (cap_get_capType(slot2->cap) != cap_null_cap) {
        ksRootCTE = aaRemove(false, ksRootCTE, slot2);
    }
    depth1 = mdb_node_get_cdtDepth(slot1->cteMDBNode);
    depth2 = mdb_node_get_cdtDepth(slot2->cteMDBNode);
    slot1->cteMDBNode = mdb_node_new(0, depth2, 0, 0);
    slot2->cteMDBNode = mdb_node_new(0, depth1, 0, 0);

    slot1->cap = cap2;
    slot2->cap = cap1;

    if (cap_get_capType(slot1->cap) != cap_null_cap) {
        ksRootCTE = aaInsert(ksRootCTE, slot1);
    }
    if (cap_get_capType(slot2->cap) != cap_null_cap) {
        ksRootCTE = aaInsert(ksRootCTE, slot2);
    }
}

/*****************************************************************************
 * AA Tree implementation
 *****************************************************************************/

/* AA Tree rebalancing functions */
static cte_t *aaRemoveNode(bool_t isSwapped, cte_t *rootSlot);
static cte_t *aaRebalance(cte_t *slot);
static cte_t *aaDecLevel(cte_t *slot);
static cte_t *aaSkew(cte_t *slot);
static cte_t *aaSplit(cte_t *slot);

static cte_t * aaSucc(cte_t *slot)
{
    cte_t *left;

    left = CTE_PTR(mdb_node_get_cdtLeft(slot->cteMDBNode));
    while (left) {
        slot = left;
        left = CTE_PTR(mdb_node_get_cdtLeft(slot->cteMDBNode));
    }
    return slot;
}

static cte_t * aaPred(cte_t *slot)
{
    cte_t *right;

    right = CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode));
    while (right) {
        slot = right;
        right = CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode));
    }
    return slot;
}

static cte_t *aaParent(cte_t *slot)
{
    cte_t *current = NULL;
    cte_t *next;

    next = ksRootCTE;
    while (next != slot) {
        current = next;
        switch (compSlot(current, slot)) {
        case LT:
            next = CTE_PTR(mdb_node_get_cdtRight(current->cteMDBNode));
            break;
        case GT:
            next = CTE_PTR(mdb_node_get_cdtLeft(current->cteMDBNode));
            break;
        case EQ:
            return current;
        }
    }
    return current;
}

static cte_t *aaTraverseBackward(cte_t *slot)
{
    cte_t *parent;
    cte_t *left;
    /* Optimistically see if we our predecessor is a child */
    left = CTE_PTR(mdb_node_get_cdtLeft(slot->cteMDBNode));
    if (left) {
        return aaPred(left);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */

    /* search upwards until we find an ancestor on a right link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && CTE_PTR(mdb_node_get_cdtRight(parent->cteMDBNode)) != slot) {
        slot = parent;
        parent = aaParent(parent);
    }
    return parent;
}

static cte_t *aaTraverseForward(cte_t *slot)
{
    cte_t *parent;
    cte_t *right;
    /* Optimistically see if we our successor is a child */
    right = CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode));
    if (right) {
        return aaSucc(right);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */


    /* search upwards until we find an ancestor on a left link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && CTE_PTR(mdb_node_get_cdtLeft(parent->cteMDBNode)) != slot) {
        slot = parent;
        parent = aaParent(parent);
    }
    return parent;
}

static inline int
aaLevel(cte_t *slot)
{
    if (!slot) {
        return 0;
    }
    return mdb_node_get_cdtLevel(slot->cteMDBNode);
}

static inline int CONST min(int a, int b)
{
    return (a < b) ? a : b;
}

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot)
{
    cte_t *left, *right;

    if (!newSlot) {
        fail("inserting null CTE");
    }
    assert(newSlot != rootSlot);

    if (!rootSlot) {

        mdb_node_ptr_set_cdtLevel(&newSlot->cteMDBNode, 1);
        return newSlot;

    } else {

        switch (compSlot(newSlot, rootSlot)) {
        case GT:
            right = CTE_PTR(mdb_node_get_cdtRight(rootSlot->cteMDBNode));
            right = aaInsert(right, newSlot);
            mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, CTE_REF(right));
            break;

        case LT:
            left = CTE_PTR(mdb_node_get_cdtLeft(rootSlot->cteMDBNode));
            left = aaInsert(left, newSlot);
            mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, CTE_REF(left));
            break;

        default:
            fail("Inserting duplicate");
        }

        rootSlot = aaSkew(rootSlot);
        rootSlot = aaSplit(rootSlot);

        return rootSlot;
    }
}

static cte_t *aaRemove(bool_t isSwapped, cte_t *rootSlot, cte_t *targetSlot)
{
    cte_t *left, *right;

    if (!targetSlot) {
        fail("removing null");
    }
    if (!rootSlot) {
        fail("removing from null");
    }

    switch (compSlot(targetSlot, rootSlot)) {
    case GT:
        right = CTE_PTR(mdb_node_get_cdtRight(rootSlot->cteMDBNode));
        right = aaRemove(isSwapped, right, targetSlot);
        mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, CTE_REF(right));
        break;
    case LT:
        left = CTE_PTR(mdb_node_get_cdtLeft(rootSlot->cteMDBNode));
        left = aaRemove(isSwapped, left, targetSlot);
        mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, CTE_REF(left));
        break;
    default:
        rootSlot = aaRemoveNode(isSwapped, rootSlot);
    }
    rootSlot = aaRebalance(rootSlot);
    return rootSlot;
}

/* AA Tree rebalancing functions */

static cte_t *aaRemoveNode(bool_t isSwapped, cte_t *rootSlot)
{
    cte_t *left, *right, *pred, *succ;
    mdb_node_t mdb;

    mdb = rootSlot->cteMDBNode;

    left = CTE_PTR(mdb_node_get_cdtLeft(mdb));
    right = CTE_PTR(mdb_node_get_cdtRight(mdb));
    if (left) {
        pred = aaPred(left);
        left = aaRemove(true, left, pred);

        mdb_node_ptr_set_cdtLevel(&pred->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&pred->cteMDBNode, mdb_node_get_cdtRight(mdb));
        mdb_node_ptr_set_cdtLeft(&pred->cteMDBNode, CTE_REF(left));

        return pred;

    } else if (right) {
        succ = aaSucc(right);
        right = aaRemove(true, right, succ);

        mdb_node_ptr_set_cdtLevel(&succ->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&succ->cteMDBNode, CTE_REF(right));
        mdb_node_ptr_set_cdtLeft(&succ->cteMDBNode, CTE_REF(NULL));

        return succ;

    } else {
        return NULL;
    }
}

static cte_t *aaRebalance(cte_t *slot)
{
    cte_t *right, *right_right;

    if (!slot) {
        return NULL;
    }

    slot = aaDecLevel(slot);
    slot = aaSkew(slot);

    right = aaSkew(CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode)));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, CTE_REF(right));

    if (right) {
        right_right = aaSkew(CTE_PTR(mdb_node_get_cdtRight(right->cteMDBNode)));
        mdb_node_ptr_set_cdtRight(&right->cteMDBNode, CTE_REF(right_right));
    }

    slot = aaSplit(slot);

    right = aaSplit(CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode)));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, CTE_REF(right));

    return slot;
}

static cte_t *aaDecLevel(cte_t *slot)
{
    cte_t *left, *right;
    int should_be;

    if (!slot) {
        return NULL;
    }

    left = CTE_PTR(mdb_node_get_cdtLeft(slot->cteMDBNode));
    right = CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode));

    should_be = min(aaLevel(left), aaLevel(right)) + 1;

    if (should_be < mdb_node_get_cdtLevel(slot->cteMDBNode)) {
        mdb_node_ptr_set_cdtLevel(&slot->cteMDBNode, should_be);

        if (right && should_be < mdb_node_get_cdtLevel(right->cteMDBNode)) {
            mdb_node_ptr_set_cdtLevel(&right->cteMDBNode, should_be);
        }
    }

    return slot;
}

static cte_t *aaSplit(cte_t *slot)
{
    cte_t *right, *right_right;
    int level;

    /*
     *                             |
     *     |                      |R|
     *    |T|->|R|->|X|   =>     /   \
     *   /    /                |T|   |X|
     * |A|  |B|               /   \
     *                      |A|   |B|
     */

    if (!slot) {
        return NULL;
    }

    right = CTE_PTR(mdb_node_get_cdtRight(slot->cteMDBNode));
    if (right) {

        right_right = CTE_PTR(mdb_node_get_cdtRight(right->cteMDBNode));
        if (right_right && mdb_node_get_cdtLevel(slot->cteMDBNode)
                == mdb_node_get_cdtLevel(right_right->cteMDBNode)) {

            mdb_node_ptr_set_cdtRight(&slot->cteMDBNode,
                                      mdb_node_get_cdtLeft(right->cteMDBNode));

            level = mdb_node_get_cdtLevel(right->cteMDBNode) + 1;
            mdb_node_ptr_set_cdtLevel(&right->cteMDBNode, level);

            /* check level dosn't overflow */
            assert(mdb_node_get_cdtLevel(right->cteMDBNode) == level);

            mdb_node_ptr_set_cdtLeft(&right->cteMDBNode, CTE_REF(slot));

            return right;
        }
    }

    return slot;
}

static cte_t *aaSkew(cte_t *slot)
{
    cte_t *left;

    /*
     *          |              |
     *    |L|<-|T|     =>     |L|->|T|
     *   /   \    \          /    /   \
     * |A|   |B|  |R|      |A|  |B|   |R|
     */

    if (!slot) {
        return NULL;
    }

    left = CTE_PTR(mdb_node_get_cdtLeft(slot->cteMDBNode));
    if (left && mdb_node_get_cdtLevel(left->cteMDBNode)
            == mdb_node_get_cdtLevel(slot->cteMDBNode)) {

        mdb_node_ptr_set_cdtLeft(&slot->cteMDBNode,
                                 mdb_node_get_cdtRight(left->cteMDBNode));
        mdb_node_ptr_set_cdtRight(&left->cteMDBNode, CTE_REF(slot));

        return left;
    }

    return slot;
}

/*****************************************************************************
 * AA Tree Debug Functions
 *****************************************************************************/

static char *
printCap(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        return "NullCap";
    case cap_untyped_cap:
        return "Untyped";
    case cap_endpoint_cap:
        return "Endpoint";
    case cap_async_endpoint_cap:
        return "AsyncEndpoint";
    case cap_reply_cap:
        return "Reply";
    case cap_cnode_cap:
        return "CNode";
    case cap_thread_cap:
        return "Thread";
    default:
        return "?";
    }
}

void
printCTE(char *msg, cte_t *cte)
{
    (void)printCap;
    if (!cte) {
        printf("%s [NULL]@0x%x", msg, cte);
    } else  {
        printf("%s [%d %s(%d) { addr = 0x%x, size = 0x%x } left: 0x%x right: 0x%x badge: %d depth: %d extra: 0x%x]@0x%x\n",
               msg,
               mdb_node_get_cdtLevel(cte->cteMDBNode),
               printCap(cte->cap),
               cap_get_capType(cte->cap),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : (word_t)cap_get_capSpacePtr(cte->cap),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capSpaceSize(cte->cap),
               mdb_node_get_cdtLeft(cte->cteMDBNode),
               mdb_node_get_cdtRight(cte->cteMDBNode),
               cap_get_capBadge(cte->cap),
               mdb_node_get_cdtDepth(cte->cteMDBNode),
               cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capExtraComp(cte->cap),
               cte);
    }
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <object.h>
#include <api/failures.h>
#include <kernel/thread.h>
#include <kernel/cspace.h>
#include <model/statedata.h>
#include <arch/machine.h>

lookupCap_ret_t
lookupCap(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCap_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
        ret.status = lu_ret.status;
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupCapAndSlot_ret_t
lookupCapAndSlot(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCapAndSlot_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (unlikely(lu_ret.status != EXCEPTION_NONE)) {
        ret.status = lu_ret.status;
        ret.slot = NULL;
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.slot = lu_ret.slot;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupSlot_raw_ret_t
lookupSlot(tcb_t *thread, cptr_t capptr)
{
    cap_t threadRoot;
    resolveAddressBits_ret_t res_ret;
    lookupSlot_raw_ret_t ret;

    threadRoot = TCB_PTR_CTE_PTR(thread, tcbCTable)->cap;
    res_ret = resolveAddressBits(threadRoot, capptr, wordBits);

    ret.status = res_ret.status;
    ret.slot = res_ret.slot;
    return ret;
}

lookupSlot_ret_t
lookupSlotForCNodeOp(bool_t isSource, cap_t root, cptr_t capptr,
                     unsigned int depth)
{
    resolveAddressBits_ret_t res_ret;
    lookupSlot_ret_t ret;

    ret.slot = NULL;

    if (unlikely(cap_get_capType(root) != cap_cnode_cap)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (unlikely(depth < 1 || depth > wordBits)) {
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = wordBits;
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    res_ret = resolveAddressBits(root, capptr, depth);
    if (unlikely(res_ret.status != EXCEPTION_NONE)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        /* current_lookup_fault will have been set by resolveAddressBits */
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (unlikely(res_ret.bitsRemaining != 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault =
            lookup_fault_depth_mismatch_new(0, res_ret.bitsRemaining);
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    ret.slot = res_ret.slot;
    ret.status = EXCEPTION_NONE;
    return ret;
}

lookupSlot_ret_t
lookupSourceSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

lookupSlot_ret_t
lookupTargetSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(false, root, capptr, depth);
}

lookupSlot_ret_t
lookupPivotSlot(cap_t root, cptr_t capptr, unsigned int depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

resolveAddressBits_ret_t
resolveAddressBits(cap_t nodeCap, cptr_t capptr, unsigned int n_bits)
{
    resolveAddressBits_ret_t ret;
    unsigned int radixBits, guardBits, levelBits, offset;
    cte_t *slot;

    ret.bitsRemaining = n_bits;
    ret.slot = NULL;

    if (unlikely(cap_get_capType(nodeCap) != cap_cnode_cap)) {
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }

    guardBits = cap_cnode_cap_get_capCNodeGuardSize(nodeCap);
    if (unlikely(guardBits > n_bits)) {
        current_lookup_fault =
            lookup_fault_guard_mismatch_new(0, n_bits, guardBits);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }
    n_bits -= guardBits;

    while (1) {
        radixBits = cap_cnode_cap_get_capCNodeRadix(nodeCap);
        levelBits = radixBits;

        /* Haskell error: "All CNodes must resolve bits" */
        assert(levelBits != 0);

        if (unlikely(levelBits > n_bits)) {
            current_lookup_fault =
                lookup_fault_depth_mismatch_new(levelBits, n_bits);
            ret.status = EXCEPTION_LOOKUP_FAULT;
            return ret;
        }

        offset = (capptr >> (n_bits - levelBits)) & MASK(radixBits);
        slot = CTE_PTR(cap_cnode_cap_get_capCNodePtr(nodeCap)) + offset;

        if (likely(n_bits <= levelBits)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = 0;
            return ret;
        }

        /** GHOSTUPD: "(\<acute>levelBits > 0, id)" */

        n_bits -= levelBits;
        nodeCap = slot->cap;

        if (unlikely(cap_get_capType(nodeCap) != cap_cnode_cap)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = n_bits;
            return ret;
        }
    }

    ret.status = EXCEPTION_NONE;
    return ret;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <api/failures.h>
#include <kernel/cspace.h>
#include <kernel/faulthandler.h>
#include <kernel/thread.h>
#include <machine/io.h>
#include <arch/machine.h>

void
handleFault(tcb_t *tptr)
{
    exception_t status;
    fault_t fault = current_fault;

    status = sendFaultIPC(tptr);
    if (status != EXCEPTION_NONE) {
        handleDoubleFault(tptr, fault);
    }
}

exception_t
sendFaultIPC(tcb_t *tptr)
{
    cptr_t handlerCPtr;
    cap_t  handlerCap;
    lookupCap_ret_t lu_ret;
    lookup_fault_t original_lookup_fault;

    original_lookup_fault = current_lookup_fault;

    handlerCPtr = tptr->tcbFaultHandler;
    lu_ret = lookupCap(tptr, handlerCPtr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_fault = fault_cap_fault_new(handlerCPtr, false);
        return EXCEPTION_FAULT;
    }
    handlerCap = lu_ret.cap;

    if (cap_get_capType(handlerCap) == cap_endpoint_cap &&
            cap_endpoint_cap_get_capCanSend(handlerCap) &&
            cap_endpoint_cap_get_capCanGrant(handlerCap)) {
        tptr->tcbFault = current_fault;
        if (fault_get_faultType(current_fault) == fault_cap_fault) {
            tptr->tcbLookupFailure = original_lookup_fault;
        }
        sendIPC(true, false,
                cap_endpoint_cap_get_capEPBadge(handlerCap),
                true, tptr,
                EP_PTR(cap_endpoint_cap_get_capEPPtr(handlerCap)));

        return EXCEPTION_NONE;
    } else {
        current_fault = fault_cap_fault_new(handlerCPtr, false);
        current_lookup_fault = lookup_fault_missing_capability_new(0);

        return EXCEPTION_FAULT;
    }
}

#ifdef DEBUG
static void
print_fault(fault_t f)
{
    switch (fault_get_faultType(f)) {
    case fault_null_fault:
        printf("null fault");
        break;
    case fault_cap_fault:
        printf("cap fault in %s phase at address 0x%x",
               fault_cap_fault_get_inReceivePhase(f) ? "receive" : "send",
               (unsigned int)fault_cap_fault_get_address(f));
        break;
    case fault_vm_fault:
        printf("vm fault on %s at address 0x%x with status 0x%x",
               fault_vm_fault_get_instructionFault(f) ? "code" : "data",
               (unsigned int)fault_vm_fault_get_address(f),
               (unsigned int)fault_vm_fault_get_FSR(f));
        break;
    case fault_unknown_syscall:
        printf("unknown syscall 0x%x",
               (unsigned int)fault_unknown_syscall_get_syscallNumber(f));
        break;
    case fault_user_exception:
        printf("user exception 0x%x code 0x%x",
               (unsigned int)fault_user_exception_get_number(f),
               (unsigned int)fault_user_exception_get_code(f));
        break;
    default:
        printf("unknown fault");
        break;
    }
}
#endif

/* The second fault, ex2, is stored in the global current_fault */
void
handleDoubleFault(tcb_t *tptr, fault_t ex1)
{
#ifdef DEBUG
    fault_t ex2 = current_fault;
    printf("Caught ");
    print_fault(ex2);
    printf("\nwhile trying to handle:\n");
    print_fault(ex1);
    printf("\nin thread 0x%x \"%s\" ", (unsigned int)tptr, tptr->tcbName);
    printf("at address 0x%x\n", (unsigned int)getRestartPC(tptr));
#endif

    setThreadState(tptr, ThreadState_Inactive);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <config.h>
#include <object.h>
#include <util.h>
#include <api/faults.h>
#include <api/types.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <kernel/vspace.h>
#include <model/statedata.h>
#include <arch/machine.h>
#include <arch/kernel/thread.h>
#include <machine/registerset.h>
#include <arch/linker.h>

static message_info_t
transferCaps(message_info_t info, extra_caps_t caps,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer, bool_t diminish);

static inline bool_t PURE
isBlocked(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Inactive:
    case ThreadState_BlockedOnReceive:
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnAsyncEvent:
    case ThreadState_BlockedOnReply:
        return true;

    default:
        return false;
    }
}

static inline bool_t PURE
isRunnable(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Running:
    case ThreadState_RunningVM:
    case ThreadState_Restart:
        return true;

    default:
        return false;
    }
}

BOOT_CODE void
configureIdleThread(tcb_t *tcb)
{
    Arch_configureIdleThread(tcb);
    setThreadState(tcb, ThreadState_IdleThreadState);
}

void
activateThread(void)
{
    switch (thread_state_get_tsType(ksCurThread->tcbState)) {
    case ThreadState_Running:
    case ThreadState_RunningVM:
        break;

    case ThreadState_Restart: {
        word_t pc;

        pc = getRestartPC(ksCurThread);
        setNextPC(ksCurThread, pc);
        setThreadState(ksCurThread, ThreadState_Running);
        break;
    }

    case ThreadState_IdleThreadState:
        Arch_activateIdleThread(ksCurThread);
        break;

    default:
        fail("Current thread is blocked");
    }
}

void
suspend(tcb_t *target)
{
    ipcCancel(target);
    /*if (cap_get_capType(TCB_PTR_CTE_PTR(target, tcbCaller)->cap) == cap_reply_cap)*/
    {
        deleteCallerCap(target);
    }
    setThreadState(target, ThreadState_Inactive);
    tcbSchedDequeue(target);
}

void
restart(tcb_t *target)
{
    if (isBlocked(target)) {
        ipcCancel(target);
        setupReplyMaster(target);
        setThreadState(target, ThreadState_Restart);
        tcbSchedEnqueue(target);
        switchIfRequiredTo(target);
    }
}

void
doIPCTransfer(tcb_t *sender, endpoint_t *endpoint, word_t badge,
              bool_t grant, tcb_t *receiver, bool_t diminish)
{
    void *receiveBuffer, *sendBuffer;

    receiveBuffer = lookupIPCBuffer(true, receiver);

    if (likely(!fault_get_faultType(sender->tcbFault) != fault_null_fault)) {
        sendBuffer = lookupIPCBuffer(false, sender);
        doNormalTransfer(sender, sendBuffer, endpoint, badge, grant,
                         receiver, receiveBuffer, diminish);
    } else {
        doFaultTransfer(badge, sender, receiver, receiveBuffer);
    }
}

void
doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot)
{
    assert(thread_state_get_tsType(receiver->tcbState) ==
           ThreadState_BlockedOnReply);

    if (likely(fault_get_faultType(receiver->tcbFault) == fault_null_fault)) {
        doIPCTransfer(sender, NULL, 0, true, receiver, false);
        /** GHOSTUPD: "(True, gs_set_assn cteDeleteOne_'proc (ucast cap_reply_cap))" */
        setThreadState(receiver, ThreadState_Running);
        attemptSwitchTo(receiver);
    } else {
        bool_t restart;

        /** GHOSTUPD: "(True, gs_set_assn cteDeleteOne_'proc (ucast cap_reply_cap))" */
        restart = handleFaultReply(receiver, sender);
        fault_null_fault_ptr_new(&receiver->tcbFault);
        if (restart) {
            setThreadState(receiver, ThreadState_Restart);
            attemptSwitchTo(receiver);
        } else {
            setThreadState(receiver, ThreadState_Inactive);
        }
    }
    finaliseCap(slot->cap, true, true);
    slot->cap = cap_null_cap_new();
}

void
doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                 word_t badge, bool_t canGrant, tcb_t *receiver,
                 word_t *receiveBuffer, bool_t diminish)
{
    unsigned int msgTransferred;
    message_info_t tag;
    exception_t status;
    extra_caps_t caps;

    tag = messageInfoFromWord(getRegister(sender, msgInfoRegister));

    if (canGrant) {
        status = lookupExtraCaps(sender, sendBuffer, tag);
        caps = current_extra_caps;
        if (unlikely(status != EXCEPTION_NONE)) {
            caps.excaprefs[0] = NULL;
        }
    } else {
        caps = current_extra_caps;
        caps.excaprefs[0] = NULL;
    }

    msgTransferred = copyMRs(sender, sendBuffer, receiver, receiveBuffer,
                             message_info_get_msgLength(tag));

    tag = transferCaps(tag, caps, endpoint, receiver, receiveBuffer, diminish);

    tag = message_info_set_msgLength(tag, msgTransferred);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(tag));
    setRegister(receiver, badgeRegister, badge);
}

void
doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                word_t *receiverIPCBuffer)
{
    unsigned int sent;
    message_info_t msgInfo;

    sent = setMRs_fault(sender, receiver, receiverIPCBuffer);
    msgInfo = message_info_new(
                  fault_get_faultType(sender->tcbFault), 0, 0, sent);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(msgInfo));
    setRegister(receiver, badgeRegister, badge);
}

/* Like getReceiveSlots, this is specialised for single-cap transfer. */
static message_info_t
transferCaps(message_info_t info, extra_caps_t caps,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer, bool_t diminish)
{
    unsigned int i;
    cte_t* destSlot;

    info = message_info_set_msgExtraCaps(info, 0);
    info = message_info_set_msgCapsUnwrapped(info, 0);

    if (likely(!caps.excaprefs[0] || !receiveBuffer)) {
        return info;
    }

    destSlot = getReceiveSlots(receiver, receiveBuffer);

    for (i = 0; i < seL4_MsgMaxExtraCaps && caps.excaprefs[i] != NULL; i++) {
        cte_t *slot = caps.excaprefs[i];
        cap_t cap = slot->cap;

        if (cap_get_capType(cap) == cap_endpoint_cap &&
                EP_PTR(cap_endpoint_cap_get_capEPPtr(cap)) == endpoint) {
            /* If this is a cap to the endpoint on which the message was sent,
             * only transfer the badge, not the cap. */
            setExtraBadge(receiveBuffer,
                          cap_endpoint_cap_get_capEPBadge(cap), i);

            info = message_info_set_msgCapsUnwrapped(info,
                                                     message_info_get_msgCapsUnwrapped(info) | (1 << i));

        } else {
            deriveCap_ret_t dc_ret;

            if (!destSlot) {
                break;
            }

            if (diminish) {
                dc_ret = deriveCap(slot, maskCapRights(noWrite, cap));
            } else {
                dc_ret = deriveCap(slot, cap);
            }

            if (dc_ret.status != EXCEPTION_NONE) {
                break;
            }
            if (cap_get_capType(dc_ret.cap) == cap_null_cap) {
                break;
            }

            cteInsert(dc_ret.cap, slot, destSlot);

            destSlot = NULL;
        }
    }

    return message_info_set_msgExtraCaps(info, i);
}

void doPollFailedTransfer(tcb_t *thread)
{
    /* Set the badge register to 0 to indicate there was no message */
    setRegister(thread, badgeRegister, 0);
}

static void
nextDomain(void)
{
    ksDomScheduleIdx++;
    if (ksDomScheduleIdx >= ksDomScheduleLength) {
        ksDomScheduleIdx = 0;
    }
    ksWorkUnitsCompleted = 0;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;
}

void
schedule(void)
{
    word_t action;

    action = (word_t)ksSchedulerAction;
    if (action == (word_t)SchedulerAction_ChooseNewThread) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        if (CONFIG_NUM_DOMAINS > 1 && ksDomainTime == 0) {
            nextDomain();
        }
        chooseThread();
        ksSchedulerAction = SchedulerAction_ResumeCurrentThread;
    } else if (action != (word_t)SchedulerAction_ResumeCurrentThread) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        /* SwitchToThread */
        switchToThread(ksSchedulerAction);
        ksSchedulerAction = SchedulerAction_ResumeCurrentThread;
    }
}

void
chooseThread(void)
{
    word_t prio;
    word_t dom;
    tcb_t *thread;

    if (CONFIG_NUM_DOMAINS > 1) {
        dom = ksCurDomain;
    } else {
        dom = 0;
    }

    if (likely(ksReadyQueuesL1Bitmap[dom])) {
        uint32_t l1index = (wordBits - 1) - CLZ(ksReadyQueuesL1Bitmap[dom]);
        uint32_t l2index = (wordBits - 1) - CLZ(ksReadyQueuesL2Bitmap[dom][l1index]);
        prio = l1index_to_prio(l1index) | l2index;
        thread = ksReadyQueues[ready_queues_index(dom, prio)].head;
        assert(thread);
        assert(isRunnable(thread));
        switchToThread(thread);
        return;
    }

    switchToIdleThread();

}

void
switchToThread(tcb_t *thread)
{
    Arch_switchToThread(thread);
    tcbSchedDequeue(thread);
    ksCurThread = thread;
}

void
switchToIdleThread(void)
{
    Arch_switchToIdleThread();
    ksCurThread = ksIdleThread;
}

void
setDomain(tcb_t *tptr, dom_t dom)
{
    tcbSchedDequeue(tptr);
    tptr->tcbDomain = dom;
    if (isRunnable(tptr)) {
        tcbSchedEnqueue(tptr);
    }
    if (tptr == ksCurThread) {
        rescheduleRequired();
    }
}

void
setPriority(tcb_t *tptr, prio_t prio)
{
    tcbSchedDequeue(tptr);
    tptr->tcbPriority = prio;
    if (isRunnable(tptr)) {
        tcbSchedEnqueue(tptr);
    }
    if (tptr == ksCurThread) {
        rescheduleRequired();
    }
}

static void
possibleSwitchTo(tcb_t* target, bool_t onSamePriority)
{
    prio_t curPrio, targetPrio;
    tcb_t *action;

    curPrio = ksCurThread->tcbPriority;
    targetPrio = target->tcbPriority;
    action = ksSchedulerAction;

    if (CONFIG_NUM_DOMAINS > 1) {
        dom_t curDom = ksCurDomain;
        dom_t targetDom = target->tcbDomain;

        if (targetDom != curDom) {
            tcbSchedEnqueue(target);
        }
    } else {
        if ((targetPrio > curPrio || (targetPrio == curPrio && onSamePriority))
                && action == SchedulerAction_ResumeCurrentThread) {
            ksSchedulerAction = target;
        } else {
            tcbSchedEnqueue(target);
        }
        if (action != SchedulerAction_ResumeCurrentThread
                && action != SchedulerAction_ChooseNewThread) {
            rescheduleRequired();
        }
    }
}

void
attemptSwitchTo(tcb_t* target)
{
    possibleSwitchTo(target, true);
}

void
switchIfRequiredTo(tcb_t* target)
{
    possibleSwitchTo(target, false);
}

void
setThreadState(tcb_t *tptr, _thread_state_t ts)
{
    thread_state_ptr_set_tsType(&tptr->tcbState, ts);
    scheduleTCB(tptr);
}

void
scheduleTCB(tcb_t *tptr)
{
    if (tptr == ksCurThread &&
            ksSchedulerAction == SchedulerAction_ResumeCurrentThread &&
            !isRunnable(tptr)) {
        rescheduleRequired();
    }
}

void
timerTick(void)
{
    if (likely(isRunnable(ksCurThread))) {
        if (ksCurThread->tcbTimeSlice > 1) {
            ksCurThread->tcbTimeSlice--;
        } else {
            ksCurThread->tcbTimeSlice = CONFIG_TIME_SLICE;
            tcbSchedAppend(ksCurThread);
            rescheduleRequired();
        }
    }

    if (CONFIG_NUM_DOMAINS > 1) {
        ksDomainTime--;
        if (ksDomainTime == 0) {
            rescheduleRequired();
        }
    }
}

void
rescheduleRequired(void)
{
    if (ksSchedulerAction != SchedulerAction_ResumeCurrentThread
            && ksSchedulerAction != SchedulerAction_ChooseNewThread) {
        tcbSchedEnqueue(ksSchedulerAction);
    }
    ksSchedulerAction = SchedulerAction_ChooseNewThread;
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <stdarg.h>
#include <machine/io.h>

#if defined DEBUG || defined RELEASE_PRINTF

static unsigned int
print_string(const char *s)
{
    unsigned int n;

    for (n = 0; *s; s++, n++) {
        kernel_putchar(*s);
    }

    return n;
}

static unsigned long
xdiv(unsigned long x, unsigned int denom)
{
    switch (denom) {
    case 16:
        return x / 16;
    case 10:
        return x / 10;
    default:
        return 0;
    }
}

static unsigned long
xmod(unsigned long x, unsigned int denom)
{
    switch (denom) {
    case 16:
        return x % 16;
    case 10:
        return x % 10;
    default:
        return 0;
    }
}

unsigned int
print_unsigned_long(unsigned long x, unsigned int ui_base)
{
    char out[11];
    unsigned int i, j;
    unsigned int d;

    /*
     * Only base 10 and 16 supported for now. We want to avoid invoking the
     * compiler's support libraries through doing arbitrary divisions.
     */
    if (ui_base != 10 && ui_base != 16) {
        return 0;
    }

    if (x == 0) {
        kernel_putchar('0');
        return 1;
    }

    for (i = 0; x; x = xdiv(x, ui_base), i++) {
        d = xmod(x, ui_base);

        if (d >= 10) {
            out[i] = 'a' + d - 10;
        } else {
            out[i] = '0' + d;
        }
    }

    for (j = i; j > 0; j--) {
        kernel_putchar(out[j - 1]);
    }

    return i;
}


static unsigned int
print_unsigned_long_long(unsigned long long x, unsigned int ui_base)
{
    unsigned long upper, lower;
    unsigned int n = 0;
    unsigned int mask = 0xF0000000u;

    /* only implemented for hex, decimal is harder without 64 bit division */
    if (ui_base != 16) {
        return 0;
    }

    /* we can't do 64 bit division so break it up into two hex numbers */
    upper = (unsigned long) (x >> 32llu);
    lower = (unsigned long) x;

    /* print first 32 bits if they exist */
    if (upper > 0) {
        n += print_unsigned_long(upper, ui_base);

        /* print leading 0s */
        while (!(mask & lower)) {
            kernel_putchar('0');
            n++;
            mask = mask >> 4;
        }
    }

    /* print last 32 bits */
    n += print_unsigned_long(lower, ui_base);

    return n;
}


static int
vprintf(const char *format, va_list ap)
{
    unsigned int n;
    unsigned int formatting;

    if (!format) {
        return 0;
    }

    n = 0;
    formatting = 0;
    while (*format) {
        if (formatting) {
            switch (*format) {
            case '%':
                kernel_putchar('%');
                n++;
                format++;
                break;

            case 'd': {
                int x = va_arg(ap, int);

                if (x < 0) {
                    kernel_putchar('-');
                    n++;
                    x = -x;
                }

                n += print_unsigned_long((unsigned long)x, 10);
                format++;
                break;
            }

            case 'u':
                n += print_unsigned_long(va_arg(ap, unsigned long), 10);
                format++;
                break;

            case 'x':
                n += print_unsigned_long(va_arg(ap, unsigned long), 16);
                format++;
                break;

            case 'p': {
                unsigned long p = va_arg(ap, unsigned long);
                if (p == 0) {
                    n += print_string("(nil)");
                } else {
                    n += print_string("0x");
                    n += print_unsigned_long(p, 16);
                }
                format++;
                break;
            }

            case 's':
                n += print_string(va_arg(ap, char *));
                format++;
                break;

            case 'l':
                if (*(format + 1) == 'l' && *(format + 2) == 'x') {
                    uint64_t arg = va_arg(ap, unsigned long long);
                    n += print_unsigned_long_long(arg, 16);
                }
                format += 3;
                break;
            default:
                format++;
                break;
            }

            formatting = 0;
        } else {
            switch (*format) {
            case '%':
                formatting = 1;
                format++;
                break;

            default:
                kernel_putchar(*format);
                n++;
                format++;
                break;
            }
        }
    }

    return n;
}

unsigned int puts(const char *s)
{
    for (; *s; s++) {
        kernel_putchar(*s);
    }
    kernel_putchar('\n');
    return 0;
}

unsigned int
kprintf(const char *format, ...)
{
    va_list args;
    unsigned int i;

    va_start(args, format);
    i = vprintf(format, args);
    va_end(args);
    return i;
}

#endif /* defined DEBUG || RELEASE_PRINTF */
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <api/failures.h>
#include <model/preemption.h>
#include <model/statedata.h>
#include <plat/machine/hardware.h>
#include <config.h>

/*
 * Possibly preempt the current thread to allow an interrupt to be handled.
 */
exception_t
preemptionPoint(void)
{
    /* Record that we have performed some work. */
    ksWorkUnitsCompleted++;

    /*
     * If we have performed a non-trivial amount of work since last time we
     * checked for preemption, and there is an interrupt pending, handle the
     * interrupt.
     *
     * We avoid checking for pending IRQs every call, as our callers tend to
     * call us in a tight loop and checking for pending IRQs can be quite slow.
     */
    if (ksWorkUnitsCompleted >= CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION) {
        ksWorkUnitsCompleted = 0;
        if (isIRQPending()) {
            return EXCEPTION_PREEMPTED;
        }
    }

    return EXCEPTION_NONE;
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <plat/machine.h>
#include <model/statedata.h>
#include <object/structures.h>
#include <object/tcb.h>

/* Pointer to the head of the scheduler queue for each priority */
tcb_queue_t ksReadyQueues[NUM_READY_QUEUES];
word_t ksReadyQueuesL1Bitmap[CONFIG_NUM_DOMAINS];
word_t ksReadyQueuesL2Bitmap[CONFIG_NUM_DOMAINS][(CONFIG_NUM_PRIORITIES / wordBits) + 1];
compile_assert(ksReadyQueuesL1BitmapBigEnough, (CONFIG_NUM_PRIORITIES / wordBits) <= wordBits);

/* Current thread TCB pointer */
tcb_t *ksCurThread;

/* Idle thread TCB pointer */
tcb_t *ksIdleThread;

/* Values of 0 and ~0 encode ResumeCurrentThread and ChooseNewThread
 * respectively; other values encode SwitchToThread and must be valid
 * tcb pointers */
tcb_t *ksSchedulerAction;

/* Units of work we have completed since the last time we checked for
 * pending interrupts */
word_t ksWorkUnitsCompleted;

/* Root of the cap derivation tree structure */
cte_t *ksRootCTE;

/* CNode containing interrupt handler endpoints */
irq_state_t intStateIRQTable[maxIRQ + 1];
cte_t *intStateIRQNode;

/* Currently active domain */
dom_t ksCurDomain;

/* Domain timeslice remaining */
word_t ksDomainTime;

/* An index into ksDomSchedule for active domain and length. */
uint32_t ksDomScheduleIdx;

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>

#include <types.h>
#include <kernel/thread.h>
#include <object/structures.h>
#include <object/tcb.h>
#include <object/endpoint.h>
#include <model/statedata.h>
#include <machine/io.h>

#include <object/asyncendpoint.h>

static inline tcb_queue_t PURE
aep_ptr_get_queue(async_endpoint_t *aepptr)
{
    tcb_queue_t aep_queue;

    aep_queue.head = (tcb_t*)async_endpoint_ptr_get_aepQueue_head(aepptr);
    aep_queue.end = (tcb_t*)async_endpoint_ptr_get_aepQueue_tail(aepptr);

    return aep_queue;
}

static inline void
aep_ptr_set_queue(async_endpoint_t *aepptr, tcb_queue_t aep_queue)
{
    async_endpoint_ptr_set_aepQueue_head(aepptr, (word_t)aep_queue.head);
    async_endpoint_ptr_set_aepQueue_tail(aepptr, (word_t)aep_queue.end);
}

static inline void
aep_set_active(async_endpoint_t *aepptr, word_t badge)
{
    async_endpoint_ptr_set_state(aepptr, AEPState_Active);
    async_endpoint_ptr_set_aepMsgIdentifier(aepptr, badge);
}


void
sendAsyncIPC(async_endpoint_t *aepptr, word_t badge)
{
    switch (async_endpoint_ptr_get_state(aepptr)) {
    case AEPState_Idle: {
        tcb_t *tcb = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aepptr);
        /* Check if we are bound and that thread is waiting for a message */
        if (tcb) {
            if (thread_state_ptr_get_tsType(&tcb->tcbState) == ThreadState_BlockedOnReceive) {
                /* Send and start thread running */
                ipcCancel(tcb);
                setThreadState(tcb, ThreadState_Running);
                setRegister(tcb, badgeRegister, badge);
                attemptSwitchTo(tcb);
            } else if (thread_state_ptr_get_tsType(&tcb->tcbState) == ThreadState_RunningVM) {
                setThreadState(tcb, ThreadState_Running);
                setRegister(tcb, badgeRegister, badge);
                setRegister(tcb, msgInfoRegister, 0);
                Arch_leaveVMAsyncTransfer(tcb);
                attemptSwitchTo(tcb);
            } else {
                aep_set_active(aepptr, badge);
            }
        } else {
            aep_set_active(aepptr, badge);
        }
        break;
    }
    case AEPState_Waiting: {
        tcb_queue_t aep_queue;
        tcb_t *dest;

        aep_queue = aep_ptr_get_queue(aepptr);
        dest = aep_queue.head;

        /* Haskell error "WaitingAEP AEP must have non-empty queue" */
        assert(dest);

        /* Dequeue TCB */
        aep_queue = tcbEPDequeue(dest, aep_queue);
        aep_ptr_set_queue(aepptr, aep_queue);

        /* set the thread state to idle if the queue is empty */
        if (!aep_queue.head) {
            async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        }

        setThreadState(dest, ThreadState_Running);
        setRegister(dest, badgeRegister, badge);
        switchIfRequiredTo(dest);
        break;
    }

    case AEPState_Active: {
        word_t badge2;

        badge2 = async_endpoint_ptr_get_aepMsgIdentifier(aepptr);
        badge2 |= badge;

        async_endpoint_ptr_set_aepMsgIdentifier(aepptr, badge2);
        break;
    }
    }
}

void
receiveAsyncIPC(tcb_t *thread, cap_t cap, bool_t isBlocking)
{
    async_endpoint_t *aepptr;

    aepptr = AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(cap));

    switch (async_endpoint_ptr_get_state(aepptr)) {
    case AEPState_Idle:
        /* Fall through */
    case AEPState_Waiting: {
        tcb_queue_t aep_queue;

        if (isBlocking) {
            /* Block thread on endpoint */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnAsyncEvent);
            thread_state_ptr_set_blockingIPCEndpoint(&thread->tcbState,
                                                     AEP_REF(aepptr));
            scheduleTCB(thread);

            /* Enqueue TCB */
            aep_queue = aep_ptr_get_queue(aepptr);
            aep_queue = tcbEPAppend(thread, aep_queue);

            async_endpoint_ptr_set_state(aepptr, AEPState_Waiting);
            aep_ptr_set_queue(aepptr, aep_queue);
        } else {
            doPollFailedTransfer(thread);
        }
        break;
    }

    case AEPState_Active:
        setRegister(
            thread, badgeRegister,
            async_endpoint_ptr_get_aepMsgIdentifier(aepptr));
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        break;
    }
}

void
aepCancelAll(async_endpoint_t *aepptr)
{
    if (async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting) {
        tcb_t *thread = TCB_PTR(async_endpoint_ptr_get_aepQueue_head(aepptr));

        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        async_endpoint_ptr_set_aepQueue_head(aepptr, 0);
        async_endpoint_ptr_set_aepQueue_tail(aepptr, 0);

        /* Set all waiting threads to Restart */
        for (; thread; thread = thread->tcbEPNext) {
            setThreadState(thread, ThreadState_Restart);
            tcbSchedEnqueue(thread);
        }
        rescheduleRequired();
    }
}

void
asyncIPCCancel(tcb_t *threadPtr, async_endpoint_t *aepptr)
{
    tcb_queue_t aep_queue;

    /* Haskell error "asyncIPCCancel: async endpoint must be waiting" */
    assert(async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting);

    /* Dequeue TCB */
    aep_queue = aep_ptr_get_queue(aepptr);
    aep_queue = tcbEPDequeue(threadPtr, aep_queue);
    aep_ptr_set_queue(aepptr, aep_queue);

    /* Make endpoint idle */
    if (!aep_queue.head) {
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
    }

    /* Make thread inactive */
    setThreadState(threadPtr, ThreadState_Inactive);
}

void
completeAsyncIPC(async_endpoint_t *aepptr, tcb_t *tcb)
{
    word_t badge;

    if (likely(tcb && async_endpoint_ptr_get_state(aepptr) == AEPState_Active)) {
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        badge = async_endpoint_ptr_get_aepMsgIdentifier(aepptr);
        setRegister(tcb, badgeRegister, badge);
    } else {
        fail("tried to complete async ipc with inactive AEP");
    }
}

void
unbindAsyncEndpoint(tcb_t *tcb)
{
    async_endpoint_t *aepptr;
    aepptr = tcb->boundAsyncEndpoint;

    if (aepptr) {
        async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t) 0);
        tcb->boundAsyncEndpoint = NULL;
    }
}

void
bindAsyncEndpoint(tcb_t *tcb, async_endpoint_t *aepptr)
{
    async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t)tcb);
    tcb->boundAsyncEndpoint = aepptr;
}


#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <types.h>
#include <api/failures.h>
#include <api/invocation.h>
#include <api/syscall.h>
#include <api/types.h>
#include <machine/io.h>
#include <object/structures.h>
#include <object/objecttype.h>
#include <object/cnode.h>
#include <object/interrupt.h>
#include <object/untyped.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <kernel/cdt.h>
#include <model/preemption.h>
#include <model/statedata.h>
#include <util.h>

struct finaliseSlot_ret {
    exception_t status;
    bool_t success;
    irq_t irq;
};
typedef struct finaliseSlot_ret finaliseSlot_ret_t;

static finaliseSlot_ret_t finaliseSlot(cte_t *slot, bool_t exposed);
static void emptySlot(cte_t *slot, irq_t irq);
static exception_t reduceZombie(cte_t* slot, bool_t exposed);

exception_t
decodeCNodeInvocation(word_t label, unsigned int length, cap_t cap,
                      extra_caps_t extraCaps, word_t *buffer)
{
    lookupSlot_ret_t lu_ret;
    cte_t *destSlot;
    word_t index, w_bits;
    exception_t status;

    /* Haskell error: "decodeCNodeInvocation: invalid cap" */
    assert(cap_get_capType(cap) == cap_cnode_cap);

    if (label < CNodeRevoke || label > CNodeSaveCaller) {
        userError("CNodeCap: Illegal Operation attempted.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2) {
        userError("CNode operation: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
    index = getSyscallArg(0, buffer);
    w_bits = getSyscallArg(1, buffer);

    lu_ret = lookupTargetSlot(cap, index, w_bits);
    if (lu_ret.status != EXCEPTION_NONE) {
        userError("CNode operation: Target slot invalid.");
        return lu_ret.status;
    }
    destSlot = lu_ret.slot;

    if (label >= CNodeCopy && label <= CNodeMutate) {
        cte_t *srcSlot;
        word_t srcIndex, srcDepth, capData;
        bool_t isMove;
        cap_rights_t cap_rights;
        cap_t srcRoot, newCap;
        deriveCap_ret_t dc_ret;
        cap_t srcCap;

        if (length < 4 || extraCaps.excaprefs[0] == NULL) {
            userError("CNode Copy/Mint/Move/Mutate: Truncated message.");
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        srcIndex = getSyscallArg(2, buffer);
        srcDepth = getSyscallArg(3, buffer);

        srcRoot = extraCaps.excaprefs[0]->cap;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            userError("CNode Copy/Mint/Move/Mutate: Destination not empty.");
            return status;
        }

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            userError("CNode Copy/Mint/Move/Mutate: Invalid source slot.");
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            userError("CNode Copy/Mint/Move/Mutate: Source slot invalid or empty.");
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault =
                lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        switch (label) {
        case CNodeCopy:

            if (length < 5) {
                userError("Truncated message for CNode Copy operation.");
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot, srcCap);
            if (dc_ret.status != EXCEPTION_NONE) {
                userError("Error deriving cap for CNode Copy operation.");
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMint:
            if (length < 6) {
                userError("CNode Mint: Truncated message.");
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            capData = getSyscallArg(5, buffer);
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot,
                               updateCapData(false, capData, srcCap));
            if (dc_ret.status != EXCEPTION_NONE) {
                userError("Error deriving cap for CNode Mint operation.");
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMove:
            newCap = srcSlot->cap;
            isMove = true;

            break;

        case CNodeMutate:
            if (length < 5) {
                userError("CNode Mutate: Truncated message.");
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            capData = getSyscallArg(4, buffer);
            newCap = updateCapData(true, capData, srcSlot->cap);
            isMove = true;

            break;

        default:
            assert (0);
            return EXCEPTION_NONE;
        }

        if (cap_get_capType(newCap) == cap_null_cap) {
            userError("CNode Copy/Mint/Move/Mutate: Mutated cap would be invalid.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        if (isMove) {
            return invokeCNodeMove(newCap, srcSlot, destSlot);
        } else {
            return invokeCNodeInsert(newCap, srcSlot, destSlot);
        }
    }

    if (label == CNodeRevoke) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRevoke(destSlot);
    }

    if (label == CNodeDelete) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeDelete(destSlot);
    }

    if (label == CNodeSaveCaller) {
        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            userError("CNode SaveCaller: Destination slot not empty.");
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeSaveCaller(destSlot);
    }

    if (label == CNodeRecycle) {
        if (!hasRecycleRights(destSlot->cap)) {
            userError("CNode Recycle: Target cap invalid.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRecycle(destSlot);
    }

    if (label == CNodeRotate) {
        word_t pivotNewData, pivotIndex, pivotDepth;
        word_t srcNewData, srcIndex, srcDepth;
        cte_t *pivotSlot, *srcSlot;
        cap_t pivotRoot, srcRoot, newSrcCap, newPivotCap;

        if (length < 8 || extraCaps.excaprefs[0] == NULL
                || extraCaps.excaprefs[1] == NULL) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        pivotNewData = getSyscallArg(2, buffer);
        pivotIndex   = getSyscallArg(3, buffer);
        pivotDepth   = getSyscallArg(4, buffer);
        srcNewData   = getSyscallArg(5, buffer);
        srcIndex     = getSyscallArg(6, buffer);
        srcDepth     = getSyscallArg(7, buffer);

        pivotRoot = extraCaps.excaprefs[0]->cap;
        srcRoot   = extraCaps.excaprefs[1]->cap;

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        lu_ret = lookupPivotSlot(pivotRoot, pivotIndex, pivotDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        pivotSlot = lu_ret.slot;

        if (pivotSlot == srcSlot || pivotSlot == destSlot) {
            userError("CNode Rotate: Pivot slot the same as source or dest slot.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (srcSlot != destSlot) {
            status = ensureEmptySlot(destSlot);
            if (status != EXCEPTION_NONE) {
                return status;
            }
        }

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault = lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(pivotSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 0;
            current_lookup_fault = lookup_fault_missing_capability_new(pivotDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        newSrcCap = updateCapData(true, srcNewData, srcSlot->cap);
        newPivotCap = updateCapData(true, pivotNewData, pivotSlot->cap);

        if (cap_get_capType(newSrcCap) == cap_null_cap) {
            userError("CNode Rotate: Source cap invalid.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(newPivotCap) == cap_null_cap) {
            userError("CNode Rotate: Pivot cap invalid.");
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRotate(newSrcCap, newPivotCap,
                                 srcSlot, pivotSlot, destSlot);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeRevoke(cte_t *destSlot)
{
    return cteRevoke(destSlot);
}

exception_t
invokeCNodeDelete(cte_t *destSlot)
{
    return cteDelete(destSlot, true);
}

exception_t
invokeCNodeRecycle(cte_t *destSlot)
{
    return cteRecycle(destSlot);
}

exception_t
invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteInsert(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteMove(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                  cte_t *slot2, cte_t *slot3)
{
    if (slot1 == slot3) {
        cdtSwap(cap1, slot1, cap2, slot2);
    } else {
        cteMove(cap2, slot2, slot3);
        cteMove(cap1, slot1, slot2);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeCNodeSaveCaller(cte_t *destSlot)
{
    cap_t cap;
    cte_t *srcSlot;

    srcSlot = TCB_PTR_CTE_PTR(ksCurThread, tcbCaller);
    cap = srcSlot->cap;

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        userError("CNode SaveCaller: Reply cap not present.");
        break;

    case cap_reply_cap:
        if (!cap_reply_cap_get_capReplyMaster(cap)) {
            cteMove(cap, srcSlot, destSlot);
        }
        break;

    default:
        fail("caller capability must be null or reply");
        break;
    }

    return EXCEPTION_NONE;
}

void
cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteInsert to non-empty destination" */
    assert(cap_get_capType(destSlot->cap) == cap_null_cap);

    destSlot->cap = newCap;
    cdtInsert(srcSlot, destSlot);
}

void
cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteMove to non-empty destination" */
    assert(cap_get_capType(destSlot->cap) == cap_null_cap);

    destSlot->cap = newCap;
    if (cap_get_capType(newCap) == cap_reply_cap) {
        tcb_t *replyTCB = TCB_PTR(cap_reply_cap_get_capTCBPtr(newCap));
        cte_t *replySlot = TCB_PTR_CTE_PTR(replyTCB, tcbReply);
        cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, CTE_REF(destSlot));
    } else {
        cdtMove(srcSlot, destSlot);
    }
    srcSlot->cap = cap_null_cap_new();
}

void
capSwapForDelete(cte_t *slot1, cte_t *slot2)
{
    cap_t cap1, cap2;

    if (slot1 == slot2) {
        return;
    }

    cap1 = slot1->cap;
    cap2 = slot2->cap;

    cdtSwap(cap1, slot1, cap2, slot2);
}

exception_t
cteRevoke(cte_t *slot)
{
    cte_t *childPtr;
    exception_t status;

    if (cap_get_capType(slot->cap) == cap_null_cap) {
        return EXCEPTION_NONE;
    }
    for (childPtr = cdtFindChild(slot); childPtr; childPtr = cdtFindChild(slot)) {
        status = cteDelete(childPtr, true);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            return status;
        }
    }

    return EXCEPTION_NONE;
}

exception_t
cteDelete(cte_t *slot, bool_t exposed)
{
    finaliseSlot_ret_t fs_ret;

    fs_ret = finaliseSlot(slot, exposed);
    if (fs_ret.status != EXCEPTION_NONE) {
        return fs_ret.status;
    }

    if (exposed || fs_ret.success) {
        emptySlot(slot, fs_ret.irq);
    }
    return EXCEPTION_NONE;
}

static void
emptySlot(cte_t *slot, irq_t irq)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        cdtRemove(slot);
        slot->cap = cap_null_cap_new();

        if (irq != irqInvalid) {
            deletedIRQHandler(irq);
        }
    }
}

static inline bool_t CONST
capRemovable(cap_t cap, cte_t* slot)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        return true;
    case cap_zombie_cap: {
        word_t n = cap_zombie_cap_get_capZombieNumber(cap);
        cte_t* z_slot = (cte_t*)cap_zombie_cap_get_capZombiePtr(cap);
        return (n == 0 || (n == 1 && slot == z_slot));
    }
    default:
        fail("finaliseCap should only return Zombie or NullCap");
    }
}

static inline bool_t CONST
capCyclicZombie(cap_t cap, cte_t *slot)
{
    return cap_get_capType(cap) == cap_zombie_cap &&
           CTE_PTR(cap_zombie_cap_get_capZombiePtr(cap)) == slot;
}

static finaliseSlot_ret_t
finaliseSlot(cte_t *slot, bool_t immediate)
{
    bool_t final;
    finaliseCap_ret_t fc_ret;
    exception_t status;
    finaliseSlot_ret_t ret;

    while (cap_get_capType(slot->cap) != cap_null_cap) {
        /* If we have a zombie cap then we know it is final and can
         * avoid an expensive cdtIsFinal check */
        final = (cap_get_capType(slot->cap) == cap_zombie_cap) || cdtIsFinal(slot);
        fc_ret = finaliseCap(slot->cap, final, false);

        if (capRemovable(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = true;
            ret.irq = fc_ret.irq;
            return ret;
        }

        /* if we have a zombie then we actually don't need to call
         * cdtUpdate as the cap actually hasn't changed */
        if (cap_get_capType(slot->cap) != cap_zombie_cap) {
            cdtUpdate(slot, fc_ret.remainder);
        }

        if (!immediate && capCyclicZombie(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = false;
            ret.irq = fc_ret.irq;
            return ret;
        }

        status = reduceZombie(slot, immediate);
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.irq = irqInvalid;
            return ret;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.irq = irqInvalid;
            return ret;
        }
    }
    ret.status = EXCEPTION_NONE;
    ret.success = true;
    ret.irq = irqInvalid;
    return ret;
}

static exception_t
reduceZombie(cte_t* slot, bool_t immediate)
{
    cte_t* ptr;
    word_t n, type;
    exception_t status;

    assert(cap_get_capType(slot->cap) == cap_zombie_cap);
    ptr = (cte_t*)cap_zombie_cap_get_capZombiePtr(slot->cap);
    n = cap_zombie_cap_get_capZombieNumber(slot->cap);
    type = cap_zombie_cap_get_capZombieType(slot->cap);

    /* Haskell error: "reduceZombie: expected unremovable zombie" */
    assert(n > 0);

    if (immediate) {
        cte_t* endSlot = &ptr[n - 1];

        status = cteDelete(endSlot, false);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        switch (cap_get_capType(slot->cap)) {
        case cap_null_cap:
            break;

        case cap_zombie_cap: {
            cte_t* ptr2 =
                (cte_t*)cap_zombie_cap_get_capZombiePtr(slot->cap);

            if (ptr == ptr2 &&
                    cap_zombie_cap_get_capZombieNumber(slot->cap) == n &&
                    cap_zombie_cap_get_capZombieType(slot->cap) == type) {
                assert(cap_get_capType(endSlot->cap) == cap_null_cap);
                /* We could call cdtUpdate here, but we know it is not necessary
                 * because a zombie is not ordered in the aaTree by its zombieNumber
                 * and so cdtUpdate will always be a noop. Skipping the call to cdtUpdate
                 * here is to make revoking large cnodes faster as this gets called
                 * for every slot in the cnode */
                slot->cap =  cap_zombie_cap_set_capZombieNumber(slot->cap, n - 1);
            } else {
                /* Haskell error:
                 * "Expected new Zombie to be self-referential."
                 */
                assert(ptr2 == slot && ptr != slot);
            }
            break;
        }

        default:
            fail("Expected recursion to result in Zombie.");
        }
    } else {
        /* Haskell error: "Cyclic zombie passed to unexposed reduceZombie" */
        assert(ptr != slot);

        if (cap_get_capType(ptr->cap) == cap_zombie_cap) {
            /* Haskell error: "Moving self-referential Zombie aside." */
            assert(ptr != CTE_PTR(cap_zombie_cap_get_capZombiePtr(ptr->cap)));
        }

        capSwapForDelete(ptr, slot);
    }
    return EXCEPTION_NONE;
}

void
cteDeleteOne(cte_t* slot)
{
    uint32_t cap_type = cap_get_capType(slot->cap);
    if (cap_type != cap_null_cap) {
        bool_t final;
        finaliseCap_ret_t fc_ret UNUSED;
        final = cdtIsFinal(slot);
        /** GHOSTUPD: "(gs_get_assn cteDeleteOne_'proc \<acute>ghost'state = (-1)
            \<or> gs_get_assn cteDeleteOne_'proc \<acute>ghost'state = \<acute>cap_type, id)" */
        fc_ret = finaliseCap(slot->cap, final, true);
        /* Haskell error: "cteDeleteOne: cap should be removable" */
        assert(capRemovable(fc_ret.remainder, slot) &&
               fc_ret.irq == irqInvalid);
        emptySlot(slot, irqInvalid);
    }
}

exception_t
cteRecycle(cte_t* slot)
{
    exception_t status;
    finaliseSlot_ret_t fc_ret;

    status = cteRevoke(slot);
    if (status != EXCEPTION_NONE) {
        return status;
    }

    fc_ret = finaliseSlot(slot, true);
    if (fc_ret.status != EXCEPTION_NONE) {
        return fc_ret.status;
    }

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        cap_t new_cap;
        bool_t is_final;
        is_final = cdtIsFinal(slot);
        new_cap = recycleCap(is_final, slot->cap);
        cdtUpdate(slot, new_cap);
    }

    return EXCEPTION_NONE;
}

void
insertNewCap(cte_t *parent, cte_t *slot, cap_t cap)
{
    slot->cap = cap;
    cdtInsert(parent, slot);
}

void
setupReplyMaster(tcb_t *thread)
{
    cte_t *slot;

    slot = TCB_PTR_CTE_PTR(thread, tcbReply);
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        /* Haskell asserts that no reply caps exist for this thread here. This
         * cannot be translated. */
        slot->cap = cap_reply_cap_new(CTE_REF(NULL), true, TCB_REF(NULL));
    }
}

exception_t
ensureEmptySlot(cte_t *slot)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        current_syscall_error.type = seL4_DeleteFirst;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

bool_t PURE
slotCapLongRunningDelete(cte_t *slot)
{
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        return false;
    } else if (! cdtIsFinal(slot)) {
        return false;
    }
    switch (cap_get_capType(slot->cap)) {
    case cap_thread_cap:
    case cap_zombie_cap:
    case cap_cnode_cap:
        return true;
    default:
        return false;
    }
}

/* This implementation is specialised to the (current) limit
 * of one cap receive slot. */
cte_t *
getReceiveSlots(tcb_t *thread, word_t *buffer)
{
    cap_transfer_t ct;
    cptr_t cptr;
    lookupCap_ret_t luc_ret;
    lookupSlot_ret_t lus_ret;
    cte_t *slot;
    cap_t cnode;

    if (!buffer) {
        return NULL;
    }

    ct = loadCapTransfer(buffer);
    cptr = ct.ctReceiveRoot;

    luc_ret = lookupCap(thread, cptr);
    if (luc_ret.status != EXCEPTION_NONE) {
        return NULL;
    }
    cnode = luc_ret.cap;

    lus_ret = lookupTargetSlot(cnode, ct.ctReceiveIndex, ct.ctReceiveDepth);
    if (lus_ret.status != EXCEPTION_NONE) {
        return NULL;
    }
    slot = lus_ret.slot;

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        return NULL;
    }

    return slot;
}

cap_transfer_t PURE
loadCapTransfer(word_t *buffer)
{
    const int offset = seL4_MsgMaxLength + seL4_MsgMaxExtraCaps + 2;
    return capTransferFromWords(buffer + offset);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <kernel/thread.h>
#include <kernel/vspace.h>
#include <machine/registerset.h>
#include <model/statedata.h>
#include <object/asyncendpoint.h>
#include <object/cnode.h>
#include <object/endpoint.h>
#include <object/tcb.h>

static inline tcb_queue_t PURE
ep_ptr_get_queue(endpoint_t *epptr)
{
    tcb_queue_t queue;

    queue.head = (tcb_t*)endpoint_ptr_get_epQueue_head(epptr);
    queue.end = (tcb_t*)endpoint_ptr_get_epQueue_tail(epptr);

    return queue;
}

static inline void
ep_ptr_set_queue(endpoint_t *epptr, tcb_queue_t queue)
{
    endpoint_ptr_set_epQueue_head(epptr, (word_t)queue.head);
    endpoint_ptr_set_epQueue_tail(epptr, (word_t)queue.end);
}

void
sendIPC(bool_t blocking, bool_t do_call, word_t badge,
        bool_t canGrant, tcb_t *thread, endpoint_t *epptr)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Send:
        if (blocking) {
            tcb_queue_t queue;

            /* Set thread state to BlockedOnSend */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnSend);
            thread_state_ptr_set_blockingIPCEndpoint(
                &thread->tcbState, EP_REF(epptr));
            thread_state_ptr_set_blockingIPCBadge(
                &thread->tcbState, badge);
            thread_state_ptr_set_blockingIPCCanGrant(
                &thread->tcbState, canGrant);
            thread_state_ptr_set_blockingIPCIsCall(
                &thread->tcbState, do_call);

            scheduleTCB(thread);

            /* Place calling thread in endpoint queue */
            queue = ep_ptr_get_queue(epptr);
            queue = tcbEPAppend(thread, queue);
            endpoint_ptr_set_state(epptr, EPState_Send);
            ep_ptr_set_queue(epptr, queue);
        }
        break;

    case EPState_Recv: {
        tcb_queue_t queue;
        tcb_t *dest;
        bool_t diminish;

        /* Get the head of the endpoint queue. */
        queue = ep_ptr_get_queue(epptr);
        dest = queue.head;

        /* Haskell error "Receive endpoint queue must not be empty" */
        assert(dest);

        /* Dequeue the first TCB */
        queue = tcbEPDequeue(dest, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }

        /* Do the transfer */
        diminish =
            thread_state_get_blockingIPCDiminishCaps(dest->tcbState);
        doIPCTransfer(thread, epptr, badge, canGrant, dest, diminish);

        setThreadState(dest, ThreadState_Running);
        attemptSwitchTo(dest);

        if (do_call ||
                fault_ptr_get_faultType(&thread->tcbFault) != fault_null_fault) {
            if (canGrant && !diminish) {
                setupCallerCap(thread, dest);
            } else {
                setThreadState(thread, ThreadState_Inactive);
            }
        }

        break;
    }
    }
}

void
receiveIPC(tcb_t *thread, cap_t cap)
{
    endpoint_t *epptr;
    bool_t diminish;
    async_endpoint_t *aepptr;

    /* Haskell error "receiveIPC: invalid cap" */
    assert(cap_get_capType(cap) == cap_endpoint_cap);

    epptr = EP_PTR(cap_endpoint_cap_get_capEPPtr(cap));
    diminish = !cap_endpoint_cap_get_capCanSend(cap);

    /* Check for anything waiting in the async endpoint*/
    aepptr = thread->boundAsyncEndpoint;
    if (aepptr && async_endpoint_ptr_get_state(aepptr) == AEPState_Active) {
        completeAsyncIPC(aepptr, thread);
    } else {
        switch (endpoint_ptr_get_state(epptr)) {
        case EPState_Idle:
        case EPState_Recv: {
            tcb_queue_t queue;

            /* Set thread state to BlockedOnReceive */
            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnReceive);
            thread_state_ptr_set_blockingIPCEndpoint(
                &thread->tcbState, EP_REF(epptr));
            thread_state_ptr_set_blockingIPCDiminishCaps(
                &thread->tcbState, diminish);

            scheduleTCB(thread);

            /* Place calling thread in endpoint queue */
            queue = ep_ptr_get_queue(epptr);
            queue = tcbEPAppend(thread, queue);
            endpoint_ptr_set_state(epptr, EPState_Recv);
            ep_ptr_set_queue(epptr, queue);
            break;
        }

        case EPState_Send: {
            tcb_queue_t queue;
            tcb_t *sender;
            word_t badge;
            bool_t canGrant;
            bool_t do_call;

            /* Get the head of the endpoint queue. */
            queue = ep_ptr_get_queue(epptr);
            sender = queue.head;

            /* Haskell error "Send endpoint queue must not be empty" */
            assert(sender);

            /* Dequeue the first TCB */
            queue = tcbEPDequeue(sender, queue);
            ep_ptr_set_queue(epptr, queue);

            if (!queue.head) {
                endpoint_ptr_set_state(epptr, EPState_Idle);
            }

            /* Get sender IPC details */
            badge = thread_state_ptr_get_blockingIPCBadge(&sender->tcbState);
            canGrant =
                thread_state_ptr_get_blockingIPCCanGrant(&sender->tcbState);

            /* Do the transfer */
            doIPCTransfer(sender, epptr, badge,
                          canGrant, thread, diminish);

            do_call = thread_state_ptr_get_blockingIPCIsCall(&sender->tcbState);

            if (do_call ||
                    fault_get_faultType(sender->tcbFault) != fault_null_fault) {
                if (canGrant && !diminish) {
                    setupCallerCap(sender, thread);
                } else {
                    setThreadState(sender, ThreadState_Inactive);
                }
            } else {
                setThreadState(sender, ThreadState_Running);
                switchIfRequiredTo(sender);
            }

            break;
        }
        }
    }
}

void
replyFromKernel_error(tcb_t *thread)
{
    unsigned int len;
    word_t *ipcBuffer;

    ipcBuffer = lookupIPCBuffer(true, thread);
    setRegister(thread, badgeRegister, 0);
    len = setMRs_syscall_error(thread, ipcBuffer);
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    message_info_new(current_syscall_error.type, 0, 0, len)));
}

void
replyFromKernel_success_empty(tcb_t *thread)
{
    setRegister(thread, badgeRegister, 0);
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    message_info_new(0, 0, 0, 0)));
}

void
ipcCancel(tcb_t *tptr)
{
    thread_state_t *state = &tptr->tcbState;

    switch (thread_state_ptr_get_tsType(state)) {
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnReceive: {
        /* blockedIPCCancel state */
        endpoint_t *epptr;
        tcb_queue_t queue;

        epptr = EP_PTR(thread_state_ptr_get_blockingIPCEndpoint(state));

        /* Haskell error "blockedIPCCancel: endpoint must not be idle" */
        assert(endpoint_ptr_get_state(epptr) != EPState_Idle);

        /* Dequeue TCB */
        queue = ep_ptr_get_queue(epptr);
        queue = tcbEPDequeue(tptr, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }

        setThreadState(tptr, ThreadState_Inactive);
        break;
    }

    case ThreadState_BlockedOnAsyncEvent:
        asyncIPCCancel(tptr,
                       AEP_PTR(thread_state_ptr_get_blockingIPCEndpoint(state)));
        break;

    case ThreadState_BlockedOnReply: {
        cte_t *slot, *callerCap;

        fault_null_fault_ptr_new(&tptr->tcbFault);

        /* Get the reply cap slot */
        slot = TCB_PTR_CTE_PTR(tptr, tcbReply);

        callerCap = CTE_PTR(cap_reply_cap_get_capCallerSlot(slot->cap));
        if (callerCap) {
            finaliseCap(callerCap->cap, true, true);
            callerCap->cap = cap_null_cap_new();
        }
        cap_reply_cap_ptr_set_capCallerSlot(&slot->cap, CTE_REF(NULL));

        break;
    }
    }
}

void
epCancelAll(endpoint_t *epptr)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
        break;

    default: {
        tcb_t *thread = TCB_PTR(endpoint_ptr_get_epQueue_head(epptr));

        /* Make endpoint idle */
        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);

        /* Set all blocked threads to restart */
        for (; thread; thread = thread->tcbEPNext) {
            setThreadState (thread, ThreadState_Restart);
            tcbSchedEnqueue(thread);
        }

        rescheduleRequired();
        break;
    }
    }
}

void
epCancelBadgedSends(endpoint_t *epptr, word_t badge)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Recv:
        break;

    case EPState_Send: {
        tcb_t *thread, *next;
        tcb_queue_t queue = ep_ptr_get_queue(epptr);

        /* this is a de-optimisation for verification
         * reasons. it allows the contents of the endpoint
         * queue to be ignored during the for loop. */
        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);

        for (thread = queue.head; thread; thread = next) {
            word_t b = thread_state_ptr_get_blockingIPCBadge(
                           &thread->tcbState);
            next = thread->tcbEPNext;
            if (b == badge) {
                setThreadState(thread, ThreadState_Restart);
                tcbSchedEnqueue(thread);
                queue = tcbEPDequeue(thread, queue);
            }
        }
        ep_ptr_set_queue(epptr, queue);

        if (queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Send);
        }

        rescheduleRequired();

        break;
    }

    default:
        fail("invalid EP state");
    }
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <types.h>
#include <api/failures.h>
#include <api/invocation.h>
#include <api/syscall.h>
#include <machine/io.h>
#include <object/structures.h>
#include <object/interrupt.h>
#include <object/cnode.h>
#include <object/asyncendpoint.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <model/statedata.h>

exception_t
decodeIRQControlInvocation(word_t label, unsigned int length,
                           cte_t *srcSlot, extra_caps_t extraCaps,
                           word_t *buffer)
{
    if (label == IRQIssueIRQHandler) {
        word_t index, depth, irq_w;
        irq_t irq;
        cte_t *destSlot;
        cap_t cnodeCap;
        lookupSlot_ret_t lu_ret;
        exception_t status;

        if (length < 3 || extraCaps.excaprefs[0] == NULL) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        irq_w = getSyscallArg(0, buffer);
        irq = (irq_t) irq_w;
        index = getSyscallArg(1, buffer);
        depth = getSyscallArg(2, buffer);

        cnodeCap = extraCaps.excaprefs[0]->cap;

        if (irq_w > maxIRQ) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = 0;
            current_syscall_error.rangeErrorMax = maxIRQ;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (isIRQActive(irq)) {
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }

        lu_ret = lookupTargetSlot(cnodeCap, index, depth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        destSlot = lu_ret.slot;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeIRQControl(irq, destSlot, srcSlot);
    } else if (label == IRQInterruptControl) {
        return Arch_decodeInterruptControl(length, extraCaps);
    } else {
        userError("IRQControl: Illegal operation.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

exception_t
invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot)
{
    setIRQState(IRQNotifyAEP, irq);
    cteInsert(cap_irq_handler_cap_new(irq), controlSlot, handlerSlot);

    return EXCEPTION_NONE;
}

exception_t
decodeIRQHandlerInvocation(word_t label, unsigned int length, irq_t irq,
                           extra_caps_t extraCaps, word_t *buffer)
{
    switch (label) {
    case IRQAckIRQ:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_AckIRQ(irq);
        return EXCEPTION_NONE;

    case IRQSetIRQHandler: {
        cap_t aepCap;
        cte_t *slot;

        if (extraCaps.excaprefs[0] == NULL) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        aepCap = extraCaps.excaprefs[0]->cap;
        slot = extraCaps.excaprefs[0];

        if (cap_get_capType(aepCap) != cap_async_endpoint_cap ||
                !cap_async_endpoint_cap_get_capAEPCanSend(aepCap)) {
            if (cap_get_capType(aepCap) != cap_async_endpoint_cap) {
                userError("IRQSetHandler: provided cap is not an async endpoint capability.");
            } else {
                userError("IRQSetHandler: caller does not have send rights on the endpoint.");
            }
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_SetIRQHandler(irq, aepCap, slot);
        return EXCEPTION_NONE;
    }

    case IRQClearIRQHandler:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_ClearIRQHandler(irq);
        return EXCEPTION_NONE;
    case IRQSetMode: {
        bool_t trig, pol;

        if (length < 2) {
            userError("IRQSetMode: Not enough arguments", length);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        trig = getSyscallArg(0, buffer);
        pol = getSyscallArg(1, buffer);

        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_SetMode(irq, !!trig, !!pol);
        return EXCEPTION_NONE;
    }

    default:
        userError("IRQHandler: Illegal operation.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

void
invokeIRQHandler_AckIRQ(irq_t irq)
{
    maskInterrupt(false, irq);
}

void invokeIRQHandler_SetMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow)
{
    setInterruptMode(irq, levelTrigger, polarityLow);
}

void
invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + irq;
    /** GHOSTUPD: "(True, gs_set_assn cteDeleteOne_'proc (-1))" */
    cteDeleteOne(irqSlot);
    cteInsert(cap, slot, irqSlot);
}

void
invokeIRQHandler_ClearIRQHandler(irq_t irq)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + irq;
    /** GHOSTUPD: "(True, gs_set_assn cteDeleteOne_'proc (-1))" */
    cteDeleteOne(irqSlot);
}

void
deletingIRQHandler(irq_t irq)
{
    cte_t *slot;

    userError("IRQ %d", irq);
    slot = intStateIRQNode + irq;
    /** GHOSTUPD: "(True, gs_set_assn cteDeleteOne_'proc (ucast cap_async_endpoint_cap))" */
    cteDeleteOne(slot);
}

void
deletedIRQHandler(irq_t irq)
{
    setIRQState(IRQInactive, irq);
}

void
handleInterrupt(irq_t irq)
{
    switch (intStateIRQTable[irq]) {
    case IRQNotifyAEP: {
        cap_t cap;

        cap = intStateIRQNode[irq].cap;

        if (cap_get_capType(cap) == cap_async_endpoint_cap &&
                cap_async_endpoint_cap_get_capAEPCanSend(cap)) {
            sendAsyncIPC(AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(cap)),
                         cap_async_endpoint_cap_get_capAEPBadge(cap));
        } else {
#ifdef CONFIG_IRQ_REPORTING
            printf("Undelivered IRQ: %d\n", (int)irq);
#endif
        }
        maskInterrupt(true, irq);
        break;
    }

    case IRQTimer:
        timerTick();
        resetTimer();
        break;

    case IRQReserved:
        handleReservedIRQ(irq);
        break;

    case IRQInactive:
        /*
         * This case shouldn't happen anyway unless the hardware or
         * platform code is broken. Hopefully masking it again should make
         * the interrupt go away.
         */
        maskInterrupt(true, irq);
#ifdef CONFIG_IRQ_REPORTING
        printf("Received disabled IRQ: %d\n", (int)irq);
#endif
        break;

    default:
        /* No corresponding haskell error */
        fail("Invalid IRQ state");
    }

    ackInterrupt(irq);
}

bool_t
isIRQActive(irq_t irq)
{
    return intStateIRQTable[irq] != IRQInactive;
}

void
setIRQState(irq_state_t irqState, irq_t irq)
{
    intStateIRQTable[irq] = irqState;
    maskInterrupt(irqState == IRQInactive, irq);
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <config.h>
#include <types.h>
#include <api/failures.h>
#include <api/syscall.h>
#include <arch/object/objecttype.h>
#include <machine/io.h>
#include <object/objecttype.h>
#include <object/structures.h>
#include <object/asyncendpoint.h>
#include <object/endpoint.h>
#include <object/cnode.h>
#include <object/interrupt.h>
#include <object/tcb.h>
#include <object/untyped.h>
#include <model/statedata.h>
#include <kernel/thread.h>
#include <kernel/vspace.h>
#include <machine.h>
#include <util.h>
#include <string.h>

word_t getObjectSize(word_t t, word_t userObjSize)
{
    if (t >= seL4_NonArchObjectTypeCount) {
        return Arch_getObjectSize(t);
    } else {
        switch (t) {
        case seL4_TCBObject:
            return TCB_BLOCK_SIZE_BITS;
        case seL4_EndpointObject:
            return EP_SIZE_BITS;
        case seL4_AsyncEndpointObject:
            return AEP_SIZE_BITS;
        case seL4_CapTableObject:
            return CTE_SIZE_BITS + userObjSize;
        case seL4_UntypedObject:
            return userObjSize;
        default:
            fail("Invalid object type");
            return 0;
        }
    }
}

deriveCap_ret_t
deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    if (isArchCap(cap)) {
        return Arch_deriveCap(slot, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_zombie_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_irq_control_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_reply_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    default:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap;
    }

    return ret;
}

finaliseCap_ret_t
finaliseCap(cap_t cap, bool_t final, bool_t exposed)
{
    finaliseCap_ret_t fc_ret;

    if (isArchCap(cap)) {
        fc_ret.remainder = Arch_finaliseCap(cap, final);
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (final) {
            epCancelAll(EP_PTR(cap_endpoint_cap_get_capEPPtr(cap)));
        }

        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_async_endpoint_cap:
        if (final) {
            async_endpoint_t *aep = AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(cap));
            tcb_t *boundTCB = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aep);;

            if (boundTCB) {
                unbindAsyncEndpoint(boundTCB);
            }

            aepCancelAll(aep);
        }
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_reply_cap: {
        tcb_t *callee;
        cte_t *replySlot;
        callee = TCB_PTR(cap_reply_cap_get_capTCBPtr(cap));
        replySlot = TCB_PTR_CTE_PTR(callee, tcbReply);
        /* Remove the reference to us */
        cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, CTE_REF(NULL));
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }
    case cap_null_cap:
    case cap_domain_cap:
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;
    }

    if (exposed) {
        fail("finaliseCap: failed to finalise immediately.");
    }

    switch (cap_get_capType(cap)) {
    case cap_cnode_cap: {
        if (final) {
            fc_ret.remainder =
                Zombie_new(
                    1 << cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodePtr(cap)
                );
            fc_ret.irq = irqInvalid;
            return fc_ret;
        }
        break;
    }

    case cap_thread_cap: {
        if (final) {
            tcb_t *tcb;
            cte_t *cte_ptr;
            cte_t *replySlot;

            tcb = TCB_PTR(cap_thread_cap_get_capTCBPtr(cap));
            cte_ptr = TCB_PTR_CTE_PTR(tcb, tcbCTable);
            unbindAsyncEndpoint(tcb);
            suspend(tcb);
            replySlot = TCB_PTR_CTE_PTR(tcb, tcbReply);
            if (cap_get_capType(replySlot->cap) == cap_reply_cap) {
                assert(cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0);
                replySlot->cap = cap_null_cap_new();
            }
            Arch_prepareThreadDelete(tcb);
            fc_ret.remainder =
                Zombie_new(
                    tcbArchCNodeEntries,
                    ZombieType_ZombieTCB,
                    CTE_REF(cte_ptr)
                );
            fc_ret.irq = irqInvalid;
            return fc_ret;
        }
        break;
    }

    case cap_zombie_cap:
        fc_ret.remainder = cap;
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_irq_handler_cap:
        if (final) {
            irq_t irq = cap_irq_handler_cap_get_capIRQ(cap);

            deletingIRQHandler(irq);

            fc_ret.remainder = cap_null_cap_new();
            fc_ret.irq = irq;
            return fc_ret;
        }
        break;
    }

    fc_ret.remainder = cap_null_cap_new();
    fc_ret.irq = irqInvalid;
    return fc_ret;
}

cap_t
recycleCap(bool_t is_final, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_recycleCap(is_final, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        fail("recycleCap: can't reconstruct Null");
        break;
    case cap_domain_cap:
        return cap;
    case cap_cnode_cap:
        return cap;
    case cap_thread_cap:
        return cap;
    case cap_zombie_cap: {
        word_t type;

        type = cap_zombie_cap_get_capZombieType(cap);
        if (type == ZombieType_ZombieTCB) {
            tcb_t *tcb;
            _thread_state_t ts UNUSED;

            tcb = TCB_PTR(cap_zombie_cap_get_capZombiePtr(cap)
                          + TCB_OFFSET);
            ts = thread_state_get_tsType(tcb->tcbState);
            /* Haskell error:
             * "Zombie cap should point at inactive thread" */
            assert(ts == ThreadState_Inactive ||
                   ts != ThreadState_IdleThreadState);
            /* Haskell error:
             * "Zombie cap should not point at queued thread" */
            assert(!thread_state_get_tcbQueued(tcb->tcbState));
            /* Haskell error:
             * "Zombie cap should not point at bound thread" */
            assert(tcb->boundAsyncEndpoint == NULL);

            /* makeObject doesn't exist in C, objects are initialised by
             * zeroing. The effect of recycle in Haskell is to reinitialise
             * the TCB, with the exception of the TCB CTEs.  I achieve this
             * here by zeroing the TCB part of the structure, while leaving
             * the CNode alone. */
            memzero(tcb, sizeof (tcb_t));
            Arch_initContext(&tcb->tcbArch.tcbContext);
            tcb->tcbTimeSlice = CONFIG_TIME_SLICE;
            tcb->tcbDomain = ksCurDomain;

            return cap_thread_cap_new(TCB_REF(tcb));
        } else {
            return cap_cnode_cap_new(type, 0, 0,
                                     cap_zombie_cap_get_capZombiePtr(cap));
        }
    }
    case cap_endpoint_cap: {
        word_t badge = cap_endpoint_cap_get_capEPBadge(cap);
        if (badge) {
            endpoint_t* ep = (endpoint_t*)
                             cap_endpoint_cap_get_capEPPtr(cap);
            epCancelBadgedSends(ep, badge);
        }
        return cap;
    }
    default:
        return cap;
    }
}

bool_t CONST
hasRecycleRights(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
    case cap_domain_cap:
        return false;

    case cap_endpoint_cap:
        return cap_endpoint_cap_get_capCanSend(cap) &&
               cap_endpoint_cap_get_capCanReceive(cap) &&
               cap_endpoint_cap_get_capCanGrant(cap);

    case cap_async_endpoint_cap:
        return cap_async_endpoint_cap_get_capAEPCanSend(cap) &&
               cap_async_endpoint_cap_get_capAEPCanReceive(cap);

    default:
        if (isArchCap(cap)) {
            return Arch_hasRecycleRights(cap);
        } else {
            return true;
        }
    }
}

bool_t CONST
sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_untyped_cap: {
        word_t aBase, bBase, aTop, bTop;

        aBase = (word_t)WORD_PTR(cap_untyped_cap_get_capPtr(cap_a));
        bBase = (word_t)cap_get_capPtr(cap_b);

        aTop = aBase + MASK(cap_untyped_cap_get_capBlockSize(cap_a));
        bTop = bBase + MASK(cap_get_capSizeBits(cap_b));

        return ((bBase != 0) && (aBase <= bBase) &&
                (bTop <= aTop) && (bBase <= bTop));
    }

    case cap_endpoint_cap:
        if (cap_get_capType(cap_b) == cap_endpoint_cap) {
            return cap_endpoint_cap_get_capEPPtr(cap_a) ==
                   cap_endpoint_cap_get_capEPPtr(cap_b);
        }
        break;

    case cap_async_endpoint_cap:
        if (cap_get_capType(cap_b) == cap_async_endpoint_cap) {
            return cap_async_endpoint_cap_get_capAEPPtr(cap_a) ==
                   cap_async_endpoint_cap_get_capAEPPtr(cap_b);
        }
        break;

    case cap_cnode_cap:
        if (cap_get_capType(cap_b) == cap_cnode_cap) {
            return (cap_cnode_cap_get_capCNodePtr(cap_a) ==
                    cap_cnode_cap_get_capCNodePtr(cap_b)) &&
                   (cap_cnode_cap_get_capCNodeRadix(cap_a) ==
                    cap_cnode_cap_get_capCNodeRadix(cap_b));
        }
        break;

    case cap_thread_cap:
        if (cap_get_capType(cap_b) == cap_thread_cap) {
            return cap_thread_cap_get_capTCBPtr(cap_a) ==
                   cap_thread_cap_get_capTCBPtr(cap_b);
        }
        break;

    case cap_reply_cap:
        if (cap_get_capType(cap_b) == cap_reply_cap) {
            return cap_reply_cap_get_capTCBPtr(cap_a) ==
                   cap_reply_cap_get_capTCBPtr(cap_b);
        }
        break;

    case cap_domain_cap:
        if (cap_get_capType(cap_b) == cap_domain_cap) {
            return true;
        }
        break;

    case cap_irq_control_cap:
        if (cap_get_capType(cap_b) == cap_irq_control_cap ||
                cap_get_capType(cap_b) == cap_irq_handler_cap) {
            return true;
        }
        break;

    case cap_irq_handler_cap:
        if (cap_get_capType(cap_b) == cap_irq_handler_cap) {
            return (irq_t)cap_irq_handler_cap_get_capIRQ(cap_a) ==
                   (irq_t)cap_irq_handler_cap_get_capIRQ(cap_b);
        }
        break;

    default:
        if (isArchCap(cap_a) &&
                isArchCap(cap_b)) {
            return Arch_sameRegionAs(cap_a, cap_b);
        }
        break;
    }

    return false;
}

bool_t CONST
sameObjectAs(cap_t cap_a, cap_t cap_b)
{
    if (cap_get_capType(cap_a) == cap_untyped_cap) {
        return false;
    }
    if (cap_get_capType(cap_a) == cap_irq_control_cap &&
            cap_get_capType(cap_b) == cap_irq_handler_cap) {
        return false;
    }
    if (isArchCap(cap_a) && isArchCap(cap_b)) {
        return Arch_sameObjectAs(cap_a, cap_b);
    }
    return sameRegionAs(cap_a, cap_b);
}

cap_t CONST
updateCapData(bool_t preserve, word_t newData, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_updateCapData(preserve, newData, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (!preserve && cap_endpoint_cap_get_capEPBadge(cap) == 0) {
            return cap_endpoint_cap_set_capEPBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_async_endpoint_cap:
        if (!preserve && cap_async_endpoint_cap_get_capAEPBadge(cap) == 0) {
            return cap_async_endpoint_cap_set_capAEPBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_cnode_cap: {
        word_t guard, guardSize;
        cnode_capdata_t w = { .words = { newData } };

        guardSize = cnode_capdata_get_guardSize(w);

        if (guardSize + cap_cnode_cap_get_capCNodeRadix(cap) > wordBits) {
            return cap_null_cap_new();
        } else {
            cap_t new_cap;

            guard = cnode_capdata_get_guard(w) & MASK(guardSize);
            new_cap = cap_cnode_cap_set_capCNodeGuard(cap, guard);
            new_cap = cap_cnode_cap_set_capCNodeGuardSize(new_cap,
                                                          guardSize);

            return new_cap;
        }
    }

    default:
        return cap;
    }
}

cap_t CONST
maskCapRights(cap_rights_t cap_rights, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_maskCapRights(cap_rights, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
    case cap_domain_cap:
    case cap_cnode_cap:
    case cap_untyped_cap:
    case cap_reply_cap:
    case cap_irq_control_cap:
    case cap_irq_handler_cap:
    case cap_zombie_cap:
    case cap_thread_cap:
        return cap;

    case cap_endpoint_cap: {
        cap_t new_cap;

        new_cap = cap_endpoint_cap_set_capCanSend(
                      cap, cap_endpoint_cap_get_capCanSend(cap) &
                      cap_rights_get_capAllowWrite(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanReceive(
                      new_cap, cap_endpoint_cap_get_capCanReceive(cap) &
                      cap_rights_get_capAllowRead(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanGrant(
                      new_cap, cap_endpoint_cap_get_capCanGrant(cap) &
                      cap_rights_get_capAllowGrant(cap_rights));

        return new_cap;
    }

    case cap_async_endpoint_cap: {
        cap_t new_cap;

        new_cap = cap_async_endpoint_cap_set_capAEPCanSend(
                      cap, cap_async_endpoint_cap_get_capAEPCanSend(cap) &
                      cap_rights_get_capAllowWrite(cap_rights));
        new_cap = cap_async_endpoint_cap_set_capAEPCanReceive(new_cap,
                                                              cap_async_endpoint_cap_get_capAEPCanReceive(cap) &
                                                              cap_rights_get_capAllowRead(cap_rights));

        return new_cap;
    }

    default:
        fail("Invalid cap type"); /* Sentinel for invalid enums */
    }
}

cap_t
createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory)
{
    /* Handle architecture-specific objects. */
    if (t >= (object_t) seL4_NonArchObjectTypeCount) {
        return Arch_createObject(t, regionBase, userSize, deviceMemory);
    }

    /* Create objects. */
    switch ((api_object_t)t) {
    case seL4_TCBObject: {
        tcb_t *tcb;
        memzero(regionBase, 1UL << TCB_BLOCK_SIZE_BITS);
        tcb = TCB_PTR((word_t)regionBase + TCB_OFFSET);
        /** AUXUPD: "(True, ptr_retyps 5
          (Ptr ((ptr_val \<acute>tcb) - 0x100) :: cte_C ptr)
            o (ptr_retyp \<acute>tcb))" */

        /* Setup non-zero parts of the TCB. */

        Arch_initContext(&tcb->tcbArch.tcbContext);
        tcb->tcbTimeSlice = CONFIG_TIME_SLICE;
        tcb->tcbDomain = ksCurDomain;

#ifdef DEBUG
        strlcpy(tcb->tcbName, "child of: '", TCB_NAME_LENGTH);
        strlcat(tcb->tcbName, ksCurThread->tcbName, TCB_NAME_LENGTH);
        strlcat(tcb->tcbName, "'", TCB_NAME_LENGTH);
#endif

        return cap_thread_cap_new(TCB_REF(tcb));
    }

    case seL4_EndpointObject:
        memzero(regionBase, 1UL << EP_SIZE_BITS);
        /** AUXUPD: "(True, ptr_retyp
          (Ptr (ptr_val \<acute>regionBase) :: endpoint_C ptr))" */
        return cap_endpoint_cap_new(0, true, true, true,
                                    EP_REF(regionBase));

    case seL4_AsyncEndpointObject:
        memzero(regionBase, 1UL << AEP_SIZE_BITS);
        /** AUXUPD: "(True, ptr_retyp
              (Ptr (ptr_val \<acute>regionBase) :: async_endpoint_C ptr))" */
        return cap_async_endpoint_cap_new(0, true, true,
                                          AEP_REF(regionBase));

    case seL4_CapTableObject:
        memzero(regionBase, 1UL << (CTE_SIZE_BITS + userSize));
        /** AUXUPD: "(True, ptr_retyps (2 ^ (unat \<acute>userSize))
          (Ptr (ptr_val \<acute>regionBase) :: cte_C ptr))" */
        /** GHOSTUPD: "(True, gs_new_cnodes (unat \<acute>userSize)
                                (ptr_val \<acute>regionBase)
                                (4 + unat \<acute>userSize))" */
        return cap_cnode_cap_new(userSize, 0, 0, CTE_REF(regionBase));

    case seL4_UntypedObject:
        /*
         * No objects need to be created; instead, just insert caps into
         * the destination slots.
         */
        return cap_untyped_cap_new(deviceMemory, userSize, WORD_REF(regionBase));

    default:
        fail("Invalid object type");
    }
}

void
createNewObjects(object_t t, cte_t *parent, slot_range_t slots,
                 void *regionBase, unsigned int userSize, bool_t deviceMemory)
{
    word_t objectSize;
    void *nextFreeArea;
    unsigned int i;
    word_t totalObjectSize UNUSED;

    /* ghost check that we're visiting less bytes than the max object size */
    objectSize = getObjectSize(t, userSize);
    totalObjectSize = slots.length << objectSize;
    /** GHOSTUPD: "(gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
        \<or> \<acute>totalObjectSize <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state, id)" */

    /* Create the objects. */
    nextFreeArea = regionBase;
    for (i = 0; i < slots.length; i++) {
        /* Create the object. */
        /** AUXUPD: "(True, typ_clear_region (ptr_val \<acute> nextFreeArea + ((\<acute> i) << unat (\<acute> objectSize))) (unat (\<acute> objectSize)))" */
        cap_t cap = createObject(t, (void *)((word_t)nextFreeArea + (i << objectSize)), userSize, deviceMemory);

        /* Insert the cap into the user's cspace. */
        insertNewCap(parent, &slots.cnode[slots.offset + i], cap);

        /* Move along to the next region of memory. been merged into a formula of i */
    }
}

exception_t
decodeInvocation(word_t label, unsigned int length,
                 cptr_t capIndex, cte_t *slot, cap_t cap,
                 extra_caps_t extraCaps, bool_t block, bool_t call,
                 word_t *buffer)
{
    if (isArchCap(cap)) {
        return Arch_decodeInvocation(label, length, capIndex,
                                     slot, cap, extraCaps, buffer);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        userError("Attempted to invoke a null cap #%u.", capIndex);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_zombie_cap:
        userError("Attempted to invoke a zombie cap #%u.", capIndex);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_endpoint_cap:
        if (unlikely(!cap_endpoint_cap_get_capCanSend(cap))) {
            userError("Attempted to invoke a read-only endpoint cap #%u.",
                      capIndex);
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Endpoint(
                   EP_PTR(cap_endpoint_cap_get_capEPPtr(cap)),
                   cap_endpoint_cap_get_capEPBadge(cap),
                   cap_endpoint_cap_get_capCanGrant(cap), block, call);

    case cap_async_endpoint_cap: {
        if (unlikely(!cap_async_endpoint_cap_get_capAEPCanSend(cap))) {
            userError("Attempted to invoke a read-only async-endpoint cap #%u.",
                      capIndex);
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_AsyncEndpoint(
                   AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(cap)),
                   cap_async_endpoint_cap_get_capAEPBadge(cap));
    }

    case cap_reply_cap:
        if (unlikely(cap_reply_cap_get_capReplyMaster(cap))) {
            userError("Attempted to invoke an invalid reply cap #%u.",
                      capIndex);
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Reply(
                   TCB_PTR(cap_reply_cap_get_capTCBPtr(cap)), slot);

    case cap_thread_cap:
        return decodeTCBInvocation(label, length, cap,
                                   slot, extraCaps, call, buffer);

    case cap_domain_cap:
        return decodeDomainInvocation(label, length, extraCaps, buffer);

    case cap_cnode_cap:
        return decodeCNodeInvocation(label, length, cap, extraCaps, buffer);

    case cap_untyped_cap:
        return decodeUntypedInvocation(label, length, slot, cap, extraCaps,
                                       call, buffer);

    case cap_irq_control_cap:
        return decodeIRQControlInvocation(label, length, slot,
                                          extraCaps, buffer);

    case cap_irq_handler_cap:
        return decodeIRQHandlerInvocation(label, length,
                                          cap_irq_handler_cap_get_capIRQ(cap), extraCaps, buffer);

    default:
        fail("Invalid cap type");
    }
}

exception_t
performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                           bool_t canGrant, bool_t block,
                           bool_t call)
{
    sendIPC(block, call, badge, canGrant, ksCurThread, ep);

    return EXCEPTION_NONE;
}

exception_t
performInvocation_AsyncEndpoint(async_endpoint_t *aep, word_t badge)
{
    sendAsyncIPC(aep, badge);

    return EXCEPTION_NONE;
}

exception_t
performInvocation_Reply(tcb_t *thread, cte_t *slot)
{
    doReplyTransfer(ksCurThread, thread, slot);
    return EXCEPTION_NONE;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <api/failures.h>
#include <api/invocation.h>
#include <api/syscall.h>
#include <machine/io.h>
#include <object/structures.h>
#include <object/objecttype.h>
#include <object/cnode.h>
#include <object/tcb.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <kernel/vspace.h>
#include <model/statedata.h>
#include <util.h>
#include <string.h>

static inline void
addToBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL1Bitmap[dom] |= BIT(l1index);
    ksReadyQueuesL2Bitmap[dom][l1index] |= BIT(prio & MASK(5));
}

static inline void
removeFromBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL2Bitmap[dom][l1index] &= ~BIT(prio & MASK(5));
    if (unlikely(!ksReadyQueuesL2Bitmap[dom][l1index])) {
        ksReadyQueuesL1Bitmap[dom] &= ~BIT(l1index);
    }
}

/* Add TCB to the head of a scheduler queue */
void
tcbSchedEnqueue(tcb_t *tcb)
{
    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        UNUSED dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (!queue.end) { /* Empty list */
            queue.end = tcb;
            addToBitmap(dom, prio);
        } else {
            queue.head->tcbSchedPrev = tcb;
        }
        tcb->tcbSchedPrev = NULL;
        tcb->tcbSchedNext = queue.head;
        queue.head = tcb;

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}

/* Add TCB to the end of a scheduler queue */
void
tcbSchedAppend(tcb_t *tcb)
{
    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        UNUSED dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (!queue.head) { /* Empty list */
            queue.head = tcb;
            addToBitmap(dom, prio);
        } else {
            queue.end->tcbSchedNext = tcb;
        }
        tcb->tcbSchedPrev = queue.end;
        tcb->tcbSchedNext = NULL;
        queue.end = tcb;

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}

/* Remove TCB from a scheduler queue */
void
tcbSchedDequeue(tcb_t *tcb)
{
    if (thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        UNUSED dom_t dom;
        prio_t prio;
        unsigned int idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (tcb->tcbSchedPrev) {
            tcb->tcbSchedPrev->tcbSchedNext = tcb->tcbSchedNext;
        } else {
            queue.head = tcb->tcbSchedNext;
            if (likely(!tcb->tcbSchedNext)) {
                removeFromBitmap(dom, prio);
            }
        }

        if (tcb->tcbSchedNext) {
            tcb->tcbSchedNext->tcbSchedPrev = tcb->tcbSchedPrev;
        } else {
            queue.end = tcb->tcbSchedPrev;
        }

        ksReadyQueues[idx] = queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, false);
    }
}

/* Add TCB to the end of an endpoint queue */
tcb_queue_t
tcbEPAppend(tcb_t *tcb, tcb_queue_t queue)
{
    if (!queue.head) { /* Empty list */
        queue.head = tcb;
    } else {
        queue.end->tcbEPNext = tcb;
    }
    tcb->tcbEPPrev = queue.end;
    tcb->tcbEPNext = NULL;
    queue.end = tcb;

    return queue;
}

/* Remove TCB from an endpoint queue */
tcb_queue_t
tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue)
{
    if (tcb->tcbEPPrev) {
        tcb->tcbEPPrev->tcbEPNext = tcb->tcbEPNext;
    } else {
        queue.head = tcb->tcbEPNext;
    }

    if (tcb->tcbEPNext) {
        tcb->tcbEPNext->tcbEPPrev = tcb->tcbEPPrev;
    } else {
        queue.end = tcb->tcbEPPrev;
    }

    return queue;
}

cptr_t PURE
getExtraCPtr(word_t *bufferPtr, unsigned int i)
{
    return (cptr_t)bufferPtr[seL4_MsgMaxLength + 2 + i];
}

void
setExtraBadge(word_t *bufferPtr, word_t badge,
              unsigned int i)
{
    bufferPtr[seL4_MsgMaxLength + 2 + i] = badge;
}

void
setupCallerCap(tcb_t *sender, tcb_t *receiver)
{
    cte_t *replySlot, *callerSlot;
    cap_t masterCap UNUSED, callerCap UNUSED;

    setThreadState(sender, ThreadState_BlockedOnReply);
    replySlot = TCB_PTR_CTE_PTR(sender, tcbReply);
    callerSlot = TCB_PTR_CTE_PTR(receiver, tcbCaller);
    masterCap = replySlot->cap;
    /* Haskell error: "Sender must have a valid master reply cap" */
    assert(cap_get_capType(masterCap) == cap_reply_cap);
    assert(cap_reply_cap_get_capReplyMaster(masterCap));
    assert(TCB_PTR(cap_reply_cap_get_capTCBPtr(masterCap)) == NULL);
    cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, CTE_REF(callerSlot));
    callerCap = callerSlot->cap;
    /* Haskell error: "Caller cap must not already exist" */
    assert(cap_get_capType(callerCap) == cap_null_cap);
    callerSlot->cap = cap_reply_cap_new(CTE_REF(NULL), false, TCB_REF(sender));
}

void
deleteCallerCap(tcb_t *receiver)
{
    cte_t *callerSlot;

    callerSlot = TCB_PTR_CTE_PTR(receiver, tcbCaller);
    if (cap_get_capType(callerSlot->cap) == cap_reply_cap) {
        finaliseCap(callerSlot->cap, true, true);
        callerSlot->cap = cap_null_cap_new();
    }
}

extra_caps_t current_extra_caps;

exception_t
lookupExtraCaps(tcb_t* thread, word_t *bufferPtr, message_info_t info)
{
    lookupSlot_raw_ret_t lu_ret;
    cptr_t cptr;
    unsigned int i, length;

    if (!bufferPtr) {
        current_extra_caps.excaprefs[0] = NULL;
        return EXCEPTION_NONE;
    }

    length = message_info_get_msgExtraCaps(info);

    for (i = 0; i < length; i++) {
        cptr = getExtraCPtr(bufferPtr, i);

        lu_ret = lookupSlot(thread, cptr);
        if (lu_ret.status != EXCEPTION_NONE) {
            current_fault = fault_cap_fault_new(cptr, false);
            return lu_ret.status;
        }

        current_extra_caps.excaprefs[i] = lu_ret.slot;
    }
    if (i < seL4_MsgMaxExtraCaps) {
        current_extra_caps.excaprefs[i] = NULL;
    }

    return EXCEPTION_NONE;
}

/* Copy IPC MRs from one thread to another */
unsigned int
copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
        word_t *recvBuf, unsigned int n)
{
    unsigned int i;

    /* Copy inline words */
    for (i = 0; i < n && i < n_msgRegisters; i++) {
        setRegister(receiver, msgRegisters[i],
                    getRegister(sender, msgRegisters[i]));
    }

    if (!recvBuf || !sendBuf) {
        return i;
    }

    /* Copy out-of-line words */
    for (; i < n; i++) {
        recvBuf[i + 1] = sendBuf[i + 1];
    }

    return i;
}

/* The following functions sit in the syscall error monad, but include the
 * exception cases for the preemptible bottom end, as they call the invoke
 * functions directly.  This is a significant deviation from the Haskell
 * spec. */
exception_t
decodeTCBInvocation(word_t label, unsigned int length, cap_t cap,
                    cte_t* slot, extra_caps_t extraCaps, bool_t call,
                    word_t *buffer)
{
    switch (label) {
    case TCBReadRegisters:
        /* Second level of decoding */
        return decodeReadRegisters(cap, length, call, buffer);

    case TCBWriteRegisters:
        return decodeWriteRegisters(cap, length, buffer);

    case TCBCopyRegisters:
        return decodeCopyRegisters(cap, length, extraCaps, buffer);

    case TCBSuspend:
        /* Jump straight to the invoke */
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Suspend(
                   TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)));

    case TCBResume:
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Resume(
                   TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)));

    case TCBConfigure:
        return decodeTCBConfigure(cap, length, slot, extraCaps, buffer);

    case TCBSetPriority:
        return decodeSetPriority(cap, length, buffer);

    case TCBSetIPCBuffer:
        return decodeSetIPCBuffer(cap, length, slot, extraCaps, buffer);

    case TCBSetSpace:
        return decodeSetSpace(cap, length, slot, extraCaps, buffer);

    case TCBBindAEP:
        return decodeBindAEP(cap, extraCaps);

    case TCBUnbindAEP:
        return decodeUnbindAEP(cap);

        /* This is temporary until arch specific TCB operations are implemented */
#ifdef CONFIG_VTX
    case TCBSetEPTRoot:
        return decodeSetEPTRoot(cap, extraCaps);
#endif

    default:
        /* Haskell: "throw IllegalOperation" */
        userError("TCB: Illegal operation.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

enum CopyRegistersFlags {
    CopyRegisters_suspendSource = 0,
    CopyRegisters_resumeTarget = 1,
    CopyRegisters_transferFrame = 2,
    CopyRegisters_transferInteger = 3
};

exception_t
decodeCopyRegisters(cap_t cap, unsigned int length,
                    extra_caps_t extraCaps, word_t *buffer)
{
    word_t transferArch;
    tcb_t *srcTCB;
    cap_t source_cap;
    word_t flags;

    if (length < 1 || extraCaps.excaprefs[0] == NULL) {
        userError("TCB CopyRegisters: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);

    transferArch = Arch_decodeTransfer(flags >> 8);

    source_cap = extraCaps.excaprefs[0]->cap;

    if (cap_get_capType(source_cap) == cap_thread_cap) {
        srcTCB = TCB_PTR(cap_thread_cap_get_capTCBPtr(source_cap));
    } else {
        userError("TCB CopyRegisters: Invalid source TCB.");
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_CopyRegisters(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)), srcTCB,
               flags & BIT(CopyRegisters_suspendSource),
               flags & BIT(CopyRegisters_resumeTarget),
               flags & BIT(CopyRegisters_transferFrame),
               flags & BIT(CopyRegisters_transferInteger),
               transferArch);

}

enum ReadRegistersFlags {
    ReadRegisters_suspend = 0
};

exception_t
decodeReadRegisters(cap_t cap, unsigned int length, bool_t call,
                    word_t *buffer)
{
    word_t transferArch, flags, n;

    if (length < 2) {
        userError("TCB ReadRegisters: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    n     = getSyscallArg(1, buffer);

    if (n < 1 || n > n_frameRegisters + n_gpRegisters) {
        userError("TCB ReadRegisters: Attempted to read an invalid number of registers (%d).",
                  (int)n);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = n_frameRegisters +
                                              n_gpRegisters;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ReadRegisters(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)),
               flags & BIT(ReadRegisters_suspend),
               n, transferArch, call);
}

enum WriteRegistersFlags {
    WriteRegisters_resume = 0
};

exception_t
decodeWriteRegisters(cap_t cap, unsigned int length, word_t *buffer)
{
    word_t flags, w;
    word_t transferArch;
    tcb_t* thread;

    if (length < 2) {
        userError("TCB WriteRegisters: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    w     = getSyscallArg(1, buffer);

    if (length - 2 < w) {
        userError("TCB WriteRegisters: Message too short for requested write size (%d/%d).",
                  (int)(length - 2), (int)w);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    thread = TCB_PTR(cap_thread_cap_get_capTCBPtr(cap));

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_WriteRegisters(thread,
                                    flags & BIT(WriteRegisters_resume),
                                    w, transferArch, buffer);
}

/* SetPriority, SetIPCParams and SetSpace are all
 * specialisations of TCBConfigure. */

exception_t
decodeTCBConfigure(cap_t cap, unsigned int length, cte_t* slot,
                   extra_caps_t rootCaps, word_t *buffer)
{
    cte_t *bufferSlot, *cRootSlot, *vRootSlot;
    cap_t bufferCap, cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;
    cptr_t faultEP;
    unsigned int prio;
    word_t cRootData, vRootData, bufferAddr;

    if (length < 5 || rootCaps.excaprefs[0] == NULL
            || rootCaps.excaprefs[1] == NULL
            || rootCaps.excaprefs[2] == NULL) {
        userError("TCB Configure: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP    = getSyscallArg(0, buffer);
    prio       = getSyscallArg(1, buffer);
    cRootData  = getSyscallArg(2, buffer);
    vRootData  = getSyscallArg(3, buffer);
    bufferAddr = getSyscallArg(4, buffer);

    cRootSlot  = rootCaps.excaprefs[0];
    cRootCap   = rootCaps.excaprefs[0]->cap;
    vRootSlot  = rootCaps.excaprefs[1];
    vRootCap   = rootCaps.excaprefs[1]->cap;
    bufferSlot = rootCaps.excaprefs[2];
    bufferCap  = rootCaps.excaprefs[2]->cap;

    prio = prio & MASK(8);

    if (prio > ksCurThread->tcbPriority) {
        userError("TCB Configure: Requested priority %d too high (max %d).",
                  (int)prio, (int)(ksCurThread->tcbPriority));
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (bufferAddr == 0) {
        bufferSlot = NULL;
    } else {
        exception_t e;

        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;
        e = checkValidIPCBuffer(bufferAddr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    if (slotCapLongRunningDelete(
                TCB_PTR_CTE_PTR(cap_thread_cap_get_capTCBPtr(cap), tcbCTable)) ||
            slotCapLongRunningDelete(
                TCB_PTR_CTE_PTR(cap_thread_cap_get_capTCBPtr(cap), tcbVTable))) {
        userError("TCB Configure: CSpace or VSpace currently being deleted.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap &&
            (!config_set(CONFIG_ALLOW_NULL_CSPACE) ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        userError("TCB Configure: CSpace cap is invalid.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        userError("TCB Configure: VSpace cap is invalid.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)), slot,
               faultEP, prio,
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               bufferAddr, bufferCap,
               bufferSlot, thread_control_update_all);
}

exception_t
decodeSetPriority(cap_t cap, unsigned int length, word_t *buffer)
{
    prio_t newPrio;

    if (length < 1) {
        userError("TCB SetPriority: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    newPrio = getSyscallArg(0, buffer);

    /* assuming here seL4_MaxPrio is of form 2^n - 1 */
    newPrio = newPrio & MASK(8);

    if (newPrio > ksCurThread->tcbPriority) {
        userError("TCB SetPriority: Requested priority %d too high (max %d).",
                  (int)newPrio, (int)ksCurThread->tcbPriority);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)), NULL,
               0, newPrio,
               cap_null_cap_new(), NULL,
               cap_null_cap_new(), NULL,
               0, cap_null_cap_new(),
               NULL, thread_control_update_priority);
}

exception_t
decodeSetIPCBuffer(cap_t cap, unsigned int length, cte_t* slot,
                   extra_caps_t extraCaps, word_t *buffer)
{
    cptr_t cptr_bufferPtr;
    cap_t bufferCap;
    cte_t *bufferSlot;

    if (length < 1 || extraCaps.excaprefs[0] == NULL) {
        userError("TCB SetIPCBuffer: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    cptr_bufferPtr  = getSyscallArg(0, buffer);
    bufferSlot = extraCaps.excaprefs[0];
    bufferCap  = extraCaps.excaprefs[0]->cap;

    if (cptr_bufferPtr == 0) {
        bufferSlot = NULL;
    } else {
        exception_t e;
        deriveCap_ret_t dc_ret;

        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;
        e = checkValidIPCBuffer(cptr_bufferPtr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)), slot,
               0,
               0, /* used to be prioInvalid, but it doesn't matter */
               cap_null_cap_new(), NULL,
               cap_null_cap_new(), NULL,
               cptr_bufferPtr, bufferCap,
               bufferSlot, thread_control_update_ipc_buffer);
}

exception_t
decodeSetSpace(cap_t cap, unsigned int length, cte_t* slot,
               extra_caps_t extraCaps, word_t *buffer)
{
    cptr_t faultEP;
    word_t cRootData, vRootData;
    cte_t *cRootSlot, *vRootSlot;
    cap_t cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;

    if (length < 3 || extraCaps.excaprefs[0] == NULL
            || extraCaps.excaprefs[1] == NULL) {
        userError("TCB SetSpace: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP   = getSyscallArg(0, buffer);
    cRootData = getSyscallArg(1, buffer);
    vRootData = getSyscallArg(2, buffer);

    cRootSlot  = extraCaps.excaprefs[0];
    cRootCap   = extraCaps.excaprefs[0]->cap;
    vRootSlot  = extraCaps.excaprefs[1];
    vRootCap   = extraCaps.excaprefs[1]->cap;

    if (slotCapLongRunningDelete(
                TCB_PTR_CTE_PTR(cap_thread_cap_get_capTCBPtr(cap), tcbCTable)) ||
            slotCapLongRunningDelete(
                TCB_PTR_CTE_PTR(cap_thread_cap_get_capTCBPtr(cap), tcbVTable))) {
        userError("TCB SetSpace: CSpace or VSpace currently being deleted.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap &&
            (!config_set(CONFIG_ALLOW_NULL_CSPACE) ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        userError("TCB SetSpace: Invalid CNode cap.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        userError("TCB SetSpace: Invalid VSpace cap.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               TCB_PTR(cap_thread_cap_get_capTCBPtr(cap)), slot,
               faultEP,
               0, /* used to be prioInvalid, but it doesn't matter */
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               0, cap_null_cap_new(), NULL, thread_control_update_space);
}

exception_t
decodeDomainInvocation(word_t label, unsigned int length, extra_caps_t extraCaps, word_t *buffer)
{
    word_t domain;
    cap_t tcap;

    if (unlikely(label != DomainSetSet)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (unlikely(length == 0)) {
        userError("Domain Configure: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    } else {
        domain = getSyscallArg(0, buffer);
        if (domain >= CONFIG_NUM_DOMAINS) {
            userError("Domain Configure: invalid domain (%u >= %u).",
                      domain, CONFIG_NUM_DOMAINS);
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    if (unlikely(extraCaps.excaprefs[0] == NULL)) {
        userError("Domain Configure: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcap = extraCaps.excaprefs[0]->cap;
    if (unlikely(cap_get_capType(tcap) != cap_thread_cap)) {
        userError("Domain Configure: thread cap required.");
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    setDomain(TCB_PTR(cap_thread_cap_get_capTCBPtr(tcap)), domain);
    return EXCEPTION_NONE;
}

exception_t decodeBindAEP(cap_t cap, extra_caps_t extraCaps)
{
    async_endpoint_t *aepptr;
    tcb_t *tcb;

    if (extraCaps.excaprefs[0] == NULL) {
        userError("TCB BindAEP: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_get_capType(extraCaps.excaprefs[0]->cap) != cap_async_endpoint_cap) {
        userError("TCB BindAEP: Async endpoint is invalid.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb = TCB_PTR(cap_thread_cap_get_capTCBPtr(cap));

    if (tcb->boundAsyncEndpoint) {
        userError("TCB BindAEP: TCB already has AEP.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    aepptr = AEP_PTR(cap_async_endpoint_cap_get_capAEPPtr(extraCaps.excaprefs[0]->cap));
    if ((tcb_t*)async_endpoint_ptr_get_aepQueue_head(aepptr)) {
        userError("TCB BindAEP: AEP cannot be bound.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, aepptr);
}

exception_t decodeUnbindAEP(cap_t cap)
{
    tcb_t *tcb;

    tcb = TCB_PTR(cap_thread_cap_get_capTCBPtr(cap));

    if (!tcb->boundAsyncEndpoint) {
        userError("TCB UnbindAEP: TCB already has no bound AEP.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, NULL);
}

/* The following functions sit in the preemption monad and implement the
 * preemptible, non-faulting bottom end of a TCB invocation. */
exception_t
invokeTCB_Suspend(tcb_t *thread)
{
    suspend(thread);
    return EXCEPTION_NONE;
}

exception_t
invokeTCB_Resume(tcb_t *thread)
{
    restart(thread);
    return EXCEPTION_NONE;
}

exception_t
invokeTCB_ThreadControl(tcb_t *target, cte_t* slot,
                        cptr_t faultep, prio_t priority,
                        cap_t cRoot_newCap, cte_t *cRoot_srcSlot,
                        cap_t vRoot_newCap, cte_t *vRoot_srcSlot,
                        word_t bufferAddr, cap_t bufferCap,
                        cte_t *bufferSrcSlot,
                        thread_control_flag_t updateFlags)
{
    exception_t e;
    cap_t tCap = cap_thread_cap_new((word_t)target);

    if (updateFlags & thread_control_update_space) {
        target->tcbFaultHandler = faultep;
    }

    if (updateFlags & thread_control_update_priority) {
        setPriority(target, priority);
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = TCB_PTR_CTE_PTR(target, tcbCTable);
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(cRoot_newCap, cRoot_srcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(cRoot_newCap, cRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = TCB_PTR_CTE_PTR(target, tcbVTable);
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(vRoot_newCap, vRoot_srcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(vRoot_newCap, vRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_ipc_buffer) {
        cte_t *bufferSlot;

        bufferSlot = TCB_PTR_CTE_PTR(target, tcbBuffer);
        e = cteDelete(bufferSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        target->tcbIPCBuffer = bufferAddr;
        if (bufferSrcSlot && sameObjectAs(bufferCap, bufferSrcSlot->cap) &&
                sameObjectAs(tCap, slot->cap)) {
            cteInsert(bufferCap, bufferSrcSlot, bufferSlot);
        }
    }

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *tcb_src,
                        bool_t suspendSource, bool_t resumeTarget,
                        bool_t transferFrame, bool_t transferInteger,
                        word_t transferArch)
{
    if (suspendSource) {
        suspend(tcb_src);
    }

    if (resumeTarget) {
        restart(dest);
    }

    if (transferFrame) {
        unsigned int i;
        word_t v;
        word_t pc;

        for (i = 0; i < n_frameRegisters; i++) {
            v = getRegister(tcb_src, frameRegisters[i]);
            setRegister(dest, frameRegisters[i], v);
        }

        pc = getRestartPC(dest);
        setNextPC(dest, pc);
    }

    if (transferInteger) {
        unsigned int i;
        word_t v;

        for (i = 0; i < n_gpRegisters; i++) {
            v = getRegister(tcb_src, gpRegisters[i]);
            setRegister(dest, gpRegisters[i], v);
        }
    }

    return Arch_performTransfer(transferArch, tcb_src, dest);
}

/* ReadRegisters is a special case: replyFromKernel & setMRs are
 * unfolded here, in order to avoid passing the large reply message up
 * to the top level in a global (and double-copying). We prevent the
 * top-level replyFromKernel_success_empty() from running by setting the
 * thread state. Retype does this too.
 */
exception_t
invokeTCB_ReadRegisters(tcb_t *tcb_src, bool_t suspendSource,
                        unsigned int n, word_t arch, bool_t call)
{
    unsigned int i, j;
    exception_t e;
    tcb_t *thread;

    thread = ksCurThread;

    if (suspendSource) {
        suspend(tcb_src);
    }

    e = Arch_performTransfer(arch, tcb_src, ksCurThread);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (call) {
        word_t *ipcBuffer;

        ipcBuffer = lookupIPCBuffer(true, thread);

        setRegister(thread, badgeRegister, 0);

        for (i = 0; i < n && i < n_frameRegisters && i < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i],
                        getRegister(tcb_src, frameRegisters[i]));
        }

        if (ipcBuffer != NULL && i < n && i < n_frameRegisters) {
            for (; i < n && i < n_frameRegisters; i++) {
                ipcBuffer[i + 1] = getRegister(tcb_src, frameRegisters[i]);
            }
        }

        j = i;

        for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n
                && i + n_frameRegisters < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i + n_frameRegisters],
                        getRegister(tcb_src, gpRegisters[i]));
        }

        if (ipcBuffer != NULL && i < n_gpRegisters
                && i + n_frameRegisters < n) {
            for (; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
                ipcBuffer[i + n_frameRegisters + 1] =
                    getRegister(tcb_src, gpRegisters[i]);
            }
        }

        setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                        message_info_new(0, 0, 0, i + j)));
    }
    setThreadState(thread, ThreadState_Running);

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                         unsigned int n, word_t arch, word_t *buffer)
{
    unsigned int i;
    word_t pc;
    exception_t e;

    e = Arch_performTransfer(arch, ksCurThread, dest);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (n > n_frameRegisters + n_gpRegisters) {
        n = n_frameRegisters + n_gpRegisters;
    }

    for (i = 0; i < n_frameRegisters && i < n; i++) {
        /* Offset of 2 to get past the initial syscall arguments */
        setRegister(dest, frameRegisters[i],
                    sanitiseRegister(frameRegisters[i],
                                     getSyscallArg(i + 2, buffer)));
    }

    for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
        setRegister(dest, gpRegisters[i],
                    sanitiseRegister(gpRegisters[i],
                                     getSyscallArg(i + n_frameRegisters + 2,
                                                   buffer)));
    }

    pc = getRestartPC(dest);
    setNextPC(dest, pc);

    if (resumeTarget) {
        restart(dest);
    }

    return EXCEPTION_NONE;
}

exception_t
invokeTCB_AEPControl(tcb_t *tcb, async_endpoint_t *aepptr)
{
    if (aepptr) {
        bindAsyncEndpoint(tcb, aepptr);
    } else {
        unbindAsyncEndpoint(tcb);
    }

    return EXCEPTION_NONE;
}

#ifdef DEBUG
void
setThreadName(tcb_t *tcb, const char *name)
{
    strlcpy(tcb->tcbName, name, TCB_NAME_LENGTH);
}
#endif
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <config.h>
#include <types.h>
#include <api/failures.h>
#include <api/syscall.h>
#include <api/invocation.h>
#include <machine/io.h>
#include <object/structures.h>
#include <object/untyped.h>
#include <object/objecttype.h>
#include <object/cnode.h>
#include <kernel/cspace.h>
#include <kernel/thread.h>
#include <util.h>

static word_t
alignUp(word_t baseValue, unsigned int alignment)
{
    return (baseValue + (BIT(alignment) - 1)) & ~MASK(alignment);
}

exception_t
decodeUntypedInvocation(word_t label, unsigned int length, cte_t *slot,
                        cap_t cap, extra_caps_t extraCaps,
                        bool_t call, word_t *buffer)
{
    word_t newType, userObjSize, nodeIndex;
    word_t nodeDepth, nodeOffset, nodeWindow;
    cte_t *rootSlot UNUSED;
    exception_t status;
    cap_t nodeCap;
    lookupSlot_ret_t lu_ret;
    word_t nodeSize;
    unsigned int i;
    slot_range_t slots;
    word_t freeRef, objectSize, untypedSize;
    word_t freeIndex, alignedFreeIndex;

    /* Ensure operation is valid. */
    if (label != UntypedRetype) {
        userError("Untyped cap: Illegal operation attempted.");
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure message length valid. */
    if (length < 7 || extraCaps.excaprefs[0] == NULL) {
        userError("Untyped invocation: Truncated message.");
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Fetch arguments. */
    newType     = getSyscallArg(0, buffer);
    freeIndex   = getSyscallArg(1, buffer);
    userObjSize = getSyscallArg(2, buffer);
    nodeIndex   = getSyscallArg(3, buffer);
    nodeDepth   = getSyscallArg(4, buffer);
    nodeOffset  = getSyscallArg(5, buffer);
    nodeWindow  = getSyscallArg(6, buffer);

    rootSlot = extraCaps.excaprefs[0];

    /*
     * Okay to retype if at least one of the following criteria hold:
     *   - the original untyped sits in the kernel window.
     *   - we are retyping to a frame (small, big, whatever).
     *   - we are retyping to an untyped
     */
    if (!(inKernelWindow((void *)cap_untyped_cap_get_capPtr(cap)) ||
            Arch_isFrameType(newType) ||
            newType == seL4_UntypedObject)) {
        userError("Untyped Retype: Untyped outside kernel window (%p).", (void*)newType);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object type valid? */
    if (newType >= seL4_ObjectTypeCount) {
        userError("Untyped Retype: Invalid object type.");
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object size valid? */
    if (userObjSize >= (wordBits - 1)) {
        userError("Untyped Retype: Invalid object size.");
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = wordBits - 2;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a CNode, is it at least size 1? */
    if (newType == seL4_CapTableObject && userObjSize == 0) {
        userError("Untyped Retype: Requested CapTable size too small.");
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a Untyped, is it at least size 4? */
    if (newType == seL4_UntypedObject && userObjSize < 4) {
        userError("Untyped Retype: Requested UntypedItem size too small.");
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Lookup the destination CNode (where our caps will be placed in). */
    if (nodeDepth == 0) {
        nodeCap = extraCaps.excaprefs[0]->cap;
    } else {
        cap_t rootCap = extraCaps.excaprefs[0]->cap;
        lu_ret = lookupTargetSlot(rootCap, nodeIndex, nodeDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            userError("Untyped Retype: Invalid destination address.");
            return lu_ret.status;
        }
        nodeCap = lu_ret.slot->cap;
    }

    /* Is the destination actually a CNode? */
    if (cap_get_capType(nodeCap) != cap_cnode_cap) {
        userError("Untyped Retype: Destination cap invalid or read-only.");
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = 0;
        current_lookup_fault = lookup_fault_missing_capability_new(nodeDepth);
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the region where the user wants to put the caps valid? */
    nodeSize = 1 << cap_cnode_cap_get_capCNodeRadix(nodeCap);
    if (nodeOffset > nodeSize - 1) {
        userError("Untyped Retype: Destination node offset #%d too large.",
                  (int)nodeOffset);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = nodeSize - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow < 1 || nodeWindow > CONFIG_RETYPE_FAN_OUT_LIMIT) {
        userError("Untyped Retype: Number of requested objects (%d) too small or large.",
                  (int)nodeWindow);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = CONFIG_RETYPE_FAN_OUT_LIMIT;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow > nodeSize - nodeOffset) {
        userError("Untyped Retype: Requested destination window overruns size of node.");
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = nodeSize - nodeOffset;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure that the destination slots are all empty. */
    slots.cnode = CTE_PTR(cap_cnode_cap_get_capCNodePtr(nodeCap));
    slots.offset = nodeOffset;
    slots.length = nodeWindow;
    for (i = nodeOffset; i < nodeOffset + nodeWindow; i++) {
        status = ensureEmptySlot(slots.cnode + i);
        if (status != EXCEPTION_NONE) {
            userError("Untyped Retype: Slot #%d in destination window non-empty.",
                      (int)i);
            return status;
        }
    }

    objectSize = getObjectSize(newType, userObjSize);

    /* Align up the free region so that it is aligned to the target object's
     * size. */
    alignedFreeIndex = alignUp(freeIndex, objectSize);

    freeRef = GET_FREE_REF(cap_untyped_cap_get_capPtr(cap), alignedFreeIndex);

    /* Check that this object will be within the bounds of the untyped */
    untypedSize = BIT(cap_untyped_cap_get_capBlockSize(cap));
    if (objectSize >= wordBits || alignedFreeIndex + BIT(objectSize) > untypedSize) {
        userError("Untyped Retype: Insufficient memory or offset outside untyped");
        current_syscall_error.type = seL4_NotEnoughMemory;
        current_syscall_error.memoryLeft = untypedSize;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Check to see if this retype will collide with an existing child. */
    if (newType != seL4_UntypedObject && !cap_untyped_cap_get_capDeviceMemory(cap)) {
        cte_t *child = cdtFindTypedInRange(freeRef, nodeWindow * objectSize);
        if (child) {
            userError("Untyped Retype: collision with existing child");
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    /* Check we do not create non frames in frame only untypeds */
    if ( (cap_untyped_cap_get_capDeviceMemory(cap) && !Arch_isFrameType(newType))
            && newType != seL4_UntypedObject) {
        userError("Untyped Retype: Creating kernel objects with frame only untyped");
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Perform the retype. */
    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeUntyped_Retype(
               slot, WORD_PTR(cap_untyped_cap_get_capPtr(cap)),
               (void*)freeRef, newType, userObjSize, slots, call, cap_untyped_cap_get_capDeviceMemory(cap));
}

exception_t
invokeUntyped_Retype(cte_t *srcSlot, void* regionBase,
                     void* freeRegionBase,
                     object_t newType, unsigned int userSize,
                     slot_range_t destSlots, bool_t call, bool_t deviceMemory)
{
    word_t size_ign UNUSED;

    /*
     * If this is the first object we are creating in this untyped region, we
     * need to detype the old memory. At the concrete C level, this doesn't
     * have any effect, but updating this shadow state is important for the
     * verification process.
     */
    size_ign = cap_untyped_cap_ptr_get_capBlockSize(&(srcSlot->cap));
    /** AUXUPD: "(True,
        if (\<acute>freeRegionBase = \<acute>regionBase) then
          (typ_region_bytes (ptr_val \<acute>regionBase) (unat \<acute>size_ign))
        else
          id)" */
    /** GHOSTUPD: "(True,
        if (\<acute>freeRegionBase = \<acute>regionBase) then
          (gs_clear_region (ptr_val \<acute>regionBase) (unat \<acute>size_ign))
        else
          id)" */

    /* Create new objects and caps. */
    createNewObjects(newType, srcSlot, destSlots, freeRegionBase, userSize, deviceMemory);

    return EXCEPTION_NONE;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <types.h>
#include <machine/io.h>
#include <kernel/vspace.h>
#include <arch/machine.h>
#include <arch/kernel/vspace.h>
#include <plat/machine.h>
#include <arch/linker.h>
#include <plat/machine/devices.h>
#include <plat/machine/hardware.h>

/* Available physical memory regions on platform (RAM) */
/* NOTE: Regions are not allowed to be adjacent! */
const p_region_t BOOT_RODATA avail_p_regs[] = {
    /* 1 GiB */
#ifdef CONFIG_BENCHMARK
    /* 1MB stolen for logging */
    { /* .start = */ 0x10000000, /* .end = */ 0x2fd00000 }
#else
    { /* .start = */ 0x10000000, /* .end = */ 0x50000000 }
#endif /* CONFIG_BENCHMARK */
};

BOOT_CODE int
get_num_avail_p_regs(void)
{
    return sizeof(avail_p_regs) / sizeof(p_region_t);
}

BOOT_CODE p_region_t
get_avail_p_reg(unsigned int i)
{
    return avail_p_regs[i];
}

const p_region_t BOOT_RODATA dev_p_regs[] = {
//  { /* .start = */ EIM_CS0_PADDR          , /* .end = */ EIM_CS0_PADDR           + (128 << 20)},
    { /* .start = */ IPU2_PADDR             , /* .end = */ IPU2_PADDR              + (  4 << 20)},
    { /* .start = */ IPU1_PADDR             , /* .end = */ IPU1_PADDR              + (  4 << 20)},
    { /* .start = */ MIPI_HSI_PADDR         , /* .end = */ MIPI_HSI_PADDR          + (  4 << 12)},
    { /* .start = */ OPENVG_PADDR           , /* .end = */ OPENVG_PADDR            + (  4 << 12)},
    { /* .start = */ SATA_PADDR             , /* .end = */ SATA_PADDR              + (  4 << 12)},
    { /* .start = */ UART5_PADDR            , /* .end = */ UART5_PADDR             + (  4 << 12)},
    { /* .start = */ UART4_PADDR            , /* .end = */ UART4_PADDR             + (  4 << 12)},
    { /* .start = */ UART3_PADDR            , /* .end = */ UART3_PADDR             + (  4 << 12)},
    { /* .start = */ UART2_PADDR            , /* .end = */ UART2_PADDR             + (  4 << 12)},
    { /* .start = */ VDOA_PADDR             , /* .end = */ VDOA_PADDR              + (  4 << 12)},
    { /* .start = */ MIPI_DSI_PADDR         , /* .end = */ MIPI_DSI_PADDR          + (  4 << 12)},
    { /* .start = */ MIPI_CSI_PADDR         , /* .end = */ MIPI_CSI_PADDR          + (  4 << 12)},
    { /* .start = */ AUDMUX_PADDR           , /* .end = */ AUDMUX_PADDR            + (  4 << 12)},
    { /* .start = */ TZASC2_PADDR           , /* .end = */ TZASC2_PADDR            + (  4 << 12)},
    { /* .start = */ TZASC1_PADDR           , /* .end = */ TZASC1_PADDR            + (  4 << 12)},
    { /* .start = */ CSU_PADDR              , /* .end = */ CSU_PADDR               + (  4 << 12)},
    { /* .start = */ OCOTP_CTRL_PADDR       , /* .end = */ OCOTP_CTRL_PADDR        + (  4 << 12)},
    { /* .start = */ EIM_PADDR              , /* .end = */ EIM_PADDR               + (  4 << 12)},
    { /* .start = */ MMDC1_PADDR            , /* .end = */ MMDC1_PADDR             + (  4 << 12)},
    { /* .start = */ MMDC0_PADDR            , /* .end = */ MMDC0_PADDR             + (  4 << 12)},
    { /* .start = */ ROMCP_PADDR            , /* .end = */ ROMCP_PADDR             + (  4 << 12)},
    { /* .start = */ I2C3_PADDR             , /* .end = */ I2C3_PADDR              + (  4 << 12)},
    { /* .start = */ I2C2_PADDR             , /* .end = */ I2C2_PADDR              + (  4 << 12)},
    { /* .start = */ I2C1_PADDR             , /* .end = */ I2C1_PADDR              + (  4 << 12)},
    { /* .start = */ USDHC4_PADDR           , /* .end = */ USDHC4_PADDR            + (  4 << 12)},
    { /* .start = */ USDHC3_PADDR           , /* .end = */ USDHC3_PADDR            + (  4 << 12)},
    { /* .start = */ USDHC2_PADDR           , /* .end = */ USDHC2_PADDR            + (  4 << 12)},
    { /* .start = */ USDHC1_PADDR           , /* .end = */ USDHC1_PADDR            + (  4 << 12)},
    { /* .start = */ MLB150_PADDR           , /* .end = */ MLB150_PADDR            + (  4 << 12)},
    { /* .start = */ ENET_PADDR             , /* .end = */ ENET_PADDR              + (  4 << 12)},
    { /* .start = */ USBOH3_PADDR           , /* .end = */ USBOH3_PADDR            + (  4 << 12)},
    { /* .start = */ AIPS2_CONFIG_PADDR     , /* .end = */ AIPS2_CONFIG_PADDR      + (  4 << 12)},
//  { /* .start = */ ARM_MPCORE_PADDR       , /* .end = */ ARM_MPCORE_PADDR        + ( 27 << 12)},
    { /* .start = */ PLATFORM_CONTROL_PADDR , /* .end = */ PLATFORM_CONTROL_PADDR  + (  1 << 12)},
    { /* .start = */ PTM3_PADDR             , /* .end = */ PTM3_PADDR              + (  1 << 12)},
    { /* .start = */ PTM2_PADDR             , /* .end = */ PTM2_PADDR              + (  1 << 12)},
    { /* .start = */ PTM1_PADDR             , /* .end = */ PTM1_PADDR              + (  1 << 12)},
    { /* .start = */ PTM0_PADDR             , /* .end = */ PTM0_PADDR              + (  1 << 12)},
    { /* .start = */ CTI3_PADDR             , /* .end = */ CTI3_PADDR              + (  1 << 12)},
    { /* .start = */ CTI2_PADDR             , /* .end = */ CTI2_PADDR              + (  1 << 12)},
    { /* .start = */ CTI1_PADDR             , /* .end = */ CTI1_PADDR              + (  1 << 12)},
    { /* .start = */ CTI0_PADDR             , /* .end = */ CTI0_PADDR              + (  1 << 12)},
    { /* .start = */ CPU3_PMU_PADDR         , /* .end = */ CPU3_PMU_PADDR          + (  1 << 12)},
    { /* .start = */ CPU3_DEBUG_PADDR       , /* .end = */ CPU3_DEBUG_PADDR        + (  1 << 12)},
    { /* .start = */ CPU2_PMU_PADDR         , /* .end = */ CPU2_PMU_PADDR          + (  1 << 12)},
    { /* .start = */ CPU2_DEBUG_PADDR       , /* .end = */ CPU2_DEBUG_PADDR        + (  1 << 12)},
    { /* .start = */ CPU1_PMU_PADDR         , /* .end = */ CPU1_PMU_PADDR          + (  1 << 12)},
    { /* .start = */ CPU1_PADDR             , /* .end = */ CPU1_PADDR              + (  1 << 12)},
    { /* .start = */ CPU0_PMU_PADDR         , /* .end = */ CPU0_PMU_PADDR          + (  1 << 12)},
    { /* .start = */ CPU0_DEBUG_PADDR       , /* .end = */ CPU0_DEBUG_PADDR        + (  1 << 12)},
    { /* .start = */ CA9_INTEG_PADDR        , /* .end = */ CA9_INTEG_PADDR         + (  1 << 12)},
    { /* .start = */ FUNNEL_PADDR           , /* .end = */ FUNNEL_PADDR            + (  1 << 12)},
    { /* .start = */ TPIU_PADDR             , /* .end = */ TPIU_PADDR              + (  1 << 12)},
    { /* .start = */ CTI_PADDR              , /* .end = */ CTI_PADDR               + (  1 << 12)},
    { /* .start = */ ETB_PADDR              , /* .end = */ ETB_PADDR               + (  1 << 12)},
    { /* .start = */ DAP_ROM_TABLE_PADDR    , /* .end = */ DAP_ROM_TABLE_PADDR     + (  1 << 12)},
    { /* .start = */ CAAM_PADDR             , /* .end = */ CAAM_PADDR              + ( 16 << 12)},
    { /* .start = */ SDMA_PADDR             , /* .end = */ SDMA_PADDR              + (  4 << 12)},
    { /* .start = */ DCIC2_PADDR            , /* .end = */ DCIC2_PADDR             + (  4 << 12)},
    { /* .start = */ DCIC1_PADDR            , /* .end = */ DCIC1_PADDR             + (  4 << 12)},
    { /* .start = */ IOMUXC_PADDR           , /* .end = */ IOMUXC_PADDR            + (  4 << 12)},
    { /* .start = */ GPC_PADDR              , /* .end = */ GPC_PADDR               + (  1 << 12)},
    { /* .start = */ SRC_PADDR              , /* .end = */ SRC_PADDR               + (  4 << 12)},
    { /* .start = */ EPIT2_PADDR            , /* .end = */ EPIT2_PADDR             + (  4 << 12)},
    { /* .start = */ EPIT1_PADDR            , /* .end = */ EPIT1_PADDR             + (  4 << 12)},
    { /* .start = */ SNVS_HP_PADDR          , /* .end = */ SNVS_HP_PADDR           + (  4 << 12)},
    { /* .start = */ USBPHY2_PADDR          , /* .end = */ USBPHY2_PADDR           + (  1 << 12)},
    { /* .start = */ USBPHY1_PADDR          , /* .end = */ USBPHY1_PADDR           + (  1 << 12)},
    { /* .start = */ ANALOG_PADDR           , /* .end = */ ANALOG_PADDR            + (  1 << 12)},
    { /* .start = */ CCM_PADDR              , /* .end = */ CCM_PADDR               + (  4 << 12)},
    { /* .start = */ WDOG2_PADDR            , /* .end = */ WDOG2_PADDR             + (  4 << 12)},
    { /* .start = */ WDOG1_PADDR            , /* .end = */ WDOG1_PADDR             + (  4 << 12)},
    { /* .start = */ KPP_PADDR              , /* .end = */ KPP_PADDR               + (  4 << 12)},
    { /* .start = */ GPIO7_PADDR            , /* .end = */ GPIO7_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO6_PADDR            , /* .end = */ GPIO6_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO5_PADDR            , /* .end = */ GPIO5_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO4_PADDR            , /* .end = */ GPIO4_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO3_PADDR            , /* .end = */ GPIO3_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO2_PADDR            , /* .end = */ GPIO2_PADDR             + (  4 << 12)},
    { /* .start = */ GPIO1_PADDR            , /* .end = */ GPIO1_PADDR             + (  4 << 12)},
    { /* .start = */ GPT_PADDR              , /* .end = */ GPT_PADDR               + (  4 << 12)},
    { /* .start = */ CAN2_PADDR             , /* .end = */ CAN2_PADDR              + (  4 << 12)},
    { /* .start = */ CAN1_PADDR             , /* .end = */ CAN1_PADDR              + (  4 << 12)},
    { /* .start = */ PWM4_PADDR             , /* .end = */ PWM4_PADDR              + (  4 << 12)},
    { /* .start = */ PWM3_PADDR             , /* .end = */ PWM3_PADDR              + (  4 << 12)},
    { /* .start = */ PWM2_PADDR             , /* .end = */ PWM2_PADDR              + (  4 << 12)},
    { /* .start = */ PWM1_PADDR             , /* .end = */ PWM1_PADDR              + (  4 << 12)},
    { /* .start = */ AIPS1_CONFIG_PADDR     , /* .end = */ AIPS1_CONFIG_PADDR      + (  4 << 12)},
    { /* .start = */ VPU_PADDR              , /* .end = */ VPU_PADDR               + ( 60 << 12)},
    { /* .start = */ AIPS1_SPBA_PADDR       , /* .end = */ AIPS1_SPBA_PADDR        + (  4 << 12)},
    { /* .start = */ ASRC_PADDR             , /* .end = */ ASRC_PADDR              + (  4 << 12)},
    { /* .start = */ SSI3_PADDR             , /* .end = */ SSI3_PADDR              + (  4 << 12)},
    { /* .start = */ SSI2_PADDR             , /* .end = */ SSI2_PADDR              + (  4 << 12)},
    { /* .start = */ SSI1_PADDR             , /* .end = */ SSI1_PADDR              + (  4 << 12)},
    { /* .start = */ ESAI_PADDR             , /* .end = */ ESAI_PADDR              + (  4 << 12)},
    { /* .start = */ UART1_PADDR            , /* .end = */ UART1_PADDR             + (  4 << 12)},
    { /* .start = */ ECSPI5_PADDR           , /* .end = */ ECSPI5_PADDR            + (  4 << 12)},
    { /* .start = */ ECSPI4_PADDR           , /* .end = */ ECSPI4_PADDR            + (  4 << 12)},
    { /* .start = */ ECSPI3_PADDR           , /* .end = */ ECSPI3_PADDR            + (  4 << 12)},
    { /* .start = */ ECSPI2_PADDR           , /* .end = */ ECSPI2_PADDR            + (  4 << 12)},
    { /* .start = */ ECSPI1_PADDR           , /* .end = */ ECSPI1_PADDR            + (  4 << 12)},
    { /* .start = */ SPDIF_PADDR            , /* .end = */ SPDIF_PADDR             + (  4 << 12)},
    { /* .start = */ PCIE_REGISTERS_PADDR   , /* .end = */ PCIE_REGISTERS_PADDR    + (  4 << 12)},
    { /* .start = */ PCIE_PADDR             , /* .end = */ PCIE_PADDR              + ( 15 << 20)},
    { /* .start = */ GPV1_PL301_CONFIG_PADDR, /* .end = */ GPV1_PL301_CONFIG_PADDR + (  1 << 20)},
    { /* .start = */ GPV0_PL301_CONFIG_PADDR, /* .end = */ GPV0_PL301_CONFIG_PADDR + (  1 << 20)},
//  { /* .start = */ L2CC_PL310_PADDR       , /* .end = */ L2CC_PL310_PADDR        + (  1 << 12)},
//  { /* .start = */ ARM_MP_PADDR           , /* .end = */ ARM_MP_PADDR            + (  2 << 12)},
    { /* .start = */ OCRAM_ALIASED_PADDR    , /* .end = */ OCRAM_ALIASED_PADDR     + (192 << 12)},
    { /* .start = */ OCRAM_PADDR            , /* .end = */ OCRAM_PADDR             + ( 64 << 12)},
    { /* .start = */ GPV4_PL301_CONFIG_PADDR, /* .end = */ GPV4_PL301_CONFIG_PADDR + (  1 << 20)},
    { /* .start = */ GPV3_PL301_CONFIG_PADDR, /* .end = */ GPV3_PL301_CONFIG_PADDR + (  1 << 20)},
    { /* .start = */ GPV2_PL301_CONFIG_PADDR, /* .end = */ GPV2_PL301_CONFIG_PADDR + (  1 << 20)},
    { /* .start = */ DTCP_PADDR             , /* .end = */ DTCP_PADDR              + (  4 << 12)},
    { /* .start = */ GPU2D_PADDR            , /* .end = */ GPU2D_PADDR             + (  4 << 12)},
    { /* .start = */ GPU3D_PADDR            , /* .end = */ GPU3D_PADDR             + (  4 << 12)},
    { /* .start = */ HDMI_PADDR             , /* .end = */ HDMI_PADDR              + (  9 << 12)},
    { /* .start = */ BCH_PADDR              , /* .end = */ BCH_PADDR               + (  4 << 12)},
    { /* .start = */ GPMI_PADDR             , /* .end = */ GPMI_PADDR              + (  2 << 12)},
    { /* .start = */ APBH_BRIDGE_DMA_PADDR  , /* .end = */ APBH_BRIDGE_DMA_PADDR   + (  2 << 12)},
    { /* .start = */ CAAM_SECURE_RAM_PADDR  , /* .end = */ CAAM_SECURE_RAM_PADDR   + (  4 << 12)},
//  { /* .start = */ BOOT_ROM_PADDR         , /* .end = */ BOOT_ROM_PADDR          + ( 24 << 12)}
};

BOOT_CODE int
get_num_dev_p_regs(void)
{
    return sizeof(dev_p_regs) / sizeof(p_region_t);
}

BOOT_CODE p_region_t
get_dev_p_reg(unsigned int i)
{
    return dev_p_regs[i];
}


/* Determine if the given IRQ should be reserved by the kernel. */
bool_t CONST
isReservedIRQ(irq_t irq)
{
    return irq == KERNEL_TIMER_IRQ;
}

/* Handle a platform-reserved IRQ. */
void
handleReservedIRQ(irq_t irq)
{
    if (irq == INTERRUPT_UART2) {
        handle_reset_on_serial();
        return;
    }
    printf("Received reserved IRQ: %d\n", (int)irq);
}


BOOT_CODE void
map_kernel_devices(void)
{
    /* map kernel device: reset controler */
    map_kernel_frame(
        SRC_PADDR,
        SRC_PPTR,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever  */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );

    /* map kernel device: watch controler */
    map_kernel_frame(
        WDOG1_PADDR,
        WATCHDOG_PPTR,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever  */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );

    /* map kernel device: GIC controller and private timers */
    map_kernel_frame(
        ARM_MP_PADDR,
        ARM_MP_PPTR1,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );

    /* map kernel device: GIC distributor */
    map_kernel_frame(
        ARM_MP_PADDR + BIT(PAGE_BITS),
        ARM_MP_PPTR2,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );

    /* map kernel device: L2CC */
    map_kernel_frame(
        L2CC_PL310_PADDR,
        L2CC_PL310_PPTR,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );


#if defined DEBUG || defined RELEASE_PRINTF
    /* map kernel device: UART */
    map_kernel_frame(
        UART_PADDR,
        UART_PPTR,
        VMKernelOnly,
        vm_attributes_new(
            true,  /* armExecuteNever */
            false, /* armParityEnabled */
            false  /* armPageCacheable */
        )
    );
#endif /* DEBUG */
}

#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <stdint.h>
#include <util.h>
#include <machine/io.h>
#include <plat/machine/devices.h>

#if defined DEBUG || defined RELEASE_PRINTF

#define URXD  0x00 /* UART Receiver Register */
#define UTXD  0x40 /* UART Transmitter Register */
#define UCR1  0x80 /* UART Control Register 1 */
#define UCR2  0x84 /* UART Control Register 2 */
#define UCR3  0x88 /* UART Control Register 3 */
#define UCR4  0x8c /* UART Control Register 4 */
#define UFCR  0x90 /* UART FIFO Control Register */
#define USR1  0x94 /* UART Status Register 1 */
#define USR2  0x98 /* UART Status Register 2 */
#define UESC  0x9c /* UART Escape Character Register */
#define UTIM  0xa0 /* UART Escape Timer Register */
#define UBIR  0xa4 /* UART BRM Incremental Register */
#define UBMR  0xa8 /* UART BRM Modulator Register */
#define UBRC  0xac /* UART Baud Rate Counter Register */
#define ONEMS 0xb0 /* UART One Millisecond Register */
#define UTS   0xb4 /* UART Test Register */

#define UART_REG(x) ((volatile uint32_t *)(UART_PPTR + (x)))


#define UART_SR2_TXFIFO_EMPTY 14
#define UART_SR2_RXFIFO_RDR    0

/* SR1 bits */
#define UART_SR1_PARITYERR    BIT(15)
#define UART_SR1_RTSS         BIT(14)
#define UART_SR1_TRDY         BIT(13)
#define UART_SR1_RTSD         BIT(12)
#define UART_SR1_ESCF         BIT(11)
#define UART_SR1_FRAMERR      BIT(10)
#define UART_SR1_RRDY         BIT( 9)
#define UART_SR1_AGTIM        BIT( 8)
#define UART_SR1_DTRD         BIT( 7)
#define UART_SR1_RXDS         BIT( 6)
#define UART_SR1_AIRINT       BIT( 5)
#define UART_SR1_AWAKE        BIT( 4)
#define UART_SR1_SAD          BIT( 3)



void init_serial(void) {
    /* read in any characters */
    uint32_t disable, enable;
    while ((*UART_REG(USR2) & BIT(UART_SR2_RXFIFO_RDR))) {
        uint32_t c = *UART_REG(URXD);
        (void)c;
    }
    *UART_REG(UFCR) = ((*UART_REG(UFCR)) & ~0x3fUL) | 0x1;
    /* disable tx interrupts and enable interrupt on rx ready */
    disable = BIT(15) | BIT(13) | BIT(12) |BIT(6) | BIT(2);
    enable = BIT(9);
    *UART_REG(UCR1) = ((*UART_REG(UCR1)) & (~disable)) | enable;
    disable = BIT(13) | BIT(12) | BIT(11) | BIT(9) | BIT(6) | BIT(5) | BIT(4) | BIT(3) | BIT(0);
    enable = 0;
    *UART_REG(UCR3) = ((*UART_REG(UCR3)) & (~disable)) | enable;
    disable = BIT(8) | BIT(7) | BIT(6) | BIT(3) | BIT(2) | BIT(1);
    enable = BIT(0);
    *UART_REG(UCR4) = ((*UART_REG(UCR4)) & (~disable)) | enable;
    disable = BIT(15) | BIT(4) | BIT(3);
    enable = BIT(0);
    *UART_REG(UCR2) = ((*UART_REG(UCR2)) & (~disable)) | enable;
}

void
handle_reset_on_serial(void){
    static char* reset_code_ptr = "reset";
    while(*UART_REG(USR2) & BIT(UART_SR2_RXFIFO_RDR)){
        /* We have a character */
        char c = *UART_REG(URXD);
        /* set to clear interrupt flag */
        *UART_REG(USR1) = UART_SR1_RRDY;
        if(c == *reset_code_ptr){
            reset_code_ptr++;
            if(*reset_code_ptr == '\0'){
                /* sequence found */
                volatile uint32_t *src_reg = (volatile uint32_t*)SRC_PPTR;
                volatile uint16_t *wdt_reg = (volatile uint16_t*)WATCHDOG_PPTR;
                printf("\n\nTrying to restart\n");
                src_reg[0] &= (~ (BIT(22) | BIT(23) | BIT(24)));
                src_reg[8] = 0;
                wdt_reg[0] = BIT(2);
                wdt_reg[0] = BIT(2);
                while(1);
            }
        }else{
            reset_code_ptr = "reset";
        }
    }
}

void
imx6_uart_putchar(char c)
{
    putDebugChar(c);
    if (c == '\n') {
        putDebugChar('\r');
    }
}

void putDebugChar(unsigned char c)
{
    while (!(*UART_REG(USR2) & BIT(UART_SR2_TXFIFO_EMPTY)));
    *UART_REG(UTXD) = c;
}

unsigned char getDebugChar(void)
{
    while (!(*UART_REG(USR2) & BIT(UART_SR2_RXFIFO_RDR)));
    return *UART_REG(URXD);
}

#endif /* DEBUG */
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/string.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <string.h>

#ifdef DEBUG

unsigned int strnlen(const char *s, unsigned int maxlen)
{
    unsigned int len;
    for (len = 0; len < maxlen && s[len]; len++);
    return len;
}

unsigned int strlcpy(char *dest, const char *src, unsigned int size)
{
    unsigned int len;
    for (len = 0; len + 1 < size && src[len]; len++) {
        dest[len] = src[len];
    }
    dest[len] = '\0';
    return len;
}

unsigned int strlcat(char *dest, const char *src, unsigned int size)
{
    unsigned int len;
    /* get to the end of dest */
    for (len = 0; len < size && dest[len]; len++);
    /* check that dest was at least 'size' length to prevent inserting
     * a null byte when we shouldn't */
    if (len < size) {
        for (; len + 1 < size && *src; len++, src++) {
            dest[len] = *src;
        }
        dest[len] = '\0';
    }
    return len;
}

#endif
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <assert.h>
#include <stdint.h>
#include <util.h>

/*
 * Zero 'n' bytes of memory starting from 's'.
 *
 * 'n' and 's' must be word aligned.
 */
void
memzero(void *s, unsigned int n)
{
    uint8_t *p = s;

    /* Ensure alignment constraints are met. */
    assert((unsigned int)s % 4 == 0);
    assert(n % 4 == 0);

    /* We will never memzero an area larger than the largest current
       live object */
    /** GHOSTUPD: "(gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state = 0
        \<or> \<acute>n <= gs_get_assn cap_get_capSizeBits_'proc \<acute>ghost'state, id)" */

    /* Write out words. */
    while (n != 0) {
        *(uint32_t *)p = 0;
        p += 4;
        n -= 4;
    }
}

void*
memset(void *s, unsigned int c, unsigned int n)
{
    uint8_t *p;

    /*
     * If we are only writing zeros and we are word aligned, we can
     * use the optimized 'memzero' function.
     */
    if (likely(c == 0 && ((uint32_t)s % 4) == 0 && (n % 4) == 0)) {
        memzero(s, n);
    } else {
        /* Otherwise, we use a slower, simple memset. */
        for (p = (uint8_t *)s; n > 0; n--, p++) {
            *p = (uint8_t)c;
        }
    }

    return s;
}

void*
memcpy(void* ptr_dst, const void* ptr_src, unsigned int n)
{
    uint8_t *p;
    const uint8_t *q;

    for (p = (uint8_t *)ptr_dst, q = (const uint8_t *)ptr_src; n; n--, p++, q++) {
        *p = *q;
    }

    return ptr_dst;
}

int
strncmp(const char* s1, const char* s2, int n)
{
    unsigned int i;
    int diff;

    for (i = 0; i < n; i++) {
        diff = ((unsigned char*)s1)[i] - ((unsigned char*)s2)[i];
        if (diff != 0 || s1[i] == '\0') {
            return diff;
        }
    }

    return 0;
}

int CONST
char_to_int(char c)
{
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else if (c >= 'A' && c <= 'F') {
        return c - 'A' + 10;
    } else if (c >= 'a' && c <= 'f') {
        return c - 'a' + 10;
    }
    return -1;
}

int PURE
str_to_int(const char* str)
{
    unsigned int base;
    int res;
    int val = 0;
    char c;

    /*check for "0x" */
    if (*str == '0' && (*(str + 1) == 'x' || *(str + 1) == 'X')) {
        base = 16;
        str += 2;
    } else {
        base = 10;
    }

    if (!*str) {
        return -1;
    }

    c = *str;
    while (c != '\0') {
        res = char_to_int(c);
        if (res == -1 || res >= base) {
            return -1;
        }
        val = val * base + res;
        str++;
        c = *str;
    }

    return val;
}
#line 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/config/default_domain.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

#include <object/structures.h>
#include <model/statedata.h>

/* Default schedule. */
const dschedule_t ksDomSchedule[] = {
    { .domain = 0, .length = 1 },
};

const unsigned int ksDomScheduleLength = sizeof(ksDomSchedule) / sizeof(dschedule_t);

