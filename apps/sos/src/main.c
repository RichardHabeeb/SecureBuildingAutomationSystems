/*
 * Copyright 2014, NICTA
 *
 * This software may be distributed and modified according to the terms of
 * the BSD 2-Clause license. Note that NO WARRANTY is provided.
 * See "LICENSE_BSD2.txt" for details.
 *
 * @TAG(NICTA_BSD)
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

#include <cspace/cspace.h>

#include <cpio/cpio.h>
#include <nfs/nfs.h>
#include <elf/elf.h>
#include <serial/serial.h>


#include "network.h"
#include "elf.h"

#include "ut_manager/ut.h"
#include "vmem_layout.h"
#include "mapping.h"

#include "udp_syscall.h"

#include <config.h>

#include <autoconf.h>

#define verbose 5
#include <sys/debug.h>
#include <sys/panic.h>


/* This is the index where a clients syscall enpoint will
 * be stored in the clients cspace. */
#define USER_EP_CAP          (2)

/* To differencient between async and and sync IPC, we assign a
 * badge to the async endpoint. The badge that we receive will
 * be the bitwise 'OR' of the async endpoint badge and the badges
 * of all pending notifications. */
#define IRQ_EP_BADGE         (1 << (seL4_BadgeBits - 1))
/* All badged IRQs set high bet, then we use uniq bits to
 * distinguish interrupt sources */
#define IRQ_BADGE_NETWORK (1 << 0)

#define TTY_NAME             CONFIG_SOS_STARTUP_APP
#define TTY_PRIORITY         (0)
#define TTY_EP_BADGE         (101)


/* The linker will link this symbol to the start address  *
 * of an archive of attached applications.                */
extern char _cpio_archive[];

const seL4_BootInfo* _boot_info;


struct {

    seL4_Word tcb_addr;
    seL4_TCB tcb_cap;

    seL4_Word vroot_addr;
    seL4_ARM_PageDirectory vroot;

    seL4_Word ipc_buffer_addr;
    seL4_CPtr ipc_buffer_cap;

    cspace_t *croot;

} tty_test_process;

typedef struct _process_t {

    seL4_Word tcb_addr;
    seL4_TCB tcb_cap;

    seL4_Word vroot_addr;
    seL4_ARM_PageDirectory vroot;

    seL4_Word ipc_buffer_addr;
    seL4_CPtr ipc_buffer_cap;

    seL4_CPtr ut_pool;
    seL4_Word ut_pool_addr;

    cspace_t *croot;

} process_t;




/*
 * A dummy starting syscall
 */
#define SOS_SYSCALL0 0
#define SOS_SYSCALL1 1
#define SOS_SYSCALL2 2

seL4_CPtr _sos_ipc_ep_cap;
seL4_CPtr _sos_interrupt_ep_cap;

/**
 * NFS mount point
 */
extern fhandle_t mnt_point;

unsigned int decode_ip(char *ip) {
    unsigned int a, b, c, d;
    sscanf(ip, "%i.%i.%i.%i", &a, &b, &c, &d);

    return  ((unsigned int)((d) & 0xff) << 24) | 
            ((unsigned int)((c) & 0xff) << 16) | 
            ((unsigned int)((b) & 0xff) << 8)  | 
            (unsigned int)((a) & 0xff);
}


void handle_syscall(seL4_Word badge, int num_args) {
    seL4_Word syscall_number;
    seL4_CPtr reply_cap;
    seL4_MessageInfo_t reply;
    struct ip_addr ipaddr;
    int port;
    int len;
    char *buf;

    syscall_number = seL4_GetMR(0);

    /* Save the caller */
    reply_cap = cspace_save_reply_cap(cur_cspace);
    assert(reply_cap != CSPACE_NULL);

    /* Process system call */
    switch (syscall_number) {
    case SOS_SYSCALL0:
        //dprintf(0, "syscall: thread made syscall 0!\n");

        reply = seL4_MessageInfo_new(0, 0, 0, 1);
        seL4_SetMR(0, 0);
        seL4_Send(reply_cap, reply);

        cspace_free_slot(cur_cspace, reply_cap);

        break;
    case SOS_SYSCALL1:
        //dprintf(0, "syscall: thread made syscall 1!\n");

        ipaddr.addr = seL4_GetMR(1);
        port = seL4_GetMR(2);
        buf = seL4_GetIPCBuffer()->msg + 3;
	len = num_args - 2; /* Subtract off port and ip MRs. */


        udp_send_syscall(ipaddr, port, buf, len);
        reply = seL4_MessageInfo_new(0, 0, 0, 1);
        seL4_SetMR(0, 0);
        seL4_Send(reply_cap, reply);

        cspace_free_slot(cur_cspace, reply_cap);

        break;

    case SOS_SYSCALL2:
        //dprintf(0, "syscall: thread made syscall 2!\n");

        port = seL4_GetMR(1);

        udp_recv_syscall(port, reply_cap);
        //Don't send reply. Wait for incoming network data.

        break;

    default:
        printf("Unknown syscall %d\n", syscall_number);
        /* we don't want to reply to an unknown syscall */
        cspace_free_slot(cur_cspace, reply_cap);
        break;

    }


}

void syscall_loop(seL4_CPtr ep) {

    while (1) {
        seL4_Word badge;
        seL4_Word label;
        seL4_MessageInfo_t message;

        message = seL4_Wait(ep, &badge);
        label = seL4_MessageInfo_get_label(message);
        if(badge & IRQ_EP_BADGE){
            /* Interrupt */
            if (badge & IRQ_BADGE_NETWORK) {
                network_irq();
            }

        }else if(label == seL4_VMFault){
            /* Page fault */
            dprintf(0, "vm fault at 0x%08x, pc = 0x%08x, %s\n", seL4_GetMR(1),
                    seL4_GetMR(0),
                    seL4_GetMR(2) ? "Instruction Fault" : "Data fault");

            assert(!"Unable to handle vm faults");
        }else if(label == seL4_NoFault) {
            /* System call */
            handle_syscall(badge, seL4_MessageInfo_get_length(message) - 1);

        }else{
            printf("Rootserver got an unknown message. Label: %i\n", label);
        }
    }
}


static void print_bootinfo(const seL4_BootInfo* info) {
    int i;

    /* General info */
    dprintf(1, "Info Page:  %p\n", info);
    dprintf(1,"IPC Buffer: %p\n", info->ipcBuffer);
    dprintf(1,"Node ID: %d (of %d)\n",info->nodeID, info->numNodes);
    dprintf(1,"IOPT levels: %d\n",info->numIOPTLevels);
    dprintf(1,"Init cnode size bits: %d\n", info->initThreadCNodeSizeBits);

    /* Cap details */
    dprintf(1,"\nCap details:\n");
    dprintf(1,"Type              Start      End\n");
    dprintf(1,"Empty             0x%08x 0x%08x\n", info->empty.start, info->empty.end);
    dprintf(1,"Shared frames     0x%08x 0x%08x\n", info->sharedFrames.start,
                                                   info->sharedFrames.end);
    dprintf(1,"User image frames 0x%08x 0x%08x\n", info->userImageFrames.start,
                                                   info->userImageFrames.end);
    dprintf(1,"User image PTs    0x%08x 0x%08x\n", info->userImagePTs.start,
                                                   info->userImagePTs.end);
    dprintf(1,"Untypeds          0x%08x 0x%08x\n", info->untyped.start, info->untyped.end);

    /* Untyped details */
    dprintf(1,"\nUntyped details:\n");
    dprintf(1,"Untyped Slot       Paddr      Bits\n");
    for (i = 0; i < info->untyped.end-info->untyped.start; i++) {
        dprintf(1,"%3d     0x%08x 0x%08x %d\n", i, info->untyped.start + i,
                                                   info->untypedPaddrList[i],
                                                   info->untypedSizeBitsList[i]);
    }

    /* Device untyped details */
    dprintf(1,"\nDevice untyped details:\n");
    dprintf(1,"Untyped Slot       Paddr      Bits\n");
    for (i = 0; i < info->deviceUntyped.end-info->deviceUntyped.start; i++) {
        dprintf(1,"%3d     0x%08x 0x%08x %d\n", i, info->deviceUntyped.start + i,
                                                   info->untypedPaddrList[i + (info->untyped.end - info->untyped.start)],
                                                   info->untypedSizeBitsList[i + (info->untyped.end-info->untyped.start)]);
    }

    dprintf(1,"-----------------------------------------\n\n");

    /* Print cpio data */
    dprintf(1,"Parsing cpio data:\n");
    dprintf(1,"--------------------------------------------------------\n");
    dprintf(1,"| index |        name      |  address   | size (bytes) |\n");
    dprintf(1,"|------------------------------------------------------|\n");
    for(i = 0;; i++) {
        unsigned long size;
        const char *name;
        void *data;

        data = cpio_get_entry(_cpio_archive, i, &name, &size);
        if(data != NULL){
            dprintf(1,"| %3d   | %16s | %p | %12d |\n", i, name, data, size);
        }else{
            break;
        }
    }
    dprintf(1,"--------------------------------------------------------\n");
}

seL4_CPtr create_worker_thread(process_t *proc, seL4_CPtr user_syscall_cap, seL4_Word ipc_buffer_vaddr) {
    int err;
    seL4_CPtr tcb_cap;
    seL4_CPtr ipc_buffer_cap;

    /* Allocate IPC buffer */
    seL4_Word ipc_buffer_addr = ut_alloc(seL4_PageBits);
    conditional_panic(!proc->ipc_buffer_addr, "No memory for ipc buffer");

    /* Retype IPC buffer */
    err =  cspace_ut_retype_addr(ipc_buffer_addr,
                                 seL4_ARM_SmallPageObject,
                                 seL4_PageBits,
                                 cur_cspace,
                                 &ipc_buffer_cap);
    conditional_panic(err, "Unable to allocate page for IPC buffer");

    /* Allocate TCB */
    seL4_Word tcb_addr = ut_alloc(seL4_TCBBits);
    conditional_panic(!tcb_addr, "No memory for new worker TCB");

    /* Retype TCB */
    err =  cspace_ut_retype_addr(tcb_addr,
                                 seL4_TCBObject,
                                 seL4_TCBBits,
                                 cur_cspace,
                                 &tcb_cap);
    conditional_panic(err, "Failed to create TCB");

    /* Configure */
    err = seL4_TCB_Configure(tcb_cap,
                             user_syscall_cap, 
                             TTY_PRIORITY,
                             proc->croot->root_cnode,
                             seL4_NilData,
                             proc->vroot,
                             seL4_NilData,
                             ipc_buffer_vaddr,
                             ipc_buffer_cap);
    conditional_panic(err, "Unable to configure new TCB");

    /* Copy the worker tcb cap to the user app */
    seL4_CPtr user_tcb_cap;
    user_tcb_cap = cspace_mint_cap(proc->croot,
                                   cur_cspace,
                                   tcb_cap,
                                   seL4_AllRights,
                                   seL4_CapData_Badge_new(0));

    /* Map in the IPC buffer for the thread */
    err = map_page(ipc_buffer_cap,
                   proc->vroot,
                   ipc_buffer_vaddr,
                   seL4_AllRights,
                   seL4_ARM_Default_VMAttributes);
    conditional_panic(err, "Unable to map IPC buffer for user app");

    return user_tcb_cap;
}

void start_process(char* app_name, seL4_CPtr syscall_ep, process_t *proc, uint32_t num_extra_threads) {
    int err;

    seL4_Word stack_addr;
    seL4_CPtr stack_cap;
    seL4_CPtr user_ep_cap;

    /* These required for setting up the TCB */
    seL4_UserContext context;

    /* These required for loading program sections */
    char* elf_base;
    unsigned long elf_size;

    /* Create a VSpace */
    proc->vroot_addr = ut_alloc(seL4_PageDirBits);
    conditional_panic(!proc->vroot_addr,
                      "No memory for new Page Directory");
    err = cspace_ut_retype_addr(proc->vroot_addr,
                                seL4_ARM_PageDirectoryObject,
                                seL4_PageDirBits,
                                cur_cspace,
                                &proc->vroot);
    conditional_panic(err, "Failed to allocate page directory cap for client");

    /* Create a simple 1 level CSpace */
    proc->croot = cspace_create(1);
    assert(proc->croot != NULL);

    /* Give process its CSpace cap */
    cspace_mint_cap(proc->croot,
                    cur_cspace,
                    proc->croot->root_cnode,
                    seL4_AllRights,
                    seL4_CapData_Badge_new(0));


    /* Create an IPC buffer */
    proc->ipc_buffer_addr = ut_alloc(seL4_PageBits);
    conditional_panic(!proc->ipc_buffer_addr, "No memory for ipc buffer");
    err =  cspace_ut_retype_addr(proc->ipc_buffer_addr,
                                 seL4_ARM_SmallPageObject,
                                 seL4_PageBits,
                                 cur_cspace,
                                 &proc->ipc_buffer_cap);
    conditional_panic(err, "Unable to allocate page for IPC buffer");

    
    /* Give process its system call ep cap */
    user_ep_cap = cspace_mint_cap(proc->croot,
                                  cur_cspace,
                                  syscall_ep,
                                  seL4_AllRights, //TODO RTH: FIX
                                  seL4_CapData_Badge_new(TTY_EP_BADGE));
    


    /* Create a new TCB object */
    proc->tcb_addr = ut_alloc(seL4_TCBBits);
    conditional_panic(!proc->tcb_addr, "No memory for new TCB");
    err =  cspace_ut_retype_addr(proc->tcb_addr,
                                 seL4_TCBObject,
                                 seL4_TCBBits,
                                 cur_cspace,
                                 &proc->tcb_cap);
    conditional_panic(err, "Failed to create TCB");

    /* Configure the TCB */
    err = seL4_TCB_Configure(proc->tcb_cap, user_ep_cap, TTY_PRIORITY,
                             proc->croot->root_cnode, seL4_NilData,
                             proc->vroot, seL4_NilData, PROCESS_IPC_BUFFER,
                             proc->ipc_buffer_cap);
    conditional_panic(err, "Unable to configure new TCB");



    /* parse the cpio image */
    dprintf(1, "\nStarting \"%s\"...\n", app_name);
    elf_base = cpio_get_file(_cpio_archive, app_name, &elf_size);
    conditional_panic(!elf_base, "Unable to locate cpio header");

    /* load the elf image */
    err = elf_load(proc->vroot, elf_base);
    conditional_panic(err, "Failed to load elf image");


    /* Create a stack frame */
    stack_addr = ut_alloc(seL4_PageBits);
    conditional_panic(!stack_addr, "No memory for stack");
    err =  cspace_ut_retype_addr(stack_addr,
                                 seL4_ARM_SmallPageObject,
                                 seL4_PageBits,
                                 cur_cspace,
                                 &stack_cap);
    conditional_panic(err, "Unable to allocate page for stack");

    /* Map in the stack frame for the user app */
    err = map_page(stack_cap, proc->vroot,
                   PROCESS_STACK_TOP - (1 << seL4_PageBits),
                   seL4_AllRights, seL4_ARM_Default_VMAttributes);
    conditional_panic(err, "Unable to map stack IPC buffer for user app");

    /* Map in the IPC buffer for the thread */
    err = map_page(proc->ipc_buffer_cap, proc->vroot,
                   PROCESS_IPC_BUFFER,
                   seL4_AllRights, seL4_ARM_Default_VMAttributes);
    conditional_panic(err, "Unable to map IPC buffer for user app");


    for(uint32_t i = 1; i <= num_extra_threads; i++) {
        create_worker_thread(proc, syscall_ep, PROCESS_IPC_BUFFER + i * (1 << seL4_PageBits));
    }

    /* Start the new process */
    memset(&context, 0, sizeof(context));
    context.pc = elf_getEntryPoint(elf_base);
    context.sp = PROCESS_STACK_TOP;
    seL4_TCB_WriteRegisters(proc->tcb_cap, 1, 0, 2, &context);
}






static void _sos_ipc_init(seL4_CPtr* ipc_ep, seL4_CPtr* async_ep){
    seL4_Word ep_addr, aep_addr;
    int err;

    /* Create an Async endpoint for interrupts */
    aep_addr = ut_alloc(seL4_EndpointBits);
    conditional_panic(!aep_addr, "No memory for async endpoint");
    err = cspace_ut_retype_addr(aep_addr,
                                seL4_AsyncEndpointObject,
                                seL4_EndpointBits,
                                cur_cspace,
                                async_ep);
    conditional_panic(err, "Failed to allocate c-slot for Interrupt endpoint");

    /* Bind the Async endpoint to our TCB */
    err = seL4_TCB_BindAEP(seL4_CapInitThreadTCB, *async_ep);
    conditional_panic(err, "Failed to bind ASync EP to TCB");


    /* Create an endpoint for user application IPC */
    ep_addr = ut_alloc(seL4_EndpointBits);
    conditional_panic(!ep_addr, "No memory for endpoint");
    err = cspace_ut_retype_addr(ep_addr,
                                seL4_EndpointObject,
                                seL4_EndpointBits,
                                cur_cspace,
                                ipc_ep);
    conditional_panic(err, "Failed to allocate c-slot for IPC endpoint");
}


static void _sos_init(seL4_CPtr* ipc_ep, seL4_CPtr* async_ep){
    seL4_Word dma_addr;
    seL4_Word low, high;
    int err;

    /* Retrieve boot info from seL4 */
    _boot_info = seL4_GetBootInfo();
    conditional_panic(!_boot_info, "Failed to retrieve boot info\n");
    if(verbose > 0){
        print_bootinfo(_boot_info);
    }

    /* Initialise the untyped sub system and reserve memory for DMA */
    err = ut_table_init(_boot_info);
    conditional_panic(err, "Failed to initialise Untyped Table\n");
    /* DMA uses a large amount of memory that will never be freed */
    dma_addr = ut_steal_mem(DMA_SIZE_BITS);
    conditional_panic(dma_addr == 0, "Failed to reserve DMA memory\n");

    /* find available memory */
    ut_find_memory(&low, &high);

    /* Initialise the untyped memory allocator */
    ut_allocator_init(low, high);

    /* Initialise the cspace manager */
    err = cspace_root_task_bootstrap(ut_alloc, ut_free, ut_translate,
                                     malloc, free);
    conditional_panic(err, "Failed to initialise the c space\n");

    /* Initialise DMA memory */
    err = dma_init(dma_addr, DMA_SIZE_BITS);
    conditional_panic(err, "Failed to intiialise DMA memory\n");

    /* Initialiase other system compenents here */

    _sos_ipc_init(ipc_ep, async_ep);
}

static inline seL4_CPtr badge_irq_ep(seL4_CPtr ep, seL4_Word badge) {
    seL4_CPtr badged_cap = cspace_mint_cap(cur_cspace, cur_cspace, ep, seL4_AllRights, seL4_CapData_Badge_new(badge | IRQ_EP_BADGE));
    conditional_panic(!badged_cap, "Failed to allocate badged cap");
    return badged_cap;
}

seL4_CPtr connect_processes(process_t *client, seL4_Word client_perms, seL4_CPtr *client_cap, process_t *server, seL4_Word server_perms, seL4_CPtr *server_cap) {
    int err;
    seL4_CPtr ep_cap;
    seL4_Word ep_addr = ut_alloc(seL4_EndpointBits);
    conditional_panic(!ep_addr, "No memory for endpoint");

    err = cspace_ut_retype_addr(ep_addr,
                          seL4_EndpointObject,
                          seL4_EndpointBits,
                          cur_cspace,
                          &ep_cap);
    conditional_panic(err, "Failed to allocate c-slot for endpoint.");

    *client_cap = cspace_mint_cap(client->croot,
                                  cur_cspace,
                                  ep_cap,
                                  client_perms,
                                  seL4_CapData_Badge_new(0));
    
    *server_cap = cspace_mint_cap(server->croot,
                                  cur_cspace,
                                  ep_cap,
                                  server_perms,
                                  seL4_CapData_Badge_new(0));

    printf("SOS: connecting %d -> %d\n", *client_cap, *server_cap);
    return ep_cap;
}


seL4_CPtr allocate_and_map_page(process_t *process, seL4_Word v_dest, seL4_Word permissions) {
    int err;
    seL4_CPtr mem_cap;
    seL4_Word mem_addr;
    mem_addr = ut_alloc(seL4_PageBits);
    
    err = cspace_ut_retype_addr(mem_addr,
                                seL4_ARM_SmallPageObject,
                                seL4_PageBits,
                                cur_cspace,
                                &mem_cap);
    conditional_panic(err, "Unable to retype page.");

    err = map_page(mem_cap,
                   process->vroot,
                   v_dest,
                   permissions,
                   seL4_ARM_Default_VMAttributes);
    conditional_panic(err, "Unable to map page");
    return mem_cap;
}

seL4_CPtr map_device_to_proc(process_t *process, seL4_Word paddr, seL4_Word vaddr) {
    int err;
    seL4_CPtr frame_cap;

    err = cspace_ut_retype_addr(paddr, //TODO does the root task have identity mapping?
                                seL4_ARM_SmallPageObject,
                                seL4_PageBits,
                                cur_cspace,
                                &frame_cap);
    conditional_panic(err, "Unable to retype device memory");

    err = map_page(frame_cap,
                   process->vroot,
                   vaddr,
                   seL4_AllRights,
                   0);
    conditional_panic(err, "Unable to map device");

    return frame_cap;
}


void initialize_process_config(process_t *process, seL4_Word v_dest, uint8_t *buffer, seL4_Word buffer_len) {
    static uint8_t *local_v_dest = (uint8_t *)0x70000000; //TODO
    int err;
    seL4_CPtr page_cap[2];

    conditional_panic(buffer_len > (1 << seL4_PageBits), "Config buffer too large");

    page_cap[0] = allocate_and_map_page(process, v_dest, seL4_AllRights);
    page_cap[1] = cspace_copy_cap(cur_cspace,
                                  cur_cspace,
                                  page_cap[0],
                                  seL4_AllRights);
    conditional_panic(!page_cap[1], "Unable to duplicate page cap");

    err = map_page(page_cap[1],
                   seL4_CapInitThreadVSpace,
                   (seL4_Word)local_v_dest,
                   seL4_AllRights,
                   seL4_ARM_Default_VMAttributes);
    conditional_panic(err, "Unable to duplicate page mapping in root task");

    memcpy(local_v_dest, buffer, buffer_len);
    local_v_dest += (1 << seL4_PageBits);
}


/*
 * Main entry point - called by crt.
 */
int main(void) {
    int err;

    dprintf(0, "\nSOS Starting...\n");

    _sos_init(&_sos_ipc_ep_cap, &_sos_interrupt_ep_cap);

    /* Initialise the network hardware */
    network_init(badge_irq_ep(_sos_interrupt_ep_cap, IRQ_BADGE_NETWORK));


    //TODO don't put all these on the stack
    process_t web;
    process_t temp_control;
    process_t sensor;
    process_t fan;
    process_t alarm;

    proxy_config_t sensor_config;
    proxy_config_t fan_config;

    temp_control_config_t temp_control_config;
    alarm_config_t alarm_config;

    char sensor_psk[] = "C480FD91B1B29293C1BD65D1E35B0E210B5B189BD77643C6B5B731B33FC4D2C1";
    char fan_psk[] = "7D74FF4C3705DF5FCA68418BFCFBA32E9F246A6C9B85F2480F95B9D3BC32612E";
    char sensor_iv[] = "827C43085639350AB66A23B700C69B2A";
    char fan_iv[] = "BE0721CAC6FFBC2ED3698BC84068FE7F";



    

#if defined(CONFIG_APP_WEB) && \
    defined(CONFIG_APP_TEMP_CONTROL) && \
    defined(CONFIG_APP_PROXY_SENSOR) && \
    defined(CONFIG_APP_PROXY_FAN) && \
    defined(CONFIG_APP_ALARM)

    
    //TODO fix cap counting
    start_process("alarm", _sos_ipc_ep_cap, &alarm, 1); 
    start_process("web", _sos_ipc_ep_cap, &web, 0); 
    start_process("temp_control", _sos_ipc_ep_cap, &temp_control, 1); 
    start_process("proxy", _sos_ipc_ep_cap, &fan, 1);
    start_process("proxy", _sos_ipc_ep_cap, &sensor, 1);


    /* Setup sensor proxy */
    sensor_config.enable_encryption = 1;
    sensor_config.num_clients = 1;
    sensor_config.clients[0].tcb_cap = 3;
    sensor_config.clients[0].port = 4444; //TODO stahp
    sensor_config.clients[0].ip = decode_ip("192.168.168.2"); //TODO no.
    memcpy(sensor_config.clients[0].psk, sensor_psk, sizeof(sensor_psk)); 
    memcpy(sensor_config.clients[0].iv, sensor_iv, sizeof(sensor_iv));

    connect_processes(&temp_control, 
                      seL4_AllRights, //TODO trim
                      &temp_control_config.sensor_cap,
                      &sensor,
                      seL4_AllRights,
                      &sensor_config.clients[0].ep_cap);
     
    initialize_process_config(&sensor, (seL4_Word)PROCESS_CONFIG, (uint8_t *)(&sensor_config), sizeof(sensor_config));


    /* Setup fan proxy */
    fan_config.enable_encryption = 1;
    fan_config.num_clients = 1;
    fan_config.clients[0].tcb_cap = 3;
    fan_config.clients[0].port = 4445;
    fan_config.clients[0].ip = decode_ip("192.168.168.2"); //TODO no.
    memcpy(fan_config.clients[0].psk, fan_psk, sizeof(fan_psk)); 
    memcpy(fan_config.clients[0].iv, fan_iv, sizeof(fan_iv));

    connect_processes(&temp_control, 
                      seL4_AllRights, //TODO trim
                      &temp_control_config.fan_cap,
                      &fan,
                      seL4_AllRights,
                      &fan_config.clients[0].ep_cap);
     
    initialize_process_config(&fan, (seL4_Word)PROCESS_CONFIG, (uint8_t *)(&fan_config), sizeof(fan_config));

    seL4_CPtr web_cap_delete;

    connect_processes(&temp_control,
                      seL4_AllRights, //TODO trim
                      &temp_control_config.web_cap,
                      &web,
                      seL4_AllRights,
                      &web_cap_delete);


    initialize_process_config(&temp_control, (seL4_Word)PROCESS_CONFIG, (uint8_t *)&temp_control_config, sizeof(temp_control_config));

    alarm_config.gpio_bank1 = 0x80000000;
    alarm_config.iomuxc = 0x80001000; //TODO figure out how to manage mux with multiple drivers 

    connect_processes(&temp_control,
                      seL4_AllRights, //TODO trim
                      &temp_control_config.alarm_cap,
                      &alarm,
                      seL4_AllRights,
                      &alarm_config.tc_cap);

    map_device_to_proc(&alarm, 0x020E0000, alarm_config.iomuxc);
    map_device_to_proc(&alarm, 0x0209C000, alarm_config.gpio_bank1);

    initialize_process_config(&alarm, (seL4_Word)PROCESS_CONFIG, (uint8_t *)&alarm_config, sizeof(alarm_config));

#endif


    /* Wait on synchronous endpoint for IPC */
    dprintf(0, "\nSOS entering syscall loop\n");
    syscall_loop(_sos_ipc_ep_cap);

    /* Not reached */

}
