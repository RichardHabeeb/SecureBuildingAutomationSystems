# 1 "kernel_all.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/arm-linux-gnueabi/include/stdc-predef.h" 1 3

# 1 "/usr/arm-linux-gnueabi/include/stdc-predef.h" 3
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */

/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
# 52 "/usr/arm-linux-gnueabi/include/stdc-predef.h" 3
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */


/* We do not support C11 <threads.h>.  */
# 1 "<command-line>" 2
# 1 "kernel_all.c"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c"

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/basic_types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned long uint32_t;
typedef unsigned long long uint64_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed long int32_t;
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 2
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/basic_types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 2

typedef uint32_t word_t;
typedef uint32_t vptr_t;
typedef uint32_t paddr_t;
typedef uint32_t pptr_t;

typedef uint32_t node_id_t;

typedef uint8_t hw_asid_t;

enum hwASIDConstants {
    hwASIDMax = 255,
    hwASIDBits = 8
};
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/basic_types.h" 2

enum _bool {
    false = 0,
    true = 1
};
typedef uint32_t bool_t;

typedef struct region {
    pptr_t start;
    pptr_t end;
} region_t;

typedef struct p_region {
    paddr_t start;
    paddr_t end;
} p_region_t;

typedef struct v_region {
    vptr_t start;
    vptr_t end;
} v_region_t;
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/compound_types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/compound_types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




/* Compile-time configuration parameters. Might be set by the build system. */


# 1 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h" 1
/*
 * Automatically generated C config: don't edit
 * Project Configuration
 * Mon Jan 29 21:29:26 2018
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 2


/* size of the initial thread's root CNode (2^x slots, x >= 4) */




/* number of timer ticks until a thread is preempted  */




/* the number of scheduler domains */




/* number of priorities per domain */




/* maximum number of caps that can be created in one retype invocation */




/* maximum number of iterations until we preempt a delete/revoke invocation */




/* address range to flush per preemption work unit */




/* maximum number of untyped caps in bootinfo */
/* WARNING: must match value in libsel4! */
/* CONSTRAINT: (5 * CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS) <= 4036 */




/* length of a timer tick in ms  */




/* Configuration parameters below are for IA-32 only. */

/* maximum number of nodes supported (if 1, a uniprocessor version is compiled) */




/* maximum number of memory regions to report in bootinfo */




/* maximum number of IOMMU RMRR entries we can record while ACPI parsing */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 45 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h"
/* Borrowed from linux/include/linux/compiler.h */







/* need that for compiling with c99 instead of gnu99 */


/* Evaluate a Kconfig-provided configuration setting at compile-time. */






/** MODIFIES:
    FNSPEC
        halt_spec: "\<Gamma> \<turnstile> {} Call halt_'proc {}"
*/
void halt(void) __attribute__((__noreturn__));
void memzero(void *s, unsigned int n);
void *memset(void *s, unsigned int c, unsigned int n);
void *memcpy(void* ptr_dst, const void* ptr_src, unsigned int n);
int strncmp(const char *s1, const char *s2, int n);
int __attribute__((__const__)) char_to_int(char c);
int __attribute__((__pure__)) str_to_int(const char* str);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "./api/types_gen.h" 1



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 2



void _fail(
    const char* str,
    const char* file,
    unsigned int line,
    const char* function
) __attribute__((__noreturn__));



void _assert_fail(
    const char* assertion,
    const char* file,
    unsigned int line,
    const char* function
) __attribute__((__noreturn__));




/* Create an assert that will trigger a compile error if it fails. */
# 5 "./api/types_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "./api/types_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "./api/types_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 8 "./api/types_gen.h" 2
struct message_info {
    uint32_t words[1];
};
typedef struct message_info message_info_t;

static inline message_info_t __attribute__((__const__))
message_info_new(uint32_t msgLabel, uint32_t msgCapsUnwrapped, uint32_t msgExtraCaps, uint32_t msgLength) {
    message_info_t message_info;

    message_info.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((msgLabel & ~0xffffful) == ((0 && (msgLabel & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(msgLabel & ~0xffffful) == ((0 && (msgLabel & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 20, __FUNCTION__);
    message_info.words[0] |= (msgLabel & 0xffffful) << 12;
    /* fail if user has passed bits that we will override */
    if(!((msgCapsUnwrapped & ~0x7ul) == ((0 && (msgCapsUnwrapped & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(msgCapsUnwrapped & ~0x7ul) == ((0 && (msgCapsUnwrapped & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 23, __FUNCTION__);
    message_info.words[0] |= (msgCapsUnwrapped & 0x7ul) << 9;
    /* fail if user has passed bits that we will override */
    if(!((msgExtraCaps & ~0x3ul) == ((0 && (msgExtraCaps & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(msgExtraCaps & ~0x3ul) == ((0 && (msgExtraCaps & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 26, __FUNCTION__);
    message_info.words[0] |= (msgExtraCaps & 0x3ul) << 7;
    /* fail if user has passed bits that we will override */
    if(!((msgLength & ~0x7ful) == ((0 && (msgLength & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(msgLength & ~0x7ful) == ((0 && (msgLength & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 29, __FUNCTION__);
    message_info.words[0] |= (msgLength & 0x7ful) << 0;

    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgLabel(message_info_t message_info) {
    uint32_t ret;
    ret = (message_info.words[0] & 0xfffff000ul) >> 12;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgCapsUnwrapped(message_info_t message_info) {
    uint32_t ret;
    ret = (message_info.words[0] & 0xe00ul) >> 9;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgCapsUnwrapped(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xe00 >> 9) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./api/types_gen.h", 60, __FUNCTION__);
    message_info.words[0] &= ~0xe00ul;
    message_info.words[0] |= (v << 9) & 0xe00ul;
    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgExtraCaps(message_info_t message_info) {
    uint32_t ret;
    ret = (message_info.words[0] & 0x180ul) >> 7;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgExtraCaps(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x180 >> 7) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./api/types_gen.h", 80, __FUNCTION__);
    message_info.words[0] &= ~0x180ul;
    message_info.words[0] |= (v << 7) & 0x180ul;
    return message_info;
}

static inline uint32_t __attribute__((__const__))
message_info_get_msgLength(message_info_t message_info) {
    uint32_t ret;
    ret = (message_info.words[0] & 0x7ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline message_info_t __attribute__((__const__))
message_info_set_msgLength(message_info_t message_info, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x7f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./api/types_gen.h", 100, __FUNCTION__);
    message_info.words[0] &= ~0x7ful;
    message_info.words[0] |= (v << 0) & 0x7ful;
    return message_info;
}

struct cap_rights {
    uint32_t words[1];
};
typedef struct cap_rights cap_rights_t;

static inline cap_rights_t __attribute__((__const__))
cap_rights_new(uint32_t capAllowGrant, uint32_t capAllowRead, uint32_t capAllowWrite) {
    cap_rights_t cap_rights;

    cap_rights.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capAllowGrant & ~0x1ul) == ((0 && (capAllowGrant & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAllowGrant & ~0x1ul) == ((0 && (capAllowGrant & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 118, __FUNCTION__);
    cap_rights.words[0] |= (capAllowGrant & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!((capAllowRead & ~0x1ul) == ((0 && (capAllowRead & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAllowRead & ~0x1ul) == ((0 && (capAllowRead & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 121, __FUNCTION__);
    cap_rights.words[0] |= (capAllowRead & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capAllowWrite & ~0x1ul) == ((0 && (capAllowWrite & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAllowWrite & ~0x1ul) == ((0 && (capAllowWrite & (1ul << 31))) ? 0x0 : 0)", "./api/types_gen.h", 124, __FUNCTION__);
    cap_rights.words[0] |= (capAllowWrite & 0x1ul) << 0;

    return cap_rights;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowGrant(cap_rights_t cap_rights) {
    uint32_t ret;
    ret = (cap_rights.words[0] & 0x4ul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowRead(cap_rights_t cap_rights) {
    uint32_t ret;
    ret = (cap_rights.words[0] & 0x2ul) >> 1;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_rights_get_capAllowWrite(cap_rights_t cap_rights) {
    uint32_t ret;
    ret = (cap_rights.words[0] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef enum api_object {
    seL4_UntypedObject,
    seL4_TCBObject,
    seL4_EndpointObject,
    seL4_AsyncEndpointObject,
    seL4_CapTableObject,
    seL4_NonArchObjectTypeCount,
} seL4_ObjectType;

typedef uint32_t api_object_t;
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/api/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef enum _object {
    seL4_ARM_SmallPageObject = seL4_NonArchObjectTypeCount,
    seL4_ARM_LargePageObject,
    seL4_ARM_SectionObject,
    seL4_ARM_SuperSectionObject,
    seL4_ARM_PageTableObject,
    seL4_ARM_PageDirectoryObject,
    seL4_ObjectTypeCount
} seL4_ArchObjectType;

typedef uint32_t object_t;
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/api/types.h" 2
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/constants.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






enum priorityConstants {
    seL4_InvalidPrio = -1,
    seL4_MinPrio = 0,
    seL4_MaxPrio = 256 - 1
};

/* message_info_t defined in api/types.bf */

enum seL4_MsgLimits {
    seL4_MsgLengthBits = 7,
    seL4_MsgExtraCapBits = 2
};

enum {
    seL4_MsgMaxLength = 120,
};
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 2

/* cap_rights_t defined in api/types.bf */

typedef uint32_t prio_t;
typedef uint32_t dom_t;
typedef uint32_t cptr_t;

struct cap_transfer {
    cptr_t ctReceiveRoot;
    cptr_t ctReceiveIndex;
    unsigned int ctReceiveDepth;
};
typedef struct cap_transfer cap_transfer_t;

enum ctLimits {
    capTransferDataSize = 3
};

static inline cap_rights_t __attribute__((__const__))
rightsFromWord(word_t w)
{
    cap_rights_t cap_rights;

    cap_rights.words[0] = w;
    return cap_rights;
}

static inline word_t __attribute__((__const__))
wordFromRights(cap_rights_t cap_rights)
{
    return cap_rights.words[0] & ((1ul<<(3))-1ul);
}

static inline cap_transfer_t __attribute__((__pure__))
capTransferFromWords(word_t *wptr)
{
    cap_transfer_t transfer;

    transfer.ctReceiveRoot = (cptr_t)wptr[0];
    transfer.ctReceiveIndex = (cptr_t)wptr[1];
    transfer.ctReceiveDepth = (unsigned int)wptr[2];
    return transfer;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord_raw(word_t w)
{
    message_info_t mi;

    mi.words[0] = w;
    return mi;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord(word_t w)
{
    message_info_t mi;
    word_t len;

    mi.words[0] = w;

    len = message_info_get_msgLength(mi);
    if (len > seL4_MsgMaxLength) {
        mi = message_info_set_msgLength(mi, seL4_MsgMaxLength);
    }

    return mi;
}

static inline message_info_t __attribute__((__const__))
messageInfoFromWord_nolencheck(word_t w)
{
    message_info_t mi;
    mi.words[0] = w;
    return mi;
}

static inline word_t __attribute__((__const__))
wordFromMessageInfo(message_info_t mi)
{
    return mi.words[0];
}
# 111 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h"
/*
 * Print to serial a message helping userspace programmers to determine why the
 * kernel is not performing their requested operation.
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/compound_types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 2
# 1 "./arch/object/structures_gen.h" 1



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "./arch/object/structures_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "./arch/object/structures_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "./arch/object/structures_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 8 "./arch/object/structures_gen.h" 2
struct stored_hw_asid {
    uint32_t words[1];
};
typedef struct stored_hw_asid stored_hw_asid_t;

struct async_endpoint {
    uint32_t words[4];
};
typedef struct async_endpoint async_endpoint_t;

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepBoundTCB(async_endpoint_t *async_endpoint_ptr) {
    uint32_t ret;
    ret = (async_endpoint_ptr->words[3] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
async_endpoint_ptr_set_aepBoundTCB(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 32, __FUNCTION__);
    async_endpoint_ptr->words[3] &= ~0xfffffff0ul;
    async_endpoint_ptr->words[3] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepMsgIdentifier(async_endpoint_t *async_endpoint_ptr) {
    uint32_t ret;
    ret = (async_endpoint_ptr->words[2] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
async_endpoint_ptr_set_aepMsgIdentifier(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffff >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xffffffff >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 51, __FUNCTION__);
    async_endpoint_ptr->words[2] &= ~0xfffffffful;
    async_endpoint_ptr->words[2] |= (v << 0) & 0xffffffff;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepQueue_head(async_endpoint_t *async_endpoint_ptr) {
    uint32_t ret;
    ret = (async_endpoint_ptr->words[1] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
async_endpoint_ptr_set_aepQueue_head(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 70, __FUNCTION__);
    async_endpoint_ptr->words[1] &= ~0xfffffff0ul;
    async_endpoint_ptr->words[1] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_aepQueue_tail(async_endpoint_t *async_endpoint_ptr) {
    uint32_t ret;
    ret = (async_endpoint_ptr->words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
async_endpoint_ptr_set_aepQueue_tail(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 89, __FUNCTION__);
    async_endpoint_ptr->words[0] &= ~0xfffffff0ul;
    async_endpoint_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
async_endpoint_ptr_get_state(async_endpoint_t *async_endpoint_ptr) {
    uint32_t ret;
    ret = (async_endpoint_ptr->words[0] & 0x3ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
async_endpoint_ptr_set_state(async_endpoint_t *async_endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x3 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x3 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 108, __FUNCTION__);
    async_endpoint_ptr->words[0] &= ~0x3ul;
    async_endpoint_ptr->words[0] |= (v << 0) & 0x3;
}

struct thread_state {
    uint32_t words[3];
};
typedef struct thread_state thread_state_t;

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCBadge(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[2] & 0xfffffff0ul) >> 4;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCBadge(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 132, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0xfffffff0ul;
    thread_state_ptr->words[2] |= (v << 4) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCCanGrant(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[2] & 0x8ul) >> 3;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrant(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x8 >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x8 >> 3) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 151, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x8ul;
    thread_state_ptr->words[2] |= (v << 3) & 0x8;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCIsCall(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[2] & 0x4ul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCIsCall(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x4 >> 2) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x4 >> 2) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 170, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x4ul;
    thread_state_ptr->words[2] |= (v << 2) & 0x4;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_blockingIPCDiminishCaps(thread_state_t thread_state) {
    uint32_t ret;
    ret = (thread_state.words[2] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCDiminishCaps(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[2] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCDiminishCaps(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x1 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 200, __FUNCTION__);
    thread_state_ptr->words[2] &= ~0x1ul;
    thread_state_ptr->words[2] |= (v << 0) & 0x1;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_tcbQueued(thread_state_t thread_state) {
    uint32_t ret;
    ret = (thread_state.words[1] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tcbQueued(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x1 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 219, __FUNCTION__);
    thread_state_ptr->words[1] &= ~0x1ul;
    thread_state_ptr->words[1] |= (v << 0) & 0x1;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCEndpoint(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCEndpoint(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 238, __FUNCTION__);
    thread_state_ptr->words[0] &= ~0xfffffff0ul;
    thread_state_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__const__))
thread_state_get_tsType(thread_state_t thread_state) {
    uint32_t ret;
    ret = (thread_state.words[0] & 0xful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
thread_state_ptr_get_tsType(thread_state_t *thread_state_ptr) {
    uint32_t ret;
    ret = (thread_state_ptr->words[0] & 0xful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tsType(thread_state_t *thread_state_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xf >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xf >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 268, __FUNCTION__);
    thread_state_ptr->words[0] &= ~0xful;
    thread_state_ptr->words[0] |= (v << 0) & 0xf;
}

struct cnode_capdata {
    uint32_t words[1];
};
typedef struct cnode_capdata cnode_capdata_t;

static inline uint32_t __attribute__((__const__))
cnode_capdata_get_guard(cnode_capdata_t cnode_capdata) {
    uint32_t ret;
    ret = (cnode_capdata.words[0] & 0x3ffff00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cnode_capdata_get_guardSize(cnode_capdata_t cnode_capdata) {
    uint32_t ret;
    ret = (cnode_capdata.words[0] & 0xf8ul) >> 3;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

struct vm_attributes {
    uint32_t words[1];
};
typedef struct vm_attributes vm_attributes_t;

static inline vm_attributes_t __attribute__((__const__))
vm_attributes_new(uint32_t armExecuteNever, uint32_t armParityEnabled, uint32_t armPageCacheable) {
    vm_attributes_t vm_attributes;

    vm_attributes.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((armExecuteNever & ~0x1ul) == ((0 && (armExecuteNever & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(armExecuteNever & ~0x1ul) == ((0 && (armExecuteNever & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 312, __FUNCTION__);
    vm_attributes.words[0] |= (armExecuteNever & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!((armParityEnabled & ~0x1ul) == ((0 && (armParityEnabled & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(armParityEnabled & ~0x1ul) == ((0 && (armParityEnabled & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 315, __FUNCTION__);
    vm_attributes.words[0] |= (armParityEnabled & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((armPageCacheable & ~0x1ul) == ((0 && (armPageCacheable & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(armPageCacheable & ~0x1ul) == ((0 && (armPageCacheable & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 318, __FUNCTION__);
    vm_attributes.words[0] |= (armPageCacheable & 0x1ul) << 0;

    return vm_attributes;
}

static inline uint32_t __attribute__((__const__))
vm_attributes_get_armExecuteNever(vm_attributes_t vm_attributes) {
    uint32_t ret;
    ret = (vm_attributes.words[0] & 0x4ul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
vm_attributes_get_armParityEnabled(vm_attributes_t vm_attributes) {
    uint32_t ret;
    ret = (vm_attributes.words[0] & 0x2ul) >> 1;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
vm_attributes_get_armPageCacheable(vm_attributes_t vm_attributes) {
    uint32_t ret;
    ret = (vm_attributes.words[0] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

struct endpoint {
    uint32_t words[4];
};
typedef struct endpoint endpoint_t;

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_head(endpoint_t *endpoint_ptr) {
    uint32_t ret;
    ret = (endpoint_ptr->words[1] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_head(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 376, __FUNCTION__);
    endpoint_ptr->words[1] &= ~0xfffffff0ul;
    endpoint_ptr->words[1] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_tail(endpoint_t *endpoint_ptr) {
    uint32_t ret;
    ret = (endpoint_ptr->words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_tail(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0 << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 395, __FUNCTION__);
    endpoint_ptr->words[0] &= ~0xfffffff0ul;
    endpoint_ptr->words[0] |= (v >> 0) & 0xfffffff0;
}

static inline uint32_t __attribute__((__pure__))
endpoint_ptr_get_state(endpoint_t *endpoint_ptr) {
    uint32_t ret;
    ret = (endpoint_ptr->words[0] & 0x3ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_state(endpoint_t *endpoint_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x3 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x3 >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 414, __FUNCTION__);
    endpoint_ptr->words[0] &= ~0x3ul;
    endpoint_ptr->words[0] |= (v << 0) & 0x3;
}

struct mdb_node {
    uint32_t words[2];
};
typedef struct mdb_node mdb_node_t;

static inline mdb_node_t __attribute__((__const__))
mdb_node_new(uint32_t cdtRight_, uint32_t cdtDepth, uint32_t cdtLeft_, uint32_t cdtLevel) {
    mdb_node_t mdb_node;

    mdb_node.words[0] = 0;
    mdb_node.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((cdtRight_ & ~0x7fffffful) == ((0 && (cdtRight_ & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(cdtRight_ & ~0x7fffffful) == ((0 && (cdtRight_ & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 432, __FUNCTION__);
    mdb_node.words[1] |= (cdtRight_ & 0x7fffffful) << 5;
    /* fail if user has passed bits that we will override */
    if(!((cdtDepth & ~0x1ful) == ((0 && (cdtDepth & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(cdtDepth & ~0x1ful) == ((0 && (cdtDepth & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 435, __FUNCTION__);
    mdb_node.words[1] |= (cdtDepth & 0x1ful) << 0;
    /* fail if user has passed bits that we will override */
    if(!((cdtLeft_ & ~0x7fffffful) == ((0 && (cdtLeft_ & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(cdtLeft_ & ~0x7fffffful) == ((0 && (cdtLeft_ & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 438, __FUNCTION__);
    mdb_node.words[0] |= (cdtLeft_ & 0x7fffffful) << 5;
    /* fail if user has passed bits that we will override */
    if(!((cdtLevel & ~0x1ful) == ((0 && (cdtLevel & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(cdtLevel & ~0x1ful) == ((0 && (cdtLevel & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 441, __FUNCTION__);
    mdb_node.words[0] |= (cdtLevel & 0x1ful) << 0;

    return mdb_node;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtRight_(mdb_node_t mdb_node) {
    uint32_t ret;
    ret = (mdb_node.words[1] & 0xffffffe0ul) >> 5;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
mdb_node_ptr_set_cdtRight_(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffe0 >> 5) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xffffffe0 >> 5) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 461, __FUNCTION__);
    mdb_node_ptr->words[1] &= ~0xffffffe0ul;
    mdb_node_ptr->words[1] |= (v << 5) & 0xffffffe0;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtDepth(mdb_node_t mdb_node) {
    uint32_t ret;
    ret = (mdb_node.words[1] & 0x1ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtLeft_(mdb_node_t mdb_node) {
    uint32_t ret;
    ret = (mdb_node.words[0] & 0xffffffe0ul) >> 5;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
mdb_node_ptr_set_cdtLeft_(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0xffffffe0 >> 5) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xffffffe0 >> 5) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 491, __FUNCTION__);
    mdb_node_ptr->words[0] &= ~0xffffffe0ul;
    mdb_node_ptr->words[0] |= (v << 5) & 0xffffffe0;
}

static inline uint32_t __attribute__((__const__))
mdb_node_get_cdtLevel(mdb_node_t mdb_node) {
    uint32_t ret;
    ret = (mdb_node.words[0] & 0x1ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
mdb_node_ptr_set_cdtLevel(mdb_node_t *mdb_node_ptr, uint32_t v) {
    /* fail if user has passed bits that we will override */
    if(!(((~0x1f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x1f >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 510, __FUNCTION__);
    mdb_node_ptr->words[0] &= ~0x1ful;
    mdb_node_ptr->words[0] |= (v << 0) & 0x1f;
}

struct fault {
    uint32_t words[2];
};
typedef struct fault fault_t;

enum fault_tag {
    fault_null_fault = 0,
    fault_cap_fault = 1,
    fault_vm_fault = 2,
    fault_unknown_syscall = 3,
    fault_user_exception = 4
};
typedef enum fault_tag fault_tag_t;

static inline uint32_t __attribute__((__const__))
fault_get_faultType(fault_t fault) {
    return (fault.words[0] >> 0) & 0x7ul;
}

static inline uint32_t __attribute__((__pure__))
fault_ptr_get_faultType(fault_t *fault_ptr) {
    return (fault_ptr->words[0] >> 0) & 0x7ul;
}

static inline void
fault_null_fault_ptr_new(fault_t *fault_ptr) {
    fault_ptr->words[0] = 0;
    fault_ptr->words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_null_fault & ~0x7ul) == ((0 && ((uint32_t)fault_null_fault & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)fault_null_fault & ~0x7ul) == ((0 && ((uint32_t)fault_null_fault & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 545, __FUNCTION__);
    fault_ptr->words[0] |= ((uint32_t)fault_null_fault & 0x7ul) << 0;
}

static inline fault_t __attribute__((__const__))
fault_cap_fault_new(uint32_t address, uint32_t inReceivePhase) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= address << 0;
    /* fail if user has passed bits that we will override */
    if(!((inReceivePhase & ~0x1ul) == ((0 && (inReceivePhase & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(inReceivePhase & ~0x1ul) == ((0 && (inReceivePhase & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 558, __FUNCTION__);
    fault.words[0] |= (inReceivePhase & 0x1ul) << 31;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_cap_fault & ~0x7ul) == ((0 && ((uint32_t)fault_cap_fault & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)fault_cap_fault & ~0x7ul) == ((0 && ((uint32_t)fault_cap_fault & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 561, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_cap_fault & 0x7ul) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_cap_fault_get_address(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_cap_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_cap_fault",
                          "./arch/object/structures_gen.h"
# 570 "./arch/object/structures_gen.h"
    ,
                          571
# 570 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (fault.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
fault_cap_fault_get_inReceivePhase(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_cap_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_cap_fault",
                          "./arch/object/structures_gen.h"
# 584 "./arch/object/structures_gen.h"
    ,
                          585
# 584 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (fault.words[0] & 0x80000000ul) >> 31;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline fault_t __attribute__((__const__))
fault_vm_fault_new(uint32_t address, uint32_t FSR, uint32_t instructionFault) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= address << 0;
    /* fail if user has passed bits that we will override */
    if(!((FSR & ~0x3ffful) == ((0 && (FSR & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(FSR & ~0x3ffful) == ((0 && (FSR & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 604, __FUNCTION__);
    fault.words[0] |= (FSR & 0x3ffful) << 18;
    /* fail if user has passed bits that we will override */
    if(!((instructionFault & ~0x1ul) == ((0 && (instructionFault & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(instructionFault & ~0x1ul) == ((0 && (instructionFault & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 607, __FUNCTION__);
    fault.words[0] |= (instructionFault & 0x1ul) << 17;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_vm_fault & ~0x7ul) == ((0 && ((uint32_t)fault_vm_fault & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)fault_vm_fault & ~0x7ul) == ((0 && ((uint32_t)fault_vm_fault & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 610, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_vm_fault & 0x7ul) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_address(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 619 "./arch/object/structures_gen.h"
    ,
                         620
# 619 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (fault.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_FSR(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 633 "./arch/object/structures_gen.h"
    ,
                         634
# 633 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (fault.words[0] & 0xfffc0000ul) >> 18;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
fault_vm_fault_get_instructionFault(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_vm_fault)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_vm_fault",
                         "./arch/object/structures_gen.h"
# 647 "./arch/object/structures_gen.h"
    ,
                         648
# 647 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (fault.words[0] & 0x20000ul) >> 17;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline fault_t __attribute__((__const__))
fault_unknown_syscall_new(uint32_t syscallNumber) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= syscallNumber << 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_unknown_syscall & ~0x7ul) == ((0 && ((uint32_t)fault_unknown_syscall & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)fault_unknown_syscall & ~0x7ul) == ((0 && ((uint32_t)fault_unknown_syscall & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 667, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_unknown_syscall & 0x7ul) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_unknown_syscall_get_syscallNumber(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_unknown_syscall",
                                "./arch/object/structures_gen.h"
# 676 "./arch/object/structures_gen.h"
    ,
                                677
# 676 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                 ;

    ret = (fault.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline fault_t __attribute__((__const__))
fault_user_exception_new(uint32_t number, uint32_t code) {
    fault_t fault;

    fault.words[0] = 0;
    fault.words[1] = 0;

       fault.words[1] |= number << 0;
    /* fail if user has passed bits that we will override */
    if(!((code & ~0x1ffffffful) == ((0 && (code & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(code & ~0x1ffffffful) == ((0 && (code & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 696, __FUNCTION__);
    fault.words[0] |= (code & 0x1ffffffful) << 3;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)fault_user_exception & ~0x7ul) == ((0 && ((uint32_t)fault_user_exception & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)fault_user_exception & ~0x7ul) == ((0 && ((uint32_t)fault_user_exception & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 699, __FUNCTION__);
    fault.words[0] |= ((uint32_t)fault_user_exception & 0x7ul) << 0;

    return fault;
}

static inline uint32_t __attribute__((__const__))
fault_user_exception_get_number(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_user_exception)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_user_exception",
                               "./arch/object/structures_gen.h"
# 708 "./arch/object/structures_gen.h"
    ,
                               709
# 708 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                ;

    ret = (fault.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
fault_user_exception_get_code(fault_t fault) {
    uint32_t ret;
    if(!(((fault.words[0] >> 0) & 0x7) == fault_user_exception)) _assert_fail("((fault.words[0] >> 0) & 0x7) == fault_user_exception",
                               "./arch/object/structures_gen.h"
# 722 "./arch/object/structures_gen.h"
    ,
                               723
# 722 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                ;

    ret = (fault.words[0] & 0xfffffff8ul) >> 3;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

struct pde {
    uint32_t words[1];
};
typedef struct pde pde_t;

enum pde_tag {
    pde_pde_invalid = 0,
    pde_pde_coarse = 1,
    pde_pde_section = 2,
    pde_pde_reserved = 3
};
typedef enum pde_tag pde_tag_t;

static inline uint32_t __attribute__((__const__))
pde_get_pdeType(pde_t pde) {
    return (pde.words[0] >> 0) & 0x3ul;
}

static inline uint32_t __attribute__((__pure__))
pde_ptr_get_pdeType(pde_t *pde_ptr) {
    return (pde_ptr->words[0] >> 0) & 0x3ul;
}

static inline pde_t __attribute__((__const__))
pde_pde_invalid_new(uint32_t stored_hw_asid, uint32_t stored_asid_valid) {
    pde_t pde;

    pde.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((stored_hw_asid & ~0xfful) == ((0 && (stored_hw_asid & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(stored_hw_asid & ~0xfful) == ((0 && (stored_hw_asid & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 763, __FUNCTION__);
    pde.words[0] |= (stored_hw_asid & 0xfful) << 24;
    /* fail if user has passed bits that we will override */
    if(!((stored_asid_valid & ~0x1ul) == ((0 && (stored_asid_valid & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(stored_asid_valid & ~0x1ul) == ((0 && (stored_asid_valid & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 766, __FUNCTION__);
    pde.words[0] |= (stored_asid_valid & 0x1ul) << 23;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)pde_pde_invalid & ~0x3ul) == ((0 && ((uint32_t)pde_pde_invalid & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)pde_pde_invalid & ~0x3ul) == ((0 && ((uint32_t)pde_pde_invalid & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 769, __FUNCTION__);
    pde.words[0] |= ((uint32_t)pde_pde_invalid & 0x3ul) << 0;

    return pde;
}

static inline uint32_t __attribute__((__const__))
pde_pde_invalid_get_stored_hw_asid(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_invalid)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_invalid",
                          "./arch/object/structures_gen.h"
# 778 "./arch/object/structures_gen.h"
    ,
                          779
# 778 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde.words[0] & 0xff000000ul) >> 24;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pde_pde_invalid_get_stored_asid_valid(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_invalid)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_invalid",
                          "./arch/object/structures_gen.h"
# 792 "./arch/object/structures_gen.h"
    ,
                          793
# 792 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde.words[0] & 0x800000ul) >> 23;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline pde_t __attribute__((__const__))
pde_pde_coarse_new(uint32_t address, uint32_t P, uint32_t Domain) {
    pde_t pde;

    pde.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((address & ~0xfffffc00ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(address & ~0xfffffc00ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 810, __FUNCTION__);
    pde.words[0] |= (address & 0xfffffc00ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((P & ~0x1ul) == ((0 && (P & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(P & ~0x1ul) == ((0 && (P & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 813, __FUNCTION__);
    pde.words[0] |= (P & 0x1ul) << 9;
    /* fail if user has passed bits that we will override */
    if(!((Domain & ~0xful) == ((0 && (Domain & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(Domain & ~0xful) == ((0 && (Domain & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 816, __FUNCTION__);
    pde.words[0] |= (Domain & 0xful) << 5;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)pde_pde_coarse & ~0x3ul) == ((0 && ((uint32_t)pde_pde_coarse & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)pde_pde_coarse & ~0x3ul) == ((0 && ((uint32_t)pde_pde_coarse & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 819, __FUNCTION__);
    pde.words[0] |= ((uint32_t)pde_pde_coarse & 0x3ul) << 0;

    return pde;
}

static inline uint32_t __attribute__((__const__))
pde_pde_coarse_get_address(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_coarse)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_coarse",
                         "./arch/object/structures_gen.h"
# 828 "./arch/object/structures_gen.h"
    ,
                         829
# 828 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (pde.words[0] & 0xfffffc00ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pde_pde_coarse_ptr_get_address(pde_t *pde_ptr) {
    uint32_t ret;
    if(!(((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_coarse)) _assert_fail("((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_coarse",
                         "./arch/object/structures_gen.h"
# 842 "./arch/object/structures_gen.h"
    ,
                         843
# 842 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (pde_ptr->words[0] & 0xfffffc00ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline pde_t __attribute__((__const__))
pde_pde_section_new(uint32_t address, uint32_t size, uint32_t nG, uint32_t S, uint32_t APX, uint32_t TEX, uint32_t AP, uint32_t P, uint32_t Domain, uint32_t XN, uint32_t C, uint32_t B) {
    pde_t pde;

    pde.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((address & ~0xfff00000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(address & ~0xfff00000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 860, __FUNCTION__);
    pde.words[0] |= (address & 0xfff00000ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((size & ~0x1ul) == ((0 && (size & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(size & ~0x1ul) == ((0 && (size & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 863, __FUNCTION__);
    pde.words[0] |= (size & 0x1ul) << 18;
    /* fail if user has passed bits that we will override */
    if(!((nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 866, __FUNCTION__);
    pde.words[0] |= (nG & 0x1ul) << 17;
    /* fail if user has passed bits that we will override */
    if(!((S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 869, __FUNCTION__);
    pde.words[0] |= (S & 0x1ul) << 16;
    /* fail if user has passed bits that we will override */
    if(!((APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 872, __FUNCTION__);
    pde.words[0] |= (APX & 0x1ul) << 15;
    /* fail if user has passed bits that we will override */
    if(!((TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 875, __FUNCTION__);
    pde.words[0] |= (TEX & 0x7ul) << 12;
    /* fail if user has passed bits that we will override */
    if(!((AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 878, __FUNCTION__);
    pde.words[0] |= (AP & 0x3ul) << 10;
    /* fail if user has passed bits that we will override */
    if(!((P & ~0x1ul) == ((0 && (P & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(P & ~0x1ul) == ((0 && (P & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 881, __FUNCTION__);
    pde.words[0] |= (P & 0x1ul) << 9;
    /* fail if user has passed bits that we will override */
    if(!((Domain & ~0xful) == ((0 && (Domain & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(Domain & ~0xful) == ((0 && (Domain & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 884, __FUNCTION__);
    pde.words[0] |= (Domain & 0xful) << 5;
    /* fail if user has passed bits that we will override */
    if(!((XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 887, __FUNCTION__);
    pde.words[0] |= (XN & 0x1ul) << 4;
    /* fail if user has passed bits that we will override */
    if(!((C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 890, __FUNCTION__);
    pde.words[0] |= (C & 0x1ul) << 3;
    /* fail if user has passed bits that we will override */
    if(!((B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 893, __FUNCTION__);
    pde.words[0] |= (B & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)pde_pde_section & ~0x3ul) == ((0 && ((uint32_t)pde_pde_section & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)pde_pde_section & ~0x3ul) == ((0 && ((uint32_t)pde_pde_section & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 896, __FUNCTION__);
    pde.words[0] |= ((uint32_t)pde_pde_section & 0x3ul) << 0;

    return pde;
}

static inline uint32_t __attribute__((__const__))
pde_pde_section_get_address(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_section)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_section",
                          "./arch/object/structures_gen.h"
# 905 "./arch/object/structures_gen.h"
    ,
                          906
# 905 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde.words[0] & 0xfff00000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pde_pde_section_ptr_get_address(pde_t *pde_ptr) {
    uint32_t ret;
    if(!(((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_section)) _assert_fail("((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_section",
                          "./arch/object/structures_gen.h"
# 919 "./arch/object/structures_gen.h"
    ,
                          920
# 919 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde_ptr->words[0] & 0xfff00000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pde_pde_section_get_size(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_section)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_section",
                          "./arch/object/structures_gen.h"
# 933 "./arch/object/structures_gen.h"
    ,
                          934
# 933 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde.words[0] & 0x40000ul) >> 18;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pde_pde_section_ptr_get_size(pde_t *pde_ptr) {
    uint32_t ret;
    if(!(((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_section)) _assert_fail("((pde_ptr->words[0] >> 0) & 0x3) == pde_pde_section",
                          "./arch/object/structures_gen.h"
# 947 "./arch/object/structures_gen.h"
    ,
                          948
# 947 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde_ptr->words[0] & 0x40000ul) >> 18;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pde_pde_section_get_AP(pde_t pde) {
    uint32_t ret;
    if(!(((pde.words[0] >> 0) & 0x3) == pde_pde_section)) _assert_fail("((pde.words[0] >> 0) & 0x3) == pde_pde_section",
                          "./arch/object/structures_gen.h"
# 961 "./arch/object/structures_gen.h"
    ,
                          962
# 961 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (pde.words[0] & 0xc00ul) >> 10;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

struct cap {
    uint32_t words[2];
};
typedef struct cap cap_t;

enum cap_tag {
    cap_null_cap = 0,
    cap_untyped_cap = 2,
    cap_endpoint_cap = 4,
    cap_async_endpoint_cap = 6,
    cap_reply_cap = 8,
    cap_cnode_cap = 10,
    cap_thread_cap = 12,
    cap_frame_cap = 1,
    cap_page_table_cap = 3,
    cap_page_directory_cap = 5,
    cap_irq_control_cap = 14,
    cap_irq_handler_cap = 30,
    cap_zombie_cap = 46,
    cap_domain_cap = 62
};
typedef enum cap_tag cap_tag_t;

static inline uint32_t __attribute__((__const__))
cap_get_capType(cap_t cap) {
    if ((cap.words[0] & 0xe) != 0xe)
        return (cap.words[0] >> 0) & 0xful;
    return (cap.words[0] >> 0) & 0xfful;
}

static inline int __attribute__((__const__))
cap_capType_equals(cap_t cap, uint32_t cap_type_tag) {
    if ((cap_type_tag & 0xe) != 0xe)
        return ((cap.words[0] >> 0) & 0xful) == cap_type_tag;
    return ((cap.words[0] >> 0) & 0xfful) == cap_type_tag;
}

static inline cap_t __attribute__((__const__))
cap_null_cap_new(void) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_null_cap & ~0xful) == ((0 && ((uint32_t)cap_null_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_null_cap & ~0xful) == ((0 && ((uint32_t)cap_null_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1017, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_null_cap & 0xful) << 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_untyped_cap_new(uint32_t capDeviceMemory, uint32_t capBlockSize, uint32_t capPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capDeviceMemory & ~0x1ul) == ((0 && (capDeviceMemory & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capDeviceMemory & ~0x1ul) == ((0 && (capDeviceMemory & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1031, __FUNCTION__);
    cap.words[1] |= (capDeviceMemory & 0x1ul) << 5;
    /* fail if user has passed bits that we will override */
    if(!((capBlockSize & ~0x1ful) == ((0 && (capBlockSize & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capBlockSize & ~0x1ful) == ((0 && (capBlockSize & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1034, __FUNCTION__);
    cap.words[1] |= (capBlockSize & 0x1ful) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capPtr & ~0xfffffff0ul) == ((0 && (capPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capPtr & ~0xfffffff0ul) == ((0 && (capPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1037, __FUNCTION__);
    cap.words[0] |= (capPtr & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_untyped_cap & ~0xful) == ((0 && ((uint32_t)cap_untyped_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_untyped_cap & ~0xful) == ((0 && ((uint32_t)cap_untyped_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1040, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_untyped_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capDeviceMemory(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 1049 "./arch/object/structures_gen.h"
    ,
                          1050
# 1049 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (cap.words[1] & 0x20ul) >> 5;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capBlockSize(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 1063 "./arch/object/structures_gen.h"
    ,
                          1064
# 1063 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (cap.words[1] & 0x1ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
cap_untyped_cap_ptr_get_capBlockSize(cap_t *cap_ptr) {
    uint32_t ret;
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 1077 "./arch/object/structures_gen.h"
    ,
                          1078
# 1077 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (cap_ptr->words[1] & 0x1ful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_untyped_cap_get_capPtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_untyped_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_untyped_cap",
                          "./arch/object/structures_gen.h"
# 1091 "./arch/object/structures_gen.h"
    ,
                          1092
# 1091 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                           ;

    ret = (cap.words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_new(uint32_t capEPBadge, uint32_t capCanGrant, uint32_t capCanSend, uint32_t capCanReceive, uint32_t capEPPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capEPBadge & ~0xffffffful) == ((0 && (capEPBadge & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capEPBadge & ~0xffffffful) == ((0 && (capEPBadge & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1110, __FUNCTION__);
    cap.words[0] |= (capEPBadge & 0xffffffful) << 4;
    /* fail if user has passed bits that we will override */
    if(!((capCanGrant & ~0x1ul) == ((0 && (capCanGrant & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCanGrant & ~0x1ul) == ((0 && (capCanGrant & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1113, __FUNCTION__);
    cap.words[1] |= (capCanGrant & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!((capCanSend & ~0x1ul) == ((0 && (capCanSend & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCanSend & ~0x1ul) == ((0 && (capCanSend & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1116, __FUNCTION__);
    cap.words[1] |= (capCanSend & 0x1ul) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capCanReceive & ~0x1ul) == ((0 && (capCanReceive & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCanReceive & ~0x1ul) == ((0 && (capCanReceive & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1119, __FUNCTION__);
    cap.words[1] |= (capCanReceive & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capEPPtr & ~0xfffffff0ul) == ((0 && (capEPPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capEPPtr & ~0xfffffff0ul) == ((0 && (capEPPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1122, __FUNCTION__);
    cap.words[1] |= (capEPPtr & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_endpoint_cap & ~0xful) == ((0 && ((uint32_t)cap_endpoint_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_endpoint_cap & ~0xful) == ((0 && ((uint32_t)cap_endpoint_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1125, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_endpoint_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capEPPtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1134 "./arch/object/structures_gen.h"
    ,
                           1135
# 1134 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    ret = (cap.words[1] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanGrant(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1148 "./arch/object/structures_gen.h"
    ,
                           1149
# 1148 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    ret = (cap.words[1] & 0x4ul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanGrant(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1161 "./arch/object/structures_gen.h"
    ,
                           1162
# 1161 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x4ul >> 2) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x4ul >> 2) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1164, __FUNCTION__);

    cap.words[1] &= ~0x4ul;
    cap.words[1] |= (v << 2) & 0x4ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanReceive(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1174 "./arch/object/structures_gen.h"
    ,
                           1175
# 1174 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    ret = (cap.words[1] & 0x2ul) >> 1;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanReceive(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1187 "./arch/object/structures_gen.h"
    ,
                           1188
# 1187 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x2ul >> 1) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x2ul >> 1) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1190, __FUNCTION__);

    cap.words[1] &= ~0x2ul;
    cap.words[1] |= (v << 1) & 0x2ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capCanSend(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1200 "./arch/object/structures_gen.h"
    ,
                           1201
# 1200 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    ret = (cap.words[1] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanSend(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1213 "./arch/object/structures_gen.h"
    ,
                           1214
# 1213 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x1ul >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x1ul >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1216, __FUNCTION__);

    cap.words[1] &= ~0x1ul;
    cap.words[1] |= (v << 0) & 0x1ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_endpoint_cap_get_capEPBadge(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1226 "./arch/object/structures_gen.h"
    ,
                           1227
# 1226 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;

    ret = (cap.words[0] & 0xfffffff0ul) >> 4;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capEPBadge(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_endpoint_cap",
                           "./arch/object/structures_gen.h"
# 1239 "./arch/object/structures_gen.h"
    ,
                           1240
# 1239 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                            ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0ul >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0ul >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1242, __FUNCTION__);

    cap.words[0] &= ~0xfffffff0ul;
    cap.words[0] |= (v << 4) & 0xfffffff0ul;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_new(uint32_t capAEPBadge, uint32_t capAEPCanReceive, uint32_t capAEPCanSend, uint32_t capAEPPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capAEPBadge & ~0xffffffful) == ((0 && (capAEPBadge & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAEPBadge & ~0xffffffful) == ((0 && (capAEPBadge & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1257, __FUNCTION__);
    cap.words[1] |= (capAEPBadge & 0xffffffful) << 4;
    /* fail if user has passed bits that we will override */
    if(!((capAEPCanReceive & ~0x1ul) == ((0 && (capAEPCanReceive & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAEPCanReceive & ~0x1ul) == ((0 && (capAEPCanReceive & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1260, __FUNCTION__);
    cap.words[1] |= (capAEPCanReceive & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((capAEPCanSend & ~0x1ul) == ((0 && (capAEPCanSend & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAEPCanSend & ~0x1ul) == ((0 && (capAEPCanSend & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1263, __FUNCTION__);
    cap.words[1] |= (capAEPCanSend & 0x1ul) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capAEPPtr & ~0xfffffff0ul) == ((0 && (capAEPPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capAEPPtr & ~0xfffffff0ul) == ((0 && (capAEPPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1266, __FUNCTION__);
    cap.words[0] |= (capAEPPtr & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_async_endpoint_cap & ~0xful) == ((0 && ((uint32_t)cap_async_endpoint_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_async_endpoint_cap & ~0xful) == ((0 && ((uint32_t)cap_async_endpoint_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1269, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_async_endpoint_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPBadge(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1278 "./arch/object/structures_gen.h"
    ,
                                 1279
# 1278 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    ret = (cap.words[1] & 0xfffffff0ul) >> 4;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPBadge(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1291 "./arch/object/structures_gen.h"
    ,
                                 1292
# 1291 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0ul >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0ul >> 4) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1294, __FUNCTION__);

    cap.words[1] &= ~0xfffffff0ul;
    cap.words[1] |= (v << 4) & 0xfffffff0ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPCanReceive(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1304 "./arch/object/structures_gen.h"
    ,
                                 1305
# 1304 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    ret = (cap.words[1] & 0x2ul) >> 1;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPCanReceive(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1317 "./arch/object/structures_gen.h"
    ,
                                 1318
# 1317 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x2ul >> 1) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x2ul >> 1) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1320, __FUNCTION__);

    cap.words[1] &= ~0x2ul;
    cap.words[1] |= (v << 1) & 0x2ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPCanSend(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1330 "./arch/object/structures_gen.h"
    ,
                                 1331
# 1330 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    ret = (cap.words[1] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_async_endpoint_cap_set_capAEPCanSend(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1343 "./arch/object/structures_gen.h"
    ,
                                 1344
# 1343 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x1ul >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x1ul >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1346, __FUNCTION__);

    cap.words[1] &= ~0x1ul;
    cap.words[1] |= (v << 0) & 0x1ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_async_endpoint_cap_get_capAEPPtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_async_endpoint_cap",
                                 "./arch/object/structures_gen.h"
# 1356 "./arch/object/structures_gen.h"
    ,
                                 1357
# 1356 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    ret = (cap.words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_reply_cap_new(uint32_t capCallerSlot, uint32_t capReplyMaster, uint32_t capTCBPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capCallerSlot & ~0xfffffff0ul) == ((0 && (capCallerSlot & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCallerSlot & ~0xfffffff0ul) == ((0 && (capCallerSlot & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1375, __FUNCTION__);
    cap.words[1] |= (capCallerSlot & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((capReplyMaster & ~0x1ul) == ((0 && (capReplyMaster & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capReplyMaster & ~0x1ul) == ((0 && (capReplyMaster & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1378, __FUNCTION__);
    cap.words[1] |= (capReplyMaster & 0x1ul) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capTCBPtr & ~0xffffffe0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capTCBPtr & ~0xffffffe0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1381, __FUNCTION__);
    cap.words[0] |= (capTCBPtr & 0xffffffe0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_reply_cap & ~0xful) == ((0 && ((uint32_t)cap_reply_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_reply_cap & ~0xful) == ((0 && ((uint32_t)cap_reply_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1384, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_reply_cap & 0xful) << 0;

    return cap;
}

static inline void
cap_reply_cap_ptr_new(cap_t *cap_ptr, uint32_t capCallerSlot, uint32_t capReplyMaster, uint32_t capTCBPtr) {
    cap_ptr->words[0] = 0;
    cap_ptr->words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capCallerSlot & ~0xfffffff0ul) == ((0 && (capCallerSlot & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCallerSlot & ~0xfffffff0ul) == ((0 && (capCallerSlot & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1396, __FUNCTION__);
    cap_ptr->words[1] |= (capCallerSlot & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((capReplyMaster & ~0x1ul) == ((0 && (capReplyMaster & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capReplyMaster & ~0x1ul) == ((0 && (capReplyMaster & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1399, __FUNCTION__);
    cap_ptr->words[1] |= (capReplyMaster & 0x1ul) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capTCBPtr & ~0xffffffe0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capTCBPtr & ~0xffffffe0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1402, __FUNCTION__);
    cap_ptr->words[0] |= (capTCBPtr & 0xffffffe0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_reply_cap & ~0xful) == ((0 && ((uint32_t)cap_reply_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_reply_cap & ~0xful) == ((0 && ((uint32_t)cap_reply_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1405, __FUNCTION__);
    cap_ptr->words[0] |= ((uint32_t)cap_reply_cap & 0xful) << 0;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capCallerSlot(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 1412 "./arch/object/structures_gen.h"
    ,
                        1413
# 1412 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
cap_reply_cap_ptr_set_capCallerSlot(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 1426 "./arch/object/structures_gen.h"
    ,
                        1427
# 1426 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffff0ul << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffff0ul << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1430, __FUNCTION__);

    cap_ptr->words[1] &= ~0xfffffff0ul;
    cap_ptr->words[1] |= (v >> 0) & 0xfffffff0ul;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capReplyMaster(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 1439 "./arch/object/structures_gen.h"
    ,
                        1440
# 1439 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_reply_cap_get_capTCBPtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_reply_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_reply_cap",
                        "./arch/object/structures_gen.h"
# 1453 "./arch/object/structures_gen.h"
    ,
                        1454
# 1453 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0xffffffe0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_new(uint32_t capCNodeRadix, uint32_t capCNodeGuardSize, uint32_t capCNodeGuard, uint32_t capCNodePtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capCNodeRadix & ~0x1ful) == ((0 && (capCNodeRadix & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCNodeRadix & ~0x1ful) == ((0 && (capCNodeRadix & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1472, __FUNCTION__);
    cap.words[1] |= (capCNodeRadix & 0x1ful) << 18;
    /* fail if user has passed bits that we will override */
    if(!((capCNodeGuardSize & ~0x1ful) == ((0 && (capCNodeGuardSize & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCNodeGuardSize & ~0x1ful) == ((0 && (capCNodeGuardSize & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1475, __FUNCTION__);
    cap.words[1] |= (capCNodeGuardSize & 0x1ful) << 23;
    /* fail if user has passed bits that we will override */
    if(!((capCNodeGuard & ~0x3fffful) == ((0 && (capCNodeGuard & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCNodeGuard & ~0x3fffful) == ((0 && (capCNodeGuard & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1478, __FUNCTION__);
    cap.words[1] |= (capCNodeGuard & 0x3fffful) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capCNodePtr & ~0xffffffe0ul) == ((0 && (capCNodePtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capCNodePtr & ~0xffffffe0ul) == ((0 && (capCNodePtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1481, __FUNCTION__);
    cap.words[0] |= (capCNodePtr & 0xffffffe0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_cnode_cap & ~0xful) == ((0 && ((uint32_t)cap_cnode_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_cnode_cap & ~0xful) == ((0 && ((uint32_t)cap_cnode_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1484, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_cnode_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeGuardSize(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 1493 "./arch/object/structures_gen.h"
    ,
                        1494
# 1493 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0xf800000ul) >> 23;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuardSize(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 1506 "./arch/object/structures_gen.h"
    ,
                        1507
# 1506 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xf800000ul >> 23) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xf800000ul >> 23) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1509, __FUNCTION__);

    cap.words[1] &= ~0xf800000ul;
    cap.words[1] |= (v << 23) & 0xf800000ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeRadix(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 1519 "./arch/object/structures_gen.h"
    ,
                        1520
# 1519 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0x7c0000ul) >> 18;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuard(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 1532 "./arch/object/structures_gen.h"
    ,
                        1533
# 1532 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x3fffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x3fffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1535, __FUNCTION__);

    cap.words[1] &= ~0x3fffful;
    cap.words[1] |= (v << 0) & 0x3fffful;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_cnode_cap_get_capCNodePtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_cnode_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_cnode_cap",
                        "./arch/object/structures_gen.h"
# 1545 "./arch/object/structures_gen.h"
    ,
                        1546
# 1545 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0xffffffe0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_thread_cap_new(uint32_t capTCBPtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capTCBPtr & ~0xfffffff0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capTCBPtr & ~0xfffffff0ul) == ((0 && (capTCBPtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1564, __FUNCTION__);
    cap.words[0] |= (capTCBPtr & 0xfffffff0ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_thread_cap & ~0xful) == ((0 && ((uint32_t)cap_thread_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_thread_cap & ~0xful) == ((0 && ((uint32_t)cap_thread_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1567, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_thread_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_thread_cap_get_capTCBPtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_thread_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_thread_cap",
                         "./arch/object/structures_gen.h"
# 1576 "./arch/object/structures_gen.h"
    ,
                         1577
# 1576 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (cap.words[0] & 0xfffffff0ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_new(uint32_t capFMappedObjectHigh, uint32_t capFMappedIndex, uint32_t capFSize, uint32_t capFVMRights, uint32_t capFMappedObjectLow, uint32_t capFBasePtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capFMappedObjectHigh & ~0xffffful) == ((0 && (capFMappedObjectHigh & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFMappedObjectHigh & ~0xffffful) == ((0 && (capFMappedObjectHigh & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1595, __FUNCTION__);
    cap.words[1] |= (capFMappedObjectHigh & 0xffffful) << 12;
    /* fail if user has passed bits that we will override */
    if(!((capFMappedIndex & ~0xffful) == ((0 && (capFMappedIndex & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFMappedIndex & ~0xffful) == ((0 && (capFMappedIndex & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1598, __FUNCTION__);
    cap.words[1] |= (capFMappedIndex & 0xffful) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capFSize & ~0x7ul) == ((0 && (capFSize & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFSize & ~0x7ul) == ((0 && (capFSize & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1601, __FUNCTION__);
    cap.words[0] |= (capFSize & 0x7ul) << 29;
    /* fail if user has passed bits that we will override */
    if(!((capFVMRights & ~0x3ul) == ((0 && (capFVMRights & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFVMRights & ~0x3ul) == ((0 && (capFVMRights & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1604, __FUNCTION__);
    cap.words[0] |= (capFVMRights & 0x3ul) << 27;
    /* fail if user has passed bits that we will override */
    if(!((capFMappedObjectLow & ~0x3ul) == ((0 && (capFMappedObjectLow & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFMappedObjectLow & ~0x3ul) == ((0 && (capFMappedObjectLow & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1607, __FUNCTION__);
    cap.words[0] |= (capFMappedObjectLow & 0x3ul) << 24;
    /* fail if user has passed bits that we will override */
    if(!((capFBasePtr & ~0xfffff000ul) == ((0 && (capFBasePtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capFBasePtr & ~0xfffff000ul) == ((0 && (capFBasePtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1610, __FUNCTION__);
    cap.words[0] |= (capFBasePtr & 0xfffff000ul) >> 8;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_frame_cap & ~0xful) == ((0 && ((uint32_t)cap_frame_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_frame_cap & ~0xful) == ((0 && ((uint32_t)cap_frame_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1613, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_frame_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObjectHigh(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1622 "./arch/object/structures_gen.h"
    ,
                        1623
# 1622 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0xfffff000ul) >> 12;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObjectHigh(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1635 "./arch/object/structures_gen.h"
    ,
                        1636
# 1635 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffff000ul >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffff000ul >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1638, __FUNCTION__);

    cap.words[1] &= ~0xfffff000ul;
    cap.words[1] |= (v << 12) & 0xfffff000ul;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedObjectHigh(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1648 "./arch/object/structures_gen.h"
    ,
                        1649
# 1648 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0xfffff000ul >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffff000ul >> 12) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1652, __FUNCTION__);

    cap_ptr->words[1] &= ~0xfffff000ul;
    cap_ptr->words[1] |= (v << 12) & 0xfffff000ul;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedIndex(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1661 "./arch/object/structures_gen.h"
    ,
                        1662
# 1661 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[1] & 0xffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedIndex(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1674 "./arch/object/structures_gen.h"
    ,
                        1675
# 1674 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1677, __FUNCTION__);

    cap.words[1] &= ~0xffful;
    cap.words[1] |= (v << 0) & 0xffful;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFSize(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1687 "./arch/object/structures_gen.h"
    ,
                        1688
# 1687 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0xe0000000ul) >> 29;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFVMRights(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1701 "./arch/object/structures_gen.h"
    ,
                        1702
# 1701 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0x18000000ul) >> 27;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFVMRights(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1714 "./arch/object/structures_gen.h"
    ,
                        1715
# 1714 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x18000000ul >> 27) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x18000000ul >> 27) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1717, __FUNCTION__);

    cap.words[0] &= ~0x18000000ul;
    cap.words[0] |= (v << 27) & 0x18000000ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObjectLow(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1727 "./arch/object/structures_gen.h"
    ,
                        1728
# 1727 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0x3000000ul) >> 24;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObjectLow(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1740 "./arch/object/structures_gen.h"
    ,
                        1741
# 1740 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;
    /* fail if user has passed bits that we will override */
    if(!(((~0x3000000ul >> 24) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x3000000ul >> 24) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1743, __FUNCTION__);

    cap.words[0] &= ~0x3000000ul;
    cap.words[0] |= (v << 24) & 0x3000000ul;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedObjectLow(cap_t *cap_ptr,
                                      uint32_t v) {
    if(!(((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap_ptr->words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1753 "./arch/object/structures_gen.h"
    ,
                        1754
# 1753 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    /* fail if user has passed bits that we will override */
    if(!(((~0x3000000ul >> 24) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0x3000000ul >> 24) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1757, __FUNCTION__);

    cap_ptr->words[0] &= ~0x3000000ul;
    cap_ptr->words[0] |= (v << 24) & 0x3000000ul;
}

static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFBasePtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_frame_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_frame_cap",
                        "./arch/object/structures_gen.h"
# 1766 "./arch/object/structures_gen.h"
    ,
                        1767
# 1766 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (cap.words[0] & 0xfffff0ul) << 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_new(uint32_t capPTMappedObject, uint32_t capPTMappedIndex, uint32_t capPTBasePtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capPTMappedObject & ~0xfffff000ul) == ((0 && (capPTMappedObject & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capPTMappedObject & ~0xfffff000ul) == ((0 && (capPTMappedObject & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1785, __FUNCTION__);
    cap.words[1] |= (capPTMappedObject & 0xfffff000ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((capPTMappedIndex & ~0xffful) == ((0 && (capPTMappedIndex & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capPTMappedIndex & ~0xffful) == ((0 && (capPTMappedIndex & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1788, __FUNCTION__);
    cap.words[1] |= (capPTMappedIndex & 0xffful) << 0;
    /* fail if user has passed bits that we will override */
    if(!((capPTBasePtr & ~0xfffffc00ul) == ((0 && (capPTBasePtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capPTBasePtr & ~0xfffffc00ul) == ((0 && (capPTBasePtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1791, __FUNCTION__);
    cap.words[0] |= (capPTBasePtr & 0xfffffc00ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_page_table_cap & ~0xful) == ((0 && ((uint32_t)cap_page_table_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_page_table_cap & ~0xful) == ((0 && ((uint32_t)cap_page_table_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1794, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_page_table_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedObject(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1803 "./arch/object/structures_gen.h"
    ,
                             1804
# 1803 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    ret = (cap.words[1] & 0xfffff000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_set_capPTMappedObject(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1816 "./arch/object/structures_gen.h"
    ,
                             1817
# 1816 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffff000ul << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffff000ul << 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1819, __FUNCTION__);

    cap.words[1] &= ~0xfffff000ul;
    cap.words[1] |= (v >> 0) & 0xfffff000ul;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedIndex(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1829 "./arch/object/structures_gen.h"
    ,
                             1830
# 1829 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    ret = (cap.words[1] & 0xffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_set_capPTMappedIndex(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1842 "./arch/object/structures_gen.h"
    ,
                             1843
# 1842 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1845, __FUNCTION__);

    cap.words[1] &= ~0xffful;
    cap.words[1] |= (v << 0) & 0xffful;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_page_table_cap_get_capPTBasePtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_table_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_table_cap",
                             "./arch/object/structures_gen.h"
# 1855 "./arch/object/structures_gen.h"
    ,
                             1856
# 1855 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                              ;

    ret = (cap.words[0] & 0xfffffc00ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_directory_cap_new(uint32_t capPDBasePtr) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capPDBasePtr & ~0xffffc000ul) == ((0 && (capPDBasePtr & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capPDBasePtr & ~0xffffc000ul) == ((0 && (capPDBasePtr & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1874, __FUNCTION__);
    cap.words[0] |= (capPDBasePtr & 0xffffc000ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_page_directory_cap & ~0xful) == ((0 && ((uint32_t)cap_page_directory_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_page_directory_cap & ~0xful) == ((0 && ((uint32_t)cap_page_directory_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1877, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_page_directory_cap & 0xful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_page_directory_cap_get_capPDBasePtr(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap)) _assert_fail("((cap.words[0] >> 0) & 0xf) == cap_page_directory_cap",
                                 "./arch/object/structures_gen.h"
# 1886 "./arch/object/structures_gen.h"
    ,
                                 1887
# 1886 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                  ;

    ret = (cap.words[0] & 0xffffc000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_irq_control_cap_new(void) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_irq_control_cap & ~0xfful) == ((0 && ((uint32_t)cap_irq_control_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_irq_control_cap & ~0xfful) == ((0 && ((uint32_t)cap_irq_control_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1905, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_irq_control_cap & 0xfful) << 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_irq_handler_cap_new(uint32_t capIRQ) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((capIRQ & ~0xfful) == ((0 && (capIRQ & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capIRQ & ~0xfful) == ((0 && (capIRQ & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1919, __FUNCTION__);
    cap.words[1] |= (capIRQ & 0xfful) << 0;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_irq_handler_cap & ~0xfful) == ((0 && ((uint32_t)cap_irq_handler_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_irq_handler_cap & ~0xfful) == ((0 && ((uint32_t)cap_irq_handler_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1922, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_irq_handler_cap & 0xfful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_irq_handler_cap_get_capIRQ(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_irq_handler_cap",
                              "./arch/object/structures_gen.h"
# 1931 "./arch/object/structures_gen.h"
    ,
                              1932
# 1931 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                               ;

    ret = (cap.words[1] & 0xfful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_new(uint32_t capZombieID, uint32_t capZombieType) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

       cap.words[1] |= capZombieID << 0;
    /* fail if user has passed bits that we will override */
    if(!((capZombieType & ~0x3ful) == ((0 && (capZombieType & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(capZombieType & ~0x3ful) == ((0 && (capZombieType & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1951, __FUNCTION__);
    cap.words[0] |= (capZombieType & 0x3ful) << 8;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_zombie_cap & ~0xfful) == ((0 && ((uint32_t)cap_zombie_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_zombie_cap & ~0xfful) == ((0 && ((uint32_t)cap_zombie_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1954, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_zombie_cap & 0xfful) << 0;

    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieID(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1963 "./arch/object/structures_gen.h"
    ,
                         1964
# 1963 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (cap.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_set_capZombieID(cap_t cap, uint32_t v) {
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1976 "./arch/object/structures_gen.h"
    ,
                         1977
# 1976 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;
    /* fail if user has passed bits that we will override */
    if(!(((~0xfffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0))) _assert_fail("((~0xfffffffful >> 0) & v) == ((0 && (v & (1ul << (31)))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 1979, __FUNCTION__);

    cap.words[1] &= ~0xfffffffful;
    cap.words[1] |= (v << 0) & 0xfffffffful;
    return cap;
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieType(cap_t cap) {
    uint32_t ret;
    if(!(((cap.words[0] >> 0) & 0xff) == cap_zombie_cap)) _assert_fail("((cap.words[0] >> 0) & 0xff) == cap_zombie_cap",
                         "./arch/object/structures_gen.h"
# 1989 "./arch/object/structures_gen.h"
    ,
                         1990
# 1989 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                          ;

    ret = (cap.words[0] & 0x3f00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_domain_cap_new(void) {
    cap_t cap;

    cap.words[0] = 0;
    cap.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)cap_domain_cap & ~0xfful) == ((0 && ((uint32_t)cap_domain_cap & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)cap_domain_cap & ~0xfful) == ((0 && ((uint32_t)cap_domain_cap & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2008, __FUNCTION__);
    cap.words[0] |= ((uint32_t)cap_domain_cap & 0xfful) << 0;

    return cap;
}

struct pte {
    uint32_t words[1];
};
typedef struct pte pte_t;

enum pte_tag {
    pte_pte_large = 0,
    pte_pte_small = 1
};
typedef enum pte_tag pte_tag_t;

static inline uint32_t __attribute__((__const__))
pte_get_pteSize(pte_t pte) {
    return (pte.words[0] >> 1) & 0x1ul;
}

static inline uint32_t __attribute__((__pure__))
pte_ptr_get_pteSize(pte_t *pte_ptr) {
    return (pte_ptr->words[0] >> 1) & 0x1ul;
}

static inline pte_t __attribute__((__const__))
pte_pte_large_new(uint32_t address, uint32_t XN, uint32_t TEX, uint32_t nG, uint32_t S, uint32_t APX, uint32_t AP, uint32_t C, uint32_t B, uint32_t reserved) {
    pte_t pte;

    pte.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((address & ~0xffff0000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(address & ~0xffff0000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2042, __FUNCTION__);
    pte.words[0] |= (address & 0xffff0000ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2045, __FUNCTION__);
    pte.words[0] |= (XN & 0x1ul) << 15;
    /* fail if user has passed bits that we will override */
    if(!((TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2048, __FUNCTION__);
    pte.words[0] |= (TEX & 0x7ul) << 12;
    /* fail if user has passed bits that we will override */
    if(!((nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2051, __FUNCTION__);
    pte.words[0] |= (nG & 0x1ul) << 11;
    /* fail if user has passed bits that we will override */
    if(!((S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2054, __FUNCTION__);
    pte.words[0] |= (S & 0x1ul) << 10;
    /* fail if user has passed bits that we will override */
    if(!((APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2057, __FUNCTION__);
    pte.words[0] |= (APX & 0x1ul) << 9;
    /* fail if user has passed bits that we will override */
    if(!((AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2060, __FUNCTION__);
    pte.words[0] |= (AP & 0x3ul) << 4;
    /* fail if user has passed bits that we will override */
    if(!((C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2063, __FUNCTION__);
    pte.words[0] |= (C & 0x1ul) << 3;
    /* fail if user has passed bits that we will override */
    if(!((B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2066, __FUNCTION__);
    pte.words[0] |= (B & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)pte_pte_large & ~0x1ul) == ((0 && ((uint32_t)pte_pte_large & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)pte_pte_large & ~0x1ul) == ((0 && ((uint32_t)pte_pte_large & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2069, __FUNCTION__);
    pte.words[0] |= ((uint32_t)pte_pte_large & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((reserved & ~0x1ul) == ((0 && (reserved & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(reserved & ~0x1ul) == ((0 && (reserved & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2072, __FUNCTION__);
    pte.words[0] |= (reserved & 0x1ul) << 0;

    return pte;
}

static inline uint32_t __attribute__((__const__))
pte_pte_large_get_address(pte_t pte) {
    uint32_t ret;
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 2081 "./arch/object/structures_gen.h"
    ,
                        2082
# 2081 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte.words[0] & 0xffff0000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pte_pte_large_ptr_get_address(pte_t *pte_ptr) {
    uint32_t ret;
    if(!(((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 2095 "./arch/object/structures_gen.h"
    ,
                        2096
# 2095 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte_ptr->words[0] & 0xffff0000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pte_pte_large_get_AP(pte_t pte) {
    uint32_t ret;
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 2109 "./arch/object/structures_gen.h"
    ,
                        2110
# 2109 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte.words[0] & 0x30ul) >> 4;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pte_pte_large_get_reserved(pte_t pte) {
    uint32_t ret;
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 2123 "./arch/object/structures_gen.h"
    ,
                        2124
# 2123 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte.words[0] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pte_pte_large_ptr_get_reserved(pte_t *pte_ptr) {
    uint32_t ret;
    if(!(((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large)) _assert_fail("((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_large",
                        "./arch/object/structures_gen.h"
# 2137 "./arch/object/structures_gen.h"
    ,
                        2138
# 2137 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte_ptr->words[0] & 0x1ul) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline pte_t __attribute__((__const__))
pte_pte_small_new(uint32_t address, uint32_t nG, uint32_t S, uint32_t APX, uint32_t TEX, uint32_t AP, uint32_t C, uint32_t B, uint32_t XN) {
    pte_t pte;

    pte.words[0] = 0;

    /* fail if user has passed bits that we will override */
    if(!((address & ~0xfffff000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(address & ~0xfffff000ul) == ((0 && (address & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2155, __FUNCTION__);
    pte.words[0] |= (address & 0xfffff000ul) >> 0;
    /* fail if user has passed bits that we will override */
    if(!((nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(nG & ~0x1ul) == ((0 && (nG & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2158, __FUNCTION__);
    pte.words[0] |= (nG & 0x1ul) << 11;
    /* fail if user has passed bits that we will override */
    if(!((S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(S & ~0x1ul) == ((0 && (S & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2161, __FUNCTION__);
    pte.words[0] |= (S & 0x1ul) << 10;
    /* fail if user has passed bits that we will override */
    if(!((APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(APX & ~0x1ul) == ((0 && (APX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2164, __FUNCTION__);
    pte.words[0] |= (APX & 0x1ul) << 9;
    /* fail if user has passed bits that we will override */
    if(!((TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(TEX & ~0x7ul) == ((0 && (TEX & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2167, __FUNCTION__);
    pte.words[0] |= (TEX & 0x7ul) << 6;
    /* fail if user has passed bits that we will override */
    if(!((AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(AP & ~0x3ul) == ((0 && (AP & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2170, __FUNCTION__);
    pte.words[0] |= (AP & 0x3ul) << 4;
    /* fail if user has passed bits that we will override */
    if(!((C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(C & ~0x1ul) == ((0 && (C & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2173, __FUNCTION__);
    pte.words[0] |= (C & 0x1ul) << 3;
    /* fail if user has passed bits that we will override */
    if(!((B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(B & ~0x1ul) == ((0 && (B & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2176, __FUNCTION__);
    pte.words[0] |= (B & 0x1ul) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)pte_pte_small & ~0x1ul) == ((0 && ((uint32_t)pte_pte_small & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)pte_pte_small & ~0x1ul) == ((0 && ((uint32_t)pte_pte_small & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2179, __FUNCTION__);
    pte.words[0] |= ((uint32_t)pte_pte_small & 0x1ul) << 1;
    /* fail if user has passed bits that we will override */
    if(!((XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(XN & ~0x1ul) == ((0 && (XN & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2182, __FUNCTION__);
    pte.words[0] |= (XN & 0x1ul) << 0;

    return pte;
}

static inline uint32_t __attribute__((__const__))
pte_pte_small_get_address(pte_t pte) {
    uint32_t ret;
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_small)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_small",
                        "./arch/object/structures_gen.h"
# 2191 "./arch/object/structures_gen.h"
    ,
                        2192
# 2191 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte.words[0] & 0xfffff000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__pure__))
pte_pte_small_ptr_get_address(pte_t *pte_ptr) {
    uint32_t ret;
    if(!(((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_small)) _assert_fail("((pte_ptr->words[0] >> 1) & 0x1) == pte_pte_small",
                        "./arch/object/structures_gen.h"
# 2205 "./arch/object/structures_gen.h"
    ,
                        2206
# 2205 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte_ptr->words[0] & 0xfffff000ul) << 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
pte_pte_small_get_AP(pte_t pte) {
    uint32_t ret;
    if(!(((pte.words[0] >> 1) & 0x1) == pte_pte_small)) _assert_fail("((pte.words[0] >> 1) & 0x1) == pte_pte_small",
                        "./arch/object/structures_gen.h"
# 2219 "./arch/object/structures_gen.h"
    ,
                        2220
# 2219 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                         ;

    ret = (pte.words[0] & 0x30ul) >> 4;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

struct lookup_fault {
    uint32_t words[2];
};
typedef struct lookup_fault lookup_fault_t;

enum lookup_fault_tag {
    lookup_fault_invalid_root = 0,
    lookup_fault_missing_capability = 1,
    lookup_fault_depth_mismatch = 2,
    lookup_fault_guard_mismatch = 3
};
typedef enum lookup_fault_tag lookup_fault_tag_t;

static inline uint32_t __attribute__((__const__))
lookup_fault_get_lufType(lookup_fault_t lookup_fault) {
    return (lookup_fault.words[0] >> 0) & 0x3ul;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_invalid_root_new(void) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_invalid_root & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_invalid_root & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)lookup_fault_invalid_root & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_invalid_root & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2256, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_invalid_root & 0x3ul) << 0;

    return lookup_fault;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_missing_capability_new(uint32_t bitsLeft) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2270, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3ful) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_missing_capability & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_missing_capability & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)lookup_fault_missing_capability & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_missing_capability & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2273, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_missing_capability & 0x3ul) << 0;

    return lookup_fault;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_missing_capability_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_missing_capability)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_missing_capability",
                                          "./arch/object/structures_gen.h"
# 2282 "./arch/object/structures_gen.h"
    ,
                                          2283
# 2282 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                           ;

    ret = (lookup_fault.words[0] & 0xfcul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_depth_mismatch_new(uint32_t bitsFound, uint32_t bitsLeft) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

    /* fail if user has passed bits that we will override */
    if(!((bitsFound & ~0x3ful) == ((0 && (bitsFound & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(bitsFound & ~0x3ful) == ((0 && (bitsFound & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2301, __FUNCTION__);
    lookup_fault.words[0] |= (bitsFound & 0x3ful) << 8;
    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2304, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3ful) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_depth_mismatch & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_depth_mismatch & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)lookup_fault_depth_mismatch & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_depth_mismatch & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2307, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_depth_mismatch & 0x3ul) << 0;

    return lookup_fault;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_depth_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch",
                                      "./arch/object/structures_gen.h"
# 2316 "./arch/object/structures_gen.h"
    ,
                                      2317
# 2316 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                       ;

    ret = (lookup_fault.words[0] & 0x3f00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_depth_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch",
                                      "./arch/object/structures_gen.h"
# 2330 "./arch/object/structures_gen.h"
    ,
                                      2331
# 2330 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                       ;

    ret = (lookup_fault.words[0] & 0xfcul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_guard_mismatch_new(uint32_t guardFound, uint32_t bitsLeft, uint32_t bitsFound) {
    lookup_fault_t lookup_fault;

    lookup_fault.words[0] = 0;
    lookup_fault.words[1] = 0;

       lookup_fault.words[1] |= guardFound << 0;
    /* fail if user has passed bits that we will override */
    if(!((bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(bitsLeft & ~0x3ful) == ((0 && (bitsLeft & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2350, __FUNCTION__);
    lookup_fault.words[0] |= (bitsLeft & 0x3ful) << 8;
    /* fail if user has passed bits that we will override */
    if(!((bitsFound & ~0x3ful) == ((0 && (bitsFound & (1ul << 31))) ? 0x0 : 0))) _assert_fail("(bitsFound & ~0x3ful) == ((0 && (bitsFound & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2353, __FUNCTION__);
    lookup_fault.words[0] |= (bitsFound & 0x3ful) << 2;
    /* fail if user has passed bits that we will override */
    if(!(((uint32_t)lookup_fault_guard_mismatch & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_guard_mismatch & (1ul << 31))) ? 0x0 : 0))) _assert_fail("((uint32_t)lookup_fault_guard_mismatch & ~0x3ul) == ((0 && ((uint32_t)lookup_fault_guard_mismatch & (1ul << 31))) ? 0x0 : 0)", "./arch/object/structures_gen.h", 2356, __FUNCTION__);
    lookup_fault.words[0] |= ((uint32_t)lookup_fault_guard_mismatch & 0x3ul) << 0;

    return lookup_fault;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_guardFound(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch",
                                      "./arch/object/structures_gen.h"
# 2365 "./arch/object/structures_gen.h"
    ,
                                      2366
# 2365 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                       ;

    ret = (lookup_fault.words[1] & 0xfffffffful) >> 0;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch",
                                      "./arch/object/structures_gen.h"
# 2379 "./arch/object/structures_gen.h"
    ,
                                      2380
# 2379 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                       ;

    ret = (lookup_fault.words[0] & 0x3f00ul) >> 8;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint32_t ret;
    if(!(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch)) _assert_fail("((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch",
                                      "./arch/object/structures_gen.h"
# 2393 "./arch/object/structures_gen.h"
    ,
                                      2394
# 2393 "./arch/object/structures_gen.h"
    , __FUNCTION__)
                                       ;

    ret = (lookup_fault.words[0] & 0xfcul) >> 2;
    /* Possibly sign extend */
    if (0 && (ret & (1ul << (31)))) {
        ret |= 0x0;
    }
    return ret;
}
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 2

enum irq_state {
    IRQInactive = 0,
    IRQNotifyAEP = 1,
    IRQTimer = 2,
    IRQReserved = 3,
};
typedef uint32_t irq_state_t;

typedef struct dschedule {
    dom_t domain;
    uint32_t length;
} dschedule_t;

/* Arch-independent object types */

enum endpoint_state {
    EPState_Idle = 0,
    EPState_Send = 1,
    EPState_Recv = 2
};
typedef uint32_t endpoint_state_t;





enum async_endpoint_state {
    AEPState_Idle = 0,
    AEPState_Waiting = 1,
    AEPState_Active = 2
};
typedef uint32_t async_endpoint_state_t;

/* Declare object casts. As the sizes of objects may
 * differ by architecture, they are declared in the
 * arch structures.h
 */
# 72 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h"
/* Generate a tcb_t or cte_t pointer from a tcb block reference */




/* Generate a cte_t pointer from a tcb_t pointer */
# 88 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h"
static inline cap_t __attribute__((__const__))
Zombie_new(uint32_t number, uint32_t type, uint32_t ptr)
{
    uint32_t mask;

    if (type == (1ul<<(5))) {
        mask = ((1ul<<(4 + 1))-1ul);
    } else {
        mask = ((1ul<<(type + 1))-1ul);
    }

    return cap_zombie_cap_new((ptr & ~mask) | (number & mask), type);
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieBits(cap_t cap)
{
    uint32_t type = cap_zombie_cap_get_capZombieType(cap);
    if (type == (1ul<<(5))) {
        return 4;
    }
    return ((type) & ((1ul<<(5))-1ul)); /* cnode radix */
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombieNumber(cap_t cap)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ((1ul<<(radix + 1))-1ul);
}

static inline uint32_t __attribute__((__const__))
cap_zombie_cap_get_capZombiePtr(cap_t cap)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ~((1ul<<(radix + 1))-1ul);
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_set_capZombieNumber(cap_t cap, uint32_t n)
{
    uint32_t radix = cap_zombie_cap_get_capZombieBits(cap);
    uint32_t ptr = cap_zombie_cap_get_capZombieID(cap) & ~((1ul<<(radix + 1))-1ul);
    return cap_zombie_cap_set_capZombieID(cap, ptr | (n & ((1ul<<(radix + 1))-1ul)));
}

/* Capability table entry (CTE) */
struct cte {
    cap_t cap;
    mdb_node_t cteMDBNode;
};
typedef struct cte cte_t;



/* Thread state */
enum _thread_state {
    ThreadState_Inactive = 0,
    ThreadState_Running,
    ThreadState_Restart,
    ThreadState_BlockedOnReceive,
    ThreadState_BlockedOnSend,
    ThreadState_BlockedOnReply,
    ThreadState_BlockedOnAsyncEvent,
    ThreadState_RunningVM,
    ThreadState_IdleThreadState
};
typedef uint32_t _thread_state_t;

/* A TCB CNode and a TCB are always allocated together, and adjacently,
 *  * such that they fill a 1024-byte aligned block. The CNode comes first. */
enum tcb_cnode_index {
    /* CSpace root, 16 bytes */
    tcbCTable = 0,

    /* VSpace root, 16 bytes */
    tcbVTable = 1,

    /* Reply cap slot, 16 bytes */
    tcbReply = 2,

    /* TCB of most recent IPC sender, 16 bytes */
    tcbCaller = 3,

    /* IPC buffer cap slot, 16 bytes */
    tcbBuffer = 4,

    tcbCNodeEntries
};
typedef uint32_t tcb_cnode_index_t;



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h"
/* The stack is the very last page of virtual memory. */

/*
 * We reserve 16 bytes at the end of the stack - perhaps we could store some
 * useful data here? Also, if we didn't subtract 16 off, the default initial sp
 * is 0x0, which is perfectly valid and would wrap correctly, but let's not
 * test the boundary cases here.
 */
# 47 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h"
/* Processor ID used to check if errata work arounds need to be performed */


/* Control register fields */
# 68 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h"
/* Processor mode encodings (for CPS etc.) */







/* Processor exception mask bits */




/* VM event types, this should match the encoding of vm_fault_type below */





# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 88 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 2

enum vm_fault_type {
    ARMDataAbort = 0,
    ARMPrefetchAbort = 1
};
typedef uint32_t vm_fault_type_t;

enum vm_page_size {
    ARMSmallPage,
    ARMLargePage,
    ARMSection,
    ARMSuperSection
};
typedef uint32_t vm_page_size_t;

enum frameSizeConstants {
    ARMSmallPageBits = 12,
    ARMLargePageBits = 16,
    ARMSectionBits = 20,
    ARMSuperSectionBits = 24
};

static inline unsigned int __attribute__((__const__))
pageBitsForSize(vm_page_size_t pagesize)
{
    switch (pagesize) {
    case ARMSmallPage:
        return ARMSmallPageBits;

    case ARMLargePage:
        return ARMLargePageBits;

    case ARMSection:
        return ARMSectionBits;

    case ARMSuperSection:
        return ARMSuperSectionBits;

    default:
        _fail("Invalid page size", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h", 127, __func__);
    }
}
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 2

/*
 * We cannot allow async aborts in the verified kernel, but
 * they are useful in identifying invalid memory access bugs
 * so we enable them in debug mode.
 */
# 40 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h"
/* Offsets within the user context, these need to match the order in
 * register_t below */





# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 48 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 49 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 50 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 2

/* These are the indices of the registers in the
 * saved thread context.  The values are determined
 * by the order in which they're saved in the trap
 * handler. */
enum _register {
    R0 = 0,
    capRegister = 0,
    badgeRegister = 0,

    R1 = 1,
    msgInfoRegister = 1,

    R2 = 2,
    R3 = 3,
    R4 = 4,
    R5 = 5,
    R6 = 6,
    R7 = 7,
    R8 = 8,
    R9 = 9,
    R10 = 10,
    R11 = 11,
    R12 = 12,

    R13 = 13,
    SP = 13,

    R14 = 14,
    LR = 14,

    /* End of GP registers, the following are additional kernel-saved state. */

    LR_svc = 15,
    CPSR = 16,

    FaultInstruction = 17,
    n_contextRegisters = 18,
};

typedef uint32_t register_t;

enum messageSizes {
    n_msgRegisters = 4,
    n_frameRegisters = 10,
    n_gpRegisters = 7,
    n_exceptionMessage = 3,
    n_syscallMessage = 12,
};

extern const register_t msgRegisters[] __attribute__((externally_visible));
extern const register_t frameRegisters[] __attribute__((externally_visible));
extern const register_t gpRegisters[] __attribute__((externally_visible));
extern const register_t exceptionMessage[] __attribute__((externally_visible));
extern const register_t syscallMessage[] __attribute__((externally_visible));

/* ARM user-code context: size = 72 bytes */
struct user_context {
    word_t registers[n_contextRegisters];
};
typedef struct user_context user_context_t;

static inline void Arch_initContext(user_context_t* context)
{
    context->registers[CPSR] = ( (1 << 6) | 0x10 | 0 );
}

static inline word_t __attribute__((__const__))
sanitiseRegister(register_t reg, word_t v)
{
    if (reg == CPSR) {
        return (v & 0xf8000000) | ( (1 << 6) | 0x10 | 0 );
    } else {
        return v;
    }
}
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 2

/* Object sizes */





enum tcb_arch_cnode_index {
    tcbArchCNodeEntries = tcbCNodeEntries
};

typedef struct arch_tcb {
    /* saved user-level context of thread (72 bytes) */
    user_context_t tcbContext;
} arch_tcb_t;

enum vm_rights {
    VMNoAccess = 0,
    VMKernelOnly = 1,
    VMReadOnly = 2,
    VMReadWrite = 3
};
typedef uint32_t vm_rights_t;
# 56 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h"
/* Page directory entries (PDEs) */
enum pde_type {
    PDEInvalid = 0,
    PDECoarse = 1,
    PDEMapping = 2
};
typedef uint32_t pde_type_t;
# 75 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h"
struct user_data {
    word_t words[(1ul<<(ARMSmallPageBits)) / sizeof(word_t)];
};

typedef struct user_data user_data_t;






static inline uint32_t __attribute__((__const__))
cap_frame_cap_get_capFMappedObject(cap_t cap)
{
    return (cap_frame_cap_get_capFMappedObjectHigh(cap) << 12) + (cap_frame_cap_get_capFMappedObjectLow(cap) << 10);
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedObject(cap_t cap, uint32_t val)
{
    cap = cap_frame_cap_set_capFMappedObjectHigh(cap, ((uint32_t)(val) >> 12));
    return cap_frame_cap_set_capFMappedObjectLow(cap, ( ((uint32_t)(val) >> 10) & ((1ul<<(2))-1ul)));
}

static inline void
cap_frame_cap_ptr_set_capFMappedObject(cap_t *cap, uint32_t val)
{
    cap_frame_cap_ptr_set_capFMappedObjectHigh(cap, ((uint32_t)(val) >> 12));
    cap_frame_cap_ptr_set_capFMappedObjectLow(cap, ( ((uint32_t)(val) >> 10) & ((1ul<<(2))-1ul)));
}

static inline unsigned int __attribute__((__const__))
cap_get_archCapSizeBits(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_frame_cap:
        return pageBitsForSize(cap_frame_cap_get_capFSize(cap));

    case cap_page_table_cap:
        return (8 +2);

    case cap_page_directory_cap:
        return (12 +2);

        return 0;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h", 126, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline void * __attribute__((__const__))
cap_get_archCapPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_frame_cap:
        return (void *)(cap_frame_cap_get_capFBasePtr(cap));

    case cap_page_table_cap:
        return ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap)));

    case cap_page_directory_cap:
        return ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));

        return ((void *)0);

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h", 153, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return ((void *)0);
    }
}

/* We need to supply different type getters for the bitfield generated PTE type
 * because there is an implicit third type that PTEs can be. If the type bit is
 * set but the reserved bit is not set, the type of the PTE is invalid, not a
 * large PTE.
 */
enum { pte_pte_invalid = 2 };

static inline uint32_t __attribute__((__const__))
pte_get_pteType(pte_t pte)
{
    if (pte_get_pteSize(pte) == pte_pte_small) {
        return pte_pte_small;
    } else if (pte_pte_large_get_reserved(pte) == 1) {
        return pte_pte_large;
    } else {
        return pte_pte_invalid;
    }
}

static inline uint32_t __attribute__((__pure__))
pte_ptr_get_pteType(pte_t *pte_ptr)
{
    if (pte_ptr_get_pteSize(pte_ptr) == pte_pte_small) {
        return pte_pte_small;
    } else if (pte_pte_large_ptr_get_reserved(pte_ptr) == 1) {
        return pte_pte_large;
    } else {
        return pte_pte_invalid;
    }
}
# 182 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 2

static inline word_t __attribute__((__const__))
wordFromVMRights(vm_rights_t vm_rights)
{
    return (word_t)vm_rights;
}

static inline vm_rights_t __attribute__((__const__))
vmRightsFromWord(word_t w)
{
    return (vm_rights_t)w;
}

static inline vm_attributes_t __attribute__((__const__))
vmAttributesFromWord(word_t w)
{
    vm_attributes_t attr;

    attr.words[0] = w;
    return attr;
}

/* Ensure object sizes are sane */
typedef int __assert_failed_cte_size_sane[(sizeof(cte_t) <= (1 << 4)) ? 1 : -1];
typedef int __assert_failed_ep_size_sane[(sizeof(endpoint_t) <= (1 << 4)) ? 1 : -1];
typedef int __assert_failed_aep_size_sane[(sizeof(async_endpoint_t) <= (1 << 4)) ? 1 : -1];

static inline word_t mdb_node_get_cdtLeft(mdb_node_t mdb)
{
    word_t cte = mdb_node_get_cdtLeft_(mdb) << 2;
    return cte == 0 ? 0 : cte | 0xE0000000;
}

static inline word_t mdb_node_get_cdtRight(mdb_node_t mdb)
{
    word_t cte = mdb_node_get_cdtRight_(mdb) << 2;
    return cte == 0 ? 0 : cte | 0xE0000000;
}

static inline void mdb_node_ptr_set_cdtLeft(mdb_node_t *mdb, word_t cte)
{
    if(!((cte & ((1ul<<(2))-1ul)) == 0)) _assert_fail("(cte & MASK(2)) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h", 223, __FUNCTION__);
    mdb_node_ptr_set_cdtLeft_(mdb, (cte & 0x1FFFFFFF) >> 2);
}

static inline void mdb_node_ptr_set_cdtRight(mdb_node_t *mdb, word_t cte)
{
    if(!((cte & ((1ul<<(2))-1ul)) == 0)) _assert_fail("(cte & MASK(2)) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h", 229, __FUNCTION__);
    mdb_node_ptr_set_cdtRight_(mdb, (cte & 0x1FFFFFFF) >> 2);
}

/* TCB: size 64 bytes + sizeof(arch_tcb_t) (aligned to nearest power of 2) */
struct tcb {
    /* arch specific tcb state (including context)*/
    arch_tcb_t tcbArch;

    /* Thread state, 12 bytes */
    thread_state_t tcbState;

    /* Bound AEP 4 bytes */
    async_endpoint_t *boundAsyncEndpoint;

    /* Current fault, 8 bytes */
    fault_t tcbFault;

    /* Current lookup failure, 8 bytes */
    lookup_fault_t tcbLookupFailure;

    /* Domain, 1 byte (packed to 4) */
    uint32_t tcbDomain;

    /* Priority, 1 byte (packed to 4) */
    uint32_t tcbPriority;

    /* Timeslice remaining, 4 bytes */
    word_t tcbTimeSlice;

    /* Capability pointer to thread fault handler, 4 bytes */
    cptr_t tcbFaultHandler;

    /* userland virtual address of thread IPC buffer, 4 bytes */
    word_t tcbIPCBuffer;

    /* Previous and next pointers for endpoint & scheduler queues, 16 bytes */
    struct tcb* tcbSchedNext;
    struct tcb* tcbSchedPrev;
    struct tcb* tcbEPNext;
    struct tcb* tcbEPPrev;


    /* Use any remaining space for a thread name */
    char tcbName[];

};
typedef struct tcb tcb_t;

/* Ensure TCB size is sane. */
typedef int __assert_failed_tcb_size_sane[((1 << (4 + 4)) + sizeof(tcb_t) <= (1 << ((4 + 4)+1))) ? 1 : -1];



/* helper functions */

static inline word_t __attribute__((__const__))
isArchCap(cap_t cap)
{
    return (cap_get_capType(cap) % 2);
}

static inline unsigned int __attribute__((__const__))
cap_get_capSizeBits(cap_t cap)
{

    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return cap_untyped_cap_get_capBlockSize(cap);

    case cap_endpoint_cap:
        return 4;

    case cap_async_endpoint_cap:
        return 4;

    case cap_cnode_cap:
        return cap_cnode_cap_get_capCNodeRadix(cap) + 4;

    case cap_thread_cap:
        return ((4 + 4)+1);

    case cap_zombie_cap: {
        uint32_t type = cap_zombie_cap_get_capZombieType(cap);
        if (type == (1ul<<(5))) {
            return ((4 + 4)+1);
        }
        return ((type) & ((1ul<<(5))-1ul)) + 4;
    }

    case cap_null_cap:
        return 0;

    case cap_domain_cap:
        return 0;

    case cap_reply_cap:
        return 0;

    case cap_irq_control_cap:
        return 0;

    case cap_irq_handler_cap:
        return 0;

    default:
        return cap_get_archCapSizeBits(cap);
    }

}

static inline void * __attribute__((__const__))
cap_get_capPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return ((word_t *)(cap_untyped_cap_get_capPtr(cap)));

    case cap_endpoint_cap:
        return ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));

    case cap_async_endpoint_cap:
        return ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));

    case cap_cnode_cap:
        return ((cte_t *)(cap_cnode_cap_get_capCNodePtr(cap)));

    case cap_thread_cap:
        return (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4)+1)))-1ul)))+(0));

    case cap_zombie_cap:
        return ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap)));

    case cap_domain_cap:
        return ((void *)0);

    case cap_reply_cap:
        return ((void *)0);

    case cap_irq_control_cap:
        return ((void *)0);

    case cap_irq_handler_cap:
        return ((void *)0);
    default:
        return cap_get_archCapPtr(cap);

    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capBadge(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        return cap_endpoint_cap_get_capEPBadge(cap);
    case cap_async_endpoint_cap:
        return cap_async_endpoint_cap_get_capAEPBadge(cap);
    }
    return 0;
}

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






enum capSpaceType {
    capSpaceUntypedMemory,
    capSpaceTypedMemory,
    capSpaceIRQ,
    capSpaceDomain,
};

static inline int __attribute__((__const__))
cap_get_capSpaceType(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
        return capSpaceTypedMemory;

    case cap_untyped_cap:
        return capSpaceUntypedMemory;

    case cap_irq_control_cap:
        return capSpaceIRQ;
    case cap_irq_handler_cap:
        return capSpaceIRQ;

    case cap_domain_cap:
        return capSpaceDomain;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h", 53, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline void * __attribute__((__const__))
cap_get_capSpacePtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
    case cap_untyped_cap:
        return cap_get_capPtr(cap);

    case cap_reply_cap:
        return (void*)cap_reply_cap_get_capTCBPtr(cap);
    case cap_irq_control_cap:
        return (void*)0;
    case cap_irq_handler_cap:
        return (void*)cap_irq_handler_cap_get_capIRQ(cap);

    case cap_domain_cap:
        return (void*)0;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h", 89, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capSpaceSize(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_endpoint_cap:
    case cap_async_endpoint_cap:
    case cap_cnode_cap:
    case cap_thread_cap:
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
    case cap_zombie_cap:
    case cap_untyped_cap:
        return (1ul<<(cap_get_capSizeBits(cap)));

    case cap_reply_cap:
        return 1;
    case cap_irq_control_cap:
        return 0xff;
    case cap_irq_handler_cap:
        return 1;

    case cap_domain_cap:
        return 1;

    default:
        if(!(!"Unknown cap type")) _assert_fail("!\"Unknown cap type\"", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h", 125, __FUNCTION__);
        /* Unreachable, but GCC can't figure that out */
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cap_get_capExtraComp(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        if (!cap_frame_cap_get_capFMappedObject(cap)) {
            return 0;
        }
        switch (cap_frame_cap_get_capFSize(cap)) {
        case ARMSmallPage:
        case ARMLargePage:
            return ((unsigned int)(((pte_t *)(cap_frame_cap_get_capFMappedObject(cap))) + cap_frame_cap_get_capFMappedIndex(cap)));
        case ARMSection:
        case ARMSuperSection:
            return ((unsigned int)(((pde_t *)(cap_frame_cap_get_capFMappedObject(cap))) + cap_frame_cap_get_capFMappedIndex(cap)));
        default:
            _fail("Unknown frame size", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h", 147, __func__);
        }
    case cap_page_table_cap:
        if (!cap_page_table_cap_get_capPTMappedObject(cap)) {
            return 0;
        }
        return ((unsigned int)(((pde_t *)(cap_page_table_cap_get_capPTMappedObject(cap))) + cap_page_table_cap_get_capPTMappedIndex(cap)));
    default:
        return 0;
    }
}

static inline unsigned int __attribute__((__const__))
cte_depth_bits_type(cap_tag_t ctag)
{
    switch (ctag) {
    case cap_frame_cap:
    case cap_page_table_cap:
        return 1;
    default:
        return 5;
    }
}

static inline unsigned int __attribute__((__const__))
cte_depth_bits_cap(cap_t cap)
{
    return cte_depth_bits_type(cap_get_capType(cap));
}
# 400 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 2
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/compound_types.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/compound_types.h" 2

struct pde_range {
    pde_t *pd;
    unsigned int start;
    unsigned int length;
};
typedef struct pde_range pde_range_t;

struct pte_range {
    pte_t *pt;
    unsigned int start;
    unsigned int length;
};
typedef struct pte_range pte_range_t;

typedef cte_t *cte_ptr_t;

struct extra_caps {
    cte_ptr_t excaprefs[((1ul<<(seL4_MsgExtraCapBits))-1)];
};
typedef struct extra_caps extra_caps_t;
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 2
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/benchmark.h"
static inline uint32_t
timestamp(void)
{
    int ret;

    __asm__ volatile (
        "mrc p15, 0, %0, c9, c13, 0\n"
        : "=r" (ret)
    );

    return ret;
}
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/benchmark.h" 2

/* We have 1MB of word sized entries */


extern word_t ksEntry;
extern word_t ksExit;
extern word_t ksLogIndex;
extern word_t *ksLog;


void armv_init_ccnt(void);
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/io.h" 2


void init_serial(void);
void imx6_uart_putchar(char c);
void putDebugChar(unsigned char c);
unsigned char getDebugChar(void);
void handle_reset_on_serial(void);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 2


unsigned int puts(const char *s) __attribute__((externally_visible));
/* for prints that you want enabled in both DEBUG and RELEASE_PRINTF modes,
   use kprintf directly */
unsigned int kprintf(const char *format, ...) __attribute__((externally_visible));
unsigned int print_unsigned_long(unsigned long x, unsigned int ui_base) __attribute__((externally_visible));



/* printf will result in output */
# 40 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h"
/* release_printfs will NOT result in output */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h" 2





/* we can fill the entire IPC buffer except for word 0, which
 * the kernel overwrites with the message tag */


static inline void
trace_point_start(void)
{
    ksEntry = timestamp();
}

static inline void
trace_point_stop(void)
{
    ksExit = timestamp();

    if (__builtin_expect(!!(ksLogIndex < 262144), 1)) {
        ksLog[ksLogIndex] = ksExit - ksEntry;
    }
    /* increment the log index even if we have exceeded the log size
     * this is so we can tell if we need a bigger log */
    ksLogIndex++;

    /* If this fails integer overflow has occured. */
    if(!(ksLogIndex > 0)) _assert_fail("ksLogIndex > 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h", 44, __FUNCTION__);
}
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h"
/*
 * 0xffe00000 asid id slot (arm/arch/kernel/vspace.h)
 * 0xfff00000 devices      (plat/machine/devices.h)
 * 0xffff0000 vectors      (arch/machine/hardware.h)
 * 0xffffc000 global page  (arch/machine/hardware.h)
 * 0xfffff000 kernel stack (arch/machine/hardware.h)
 */







# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 35 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 36 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/gic_pl390.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * ARM Generic Interrupt Controller PL-390
 */





# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/gic_pl390.h" 2

typedef uint16_t interrupt_t;
typedef uint16_t irq_t;



/** MODIFIES: [*] */
interrupt_t getActiveIRQ(void);
/** MODIFIES: [*] */
interrupt_t getPendingIRQ(void);
/** MODIFIES: [*] */
bool_t isIRQPending(void);
/** MODIFIES: [*] */
void maskInterrupt(bool_t disable, interrupt_t irq);
/** MODIFIES: [*] */
void ackInterrupt(irq_t irq);
/** MODIFIES: [*] */
static inline void setInterruptMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow) { }

/** MODIFIES: [*] */
void initIRQController(void);

void handleSpuriousIRQ(void);
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 2



enum IRQConstants {
//  INTERRUPT_RESERVED      =   0,
//  INTERRUPT_RESERVED      =   1,
//  INTERRUPT_RESERVED      =   2,
//  INTERRUPT_RESERVED      =   3,
//  INTERRUPT_RESERVED      =   4,
//  INTERRUPT_RESERVED      =   5,
//  INTERRUPT_RESERVED      =   6,
//  INTERRUPT_RESERVED      =   7,
//  INTERRUPT_RESERVED      =   8,
//  INTERRUPT_RESERVED      =   9,
//  INTERRUPT_RESERVED      =  10,
//  INTERRUPT_RESERVED      =  11,
//  INTERRUPT_RESERVED      =  12,
//  INTERRUPT_RESERVED      =  13,
//  INTERRUPT_RESERVED      =  14,
//  INTERRUPT_RESERVED      =  15,
//  INTERRUPT_RESERVED      =  16,
//  INTERRUPT_RESERVED      =  17,
//  INTERRUPT_RESERVED      =  18,
//  INTERRUPT_RESERVED      =  19,
//  INTERRUPT_RESERVED      =  20,
//  INTERRUPT_RESERVED      =  21,
//  INTERRUPT_RESERVED      =  22,
//  INTERRUPT_RESERVED      =  23,
//  INTERRUPT_RESERVED      =  24,
//  INTERRUPT_RESERVED      =  25,
//  INTERRUPT_RESERVED      =  26,
//  INTERRUPT_RESERVED      =  27,
//  INTERRUPT_RESERVED      =  28,
    INTERRUPT_PRIV_TIMER = 29,
//  INTERRUPT_RESERVED      =  30,
//  INTERRUPT_RESERVED      =  31,
    INTERRUPT_IOMUXC = 32,
    INTERRUPT_DAP = 33,
    INTERRUPT_SDMA = 34,
    INTERRUPT_VPU_JPEG = 35,
    INTERRUPT_SNVS_PMIC_OFF = 36,
    INTERRUPT_IPU = 37,
    INTERRUPT_IPU1 = 38,
    INTERRUPT_IPU2_ERROR = 39,
    INTERRUPT_IPU2_SYNC = 40,
    INTERRUPT_GPU3D = 41,
    INTERRUPT_R2D = 42,
    INTERRUPT_V2D = 43,
    INTERRUPT_VPU = 44,
    INTERRUPT_APBHBRIDGEDMA = 45,
    INTERRUPT_EIM = 46,
    INTERRUPT_BCH = 47,
    INTERRUPT_GPMI = 48,
    INTERRUPT_DTCP = 49,
    INTERRUPT_VDOA = 50,
    INTERRUPT_SNVS = 51,
    INTERRUPT_SNVS_SECURITY = 52,
    INTERRUPT_CSU = 53,
    INTERRUPT_USDHC1 = 54,
    INTERRUPT_USDHC2 = 55,
    INTERRUPT_USDHC3 = 56,
    INTERRUPT_USDHC4 = 57,
    INTERRUPT_UART1 = 58,
    INTERRUPT_UART2 = 59,
    INTERRUPT_UART3 = 60,
    INTERRUPT_UART4 = 61,
    INTERRUPT_UART5 = 62,
    INTERRUPT_ECSPI1 = 63,
    INTERRUPT_ECSPI2 = 64,
    INTERRUPT_ECSPI3 = 65,
    INTERRUPT_ECSPI4 = 66,
    INTERRUPT_ECSPI5 = 67,
    INTERRUPT_I2C1 = 68,
    INTERRUPT_I2C2 = 69,
    INTERRUPT_I2C3 = 70,
    INTERRUPT_SATA = 71,
    INTERRUPT_USB1 = 72,
    INTERRUPT_USB2 = 73,
    INTERRUPT_USB3 = 74,
    INTERRUPT_USB_OTG = 75,
    INTERRUPT_USB_PHY_UTMI0 = 76,
    INTERRUPT_USB_PHY_UTMI1 = 77,
    INTERRUPT_SSI1 = 78,
    INTERRUPT_SSI2 = 79,
    INTERRUPT_SSI3 = 80,
    INTERRUPT_TEMPRATURE = 81,
    INTERRUPT_ASRC = 82,
    INTERRUPT_ESAI = 83,
    INTERRUPT_SPDIF = 84,
    INTERRUPT_MLB150_ERROR = 85,
    INTERRUPT_ANALOGUE_PMU = 86,
    INTERRUPT_GPT = 87,
    INTERRUPT_EPIT1 = 88,
    INTERRUPT_EPIT2 = 89,
    INTERRUPT_GPIO1_INT7 = 90,
    INTERRUPT_GPIO1_INT6 = 91,
    INTERRUPT_GPIO1_INT5 = 92,
    INTERRUPT_GPIO1_INT4 = 93,
    INTERRUPT_GPIO1_INT3 = 94,
    INTERRUPT_GPIO1_INT2 = 95,
    INTERRUPT_GPIO1_INT1 = 96,
    INTERRUPT_GPIO1_INT0 = 97,
    INTERRUPT_GPIO1L = 98,
    INTERRUPT_GPIO1H = 99,
    INTERRUPT_GPIO2L = 100,
    INTERRUPT_GPIO2H = 101,
    INTERRUPT_GPIO3L = 102,
    INTERRUPT_GPIO3H = 103,
    INTERRUPT_GPIO4L = 104,
    INTERRUPT_GPIO4H = 105,
    INTERRUPT_GPIO5L = 106,
    INTERRUPT_GPIO5H = 107,
    INTERRUPT_GPIO6L = 108,
    INTERRUPT_GPIO6H = 109,
    INTERRUPT_GPIO7L = 110,
    INTERRUPT_GPIO7H = 111,
    INTERRUPT_WDOG1 = 112,
    INTERRUPT_WDOG2 = 113,
    INTERRUPT_KPP = 114,
    INTERRUPT_PWM1 = 115,
    INTERRUPT_PWM2 = 116,
    INTERRUPT_PWM3 = 117,
    INTERRUPT_PWM4 = 118,
    INTERRUPT_CCM1 = 119,
    INTERRUPT_CCM2 = 120,
    INTERRUPT_GPC = 121,
//  INTERRUPT_RESERVED      = 122,
    INTERRUPT_SRC = 123,
    INTERRUPT_CPU_L2 = 124,
    INTERRUPT_CPU_PARITY = 125,
    INTERRUPT_CPU_PU = 126,
    INTERRUPT_CPU_CTI = 127,
    INTERRUPT_SRC_WDOG = 128,
//  INTERRUPT_RESERVED      = 129,
//  INTERRUPT_RESERVED      = 130,
//  INTERRUPT_RESERVED      = 131,
    INTERRUPT_MIPI_CSI1 = 132,
    INTERRUPT_MIPI_CSI2 = 133,
    INTERRUPT_MIPI_DSI = 134,
    INTERRUPT_MIPI_HSI = 135,
    INTERRUPT_SJC = 136,
    INTERRUPT_CAAM0 = 137,
    INTERRUPT_CAAM1 = 138,
//  INTERRUPT_RESERVED      = 139,
    INTERRUPT_ASC1 = 140,
    INTERRUPT_ASC2 = 141,
    INTERRUPT_FLEXCAN1 = 142,
    INTERRUPT_FLEXCAN2 = 143,
//  INTERRUPT_RESERVED      = 144,
//  INTERRUPT_RESERVED      = 145,
//  INTERRUPT_RESERVED      = 146,
    INTERRUPT_HDMI = 147,
    INTERRUPT_HDMI_CEC = 148,
    INTERRUPT_MLB150 = 149,
    INTERRUPT_ENET = 150,
    INTERRUPT_ENET_TIMER = 151,
    INTERRUPT_PCIE1 = 152,
    INTERRUPT_PCIE2 = 153,
    INTERRUPT_PCIE3 = 154,
    INTERRUPT_PCIE4 = 155,
    INTERRUPT_DCIC1 = 156,
    INTERRUPT_DCIC2 = 157,
    INTERRUPT_MLB150_LOR = 158,
    INTERRUPT_DIGITAL_PMU = 159,
    maxIRQ = 159
} platform_interrupt_t;



enum irqNumbers {
    irqInvalid = (irq_t) - 1
};
# 37 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2
# 1 "./plat/machine/hardware_gen.h" 1



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 5 "./plat/machine/hardware_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 6 "./plat/machine/hardware_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 7 "./plat/machine/hardware_gen.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 8 "./plat/machine/hardware_gen.h" 2
# 38 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/gic_pl390.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * ARM Generic Interrupt Controller PL-390
 */
# 40 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/l2c_310.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * ARM L2 Cache controller L2C-310
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/l2c_310.h" 2


/** MODIFIES: [*] */
void initL2Cache(void);

/** MODIFIES: [*] */
void plat_cleanCache(void);
/** MODIFIES: [*] */
void plat_cleanL2Range(paddr_t start, paddr_t end);
/** MODIFIES: [*] */
void plat_invalidateL2Range(paddr_t start, paddr_t end);
/** MODIFIES: [*] */
void plat_cleanInvalidateL2Range(paddr_t start, paddr_t end);
# 41 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/priv_timer.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/** MODIFIES: [*] */
void resetTimer(void);
/** MODIFIES: [*] */
void initTimer(void);
# 42 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 2

static inline void * __attribute__((__const__))
ptrFromPAddr(paddr_t paddr)
{
    return (void*)(paddr + (0xe0000000 - 0x10000000));
}

static inline paddr_t __attribute__((__const__))
addrFromPPtr(void *pptr)
{
    return (paddr_t)pptr - (0xe0000000 - 0x10000000);
}


int get_num_avail_p_regs(void);
p_region_t get_avail_p_reg(unsigned int i);
int get_num_dev_p_regs(void);
p_region_t get_dev_p_reg(unsigned int i);
void map_kernel_devices(void);

bool_t __attribute__((__const__)) isReservedIRQ(irq_t irq);
void handleReservedIRQ(irq_t irq);
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




/** MODIFIES: [*] */
static inline void dsb(void)
{
    __asm__ volatile("dsb" ::: "memory");
}

/** MODIFIES: [*] */
static inline void dmb(void)
{
    __asm__ volatile("dmb" ::: "memory");
}

/** MODIFIES: [*] */
static inline void isb(void)
{
    __asm__ volatile("isb" ::: "memory");
}
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 2
# 41 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h"
/** Generic timer CP15 registers **/
# 62 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h"
word_t __attribute__((__pure__)) getRestartPC(tcb_t *thread);
void setNextPC(tcb_t *thread, word_t v);

/* Architecture specific machine operations */

/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline uint32_t getProcessorID(void)
{
    uint32_t processor_id;
    __asm__ volatile("mrc  " "p15, 0, %0, c0, c0, 0" : "=r"(processor_id));
    return processor_id;
}

/** DONT_TRANSLATE */
static inline uint32_t readSystemControlRegister(void)
{
    uint32_t scr;
    __asm__ volatile("mrc  " "p15, 0, %0, c1, c0, 0" : "=r"(scr));
    return scr;
}

/** DONT_TRANSLATE */
static inline void writeSystemControlRegister(uint32_t scr)
{
    do { uint32_t _v = scr; __asm__ volatile("mcr  " "p15, 0, %0, c1, c0, 0" :: "r" (_v)); }while(0);
}

/** DONT_TRANSLATE */
static inline uint32_t readAuxiliaryControlRegister(void)
{
    uint32_t acr;
    __asm__ volatile("mrc  " "p15, 0, %0, c1, c0, 1" : "=r"(acr));
    return acr;
}

/** DONT_TRANSLATE */
static inline void writeAuxiliaryControlRegister(uint32_t acr)
{
    do { uint32_t _v = acr; __asm__ volatile("mcr  " "p15, 0, %0, c1, c0, 1" :: "r" (_v)); }while(0);
}

/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void clearExMonitor(void)
{
    word_t tmp;
    __asm__ volatile("strex r0, r1, [%0]" : : "r"(&tmp) : "r0");
}

/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void flushBTAC(void)
{
    __asm__ volatile("mcr p15, 0, %0, c7, c5, 6" : : "r"(0));
}

/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void writeContextID(word_t id)
{
    __asm__ volatile("mcr p15, 0, %0, c13, c0, 1" : : "r"(id));
    isb();
}

/* Address space control */
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void writeTTBR0(paddr_t addr)
{
    /* Mask supplied address (retain top 19 bits).  Set the lookup cache bits:
     * outer write-back cacheable, no allocate on write, inner non-cacheable.
     */
    __asm__ volatile("mcr p15, 0, %0, c2, c0, 0" : :
                 "r"((addr & 0xffffe000) | 0x18));
}
static inline void setCurrentPD(paddr_t addr)
{
    /* Mask supplied address (retain top 19 bits).  Set the lookup cache bits:
     * outer write-back cacheable, no allocate on write, inner non-cacheable.
     */
    /* Before changing the PD ensure all memory stores have completed */
    dsb();
    writeTTBR0(addr);
    /* Ensure the PD switch completes before we do anything else */
    isb();
}

/* TLB control */
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void invalidateTLB(void)
{
    dsb();
    __asm__ volatile("mcr p15, 0, %0, c8, c7, 0" : : "r"(0));
    dsb();
    isb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void invalidateTLB_ASID(hw_asid_t hw_asid)
{
    dsb();
    __asm__ volatile("mcr p15, 0, %0, c8, c7, 2" : : "r"(hw_asid));
    dsb();
    isb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void invalidateTLB_VAASID(word_t mva_plus_asid)
{
    dsb();
    __asm__ volatile("mcr p15, 0, %0, c8, c7, 1" : : "r"(mva_plus_asid));
    dsb();
    isb();
}
/** MODIFIES: [*] */
void lockTLBEntry(vptr_t vaddr);

/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void cleanByVA(vptr_t vaddr, paddr_t paddr)
{







    __asm__ volatile("mcr p15, 0, %0, c7, c10, 1" : : "r"(vaddr));

    /* Erratum 586323 - end with DMB to ensure the write goes out. */
    dmb();
}
/* D-Cache clean to PoU (L2 cache) (v6/v7 common) */
/** MODIFIES: [*] */
static inline void cleanByVA_PoU(vptr_t vaddr, paddr_t paddr)
{
# 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h"
    __asm__ volatile("mcr p15, 0, %0, c7, c11, 1" : : "r"(vaddr));

    /* Erratum 586323 - end with DMB to ensure the write goes out. */
    dmb();
}
/* D-Cache invalidate to PoC (v6/v7 common) */
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
static inline void invalidateByVA(vptr_t vaddr, paddr_t paddr)
{





    __asm__ volatile("mcr p15, 0, %0, c7, c6, 1" : : "r"(vaddr));

    dmb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
/* I-Cache invalidate to PoU (L2 cache) (v6/v7 common) */
static inline void invalidateByVA_I(vptr_t vaddr, paddr_t paddr)
{




    __asm__ volatile("mcr p15, 0, %0, c7, c5, 1" : : "r"(vaddr));

    isb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
/* I-Cache invalidate all to PoU (L2 cache) (v6/v7 common) */
static inline void invalidate_I_PoU(void)
{




    __asm__ volatile("mcr p15, 0, %0, c7, c5, 0" : : "r"(0));
    isb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
/* D-Cache clean & invalidate to PoC (v6/v7 common) */
static inline void cleanInvalByVA(vptr_t vaddr, paddr_t paddr)
{







    __asm__ volatile("mcr p15, 0, %0, c7, c14, 1" : : "r"(vaddr));

    dsb();
}
/** MODIFIES: [*] */
/** DONT_TRANSLATE */
/* Invalidate branch predictors by VA (v6/v7 common) */
static inline void branchFlush(vptr_t vaddr, paddr_t paddr)
{
    __asm__ volatile("mcr p15, 0, %0, c7, c5, 7" : : "r"(vaddr));
}

/** MODIFIES: [*] */
void cleanInvalidateCacheRange_RAM(word_t start, word_t end, paddr_t pstart);
/** MODIFIES: [*] */
void cleanCacheRange_RAM(word_t start, word_t end, paddr_t pstart);
/** MODIFIES: [*] */
void cleanCacheRange_PoU(word_t start, word_t end, paddr_t pstart);
/** MODIFIES: [*] */
void invalidateCacheRange_RAM(word_t start, word_t end, paddr_t pstart);
/** MODIFIES: [*] */
void invalidateCacheRange_I(word_t start, word_t end, paddr_t pstart);
/** MODIFIES: [*] */
void branchFlushRange(word_t start, word_t end, paddr_t pstart);

/** MODIFIES: [*] */
void clean_D_PoU(void);
/** MODIFIES: [*] */
void cleanInvalidate_D_PoC(void);
/** MODIFIES: [*] */
void cleanCaches_PoU(void);
/** MODIFIES: [*] */
void cleanInvalidateL1Caches(void);

/* Fault status */
/** MODIFIES: */
/** DONT_TRANSLATE */
static inline word_t __attribute__((__pure__)) getIFSR(void)
{
    word_t IFSR;
    __asm__ volatile("mrc p15, 0, %0, c5, c0, 1" : "=r"(IFSR));
    return IFSR;
}
/** MODIFIES: */
/** DONT_TRANSLATE */
static inline word_t __attribute__((__pure__)) getDFSR(void)
{
    word_t DFSR;
    __asm__ volatile("mrc p15, 0, %0, c5, c0, 0" : "=r"(DFSR));
    return DFSR;
}
/** MODIFIES: */
/** DONT_TRANSLATE */
static inline word_t __attribute__((__pure__)) getFAR(void)
{
    word_t FAR;
    __asm__ volatile("mrc p15, 0, %0, c6, c0, 0" : "=r"(FAR));
    return FAR;
}

/* Cleaning memory before user-level access */
static inline void clearMemory(word_t* ptr, unsigned int bits)
{
    memzero(ptr, (1ul<<(bits)));
    cleanCacheRange_PoU((word_t)ptr, (word_t)ptr + (1ul<<(bits)) - 1,
                        addrFromPPtr(ptr));
}
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 2

static inline void
setRegister(tcb_t *thread, register_t reg, word_t w)
{
    thread->tcbArch.tcbContext.registers[reg] = w;
}

static inline word_t __attribute__((__pure__))
getRegister(tcb_t *thread, register_t reg)
{
    return thread->tcbArch.tcbContext.registers[reg];
}
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 2
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 2

/* platform independent functions */

static inline void *__attribute__((__const__))
paddr_to_pptr(paddr_t paddr)
{
    return (void *)(paddr + (0xe0000000 - 0x10000000));
}

static inline paddr_t __attribute__((__const__))
pptr_to_paddr(void *pptr)
{
    return (paddr_t)pptr - (0xe0000000 - 0x10000000);
}

static inline region_t __attribute__((__const__))
paddr_to_pptr_reg(p_region_t p_reg)
{
    return (region_t) {
        p_reg.start + (0xe0000000 - 0x10000000), p_reg.end + (0xe0000000 - 0x10000000)
    };
}

static inline p_region_t __attribute__((__const__))
pptr_to_paddr_reg(region_t reg)
{
    return (p_region_t) {
        reg.start - (0xe0000000 - 0x10000000), reg.end - (0xe0000000 - 0x10000000)
    };
}

static inline bool_t __attribute__((__const__))
inKernelWindow(void *pptr)
{
    paddr_t paddr = pptr_to_paddr(pptr);
    return ((paddr >= 0x10000000 /* for compatibility with proofs */) && (paddr < (0xfff00000 - (0xe0000000 - 0x10000000))));
}
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/errors.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




typedef enum {
    seL4_NoError = 0,
    seL4_InvalidArgument,
    seL4_InvalidCapability,
    seL4_IllegalOperation,
    seL4_RangeError,
    seL4_AlignmentError,
    seL4_FailedLookup,
    seL4_TruncatedMessage,
    seL4_DeleteFirst,
    seL4_RevokeFirst,
    seL4_NotEnoughMemory,
} seL4_Error;
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 2
/* These datatypes differ markedly from haskell, due to the
 * different implementation of the various fault monads */


enum exception {
    EXCEPTION_NONE,
    EXCEPTION_FAULT,
    EXCEPTION_LOOKUP_FAULT,
    EXCEPTION_SYSCALL_ERROR,
    EXCEPTION_PREEMPTED
};
typedef uint32_t exception_t;

typedef uint32_t syscall_error_type_t;

struct syscall_error {
    unsigned int invalidArgumentNumber;
    unsigned int invalidCapNumber;
    word_t rangeErrorMin;
    word_t rangeErrorMax;
    word_t memoryLeft;
    bool_t failedLookupWasSource;

    syscall_error_type_t type;
};
typedef struct syscall_error syscall_error_t;

extern lookup_fault_t current_lookup_fault;
extern fault_t current_fault;
extern syscall_error_t current_syscall_error;
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/tcb.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/tcb.h" 2

unsigned int setMRs_fault(tcb_t *sender, tcb_t* receiver,
                          word_t *receiveIPCBuffer);
unsigned int setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer);
word_t __attribute__((__const__)) Arch_decodeTransfer(word_t flags);
exception_t __attribute__((__const__)) Arch_performTransfer(word_t arch, tcb_t *tcb_src,
                                       tcb_t *tcb_dest);
void Arch_leaveVMAsyncTransfer(tcb_t *tcb);
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 2

struct slot_range {
    cte_t *cnode;
    unsigned int offset;
    unsigned int length;
};
typedef struct slot_range slot_range_t;

exception_t decodeCNodeInvocation(word_t label, unsigned int length,
                                  cap_t cap, extra_caps_t extraCaps,
                                  word_t *buffer);
exception_t invokeCNodeRevoke(cte_t *destSlot);
exception_t invokeCNodeDelete(cte_t *destSlot);
exception_t invokeCNodeRecycle(cte_t *destSlot);
exception_t invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                              cte_t *slot2, cte_t *slot3);
exception_t invokeCNodeSaveCaller(cte_t *destSlot);
void cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void capSwapForDelete(cte_t *slot1, cte_t *slot2);
void cteSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2);
exception_t cteRevoke(cte_t *slot);
exception_t cteDelete(cte_t *slot, bool_t exposed);
void cteDeleteOne(cte_t* slot);
exception_t cteRecycle(cte_t *slot);
void insertNewCap(cte_t *parent, cte_t *slot, cap_t cap);
void setupReplyMaster(tcb_t *thread);
bool_t __attribute__((__pure__)) isMDBParentOf(cte_t *cte_a, cte_t *cte_b);
exception_t ensureNoChildren(cte_t *slot);
exception_t ensureEmptySlot(cte_t *slot);
bool_t __attribute__((__pure__)) slotCapLongRunningDelete(cte_t *slot);
cte_t *getReceiveSlots(tcb_t *thread, word_t *buffer);
cap_transfer_t __attribute__((__pure__)) loadCapTransfer(word_t *buffer);
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 2


/* Maximum length of the tcb name, including null terminator */



struct tcb_queue {
    tcb_t *head;
    tcb_t *end;
};
typedef struct tcb_queue tcb_queue_t;

void tcbSchedEnqueue(tcb_t *tcb);
void tcbSchedAppend(tcb_t *tcb);
void tcbSchedDequeue(tcb_t *tcb);

tcb_queue_t tcbEPAppend(tcb_t *tcb, tcb_queue_t queue);
tcb_queue_t tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue);

void setupCallerCap(tcb_t *sender, tcb_t *receiver);
void deleteCallerCap(tcb_t *receiver);

unsigned int copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
                     word_t *recvBuf, unsigned int n);
exception_t decodeTCBInvocation(word_t label, unsigned int length, cap_t cap,
                                cte_t* slot, extra_caps_t extraCaps, bool_t call,
                                word_t *buffer);
exception_t decodeCopyRegisters(cap_t cap, unsigned int length,
                                extra_caps_t extraCaps, word_t *buffer);
exception_t decodeReadRegisters(cap_t cap, unsigned int length, bool_t call,
                                word_t *buffer);
exception_t decodeWriteRegisters(cap_t cap, unsigned int length, word_t *buffer);
exception_t decodeTCBConfigure(cap_t cap, unsigned int length,
                               cte_t* slot, extra_caps_t rootCaps, word_t *buffer);
exception_t decodeSetPriority(cap_t cap, unsigned int length, word_t *buffer);
exception_t decodeSetIPCBuffer(cap_t cap, unsigned int length,
                               cte_t* slot, extra_caps_t extraCaps, word_t *buffer);
exception_t decodeSetSpace(cap_t cap, unsigned int length,
                           cte_t* slot, extra_caps_t extraCaps, word_t *buffer);
exception_t decodeBindAEP(cap_t cap, extra_caps_t extraCaps);
exception_t decodeUnbindAEP(cap_t cap);
exception_t decodeSetEPTRoot(cap_t cap, extra_caps_t extraCaps);
exception_t decodeDomainInvocation(word_t label, unsigned int length,
                                   extra_caps_t extraCaps, word_t *buffer);

enum thread_control_flag {
    thread_control_update_priority = 0x1,
    thread_control_update_ipc_buffer = 0x2,
    thread_control_update_space = 0x4,
    thread_control_update_all = 0x7,
};

typedef uint32_t thread_control_flag_t;

exception_t invokeTCB_Suspend(tcb_t *thread);
exception_t invokeTCB_Resume(tcb_t *thread);
exception_t invokeTCB_ThreadControl(tcb_t *target, cte_t* slot, cptr_t faultep,
                                    prio_t priority, cap_t cRoot_newCap,
                                    cte_t *cRoot_srcSlot, cap_t vRoot_newCap,
                                    cte_t *vRoot_srcSlot, word_t bufferAddr,
                                    cap_t bufferCap, cte_t *bufferSrcSlot,
                                    thread_control_flag_t updateFlags);
exception_t invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *src,
                                    bool_t suspendSource, bool_t resumeTarget,
                                    bool_t transferFrame, bool_t transferInteger,
                                    word_t transferArch);
exception_t invokeTCB_ReadRegisters(tcb_t *src, bool_t suspendSource,
                                    unsigned int n, word_t arch, bool_t call);
exception_t invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                                     unsigned int n, word_t arch, word_t *buffer);
exception_t invokeTCB_AEPControl(tcb_t *tcb, async_endpoint_t *aepptr);

cptr_t __attribute__((__pure__)) getExtraCPtr(word_t *bufferPtr, unsigned int i);
void setExtraBadge(word_t *bufferPtr, word_t badge, unsigned int i);

exception_t lookupExtraCaps(tcb_t* thread, word_t *bufferPtr, message_info_t info);

void setThreadName(tcb_t *thread, const char *name);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 2

extern word_t armKSGlobalsFrame[(1ul<<(ARMSmallPageBits)) / sizeof(word_t)] __attribute__((externally_visible));
extern pde_t *armKSHWASIDTable[(1ul<<(hwASIDBits))] __attribute__((externally_visible));
extern hw_asid_t armKSNextASID __attribute__((externally_visible));
extern pde_t armKSGlobalPD[(1ul<<(12))] __attribute__((externally_visible));
extern pte_t armKSGlobalPT[(1ul<<(8))] __attribute__((externally_visible));
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 2

extern tcb_queue_t ksReadyQueues[] __attribute__((externally_visible));
extern word_t ksReadyQueuesL1Bitmap[1] __attribute__((externally_visible));
extern word_t ksReadyQueuesL2Bitmap[1][(256 / (1 << 5)) + 1] __attribute__((externally_visible));
extern tcb_t *ksCurThread __attribute__((externally_visible));
extern tcb_t *ksIdleThread __attribute__((externally_visible));
extern tcb_t *ksSchedulerAction __attribute__((externally_visible));
extern word_t ksWorkUnitsCompleted;
extern cte_t *ksRootCTE __attribute__((externally_visible));
extern irq_state_t intStateIRQTable[] __attribute__((externally_visible));
extern cte_t *intStateIRQNode __attribute__((externally_visible));
extern const dschedule_t ksDomSchedule[];
extern const unsigned int ksDomScheduleLength;
extern uint32_t ksDomScheduleIdx;
extern dom_t ksCurDomain;
extern word_t ksDomainTime;
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 2

void map_it_pt_cap(cap_t pt_cap);
void map_it_frame_cap(cap_t frame_cap);
void map_kernel_window(void);
void map_kernel_frame(paddr_t paddr, pptr_t vaddr, vm_rights_t vm_rights, vm_attributes_t vm_attributes);
void activate_global_pd(void);

/* ==================== BOOT CODE FINISHES HERE ==================== */

/* PD slot reserved for storing the PD's allocated hardware ASID */


void idle_thread(void);


enum pde_pte_tag {
    ME_PDE,
    ME_PTE
};
typedef uint32_t pde_pte_tag_t;

struct createMappingEntries_ret {
    exception_t status;
    pde_pte_tag_t tag;
    void *pde_pte_ptr;
    unsigned int offset;
    unsigned int size;
};
typedef struct createMappingEntries_ret createMappingEntries_ret_t;

struct lookupPTSlot_ret {
    exception_t status;
    pte_t *pt;
    unsigned int ptIndex;
};
typedef struct lookupPTSlot_ret lookupPTSlot_ret_t;

void copyGlobalMappings(pde_t *newPD);
word_t* __attribute__((__pure__)) lookupIPCBuffer(bool_t isReceiver, tcb_t *thread);
lookupPTSlot_ret_t lookupPTSlot(pde_t *pd, vptr_t vptr);
pde_t* __attribute__((__const__)) lookupPDSlot(pde_t *pd, vptr_t vptr);
exception_t handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType);
void unmapPageTable(pde_t *pd, uint32_t pdIndex, pte_t* pt);
void unmapPagePTE(vm_page_size_t page_size, pte_t *pt, unsigned int ptIndex, void *pptr);
void unmapPagePDE(vm_page_size_t page_size, pde_t *pd, unsigned int pdIndex, void *pptr);
void unmapAllPages(pde_t *pd, uint32_t pdIndex, pte_t *pt);
void unmapAllPageTables(pde_t *pd);
void setVMRoot(tcb_t *tcb);
bool_t __attribute__((__const__)) isValidVTableRoot(cap_t cap);
exception_t checkValidIPCBuffer(vptr_t vptr, cap_t cap);
vm_rights_t __attribute__((__const__)) maskVMRights(vm_rights_t vm_rights,
                               cap_rights_t cap_rights_mask);
hw_asid_t getHWASID(pde_t *pd);
hw_asid_t findFreeHWASID(void) __attribute__((externally_visible));
void flushPage(vm_page_size_t page_size, pde_t* pd, word_t vptr);
void flushTable(pde_t* pd, word_t vptr, pte_t* pt);
exception_t decodeARMMMUInvocation(word_t label, unsigned int length, cptr_t cptr,
                                   cte_t *cte, cap_t cap, extra_caps_t extraCaps,
                                   word_t *buffer);
exception_t performPageTableInvocationMap(cap_t cap, cte_t *ctSlot,
                                          pde_t pde, pde_t *pdSlot);
exception_t performPageTableInvocationUnmap(cap_t cap, cte_t *ctSlot);
exception_t performPageInvocationMapPTE(cap_t cap, cte_t *ctSlot,
                                        pte_t pte, pte_range_t pte_entries);
exception_t performPageInvocationMapPDE(cap_t cap, cte_t *ctSlot,
                                        pde_t pde, pde_range_t pde_entries);
exception_t performPageInvocationUnmap(cap_t cap, cte_t *ctSlot);
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 2
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 2
# 1 "./arch/api/syscall.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/syscall_header_gen.py.
 *
 * To add a system call number, edit kernel/include/api/syscall.xml
 *
 */
# 31 "./arch/api/syscall.h"
enum syscall {
    SysCall = -1,
    SysReplyWait = -2,
    SysSend = -3,
    SysNBSend = -4,
    SysWait = -5,
    SysReply = -6,
    SysYield = -7,
    SysPoll = -8,




    SysDebugPutChar = -10,
    SysDebugHalt = -11,
    SysDebugCapIdentify = -12,
    SysDebugSnapshot = -13,
    SysDebugNameThread = -14,





    SysBenchmarkResetLog = -16,
    SysBenchmarkDumpLog = -17,
    SysBenchmarkLogSize = -18,

};
typedef uint32_t syscall_t;
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 2

exception_t handleSyscall(syscall_t syscall) __attribute__((externally_visible));
exception_t handleInterruptEntry(void) __attribute__((externally_visible));
exception_t handleUnknownSyscall(word_t w) __attribute__((externally_visible));
exception_t handleUserLevelFault(word_t w_a, word_t w_b) __attribute__((externally_visible));
exception_t handleVMFaultEvent(vm_fault_type_t vm_faultType) __attribute__((externally_visible));

static inline word_t __attribute__((__pure__))
getSyscallArg(unsigned int i, word_t* ipc_buffer)
{
    if (i < n_msgRegisters) {
        return getRegister(ksCurThread, msgRegisters[i]);
    }

    if(!(ipc_buffer != ((void *)0))) _assert_fail("ipc_buffer != NULL", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h", 33, __FUNCTION__);
    return ipc_buffer[i + 1];
}

extern extra_caps_t current_extra_caps;
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2

struct deriveCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct deriveCap_ret deriveCap_ret_t;

struct finaliseCap_ret {
    cap_t remainder;
    irq_t irq;
};
typedef struct finaliseCap_ret finaliseCap_ret_t;

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 2

deriveCap_ret_t Arch_deriveCap(cte_t *slot, cap_t cap);
cap_t __attribute__((__const__)) Arch_updateCapData(bool_t preserve, word_t data, cap_t cap);
cap_t __attribute__((__const__)) Arch_maskCapRights(cap_rights_t cap_rights_mask, cap_t cap);
cap_t Arch_finaliseCap(cap_t cap, bool_t final);
cap_t Arch_recycleCap(bool_t is_final, cap_t cap);
bool_t __attribute__((__const__)) Arch_hasRecycleRights(cap_t cap);
bool_t __attribute__((__const__)) Arch_sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) Arch_sameObjectAs(cap_t cap_a, cap_t cap_b);
cap_t Arch_createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory);
exception_t Arch_decodeInvocation(word_t label, unsigned int length,
                                  cptr_t cptr, cte_t *slot, cap_t cap,
                                  extra_caps_t extraCaps, word_t *buffer);
void Arch_prepareThreadDelete(tcb_t *thread);
word_t Arch_getObjectSize(word_t t);
bool_t Arch_isFrameType(word_t t);
# 33 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 2

deriveCap_ret_t deriveCap(cte_t *slot, cap_t cap);
finaliseCap_ret_t finaliseCap(cap_t cap, bool_t final, bool_t exposed);
cap_t recycleCap(bool_t is_final, cap_t cap);
bool_t __attribute__((__const__)) hasRecycleRights(cap_t cap);
bool_t __attribute__((__const__)) sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) sameObjectAs(cap_t cap_a, cap_t cap_b);
cap_t __attribute__((__const__)) updateCapData(bool_t preserve, word_t newData, cap_t cap);
cap_t __attribute__((__const__)) maskCapRights(cap_rights_t cap_rights, cap_t cap);
cap_t createObject(object_t t, void *regionBase, int userSize, bool_t deviceMemory);
void createNewObjects(object_t t, cte_t *parent, slot_range_t slots,
                      void *regionBase, unsigned int userSize, bool_t deviceMemory);
exception_t decodeInvocation(word_t label, unsigned int length,
                             cptr_t capIndex, cte_t *slot, cap_t cap,
                             extra_caps_t extraCaps, bool_t block, bool_t call,
                             word_t *buffer);
exception_t performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                                       bool_t canGrant, bool_t block,
                                       bool_t call);
exception_t performInvocation_AsyncEndpoint(async_endpoint_t *aep,
                                            word_t badge);
exception_t performInvocation_Reply(tcb_t *thread, cte_t *slot);
word_t getObjectSize(word_t t, word_t userObjSize);
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 2

void sendAsyncIPC(async_endpoint_t *aepptr, word_t badge);
void receiveAsyncIPC(tcb_t *thread, cap_t cap, bool_t isBlocking);
void aepCancelAll(async_endpoint_t *aepptr);
void asyncIPCCancel(tcb_t *threadPtr, async_endpoint_t *aepptr);
void completeAsyncIPC(async_endpoint_t *aepptr, tcb_t *tcb);
void unbindAsyncEndpoint(tcb_t *tcb);
void bindAsyncEndpoint(tcb_t *tcb, async_endpoint_t *aepptr);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 2

void sendIPC(bool_t blocking, bool_t do_call, word_t badge,
             bool_t canGrant, tcb_t *thread, endpoint_t *epptr);
void receiveIPC(tcb_t *thread, cap_t cap);
void ipcCancel(tcb_t *tptr);
void epCancelAll(endpoint_t *epptr);
void epCancelBadgedSends(endpoint_t *epptr, word_t badge);
void replyFromKernel_error(tcb_t *thread);
void replyFromKernel_success_empty(tcb_t *thread);
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/interrupt.h" 2

exception_t Arch_decodeInterruptControl(unsigned int length,
                                        extra_caps_t extraCaps);
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 2

exception_t decodeIRQControlInvocation(word_t label, unsigned int length,
                                       cte_t *srcSlot, extra_caps_t extraCaps,
                                       word_t *buffer);
exception_t invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot);
exception_t decodeIRQHandlerInvocation(word_t label, unsigned int length, irq_t irq,
                                       extra_caps_t extraCaps, word_t *buffer);
void invokeIRQHandler_AckIRQ(irq_t irq);
void invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot);
void invokeIRQHandler_ClearIRQHandler(irq_t irq);
void invokeIRQHandler_SetMode(irq_t irq, bool_t levelTrigger, bool_t polarityLow);
void deletingIRQHandler(irq_t irq);
void deletedIRQHandler(irq_t irq);
void handleInterrupt(irq_t irq);
bool_t isIRQActive(irq_t irq);
void setIRQState(irq_state_t irqState, irq_t irq);
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 2



exception_t decodeUntypedInvocation(word_t label, unsigned int length,
                                    cte_t *slot, cap_t cap,
                                    extra_caps_t extraCaps, bool_t call,
                                    word_t *buffer);
exception_t invokeUntyped_Retype(cte_t *srcSlot, void* base_ign,
                                 void* freeRegionBase, object_t newType,
                                 unsigned int objSize, slot_range_t destSlots,
                                 bool_t call, bool_t deviceMemory);
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 2
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 2

bool_t handleFaultReply(tcb_t *receiver, tcb_t *sender);
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 2

struct lookupCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct lookupCap_ret lookupCap_ret_t;

struct lookupCapAndSlot_ret {
    exception_t status;
    cap_t cap;
    cte_t *slot;
};
typedef struct lookupCapAndSlot_ret lookupCapAndSlot_ret_t;

struct lookupSlot_raw_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_raw_ret lookupSlot_raw_ret_t;

struct lookupSlot_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_ret lookupSlot_ret_t;

struct resolveAddressBits_ret {
    exception_t status;
    cte_t *slot;
    unsigned int bitsRemaining;
};
typedef struct resolveAddressBits_ret resolveAddressBits_ret_t;

lookupCap_ret_t lookupCap(tcb_t *thread, cptr_t cPtr);
lookupCapAndSlot_ret_t lookupCapAndSlot(tcb_t *thread, cptr_t cPtr);
lookupSlot_raw_ret_t lookupSlot(tcb_t *thread, cptr_t capptr);
lookupSlot_ret_t lookupSlotForCNodeOp(bool_t isSource,
                                      cap_t root, cptr_t capptr,
                                      unsigned int depth);
lookupSlot_ret_t lookupSourceSlot(cap_t root, cptr_t capptr,
                                  unsigned int depth);
lookupSlot_ret_t lookupTargetSlot(cap_t root, cptr_t capptr,
                                  unsigned int depth);
lookupSlot_ret_t lookupPivotSlot(cap_t root, cptr_t capptr,
                                 unsigned int depth);
resolveAddressBits_ret_t resolveAddressBits(cap_t nodeCap,
                                            cptr_t capptr,
                                            unsigned int n_bits);
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/faulthandler.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/faulthandler.h" 2

void handleFault(tcb_t *tptr);
exception_t sendFaultIPC(tcb_t *tptr);
void handleDoubleFault(tcb_t *tptr, fault_t ex1);
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 2

static inline __attribute__((__pure__)) uint32_t
ready_queues_index(uint32_t dom, uint32_t prio)
{
    if (1 > 1) {
        return dom * 256 + prio;
    } else {
        if(!(dom == 0)) _assert_fail("dom == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h", 24, __FUNCTION__);
        return prio;
    }
}

/* the l1 index is the top 32 bits of prio (2^5 == 32) */
static inline __attribute__((__pure__)) uint32_t
prio_to_l1index(uint32_t prio)
{
    return (prio >> 5);
}

static inline __attribute__((__pure__)) uint32_t
l1index_to_prio(uint32_t l1index)
{
    return (l1index << 5);
}

void configureIdleThread(tcb_t *tcb);
void activateThread(void) __attribute__((externally_visible));
void suspend(tcb_t *target);
void restart(tcb_t *target);
void doIPCTransfer(tcb_t *sender, endpoint_t *endpoint,
                   word_t badge, bool_t grant, tcb_t *receiver,
                   bool_t diminish);
void doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot);
void doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                      word_t badge, bool_t canGrant, tcb_t *receiver,
                      word_t *receiveBuffer, bool_t diminish);
void doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                     word_t *receiverIPCBuffer);
void doPollFailedTransfer(tcb_t *thread);
void schedule(void);
void chooseThread(void);
void switchToThread(tcb_t *thread) __attribute__((externally_visible));
void switchToIdleThread(void);
void setDomain(tcb_t *tptr, dom_t dom);
void setPriority(tcb_t *tptr, prio_t prio);
void scheduleTCB(tcb_t *tptr);
void attemptSwitchTo(tcb_t *tptr);
void switchIfRequiredTo(tcb_t *tptr);
void setThreadState(tcb_t *tptr, _thread_state_t ts) __attribute__((externally_visible));
void timerTick(void);
void rescheduleRequired(void);
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/string.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */






# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/string.h" 2

unsigned int strnlen(const char *s, unsigned int maxlen);
unsigned int strlcpy(char *dest, const char *src, unsigned int size);
unsigned int strlcat(char *dest, const char *src, unsigned int size);
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2


# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




void capDL(void);
# 27 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c" 2


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
        kprintf("Spurious interrupt\n");
        handleSpuriousIRQ();
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t
handleUnknownSyscall(word_t w)
{

    if (w == SysDebugPutChar) {
        imx6_uart_putchar(getRegister(ksCurThread, capRegister));
        return EXCEPTION_NONE;
    }
    if (w == SysDebugHalt) {
        kprintf("Debug halt syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
        while(1){
            handle_reset_on_serial();
        }
        halt();
    }
    if (w == SysDebugSnapshot) {
        kprintf("Debug snapshot syscall from user thread 0x%x\n", (unsigned int)ksCurThread);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 87, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("SysDebugNameThread: cap is not a TCB, halting"); kprintf(">>" "\033[0m" "\n"); } while (0);
            halt();
        }
        /* Add 1 to the IPC buffer to skip the message info word */
        name = (const char*)(lookupIPCBuffer(true, ksCurThread) + 1);
        if (!name) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 93, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("SysDebugNameThread: Failed to lookup IPC buffer, halting"); kprintf(">>" "\033[0m" "\n"); } while (0);
            halt();
        }
        /* ensure the name isn't too long */
        if (name[strnlen(name, seL4_MsgMaxLength * sizeof(word_t))] != '\0') {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 98, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("SysDebugNameThread: Name too long, halting"); kprintf(">>" "\033[0m" "\n"); } while (0);
            halt();
        }
        setThreadName(((tcb_t *)(cap_thread_cap_get_capTCBPtr(lu_ret.cap))), name);
        return EXCEPTION_NONE;
    }
# 114 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c"
    if (w == SysBenchmarkResetLog) {
        ksLogIndex = 0;
        return EXCEPTION_NONE;
    } else if (w == SysBenchmarkDumpLog) {
        int i;
        word_t *buffer = lookupIPCBuffer(true, ksCurThread);
        word_t start = getRegister(ksCurThread, capRegister);
        word_t size = getRegister(ksCurThread, msgInfoRegister);
        word_t logSize = ksLogIndex > 262144 ? 262144 : ksLogIndex;

        if (buffer == ((void *)0)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 125, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Cannot dump benchmarking log to a thread without an ipc buffer\n"); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (start > logSize) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 131, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Start > logsize\n"); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_InvalidArgument;
            return EXCEPTION_SYSCALL_ERROR;
        }

        /* Assume we have access to an ipc buffer 1024 words big.
         * Do no write to the first 4 bytes as these are overwritten */
        if (size > (1024 - 1)) {
            size = (1024 - 1);
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

    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 220, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Invocation of invalid cap #%d.", (int)cptr); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_fault = fault_cap_fault_new(cptr, false);

        if (isBlocking) {
            handleFault(thread);
        }

        return EXCEPTION_NONE;
    }

    buffer = lookupIPCBuffer(false, thread);

    status = lookupExtraCaps(thread, buffer, info);

    if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 235, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Lookup of extra caps failed."); kprintf(">>" "\033[0m" "\n"); } while (0);
        if (isBlocking) {
            handleFault(thread);
        }
        return EXCEPTION_NONE;
    }

    /* Syscall error/Preemptible section */
    length = message_info_get_msgLength(info);
    if (__builtin_expect(!!(length > n_msgRegisters && !buffer), 0)) {
        length = n_msgRegisters;
    }
    status = decodeInvocation(message_info_get_msgLabel(info), length,
                              cptr, lu_ret.slot, lu_ret.cap,
                              current_extra_caps, isBlocking, isCall,
                              buffer);

    if (__builtin_expect(!!(status == EXCEPTION_PREEMPTED), 0)) {
        return status;
    }

    if (__builtin_expect(!!(status == EXCEPTION_SYSCALL_ERROR), 0)) {
        if (isCall) {
            replyFromKernel_error(thread);
        }
        return EXCEPTION_NONE;
    }

    if (__builtin_expect(!!(thread_state_get_tsType(thread->tcbState) == ThreadState_Restart), 0)
                                                                                 ) {
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

    callerSlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;
    switch (cap_get_capType(callerCap)) {
    case cap_reply_cap: {
        tcb_t *caller;

        if (cap_reply_cap_get_capReplyMaster(callerCap)) {
            break;
        }
        caller = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap)));
        /* Haskell error:
         * "handleReply: caller must not be the current thread" */
        if(!(caller != ksCurThread)) _assert_fail("caller != ksCurThread", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c", 292, __FUNCTION__);
        doReplyTransfer(ksCurThread, caller, callerSlot);
        //deleteCallerCap(ksCurThread);
        return;
    }

    case cap_null_cap:
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 299, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted reply operation when no reply cap present."); kprintf(">>" "\033[0m" "\n"); } while (0);
        return;

    default:
        break;
    }

    _fail("handleReply: invalid caller cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c", 306, __func__);
}

static void
handleWait(bool_t isBlocking)
{
    word_t epCPtr;
    lookupCap_ret_t lu_ret;

    epCPtr = getRegister(ksCurThread, capRegister);

    lu_ret = lookupCap(ksCurThread, epCPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        /* current_lookup_fault has been set by lookupCap */
        current_fault = fault_cap_fault_new(epCPtr, true);
        handleFault(ksCurThread);
        return;
    }

    switch (cap_get_capType(lu_ret.cap)) {
    case cap_endpoint_cap:

        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanReceive(lu_ret.cap) || !isBlocking), 0)) {
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
        aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(lu_ret.cap)));
        boundTCB = (tcb_t*)async_endpoint_ptr_get_aepBoundTCB(aepptr);
        if (__builtin_expect(!!(!cap_async_endpoint_cap_get_capAEPCanReceive(lu_ret.cap) || (boundTCB && boundTCB != ksCurThread)), 0)
                                                              ) {
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
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysNBSend:
        ret = handleInvocation(false, false);
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
            irq = getActiveIRQ();
            if (irq != irqInvalid) {
                handleInterrupt(irq);
            }
        }
        break;

    case SysCall:
        ret = handleInvocation(true, true);
        if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) {
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
        _fail("Invalid syscall", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c", 430, __func__);
    }

    schedule();
    activateThread();

    return EXCEPTION_NONE;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/benchmark.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/benchmark.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/benchmark.c" 2

uint32_t ksEntry;
uint32_t ksExit;
uint32_t ksLogIndex = 0;
uint32_t *ksLog;
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c" 2

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
        _fail("Invalid fault", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c", 78, __func__);
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c" 2

void
armv_init_ccnt(void)
{
    uint32_t val, pmcr;

    /* enable them */
    val = 1;
    __asm__ volatile (
        "mcr p15, 0, %0, c9, c14, 0\n"
        :
        : "r" (val)
    );

    /* reset to 0 and make available at user level */
    pmcr = (1 << 2) | 1;
    __asm__ volatile (
        "mcr p15, 0, %0, c9, c12, 0\n"
        : /* no outputs */
        : "r" (pmcr)
    );

    /* turn the cycle counter on */
    val = (1U << 31);
    __asm__ volatile (
        "mcr p15, 0, %0, c9, c12, 1\n"
        : /* no outputs */
        : "r" (val)
    );
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 2

/** MODIFIES: [*] */
static inline void invalidateByWSL(word_t wsl)
{
    __asm__ volatile("mcr p15, 0, %0, c7, c6, 2" : : "r"(wsl));
}
/** MODIFIES: [*] */
static inline void cleanByWSL(word_t wsl)
{
    __asm__ volatile("mcr p15, 0, %0, c7, c10, 2" : : "r"(wsl));
}
/** MODIFIES: [*] */
static inline void cleanInvalidateByWSL(word_t wsl)
{
    __asm__ volatile("mcr p15, 0, %0, c7, c14, 2" : : "r"(wsl));
}

static inline word_t readCLID(void)
{
    word_t CLID;
    __asm__ volatile("mrc p15, 1, %0, c0, c0, 1" : "=r"(CLID));
    return CLID;
}






enum arm_cache_type {
    ARMCacheNone = 0,
    ARMCacheI = 1,
    ARMCacheD = 2,
    ARMCacheID = 3,
    ARMCacheU = 4,
};

static inline word_t readCacheSize(int level, bool_t instruction)
{
    word_t size, csselr_old;
    /* Save CSSELR */
    __asm__ volatile("mrc p15, 2, %0, c0, c0, 0" : "=r"(csselr_old));
    /* Select cache level */
    __asm__ volatile("mcr p15, 2, %0, c0, c0, 0" : : "r"((level << 1) | instruction));
    /* Read 'size' */
    __asm__ volatile("mrc p15, 1, %0, c0, c0, 0" : "=r"(size));
    /* Restore CSSELR */
    __asm__ volatile("mcr p15, 2, %0, c0, c0, 0" : : "r"(csselr_old));
    return size;
}

/* Number of bits to index within a cache line.  The field is log2(nwords) - 2
 * , and thus by adding 4 we get log2(nbytes). */

/* Associativity, field is assoc - 1. */

/* Number of sets, field is nsets - 1. */


void
clean_D_PoU(void)
{
    int clid = readCLID();
    int lou = (((clid) >> 27) & ((1ul<<(3))-1ul));
    int l;

    for (l = 0; l < lou; l++) {
        if ((((clid) >> (l*3)) & ((1ul<<(3))-1ul)) > ARMCacheI) {
            word_t s = readCacheSize(l, 0);
            int lbits = (( (s) & ((1ul<<(3))-1ul)) + 4);
            int assoc = ((((s) >> 3) & ((1ul<<(10))-1ul)) + 1);
            int assoc_bits = (1 << 5) - __builtin_clz(assoc - 1);
            int nsets = ((((s) >> 13) & ((1ul<<(15))-1ul)) + 1);
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
    int loc = (((clid) >> 24) & ((1ul<<(3))-1ul));
    int l;

    for (l = 0; l < loc; l++) {
        if ((((clid) >> (l*3)) & ((1ul<<(3))-1ul)) > ARMCacheI) {
            word_t s = readCacheSize(l, 0);
            int lbits = (( (s) & ((1ul<<(3))-1ul)) + 4);
            int assoc = ((((s) >> 3) & ((1ul<<(10))-1ul)) + 1);
            int assoc_bits = (1 << 5) - __builtin_clz(assoc - 1);
            int nsets = ((((s) >> 13) & ((1ul<<(15))-1ul)) + 1);
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/user_access.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




void armv_init_user_access(void);
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 2
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c"
static void
check_export_pmu(void)
{






}

static void
check_export_arch_timer(void)
{
    uint32_t v;
    __asm__ volatile("mrc  " " p15, 0,  %0, c14,  c1, 0" /* 32-bit RW Timer PL1 Control register */ : "=r"(v));






    do { uint32_t _v = v; __asm__ volatile("mcr  " " p15, 0,  %0, c14,  c1, 0" /* 32-bit RW Timer PL1 Control register */ :: "r" (_v)); }while(0);
}

void
armv_init_user_access(void)
{
    uint32_t v;
    /* Performance Monitoring Unit */
    __asm__ volatile("mrc  " " p15, 0,  %0,  c0,  c1, 2" /* 32-bit RO Debug feature register */ : "=r"(v));
    if ((v & (0xf << 28)) != (0xf << 28)) {
        check_export_pmu();
    }
    /* Arch timers */
    __asm__ volatile("mrc  " " p15, 0,  %0,  c0,  c1, 1" /* 32-bit RO CPU feature register */ : "=r"(v));
    if (v & (1ul<<(16))) {
        check_export_arch_timer();
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/profiler.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * Profiler Interface
 *
 * 2006 - 2007  David Greenaway
 * 2007 Ported to seL4 C kernel by Philip Derrin
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/profiler.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/profiler.h" 2
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/fastpath/fastpath.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/fastpath/fastpath.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 2

/* code that is only used during kernel bootstrapping */


/* read-only data only used during kernel bootstrapping */


/* read/write data only used during kernel bootstrapping */


/* data will be aligned to n bytes in a special BSS section */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/fastpath/fastpath.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/fastpath/fastpath.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/fastpath/fastpath.h" 2

void slowpath(syscall_t syscall)
__attribute__((externally_visible)) __attribute__((__noreturn__));

void fastpath_call(word_t cptr, word_t r_msgInfo)
__attribute__((externally_visible)) __attribute__((__noreturn__)) __attribute__((__section__(".vectors.fastpath_call")));

void fastpath_reply_wait(word_t cptr, word_t r_msgInfo)
__attribute__((externally_visible)) __attribute__((__noreturn__)) __attribute__((__section__(".vectors.fastpath_reply_wait")));
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h" 2

/** MODIFIES: [*] */
static inline void setHardwareASID(hw_asid_t hw_asid)
{



    writeContextID(hw_asid);
}

static inline void armv_contextSwitch_HWASID(pde_t *cap_pd, hw_asid_t hw_asid)
{
    /*
     * On ARMv7, speculative refills that complete between switching
     * ASID and PD can cause TLB entries to be Tagged with the wrong
     * ASID. The correct method to avoid this problem is to
     * either cycle the context switch through a reserved ASID or
     * through a page directory that has only global mappings.
     * The reserved Page directory method has shown to perform better
     * than the reserved ASID method.
     *
     * We do not call setCurrentPD here as we want to perform a
     * minimal number of DSB and ISBs and the second PD switch we
     * do does not need a DSB
     */
    dsb();
    writeTTBR0(addrFromPPtr(armKSGlobalPD));
    isb();
    setHardwareASID(hw_asid);
    writeTTBR0(addrFromPPtr(cap_pd));
    isb();
}

static inline void armv_contextSwitch(pde_t* pd)
{
    armv_contextSwitch_HWASID(pd, getHWASID(pd));
}
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 2

/* When building the fastpath the assembler in traps.S makes these
 * assumptions. Because compile_asserts are hard to do in assembler,
 * we place them here */
typedef int __assert_failed_SysCall_Minus1[(SysCall == -1) ? 1 : -1];
typedef int __assert_failed_SysReplyWait_Minus2[(SysReplyWait == -2) ? 1 : -1];

/* Return back to user. */
__attribute__((noreturn))
static inline void
fastpath_restore(word_t badge, word_t msgInfo, tcb_t *cur_thread)
{
    register word_t r0 __asm__ ("r0") = badge;
    register word_t r1 __asm__ ("r1") = msgInfo;
    __asm__ volatile (
        "add sp, %[cur_thread], %[offset]\n\t"
        "ldmdb sp, {r2-lr}^\n\t"
        "rfeia sp\n\t"
        :
        : [offset] "i" ((15 * 4)),
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
static inline cap_t __attribute__((always_inline))
lookup_fp(cap_t cap, cptr_t cptr)
{
    word_t cptr2;
    cte_t *slot;
    word_t radixBits, bits;
    word_t radix;

    if (__builtin_expect(!!(! cap_capType_equals(cap, cap_cnode_cap)), 0)) {
        return cap_null_cap_new();
    }

    bits = cap_cnode_cap_get_capCNodeGuardSize(cap);
    do {
        radixBits = cap_cnode_cap_get_capCNodeRadix(cap);
        cptr2 = cptr << bits;
        radix = cptr2 >> (32 - radixBits);
        slot = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(cap))) + radix;

        cap = slot->cap;
        bits += radixBits;
    } while (__builtin_expect(!!(bits < 32), 0) && __builtin_expect(!!(cap_capType_equals(cap, cap_cnode_cap)), 1));

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
    __asm__ volatile (
        "strex %[output], %[mem], [%[mem]]"
        : [output]"+r"(temp1)
        : [mem]"r"(&temp2)
    );
}

static inline void __attribute__((always_inline))
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
    cap_ptr->words[1] = ((unsigned int)(capCallerSlot)) | 1;
    cap_ptr->words[0] = cap_reply_cap;
}

static inline void
cap_reply_cap_ptr_new_np2(cap_t *cap_ptr, word_t isMaster, word_t capTCBPtr)
{
    cap_ptr->words[0] = ((unsigned int)(capTCBPtr)) | cap_reply_cap;
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
    return (pd_cap.words[0] & ((1ul<<(4))-1ul)) == cap_page_directory_cap;
}

/* This is an accelerated check that msgLength, which appears
   in the bottom of the msgInfo word, is <= 4 and that msgExtraCaps
   which appears above it is zero. We are assuming that n_msgRegisters == 4
   for this check to be useful. */
typedef int __assert_failed_n_msgRegisters_eq_4[(n_msgRegisters == 4) ? 1 : -1];
static inline int
fastpath_mi_check(word_t msgInfo)
{
    return (msgInfo & ((1ul<<(seL4_MsgLengthBits + seL4_MsgExtraCapBits))-1ul)) > 4;
}

static inline void
fastpath_copy_mrs(unsigned int length, tcb_t *src, tcb_t *dest)
{
    if (__builtin_expect(!!(!length), 1)) {
        return;
    }

    if(!(length <= 4)) _assert_fail("length <= 4", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c", 192, __FUNCTION__);
    if(!(msgRegisters[0] == 2)) _assert_fail("msgRegisters[0] == 2", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c", 193, __FUNCTION__);
    if(!(msgRegisters[1] == 3)) _assert_fail("msgRegisters[1] == 3", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c", 194, __FUNCTION__);
    if(!(msgRegisters[2] == 4)) _assert_fail("msgRegisters[2] == 4", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c", 195, __FUNCTION__);
    if(!(msgRegisters[3] == 5)) _assert_fail("msgRegisters[3] == 5", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c", 196, __FUNCTION__);

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
    if (__builtin_expect(!!(fastpath_mi_check(msgInfo) || fault_type != fault_null_fault), 0)
                                                ) {
        slowpath(SysCall);
    }

    /* Check there is nothing waiting on the async endpoint */
    if (ksCurThread->boundAsyncEndpoint &&
            async_endpoint_ptr_get_state(ksCurThread->boundAsyncEndpoint) == AEPState_Active) {
        slowpath(SysCall);
    }

    /* Lookup the cap */
    ep_cap = lookup_fp((((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable))->cap, cptr);

    /* Check it's an endpoint */
    if (__builtin_expect(!!(! cap_capType_equals(ep_cap, cap_endpoint_cap) || !cap_endpoint_cap_get_capCanSend(ep_cap)), 0)
                                                          ) {
        slowpath(SysCall);
    }

    /* Get the endpoint address */
    ep_ptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(ep_cap)));

    /* Get the destination thread, which is only going to be valid
     * if the endpoint is valid. */
    dest = ((tcb_t *)(endpoint_ptr_get_epQueue_head(ep_ptr)));

    /* Check that there's a thread waiting to receive */
    if (__builtin_expect(!!(endpoint_ptr_get_state(ep_ptr) != EPState_Recv), 0)) {
        slowpath(SysCall);
    }

    /* Get destination thread.*/
    newVTable = (((cte_t *)((unsigned int)(dest)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable))->cap;

    /* Get Page Directory. */
    cap_pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr_np(newVTable)));

    blockingIPCDiminishCaps = thread_state_ptr_get_blockingIPCDiminishCaps(&dest->tcbState);

    /* Ensure that the destination has a valid VTable. */
    if (__builtin_expect(!!(! isValidVTableRoot_fp(newVTable)), 0)) {
        slowpath(SysCall);
    }

    /* Get HW ASID */
    stored_hw_asid = cap_pd[0xff0];

    /* Ensure the destination has a higher/equal priority to us. */
    if (__builtin_expect(!!(dest->tcbPriority < ksCurThread->tcbPriority), 0)) {
        slowpath(SysCall);
    }

    /* Ensure that the endpoint has standard non-diminishing rights. */
    if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanGrant(ep_cap) || blockingIPCDiminishCaps), 0)
                                         ) {
        slowpath(SysCall);
    }

    if (__builtin_expect(!!(!pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)), 0)) {
        slowpath(SysCall);
    }

    /* Ensure the original caller is in the current domain and can be scheduled directly. */
    if (1 > 1 && __builtin_expect(!!(dest->tcbDomain != ksCurDomain), 0)) {
        slowpath(SysCall);
    }

    /*
     * --- POINT OF NO RETURN ---
     *
     * At this stage, we have committed to performing the IPC.
     */

    /* Dequeue the destination. */
    endpoint_ptr_set_epQueue_head_np(ep_ptr, ((unsigned int)(dest->tcbEPNext)));
    if (__builtin_expect(!!(dest->tcbEPNext), 0)) {
        dest->tcbEPNext->tcbEPPrev = ((void *)0);
    } else {
        endpoint_ptr_mset_epQueue_tail_state(ep_ptr, 0, EPState_Idle);
    }

    badge = cap_endpoint_cap_get_capEPBadge(ep_cap);

    /* Block sender */
    thread_state_ptr_set_tsType_np(&ksCurThread->tcbState,
                                   ThreadState_BlockedOnReply);

    /* Get sender reply slot */
    replySlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));

    /* Get dest caller slot */
    callerSlot = (((cte_t *)((unsigned int)(dest)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));

    /* Insert reply cap */
    cap_reply_cap_ptr_new_np2(&callerSlot->cap, 0, ((unsigned int)(ksCurThread)));
    cap_reply_cap_ptr_new_np(&replySlot->cap, ((unsigned int)(callerSlot)));

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
    if (__builtin_expect(!!(fastpath_mi_check(msgInfo) || fault_type != fault_null_fault), 0)
                                                ) {
        slowpath(SysReplyWait);
    }

    /* Lookup the cap */
    ep_cap = lookup_fp((((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable))->cap,
                       cptr);

    /* Check it's an endpoint */
    if (__builtin_expect(!!(!cap_capType_equals(ep_cap, cap_endpoint_cap) || !cap_endpoint_cap_get_capCanReceive(ep_cap)), 0)
                                                             ) {
        slowpath(SysReplyWait);
    }

    /* Check there is nothing waiting on the async endpoint */
    if (ksCurThread->boundAsyncEndpoint &&
            async_endpoint_ptr_get_state(ksCurThread->boundAsyncEndpoint) == AEPState_Active) {
        slowpath(SysReplyWait);
    }

    /* Get the endpoint address */
    ep_ptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(ep_cap)));
    callerSlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;

    /* Check that there's not a thread waiting to send */
    if (__builtin_expect(!!(endpoint_ptr_get_state(ep_ptr) == EPState_Send), 0)) {
        slowpath(SysReplyWait);
    }

    /* Only reply if the reply cap is valid. */
    if (__builtin_expect(!!(callerCap.words[0] == 0), 0)) {
        slowpath(SysReplyWait);
    }

    /* Determine who the caller is. */
    caller = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap)));

    /* Get reply slot from the caller */
    replySlot = (((cte_t *)((unsigned int)(caller)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));

    /* Get destination thread.*/
    newVTable = (((cte_t *)((unsigned int)(caller)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable))->cap;

    /* Get Page Directory. */
    cap_pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr_np(newVTable)));

    /* Check that the caller has not faulted, in which case a fault
       reply is generated instead. */
    fault_type = fault_get_faultType(caller->tcbFault);
    if (__builtin_expect(!!(fault_type != fault_null_fault), 0)) {
        slowpath(SysReplyWait);
    }

    /* Ensure that the destination has a valid MMU. */
    if (__builtin_expect(!!(! isValidVTableRoot_fp (newVTable)), 0)) {
        slowpath(SysReplyWait);
    }

    /* Get HWASID. */
    stored_hw_asid = cap_pd[0xff0];

    /* Ensure the original caller can be scheduled directly. */
    if (__builtin_expect(!!(caller->tcbPriority < ksCurThread->tcbPriority), 0)) {
        slowpath(SysReplyWait);
    }

    /* Ensure the HWASID is valid. */
    if (__builtin_expect(!!(!pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)), 0)) {
        slowpath(SysReplyWait);
    }

    /* Ensure the original caller is in the current domain and can be scheduled directly. */
    if (1 > 1 && __builtin_expect(!!(caller->tcbDomain != ksCurDomain), 0)) {
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
    endpointTail = ((tcb_t *)(endpoint_ptr_get_epQueue_tail(ep_ptr)));
    if (__builtin_expect(!!(!endpointTail), 1)) {
        ksCurThread->tcbEPPrev = ((void *)0);

        /* Set head/tail of queue and endpoint state. */
        endpoint_ptr_set_epQueue_head_np(ep_ptr, ((unsigned int)(ksCurThread)));
    } else {
        /* Append current thread onto the queue. */
        endpointTail->tcbEPNext = ksCurThread;
        ksCurThread->tcbEPPrev = endpointTail;
    }

    /* Update tail of queue. */
    endpoint_ptr_mset_epQueue_tail_state(ep_ptr, ((unsigned int)(ksCurThread)),
                                         EPState_Recv);

    ksCurThread->tcbEPNext = ((void *)0);

    /* Delete the reply cap. */
    cap_reply_cap_ptr_new_np(&replySlot->cap, ((unsigned int)(((void *)0))));
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/bootinfo.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/bootinfo.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/bootinfo.h" 2




/* bootinfo data structures (directly corresponding to abstract specification) */



/* fixed cap positions in root CNode */
# 39 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/bootinfo.h"
/* type definitions */

typedef uint32_t slot_pos_t;

typedef struct slot_region {
    slot_pos_t start;
    slot_pos_t end;
} slot_region_t;



typedef struct bi_dev_reg {
    paddr_t base_paddr; /* base physical address of device region */
    uint32_t frame_size_bits; /* size (2^n bytes) of a device-region frame */
    slot_region_t frame_caps; /* device-region frame caps */
} bi_dev_reg_t;

typedef struct bi {
    node_id_t node_id;
    uint32_t num_nodes;
    uint32_t num_iopt_levels; /* number of IOMMU PT levels (0 if no IOMMU support) */
    vptr_t ipcbuf_vptr; /* vptr to initial thread's IPC buffer */
    slot_region_t null_caps; /* null caps (empty slots) */
    slot_region_t sh_frame_caps; /* shared-frame caps */
    slot_region_t ui_frame_caps; /* userland-image frame caps */
    slot_region_t ui_pd_caps; /* userland-image PD caps */
    slot_region_t ui_pt_caps; /* userland-image PT caps */
    slot_region_t ut_obj_caps; /* untyped-object caps (UT caps) */
    slot_region_t ut_device_obj_caps; /* untyped-objects caps for device frames */
    paddr_t ut_obj_paddr_list [800]; /* physical address of each UT cap */
    uint8_t ut_obj_size_bits_list[800]; /* size (2^n) bytes of each UT cap */
    uint8_t it_cnode_size_bits; /* initial thread's root CNode size (2^n slots) */
    dom_t it_domain; /* initial thread's domain ID */
} bi_t;

/* adjust constants in config.h if this assert fails */
typedef int __assert_failed_bi_size[(sizeof(bi_t) <= (1ul<<(12))) ? 1 : -1];
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/boot.h" 2



/*
 * Resolve naming differences between the abstract specifications
 * of the bootstrapping phase and the runtime phase of the kernel.
 */
typedef cte_t slot_t;
typedef cte_t* slot_ptr_t;



/* (node-local) state accessed only during bootstrapping */

typedef struct ndks_boot {
    region_t freemem[2];
    bi_t* bi_frame;
    slot_pos_t slot_pos_cur;
    slot_pos_t slot_pos_max;
} ndks_boot_t;

extern ndks_boot_t ndks_boot;

/* function prototypes */

static inline bool_t
is_reg_empty(region_t reg)
{
    return reg.start == reg.end;
}

pptr_t alloc_region(uint32_t size_bits);
bool_t insert_region(region_t reg);
void write_slot(slot_ptr_t slot_ptr, cap_t cap);
cap_t create_root_cnode(void);
bool_t provide_cap(cap_t root_cnode_cap, cap_t cap);
void write_it_pd_pts(cap_t root_cnode_cap, cap_t it_pd_cap);
bool_t create_idle_thread(void);
bool_t create_untypeds_for_region(cap_t root_cnode_cap, bool_t deviceMemory, region_t reg, slot_pos_t first_untyped_slot);
bool_t create_untypeds(cap_t root_cnode_cap, region_t boot_mem_reuse_reg);
void bi_finalise(void);
bool_t create_irq_cnode(void);
void create_domain_cap(cap_t root_cnode_cap);

cap_t create_ipcbuf_frame(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr);

pptr_t allocate_bi_frame(node_id_t node_id, uint32_t num_nodes, vptr_t ipcbuf_vptr);

void create_bi_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, pptr_t pptr, vptr_t vptr);

typedef struct create_frames_of_region_ret {
    slot_region_t region;
    bool_t success;
} create_frames_of_region_ret_t;

create_frames_of_region_ret_t
create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    int32_t pv_offset
);

cap_t
create_it_pd_pts(
    cap_t root_cnode_cap,
    v_region_t ui_v_reg,
    vptr_t ipcbuf_vptr,
    vptr_t bi_frame_vptr
);

bool_t
create_initial_thread(
    cap_t root_cnode_cap,
    cap_t it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t ipcbuf_cap
);
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/boot.h" 2

cap_t create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large);
cap_t create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, bool_t use_large, bool_t executable);

void init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
);
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/user_access.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c" 2


/* pointer to the end of boot code/data in kernel image */
/* need a fake array to get the pointer from the linker script */
extern char ki_boot_end[1];
/* pointer to end of kernel image */
extern char ki_end[1];

/**
 * Split mem_reg about reserved_reg. If memory exists in the lower
 * segment, insert it. If memory exists in the upper segment, return it.
 */
__attribute__((__section__(".boot.text"))) static region_t
insert_region_excluded(region_t mem_reg, region_t reserved_reg)
{
    region_t residual_reg = mem_reg;
    bool_t result __attribute__((unused));

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
        if(!(result)) _assert_fail("result", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 62, __FUNCTION__);
    }
    /* Validate the upper region */
    if (residual_reg.start > residual_reg.end) {
        residual_reg.start = residual_reg.end;
    }

    return residual_reg;
}

__attribute__((__section__(".boot.text"))) static void
init_freemem(region_t ui_reg)
{
    unsigned int i;
    bool_t result __attribute__((unused));
    region_t cur_reg;
    region_t res_reg[] = {
        {
            .start = 0xe0000000,
            .end = (pptr_t)ki_end
        },
        {
            .start = ui_reg.start,
            .end = ui_reg.end
        },
        {
            .start = (0xff0 + 0) << pageBitsForSize(ARMSection),
            .end = (0xff0 + 1) << pageBitsForSize(ARMSection)
        }
    };

    for (i = 0; i < 2; i++) {
        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
    }

    /* Force ordering and exclusivity of reserved regions. */
    if(!(res_reg[0].start < res_reg[0].end)) _assert_fail("res_reg[0].start < res_reg[0].end", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 98, __FUNCTION__);
    if(!(res_reg[1].start < res_reg[1].end)) _assert_fail("res_reg[1].start < res_reg[1].end", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 99, __FUNCTION__);
    if(!(res_reg[2].start < res_reg[2].end)) _assert_fail("res_reg[2].start < res_reg[2].end", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 100, __FUNCTION__);
    if(!(res_reg[0].end <= res_reg[1].start)) _assert_fail("res_reg[0].end <= res_reg[1].start", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 101, __FUNCTION__);
    if(!(res_reg[1].end <= res_reg[2].start)) _assert_fail("res_reg[1].end <= res_reg[2].start", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 102, __FUNCTION__);
    for (i = 0; i < get_num_avail_p_regs(); i++) {
        cur_reg = paddr_to_pptr_reg(get_avail_p_reg(i));
        /* Adjust region if it exceeds the kernel window
         * Note that we compare physical address in case of overflow.
         */
        if (pptr_to_paddr((void*)cur_reg.end) > (0xfff00000 - (0xe0000000 - 0x10000000))) {
            cur_reg.end = 0xfff00000;
        }
        if (pptr_to_paddr((void*)cur_reg.start) > (0xfff00000 - (0xe0000000 - 0x10000000))) {
            cur_reg.start = 0xfff00000;
        }

        cur_reg = insert_region_excluded(cur_reg, res_reg[0]);
        cur_reg = insert_region_excluded(cur_reg, res_reg[1]);
        cur_reg = insert_region_excluded(cur_reg, res_reg[2]);
        if (cur_reg.start != cur_reg.end) {
            result = insert_region(cur_reg);
            if(!(result)) _assert_fail("result", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 120, __FUNCTION__);
        }
    }
}

__attribute__((__section__(".boot.text"))) static void
init_irqs(cap_t root_cnode_cap)
{
    irq_t i;

    for (i = 0; i <= maxIRQ; i++) {
        setIRQState(IRQInactive, i);
    }
    setIRQState(IRQTimer, INTERRUPT_PRIV_TIMER);
    setIRQState(IRQReserved, 59);

    /* provide the IRQ control cap */
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (4 /* global IRQ controller cap */)), cap_irq_control_cap_new());
}

/* Create a frame cap for the initial thread. */

__attribute__((__section__(".boot.text"))) cap_t
create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large)
{
    vm_page_size_t page_size = use_large ? ARMSection : ARMSmallPage;
    return
        cap_frame_cap_new(
            0, /* capFMappedObjectHigh */
            0, /* capFMappedIndex      */
            page_size, /* capFSize             */
            wordFromVMRights(VMReadWrite), /* capFVMRights         */
            0, /* capFMappedObjectLow  */
            pptr /* capFBasePtr          */
        );
}

__attribute__((__section__(".boot.text"))) cap_t
create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, bool_t use_large, bool_t executable)
{
    pde_t *pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(pd_cap)));
    uint32_t pd_index = vptr >> pageBitsForSize(ARMSection);
    cap_t cap;
    if (use_large) {
        cap =
            cap_frame_cap_new(
                ((uint32_t)(((unsigned int)(pd))) >> 12), /* capFMappedObjectHigh */
                pd_index, /* capFMappedIndex      */
                ARMSection, /* capFSize             */
                wordFromVMRights(VMReadWrite), /* capFVMRights         */
                ( ((uint32_t)(((unsigned int)(pd))) >> 10) & ((1ul<<(2))-1ul)), /* capFMappedObjectLow  */
                pptr /* capFBasePtr          */
            );
    } else {
        uint32_t pt_index = ((vptr & ((1ul<<(pageBitsForSize(ARMSection)))-1ul))
                             >> pageBitsForSize(ARMSmallPage));
        pte_t *pt = ptrFromPAddr(pde_pde_coarse_get_address(pd[pd_index]));
        cap = cap_frame_cap_new(
                  ((uint32_t)(((unsigned int)(pt))) >> 12), /* capFMappedObjectHigh */
                  pt_index, /* capFMappedIndex      */
                  ARMSmallPage, /* capFSize             */
                  wordFromVMRights(VMReadWrite), /* capFVMRights         */
                  ( ((uint32_t)(((unsigned int)(pt))) >> 10) & ((1ul<<(2))-1ul)), /* capFMappedObjectLow  */
                  pptr /* capFBasePtr          */
              );
    }
    map_it_frame_cap(cap);
    return cap;
}

/* Create a page table for the initial thread */

static __attribute__((__section__(".boot.text"))) cap_t
create_it_page_table_cap(cap_t pd, pptr_t pptr, vptr_t vptr)
{
    cap_t cap;
    uint32_t pd_index = vptr >> pageBitsForSize(ARMSection);
    cap = cap_page_table_cap_new(
              cap_page_directory_cap_get_capPDBasePtr(pd), /* capPTMappedObject */
              pd_index, /* capPTMappedIndex  */
              pptr /* capPTBasePtr      */
          );
    map_it_pt_cap(cap);
    return cap;
}

/* Create an address space for the initial thread.
 * This includes page directory and page tables */
__attribute__((__section__(".boot.text"))) static cap_t
create_it_address_space(cap_t root_cnode_cap, v_region_t it_v_reg)
{
    cap_t pd_cap;
    vptr_t pt_vptr;
    pptr_t pt_pptr;
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    pptr_t pd_pptr;

    /* create PD obj and cap */
    pd_pptr = alloc_region((12 +2));
    if (!pd_pptr) {
        return cap_null_cap_new();
    }
    memzero(((pde_t *)(pd_pptr)), 1 << (12 +2));
    copyGlobalMappings(((pde_t *)(pd_pptr)));
    cleanCacheRange_PoU(pd_pptr, pd_pptr + (1 << (12 +2)) - 1,
                        addrFromPPtr((void *)pd_pptr));
    pd_cap =
        cap_page_directory_cap_new(
            pd_pptr /* capPDBasePtr    */
        );
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (3 /* initial thread's vspace root cap */)), pd_cap);

    /* create all PT objs and caps necessary to cover userland image */
    slot_pos_before = ndks_boot.slot_pos_cur;

    for (pt_vptr = (((it_v_reg.start) >> (8 + 12)) << (8 + 12));
            pt_vptr < it_v_reg.end;
            pt_vptr += (1ul<<(8 + 12))) {
        pt_pptr = alloc_region((8 +2));
        if (!pt_pptr) {
            return cap_null_cap_new();
        }
        memzero(((pte_t *)(pt_pptr)), 1 << (8 +2));
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

__attribute__((__section__(".boot.text"))) static bool_t
create_device_untypeds(cap_t root_cnode_cap)
{
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    uint32_t i;

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

__attribute__((__section__(".boot.text"))) static void
init_cpu(void)
{
    activate_global_pd();
}

/* This and only this function initialises the platform. It does NOT initialise any kernel state. */

__attribute__((__section__(".boot.text"))) static void
init_plat(void)
{
    initIRQController();
    initTimer();
    initL2Cache();
}

/* Main kernel initialisation function. */


static __attribute__((__section__(".boot.text"))) bool_t
try_init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
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
    ui_v_reg.end = ui_p_reg_end - pv_offset;

    ipcbuf_vptr = ui_v_reg.end;
    bi_frame_vptr = ipcbuf_vptr + (1ul<<(12));

    /* The region of the initial thread is the user image + ipcbuf and boot info */
    it_v_reg.start = ui_v_reg.start;
    it_v_reg.end = bi_frame_vptr + (1ul<<(12));

    /* setup virtual memory for the kernel */
    map_kernel_window();

    /* initialise the CPU */
    init_cpu();

    init_serial();

    /* debug output via serial port is only available from here */
    kprintf("Bootstrapping kernel\n");

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
    0xe0000000, (pptr_t)ki_boot_end
    } /* reusable boot code/data */
            )) {
        return false;
    }

    /* create device frames */
    if (!create_device_untypeds(root_cnode_cap)) {
        return false;
    }

    /* no shared-frame caps (ARM has no multikernel support) */
    ndks_boot.bi_frame->sh_frame_caps = (slot_region_t){ .start = 0, .end = 0 };

    /* finalise the bootinfo frame */
    bi_finalise();

    /* make everything written by the kernel visible to userland. Cleaning to PoC is not
     * strictly neccessary, but performance is not critical here so clean and invalidate
     * everything to PoC */
    cleanInvalidateL1Caches();


    armv_init_ccnt();


    /* Export selected CPU features for access by PL0 */
    armv_init_user_access();

    /* kernel successfully initialized */
    return true;
}

__attribute__((__section__(".boot.text"))) __attribute__((externally_visible)) void
init_kernel(
    paddr_t ui_p_reg_start,
    paddr_t ui_p_reg_end,
    int32_t pv_offset,
    vptr_t v_entry
)
{
    bool_t result;

    result = try_init_kernel(ui_p_reg_start,
                             ui_p_reg_end,
                             pv_offset,
                             v_entry);
    if (!result) {
        _fail("Kernel init failed for some reason :(", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c", 482, __func__);
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/thread.h" 2

void Arch_switchToThread(tcb_t *tcb);
void Arch_switchToIdleThread(void);
void Arch_configureIdleThread(tcb_t *tcb);
void __attribute__((__const__)) Arch_activateIdleThread(tcb_t *tcb);
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c" 2

void
Arch_switchToThread(tcb_t *tcb)
{
    setVMRoot(tcb);
    *armKSGlobalsFrame = tcb->tcbIPCBuffer;
    clearExMonitor();
}

__attribute__((__section__(".boot.text"))) void
Arch_configureIdleThread(tcb_t *tcb)
{
    setRegister(tcb, CPSR, ( (1 << 6) | 0x13 | 0 ));
    setRegister(tcb, LR_svc, (word_t)(&idle_thread));
}

void
Arch_switchToIdleThread(void)
{
    *armKSGlobalsFrame = 0;
}

void __attribute__((__const__))
Arch_activateIdleThread(tcb_t *tcb)
{
    /* Don't need to do anything */
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/benchmark.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 2

void cdtInsert(cte_t *parentSlot, cte_t *newSlot);
void cdtRemove(cte_t *slot);
cte_t *cdtFindChild(cte_t *parentSlot);
void cdtMove(cte_t *oldSlot, cte_t *newSlot);
void cdtSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2);
bool_t cdtIsFinal(cte_t *slot);
void cdtUpdate(cte_t *slot, cap_t newCap);
cte_t *cdtFind(cap_t hypothetical);
cte_t *cdtFindAtDepth(cap_t hypothetical, uint32_t depth);
cte_t *cdtFindWithExtra(cap_t hypothetical);
cte_t *cdtFindTypedInRange(word_t base, unsigned int size_bits);
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "./arch/api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */


# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */



enum invocation_label {
    InvalidInvocation,
    UntypedRetype,
    TCBReadRegisters,
    TCBWriteRegisters,
    TCBCopyRegisters,
    TCBConfigure,
    TCBSetPriority,
    TCBSetIPCBuffer,
    TCBSetSpace,
    TCBSuspend,
    TCBResume,
    TCBBindAEP,
    TCBUnbindAEP,
    TCBSetEPTRoot,
    CNodeRevoke,
    CNodeDelete,
    CNodeRecycle,
    CNodeCopy,
    CNodeMint,
    CNodeMove,
    CNodeMutate,
    CNodeRotate,
    CNodeSaveCaller,
    IRQIssueIRQHandler,
    IRQInterruptControl,
    IRQAckIRQ,
    IRQSetIRQHandler,
    IRQClearIRQHandler,
    IRQSetMode,
    DomainSetSet,
    nInvocationLabels
};
# 11 "./arch/api/invocation.h" 2

enum arch_invocation_label {
    ARMPDClean_Data = nInvocationLabels + 0,
    ARMPDInvalidate_Data = nInvocationLabels + 1,
    ARMPDCleanInvalidate_Data = nInvocationLabels + 2,
    ARMPDUnify_Instruction = nInvocationLabels + 3,
    ARMPageTableMap = nInvocationLabels + 4,
    ARMPageTableUnmap = nInvocationLabels + 5,
    ARMPageMap = nInvocationLabels + 6,
    ARMPageUnmap = nInvocationLabels + 7,
    ARMPageClean_Data = nInvocationLabels + 8,
    ARMPageInvalidate_Data = nInvocationLabels + 9,
    ARMPageCleanInvalidate_Data = nInvocationLabels + 10,
    ARMPageUnify_Instruction = nInvocationLabels + 11,
    ARMPageGetAddress = nInvocationLabels + 12,
    nArchInvocationLabels
};
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




/* These devices are used by the seL4 kernel. */
# 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h"
/* All devices */

//#define RESERVED_PADDR          0x02C00000 /*  84 MB    */


//#define RESERVED_PADDR          0x0220C000 /*   1 MB    */



//#define RESERVED_PADDR          0x021FC000 /*   4 pages */
//#define RESERVED_PADDR          0x021F8000 /*   4 pages */
# 53 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h"
//#define RESERVED_PADDR          0x021CC000 /*   4 pages */
//#define RESERVED_PADDR          0x021C8000 /*   4 pages */
//#define RESERVED_PADDR          0x021C4000 /*   4 pages */
# 72 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h"
//#define RESERVED_PADDR          0x02180000 /*   4 pages */
# 93 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h"
//#define RESERVED_PADDR          0x02145000 /*  10 pages */





//#define RESERVED_PADDR          0x02110000 /*  48 pages */

//#define RESERVED_PADDR          0x020FC000 /*   4 pages */
//#define RESERVED_PADDR          0x020F8000 /*   4 pages */
//#define RESERVED_PADDR          0x020F4000 /*   4 pages */
//#define RESERVED_PADDR          0x020F0000 /*   4 pages */




//#define RESERVED_PADDR          0x020DD000 /*   3 pages */





//#define RESERVED_PADDR          0x020CB000 /*   1 page  */
# 140 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h"
//#define RESERVED_FOR_SDMA_PADDR 0x02038000 /*   4 pages */






//#define RESERVED_FOR_SDMA_PADDR 0x0201C000 /*   4 pages */






//#define RESERVED_FOR_SDMA_PADDR 0x02000000 /*   4 pages */


//#define RESERVED_PADDR          0x00D00000 /*   3 MB    */


//#define RESERVED_PADDR          0x00A03000 /* 253 pages */





//#define RESERVED_PADDR          0x00400000 /*   4 MB    */


//#define RESERVED_PADDR          0x0013C000 /* 196 pages */



//#define RESERVED_PADDR          0x00129000 /*   7 pages */

//#define RESERVED_PADDR          0x00118000 /*   8 pages */



//#define RESERVED_PADDR          0x00104000 /*  12 pages */

//#define RESERVED_PADDR          0x00018000 /* 232 pages */
# 28 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 30 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c" 2

/* ARM uses multiple identical mappings in a page table / page directory to construct
 * large mappings. In both cases it happens to be 16 entries, which can be calculated by
 * looking at the size difference of the mappings, and is done this way to remove magic
 * numbers littering this code and make it clear what is going on */



/* helper stuff to avoid fencepost errors when
 * getting the last byte of a PTE or PDE */



/* need a fake array to get the pointer from the linker script */
extern char arm_vector_table[1];

/* This is the ARM kernel stack. It is accessed from a remapped address. */
char arm_kernel_stack[4096] __attribute__((__aligned__(4096))) __attribute__((__section__(".bss.aligned"))) __attribute__((externally_visible));

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
static pde_t __attribute__((__pure__)) loadHWASID(pde_t *pd);

static word_t __attribute__((__const__))
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
        _fail("Invalid VM rights", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 86, __func__);
    }
}

__attribute__((__section__(".boot.text"))) void
map_it_pt_cap(cap_t pt_cap)
{
    pde_t* pd = ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(pt_cap)));
    pte_t* pt = ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(pt_cap)));
    uint32_t pdIndex = cap_page_table_cap_get_capPTMappedIndex(pt_cap);
    pde_t* targetSlot = pd + pdIndex;

    *targetSlot = pde_pde_coarse_new(
                      addrFromPPtr(pt), /* address */
                      true, /* P       */
                      0 /* Domain  */
                  );
}

__attribute__((__section__(".boot.text"))) void
map_it_frame_cap(cap_t frame_cap)
{
    pte_t* pt;
    pte_t* targetSlot;
    uint32_t index;
    void* frame = (void*)cap_frame_cap_get_capFBasePtr(frame_cap);

    pt = ((pte_t *)(cap_frame_cap_get_capFMappedObject(frame_cap)));
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
                      0 /* executable */
                  );
}

__attribute__((__section__(".boot.text"))) void
map_kernel_frame(paddr_t paddr, pptr_t vaddr, vm_rights_t vm_rights, vm_attributes_t attributes)
{
    uint32_t idx = (vaddr & ((1ul<<(pageBitsForSize(ARMSection)))-1ul)) >> pageBitsForSize(ARMSmallPage);

    if(!(vaddr >= 0xfff00000)) _assert_fail("vaddr >= PPTR_TOP", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 134, __FUNCTION__); /* vaddr lies in the region the global PT covers */

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
            0 /* executable */
        );
}

__attribute__((__section__(".boot.text"))) void
map_kernel_window(void)
{
    paddr_t phys;
    uint32_t idx;
    pde_t pde;

    /* mapping of kernelBase (virtual address) to kernel's physBase  */
    /* up to end of virtual address space minus 16M using 16M frames */
    phys = 0x10000000;
    idx = 0xe0000000 >> pageBitsForSize(ARMSection);

    while (idx < (1ul<<(12)) - (1ul<<(ARMSuperSectionBits - ARMSectionBits))) {
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
                  1 /* Write-back */
              );
        for (idx2 = idx; idx2 < idx + (1ul<<(ARMSuperSectionBits - ARMSectionBits)); idx2++) {
            armKSGlobalPD[idx2] = pde;
        }
        phys += (1ul<<(pageBitsForSize(ARMSuperSection)));
        idx += (1ul<<(ARMSuperSectionBits - ARMSectionBits));
    }

    /* steal the last MB for logging */
    while (idx < (1ul<<(12)) - 2) {




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
                  1 /* Write-back */
              );
        armKSGlobalPD[idx] = pde;
        phys += (1ul<<(pageBitsForSize(ARMSection)));
        idx++;
    }


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
              0 /* Write-through to minimise perf hit */
          );
    armKSGlobalPD[idx] = pde;
    ksLog = (word_t *) ptrFromPAddr(phys);

    /* we remove the address PADDR_TOP - 1MB from the
     * available physical memory for the sabre.
     *
     * if you are using a different platform this may need
     * adjusting or you may need to do something completely different
     * to get a 1mb, write through buffer*/
    if(!(ksLog == ((word_t *) 0xffe00000))) _assert_fail("ksLog == ((word_t *) KS_LOG_PADDR)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 236, __FUNCTION__);
    phys += (1ul<<(pageBitsForSize(ARMSection)));
    idx++;


    /* crosscheck whether we have mapped correctly so far */
    if(!(phys == (0xfff00000 - (0xe0000000 - 0x10000000)))) _assert_fail("phys == PADDR_TOP", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 242, __FUNCTION__);

    /* map page table covering last 1M of virtual address space to page directory */
    armKSGlobalPD[idx] =
        pde_pde_coarse_new(
            addrFromPPtr(armKSGlobalPT), /* address */
            true, /* P       */
            0 /* Domain  */
        );

    /* now start initialising the page table */
    memzero(armKSGlobalPT, 1 << (8 +2));

    /* map vector table */
    map_kernel_frame(
        addrFromPPtr(arm_vector_table),
        0xffff0000,
        VMKernelOnly,
        vm_attributes_new(
            false, /* armExecuteNever */
            true, /* armParityEnabled */
            true /* armPageCacheable */
        )
    );

    /* map globals frame */
    map_kernel_frame(
        addrFromPPtr(armKSGlobalsFrame),
        0xffffc000,
        VMReadOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            true, /* armParityEnabled */
            true /* armPageCacheable */
        )
    );

    /* map stack frame */
    map_kernel_frame(
        addrFromPPtr(arm_kernel_stack),
        0xfffff000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            true, /* armParityEnabled */
            true /* armPageCacheable */
        )
    );

    map_kernel_devices();
}

__attribute__((__section__(".boot.text"))) void
activate_global_pd(void)
{
    /* Ensure that there's nothing stale in newly-mapped regions, and
       that everything we've written (particularly the kernel page tables)
       is committed. */
    cleanInvalidateL1Caches();
    setCurrentPD(addrFromPPtr(armKSGlobalPD));
    invalidateTLB();
    lockTLBEntry(0xe0000000);
    lockTLBEntry(0xffff0000);
}

/* ==================== BOOT CODE FINISHES HERE ==================== */

void
copyGlobalMappings(pde_t *newPD)
{
    unsigned int i;
    pde_t *global_pd = armKSGlobalPD;

    for (i = 0xe0000000 >> ARMSectionBits; i < (1ul<<(12)); i++) {
        if (i != 0xff0) {
            newPD[i] = global_pd[i];
        }
    }
}

word_t * __attribute__((__pure__))
lookupIPCBuffer(bool_t isReceiver, tcb_t *thread)
{
    word_t w_bufferPtr;
    cap_t bufferCap;
    vm_rights_t vm_rights;

    w_bufferPtr = thread->tcbIPCBuffer;
    bufferCap = (((cte_t *)((unsigned int)(thread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbBuffer))->cap;

    if (__builtin_expect(!!(cap_get_capType(bufferCap) != cap_frame_cap), 0)) {
        return ((void *)0);
    }

    vm_rights = cap_frame_cap_get_capFVMRights(bufferCap);
    if (__builtin_expect(!!(vm_rights == VMReadWrite || (!isReceiver && vm_rights == VMReadOnly)), 1)
                                                        ) {
        word_t basePtr;
        unsigned int pageBits;

        basePtr = cap_frame_cap_get_capFBasePtr(bufferCap);
        pageBits = pageBitsForSize(cap_frame_cap_get_capFSize(bufferCap));
        return (word_t *)(basePtr + (w_bufferPtr & ((1ul<<(pageBits))-1ul)));
    } else {
        return ((void *)0);
    }
}

static unsigned int __attribute__((__const__))
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

    if (__builtin_expect(!!(pde_ptr_get_pdeType(pdSlot) != pde_pde_coarse), 0)) {
        current_lookup_fault = lookup_fault_missing_capability_new(20);

        ret.pt = ((void *)0);
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

    ptIndex = (vptr >> 12) & ((1ul<<(8))-1ul);
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
        _fail("Invalid VM fault type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 418, __func__);
    }
}

static void
invalidateASID(pde_t *pd)
{
    pd[0xff0] = pde_pde_invalid_new(0, false);
}
# 445 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c"
void
unmapPageTable(pde_t *pd, uint32_t pdIndex, pte_t* pt)
{
    if(!(pd)) _assert_fail("pd", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 448, __FUNCTION__);
    if(!(pt)) _assert_fail("pt", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 449, __FUNCTION__);
    if(!(pde_get_pdeType(pd[pdIndex]) == pde_pde_coarse)) _assert_fail("pde_get_pdeType(pd[pdIndex]) == pde_pde_coarse", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 450, __FUNCTION__);
    if(!(ptrFromPAddr (pde_pde_coarse_get_address(pd[pdIndex])) == pt)) _assert_fail("ptrFromPAddr (pde_pde_coarse_get_address(pd[pdIndex])) == pt", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 451, __FUNCTION__);

    pd[pdIndex] = pde_pde_invalid_new(0, 0);
    cleanByVA_PoU((word_t)&pd[pdIndex], addrFromPPtr(&pd[pdIndex]));
    flushTable(pd, pdIndex << 20, pt);
}

void
unmapAllPageTables(pde_t *pd)
{
    unsigned int i;

    for (i = 0; i < 0xe0000000 >> ARMSectionBits;) {
        switch (pde_get_pdeType(pd[i])) {
        case pde_pde_coarse: {
            cap_t ptCap;
            cte_t *ptCte;
            ptCte = cdtFind(cap_page_table_cap_new(((unsigned int)(pd)), i, (uint32_t)paddr_to_pptr(pde_pde_coarse_get_address(pd[i]))));
            if(!(ptCte)) _assert_fail("ptCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 469, __FUNCTION__);
            ptCap = cap_page_table_cap_set_capPTMappedObject(ptCte->cap, 0);
            cdtUpdate(ptCte, ptCap);
            unmapPageTable(pd, i, ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(ptCap))));
            i++;
            break;
        }
        case pde_pde_section:
            if (pde_pde_section_get_size(pd[i])) {
                cap_t frameCap;
                cte_t *frameCte;
                frameCte = cdtFind(cap_frame_cap_new(((uint32_t)(pd) >> 12), i, ARMSuperSection, 0, ( ((uint32_t)(pd) >> 10) & ((1ul<<(2))-1ul)), (uint32_t)paddr_to_pptr(pde_pde_section_get_address(pd[i]))));
                if(!(frameCte)) _assert_fail("frameCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 481, __FUNCTION__);
                frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
                cdtUpdate(frameCte, frameCap);
                unmapPagePDE(ARMSuperSection, pd, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
                i++;
            } else {
                cap_t frameCap;
                cte_t *frameCte;
                frameCte = cdtFind(cap_frame_cap_new(((uint32_t)(pd) >> 12), i, ARMSection, 0, ( ((uint32_t)(pd) >> 10) & ((1ul<<(2))-1ul)), (uint32_t)paddr_to_pptr(pde_pde_section_get_address(pd[i]))));
                if(!(frameCte)) _assert_fail("frameCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 490, __FUNCTION__);
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

    ptCte = cdtFindWithExtra(cap_page_table_cap_new(0, 0, ((unsigned int)(pt))));
    if(!(ptCte)) _assert_fail("ptCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 526, __FUNCTION__);
    pd = ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(ptCte->cap)));
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
        if(!(pte_get_pteType(pt[ptIndex]) == pte_pte_small)) _assert_fail("pte_get_pteType(pt[ptIndex]) == pte_pte_small", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 539, __FUNCTION__);
        if(!(pte_pte_small_get_address(pt[ptIndex]) == addr)) _assert_fail("pte_pte_small_get_address(pt[ptIndex]) == addr", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 540, __FUNCTION__);

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
        if(!(pte_get_pteType(pt[ptIndex]) == pte_pte_large)) _assert_fail("pte_get_pteType(pt[ptIndex]) == pte_pte_large", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 558, __FUNCTION__);
        if(!(pte_pte_large_get_address(pt[ptIndex]) == addr)) _assert_fail("pte_pte_large_get_address(pt[ptIndex]) == addr", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 559, __FUNCTION__);

        for (i = 0; i < (1ul<<(ARMLargePageBits - ARMSmallPageBits)); i++) {
            pt[ptIndex + i] = pte_pte_invalid_new();
        }
        cleanCacheRange_PoU((word_t)&pt[ptIndex],
                            ((word_t)&(&pt[ptIndex])[((1ul<<(ARMLargePageBits - ARMSmallPageBits)))-1] + ((1ul<<(2))-1)),
                            addrFromPPtr(&pt[ptIndex]));

        break;
    }
    default:
        _fail("Invalid page size", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 571, __func__);
    }

    if (pd) {
        flushPage(page_size, pd, (pdIndex << 20) | (ptIndex << 12));
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

        if(!(pde_get_pdeType(pd[pdIndex]) == pde_pde_section)) _assert_fail("pde_get_pdeType(pd[pdIndex]) == pde_pde_section", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 596, __FUNCTION__);
        if(!(pde_pde_section_get_size(pd[pdIndex]) == 0)) _assert_fail("pde_pde_section_get_size(pd[pdIndex]) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 597, __FUNCTION__);
        if(!(pde_pde_section_get_address(pd[pdIndex]) == addr)) _assert_fail("pde_pde_section_get_address(pd[pdIndex]) == addr", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 598, __FUNCTION__);

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

        if(!(pde_get_pdeType(pd[pdIndex]) == pde_pde_section)) _assert_fail("pde_get_pdeType(pd[pdIndex]) == pde_pde_section", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 617, __FUNCTION__);
        if(!(pde_pde_section_get_size(pd[pdIndex]) == 1)) _assert_fail("pde_pde_section_get_size(pd[pdIndex]) == 1", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 618, __FUNCTION__);
        if(!(pde_pde_section_get_address(pd[pdIndex]) == addr)) _assert_fail("pde_pde_section_get_address(pd[pdIndex]) == addr", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 619, __FUNCTION__);

        for (i = 0; i < (1ul<<(ARMSuperSectionBits - ARMSectionBits)); i++) {
            pd[pdIndex + i] = pde_pde_invalid_new(0, 0);
        }
        cleanCacheRange_PoU((word_t)&pd[pdIndex], ((word_t)&(&pd[pdIndex])[((1ul<<(ARMSuperSectionBits - ARMSectionBits)))-1] + ((1ul<<(2))-1)),
                            addrFromPPtr(&pd[pdIndex]));

        break;
    }

    default:
        _fail("Invalid ARM page type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 631, __func__);
        break;
    }

    /* Flush the page now that the mapping has been updated */
    flushPage(page_size, pd, pdIndex << 20);
}

void unmapAllPages(pde_t *pd, uint32_t pdIndex, pte_t *pt)
{
    uint32_t i;
    for (i = 0; i < (1ul<<(8));) {
        switch (pte_get_pteType(pt[i])) {
        case pte_pte_small: {
            cte_t *frameCte;
            cap_t frameCap;
            frameCte = cdtFind(cap_frame_cap_new(((uint32_t)(pt) >> 12), i, ARMSmallPage, 0, ( ((uint32_t)(pt) >> 10) & ((1ul<<(2))-1ul)), (uint32_t)paddr_to_pptr(pte_pte_small_ptr_get_address(pt + i))));
            if(!(frameCte)) _assert_fail("frameCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 648, __FUNCTION__);
            frameCap = cap_frame_cap_set_capFMappedObject(frameCte->cap, 0);
            cdtUpdate(frameCte, frameCap);
            unmapPagePTE(ARMSmallPage, pt, i, (void *)cap_frame_cap_get_capFBasePtr(frameCap));
            i++;
            break;
        }
        case pte_pte_large: {
            cte_t *frameCte;
            cap_t frameCap;
            frameCte = cdtFind(cap_frame_cap_new(((uint32_t)(pt) >> 12), i, ARMLargePage, 0, ( ((uint32_t)(pt) >> 10) & ((1ul<<(2))-1ul)), (uint32_t)paddr_to_pptr(pte_pte_large_ptr_get_address(pt + i))));
            if(!(frameCte)) _assert_fail("frameCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 659, __FUNCTION__);
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

    threadRoot = (((cte_t *)((unsigned int)(tcb)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable))->cap;

    if (cap_get_capType(threadRoot) != cap_page_directory_cap) {
        setCurrentPD(addrFromPPtr(armKSGlobalPD));
        return;
    }

    pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(threadRoot)));

    armv_contextSwitch(pd);
}

static bool_t
setVMRootForFlush(pde_t* pd)
{
    cap_t threadRoot;

    threadRoot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable))->cap;

    if (cap_get_capType(threadRoot) == cap_page_directory_cap &&
            ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(threadRoot))) == pd) {
        return false;
    }

    armv_contextSwitch(pd);

    return true;
}

bool_t __attribute__((__const__))
isValidVTableRoot(cap_t cap)
{
    return cap_get_capType(cap) == cap_page_directory_cap;
}

exception_t
checkValidIPCBuffer(vptr_t vptr, cap_t cap)
{
    if (__builtin_expect(!!(cap_get_capType(cap) != cap_frame_cap), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 718, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Requested IPC Buffer is not a frame cap."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(vptr & ((1ul<<(9))-1ul)), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 725, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Requested IPC Buffer location 0x%x is not aligned.", (int)vptr); kprintf(">>" "\033[0m" "\n"); } while (0)
                            ;
        current_syscall_error.type = seL4_AlignmentError;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

vm_rights_t __attribute__((__const__))
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
    pd[0xff0] = pde_pde_invalid_new(hw_asid, true);

    armKSHWASIDTable[hw_asid] = pd;
}

static pde_t __attribute__((__pure__))
loadHWASID(pde_t *pd)
{
    return pd[0xff0];
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
    armKSHWASIDTable[hw_asid] = ((void *)0);

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

    if(!((vptr & ((1ul<<(pageBitsForSize(page_size)))-1ul)) == 0)) _assert_fail("(vptr & MASK(pageBitsForSize(page_size))) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 829, __FUNCTION__);

    /* Switch to the address space to allow a cache clean by VA */
    root_switched = setVMRootForFlush(pd);
    stored_hw_asid = loadHWASID(pd);

    if (pde_pde_invalid_get_stored_asid_valid(stored_hw_asid)) {
        base_addr = vptr & ~((1ul<<(12))-1ul);

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

    if(!((vptr & ((1ul<<(8 + ARMSmallPageBits))-1ul)) == 0)) _assert_fail("(vptr & MASK(PT_BITS + ARMSmallPageBits)) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 853, __FUNCTION__);

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

static pte_t __attribute__((__const__))
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
        _fail("Invalid PTE frame type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 928, __func__);
    }

    return pte;
}

static pde_t __attribute__((__const__))
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
        _fail("Invalid PDE frame type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 953, __func__);
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

static inline bool_t __attribute__((__const__))
checkVPAlignment(vm_page_size_t sz, word_t w)
{
    return (w & ((1ul<<(pageBitsForSize(sz)))-1ul)) == 0;
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
        if (__builtin_expect(!!(! cdtIsFinal(cte)), 0)) {
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageTableInvocationUnmap (cap, cte);
    }

    if (__builtin_expect(!!(label != ARMPageTableMap), 0)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(length < 2 || extraCaps.excaprefs[0] == ((void *)0)), 0)) {
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(cdtFindWithExtra(cap)), 0)) {
        current_syscall_error.type =
            seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vaddr = getSyscallArg(0, buffer);
    attr = vmAttributesFromWord(getSyscallArg(1, buffer));
    pdCap = extraCaps.excaprefs[0]->cap;

    if (__builtin_expect(!!(cap_get_capType(pdCap) != cap_page_directory_cap), 0)) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(pdCap)));

    if (__builtin_expect(!!(vaddr >= 0xe0000000), 0)) {
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pdIndex = vaddr >> 20;
    pdSlot = &pd[pdIndex];
    if (__builtin_expect(!!(pde_ptr_get_pdeType(pdSlot) != pde_pde_invalid), 0)) {
        current_syscall_error.type = seL4_DeleteFirst;

        return EXCEPTION_SYSCALL_ERROR;
    }

    paddr = addrFromPPtr(
                ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap))));
    pde = pde_pde_coarse_new(
              paddr,
              vm_attributes_get_armParityEnabled(attr),
              0 /* Domain */
          );

    cap = cap_page_table_cap_set_capPTMappedObject(cap, ((unsigned int)(pd)));
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

        ret.pte_entries.pt = ((void *)0); /* to avoid uninitialised warning */
        ret.pte_entries.start = 0;
        ret.pte_entries.length = 1;

        ret.pte = makeUserPTE(ARMSmallPage, base,
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              vmRights);

        lu_ret = lookupPTSlot(pd, vaddr);
        if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
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

        if (__builtin_expect(!!(pte_get_pteType(ret.pte_entries.pt[ret.pte_entries.start]) != pte_pte_invalid), 0)
                                     ) {
            current_syscall_error.type =
                seL4_DeleteFirst;

            ret.status = EXCEPTION_SYSCALL_ERROR;
            return ret;
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    case ARMLargePage:

        ret.pte_entries.pt = ((void *)0); /* to avoid uninitialised warning */
        ret.pte_entries.start = 0;
        ret.pte_entries.length = (1ul<<(ARMLargePageBits - ARMSmallPageBits));

        ret.pte = makeUserPTE(ARMLargePage, base,
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              vmRights);

        lu_ret = lookupPTSlot(pd, vaddr);
        if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
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

        for (i = 0; i < (1ul<<(ARMLargePageBits - ARMSmallPageBits)); i++) {
            if (__builtin_expect(!!(pte_get_pteType(ret.pte_entries.pt[ret.pte_entries.start + i]) != pte_pte_invalid), 0)
                                         ) {
                current_syscall_error.type =
                    seL4_DeleteFirst;

                ret.status = EXCEPTION_SYSCALL_ERROR;
                return ret;
            }
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        _fail("Invalid or unexpected ARM page type.", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1168, __func__);

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
        if (__builtin_expect(!!(currentPDEType != pde_pde_invalid), 0)) {
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
        ret.pde_entries.length = (1ul<<(ARMSuperSectionBits - ARMSectionBits));

        ret.pde = makeUserPDE(ARMSuperSection, base,
                              vm_attributes_get_armParityEnabled(attr),
                              vm_attributes_get_armPageCacheable(attr),
                              vm_attributes_get_armExecuteNever(attr),
                              0,
                              vmRights);

        for (i = 0; i < (1ul<<(ARMSuperSectionBits - ARMSectionBits)); i++) {
            currentPDEType =
                pde_get_pdeType(ret.pde_entries.pd[ret.pde_entries.start + i]);
            if (__builtin_expect(!!(currentPDEType != pde_pde_invalid), 0)) {
                current_syscall_error.type =
                    seL4_DeleteFirst;
                ret.status = EXCEPTION_SYSCALL_ERROR;

                return ret;
            }
        }

        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        _fail("Invalid or unexpected ARM page type.", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1239, __func__);

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

        if (__builtin_expect(!!(length < 3 || extraCaps.excaprefs[0] == ((void *)0)), 0)) {
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

        if (__builtin_expect(!!(cap_frame_cap_get_capFMappedObject(cap)), 0)) {
            current_syscall_error.type =
                seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;

            return EXCEPTION_SYSCALL_ERROR;
        }

        if (__builtin_expect(!!(cap_get_capType(pdCap) != cap_page_directory_cap), 0)) {
            current_syscall_error.type =
                seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }
        pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr( pdCap)))
                                ;

        vtop = vaddr + (1ul<<(pageBitsForSize(frameSize))) - 1;

        if (__builtin_expect(!!(vtop >= 0xe0000000), 0)) {
            current_syscall_error.type =
                seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;

            return EXCEPTION_SYSCALL_ERROR;
        }

        vmRights =
            maskVMRights(capVMRights, rightsFromWord(w_rightsMask));

        if (__builtin_expect(!!(!checkVPAlignment(frameSize, vaddr)), 0)) {
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
            if (__builtin_expect(!!(map_ret.status != EXCEPTION_NONE), 0)) {
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
            if (__builtin_expect(!!(map_ret.status != EXCEPTION_NONE), 0)) {
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1366, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Page Flush: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        frameSize = cap_frame_cap_get_capFSize(cap);

        if (frameSize == ARMSmallPage || frameSize == ARMLargePage) {
            pt = ((pte_t *)(cap_frame_cap_get_capFMappedObject(cap)));
            if (__builtin_expect(!!(!pt), 0)) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1376, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Page Flush: Frame is not mapped."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }
            ptIndex = cap_frame_cap_get_capFMappedIndex(cap);

            ptCte = cdtFindWithExtra(cap_page_table_cap_new(0, 0, ((unsigned int)(pt))));
            if(!(ptCte)) _assert_fail("ptCte", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1383, __FUNCTION__);
            pd = ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(ptCte->cap)));
            if (__builtin_expect(!!(!pd), 0)) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1386, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Page Flush: Page Table is not mapped."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }

            pdIndex = cap_page_table_cap_get_capPTMappedIndex(ptCte->cap);

            vaddr = (pdIndex << 20) | (ptIndex << 12);
        } else {
            pd = ((pde_t *)(cap_frame_cap_get_capFMappedObject(cap)));
            if (__builtin_expect(!!(!pd), 0)) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1397, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Page Flush: Frame is not mapped."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_IllegalOperation;
                return EXCEPTION_SYSCALL_ERROR;
            }
            pdIndex = cap_frame_cap_get_capFMappedIndex(cap);

            vaddr = (pdIndex << 20);
        }

        /* start and end are currently relative inside this page */
        start = getSyscallArg(0, buffer);
        end = getSyscallArg(1, buffer);

        /* check that the range is sane */
        if (end <= start) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1412, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("PageFlush: Invalid range"); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 1;
            return EXCEPTION_SYSCALL_ERROR;
        }

        page_size = 1 << pageBitsForSize(frameSize);
        page_base = addrFromPPtr((void*)cap_frame_cap_get_capFBasePtr(cap));

        if (start >= page_size || end > page_size) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1422, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Page Flush: Requested range not inside page"); kprintf(">>" "\033[0m" "\n"); } while (0);
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
        if(!(n_msgRegisters >= 1)) _assert_fail("n_msgRegisters >= 1", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1441, __FUNCTION__);

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
    return vaddr & ~((1ul<<(pageBitsForSize(size)))-1ul);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1519, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("PD Flush: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        start = getSyscallArg(0, buffer);
        end = getSyscallArg(1, buffer);

        /* Check sanity of arguments */
        if (end <= start) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1529, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("PD Flush: Invalid range"); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 1;
            return EXCEPTION_SYSCALL_ERROR;
        }

        /* Don't let applications flush kernel regions. */
        if (start >= 0xe0000000 || end > 0xe0000000) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 1537, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("PD Flush: Overlaps kernel region."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));

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
                ((1ul<<(pageBitsForSize(resolve_ret.frameSize)))-1ul);
            return EXCEPTION_SYSCALL_ERROR;
        }


        /* Calculate the physical start address. */
        pstart = resolve_ret.frameBase
                 + (start & ((1ul<<(pageBitsForSize(resolve_ret.frameSize)))-1ul));


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
        _fail("Invalid ARM arch cap type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1602, __func__);
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
            ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(cap))),
            cap_page_table_cap_get_capPTMappedIndex(cap),
            ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap))));
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
    unsigned int i, j __attribute__((unused));

    cap = cap_frame_cap_set_capFMappedObject(cap, ((unsigned int)(pte_entries.pt)));
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
                        ((word_t)((word_t)&(pte_entries.pt + pte_entries.start)[(pte_entries.length)-1] + ((1ul<<(2))-1))),
                        addrFromPPtr(pte_entries.pt + pte_entries.start));

    return EXCEPTION_NONE;
}

exception_t
performPageInvocationMapPDE(cap_t cap, cte_t *ctSlot, pde_t pde,
                            pde_range_t pde_entries)
{
    unsigned int i;

    cap = cap_frame_cap_set_capFMappedObject(cap, ((unsigned int)(pde_entries.pd)));
    cap = cap_frame_cap_set_capFMappedIndex(cap, pde_entries.start);
    cdtUpdate(ctSlot, cap);

    for (i = 0; i < pde_entries.length; i++) {
        pde_entries.pd[pde_entries.start + i] = pde;
    }
    cleanCacheRange_PoU((word_t)&pde_entries.pd[pde_entries.start],
                        ((word_t)((word_t)&(pde_entries.pd + pde_entries.start)[(pde_entries.length)-1] + ((1ul<<(2))-1))),
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
                         ((pte_t *)(cap_frame_cap_get_capFMappedObject(cap))),
                         cap_frame_cap_get_capFMappedIndex(cap),
                         (void *)cap_frame_cap_get_capFBasePtr(cap));
            break;
        case ARMSection:
        case ARMSuperSection:
            unmapPagePDE(cap_frame_cap_get_capFSize(cap),
                         ((pde_t *)(cap_frame_cap_get_capFMappedObject(cap))),
                         cap_frame_cap_get_capFMappedIndex(cap),
                         (void *)cap_frame_cap_get_capFBasePtr(cap));
            break;
        default:
            _fail("Invalid ARM page type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1713, __func__);
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
        _fail("Invalid operation, shouldn't get here.\n", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c", 1759, __func__);
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


void kernelPrefetchAbort(word_t pc) __attribute__((externally_visible));
void kernelDataAbort(word_t pc) __attribute__((externally_visible));

void
kernelPrefetchAbort(word_t pc)
{
    word_t ifsr = getIFSR();

    kprintf("\n\nKERNEL PREFETCH ABORT!\n");
    kprintf("Faulting instruction: 0x%x\n", (unsigned int)pc);
    kprintf("IFSR: 0x%x\n", (unsigned int)ifsr);

    halt();
}

void
kernelDataAbort(word_t pc)
{
    word_t dfsr = getDFSR();
    word_t far = getFAR();

    kprintf("\n\nKERNEL DATA ABORT!\n");
    kprintf("Faulting instruction: 0x%x\n", (unsigned int)pc);
    kprintf("FAR: 0x%x DFSR: 0x%x\n", (unsigned int)far, (unsigned int)dfsr);

    halt();
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c" 2





static void
cleanCacheRange_PoC(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
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
    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
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

    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
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
    if (start != (((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))) {
        cleanCacheRange_RAM(start, start, pstart);
    }
    if (end + 1 != (((end + 1) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))) {
        line = (((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */));
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
    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
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

    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
        invalidateByVA_I(line, pstart + (line - start));
    }
}

void
branchFlushRange(vptr_t start, vptr_t end, paddr_t pstart)
{
    vptr_t line;
    word_t index;

    for (index = ((((start) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */); index < ((((end) >> (5 /* 32 bytes */)) << (5 /* 32 bytes */))>>5 /* 32 bytes */) + 1; index++) {
        line = index << 5 /* 32 bytes */;
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */



# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/capdl.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/debug_helpers.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/debug_helpers.h" 2
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c" 2






static int getDecodedChar(unsigned char *result)
{
    unsigned char c;
    c = getDebugChar();
    if (c == 0xff) {
        return 1;
    }
    if (c == 0xaa) {
        c = getDebugChar();
        if (c == 0xff) {
            return 1;
        }
        switch (c) {
        case 0xa1:
            *result = 0xaa;
            break;
        case 0xa0:
            *result = 0xff;
            break;
        case 0xa2:
            *result = 0xbb;
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
    case 0xaa:
        putDebugChar(0xaa);
        putDebugChar(0xa1);
        break;
    case 0xff:
        putDebugChar(0xaa);
        putDebugChar(0xa0);
        break;
    case 0xbb:
        putDebugChar(0xaa);
        putDebugChar(0xa2);
        break;
    default:
        if (c < 20) {
            putDebugChar(0xaa);
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
    for (i = 0; i < (1ul<<(12)); i++) {
        pde_t pde = start[i];
        exists = 0;
        if (pde_get_pdeType(pde) == pde_pde_coarse && pde_pde_coarse_get_address(pde) != 0) {
            exists = 1;
        } else if (pde_get_pdeType(pde) == pde_pde_section && (pde_pde_section_get_address(pde) != 0 ||
                                                               pde_pde_section_get_AP(pde))) {
            exists = 1;
        }
        if (exists != 0 && i < 0xe0000000 >> pageBitsForSize(ARMSection)) {
            sendWord(i);
            sendWord(pde.words[0]);
        }
    }
}

static void sendPT(unsigned int address)
{
    unsigned int i, exists;
    pte_t *start = (pte_t *)address;
    for (i = 0; i < (1ul<<(8)); i++) {
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
    for (i = 0; i < (1 * 256); i++) {
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
    sendWord(0xe0);
    sendWord(0);
}

void capDL(void)
{
    int result;
    int done = 0;
    while (done == 0) {
        unsigned char c;
        do {
            c = getDebugChar();
        } while (c != 0xff);
        do {
            result = getDecodedChar(&c);
            if (result) {
                continue;
            }
            switch (c) {
            case 0xf0: {
                /*pgdir */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendPD(arg);
                putDebugChar(0xbb);
            }
            break;
            case 0xf5: {
                /*pg table */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendPT(arg);
                putDebugChar(0xbb);
            }
            break;
            case 0xf1: {
                /*runqueues */
                sendRunqueues();
                putDebugChar(0xbb);
                result = 0;
            }
            break;
            case 0xf2: {
                /*endpoint waiters */
                unsigned int arg;
                result = getArg32(&arg);
                if (result) {
                    continue;
                }
                sendEPQueue(arg);
                putDebugChar(0xbb);
            }
            break;
            case 0xf3: {
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
                putDebugChar(0xbb);
            }
            break;
            case 0xf4: {
                sendIRQNode();
                putDebugChar(0xbb);
                result = 0;
            }
            break;
            case 0xf8: {
                sendVersion();
                putDebugChar(0xbb);
            }
            break;
            case 0xf9: {
                done = 1;
                putDebugChar(0xbb);
            }
            default:
                result = 0;
                break;
            }
        } while (result);
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 2

void debug_init(void) __attribute__((externally_visible));

typedef void (*break_handler_t)(user_context_t *context);

void software_breakpoint(uint32_t va, user_context_t *context) __attribute__((externally_visible));
void breakpoint_multiplexer(uint32_t va, user_context_t *context) __attribute__((externally_visible));

int set_breakpoint(uint32_t va, break_handler_t handler) __attribute__((externally_visible));
void clear_breakpoint(uint32_t va) __attribute__((externally_visible));

enum vector_ids {
    VECTOR_RESET = 0,
    VECTOR_UNDEFINED = 1,
    VECTOR_SWI = 2,
    VECTOR_PREFETCH_ABORT = 3,
    VECTOR_DATA_ABORT = 4,
    VECTOR_IRQ = 6,
    VECTOR_FIQ = 7
};
typedef uint32_t vector_t;

typedef void (*catch_handler_t)(user_context_t *context, vector_t vector);

void set_catch_handler(catch_handler_t handler) __attribute__((externally_visible));
void catch_vector(vector_t vector) __attribute__((externally_visible));
void uncatch_vector(vector_t vector) __attribute__((externally_visible));


/*********************************/
/*** cp14 register definitions ***/
/*********************************/

/* Debug ID Register */
# 65 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
static inline uint32_t
getDIDR(void)
{
    uint32_t x;

    __asm__ volatile("mrc p14, 0, %0, c0, c0, 0" : "=r"(x));

    return x;
}


/* Debug Status and Control Register */
# 92 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
static inline uint32_t
getDSCR(void)
{
    uint32_t x;

    __asm__ volatile("mrc p14, 0, %0, c0, c1, 0" : "=r"(x));

    return x;
}

static inline void
setDSCR(uint32_t x)
{
    __asm__ volatile("mcr p14, 0, %0, c0, c1, 0" : : "r"(x));
}


/* Vector Catch Register */
# 119 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
static inline uint32_t
getVCR(void)
{
    uint32_t x;

    __asm__ volatile("mrc p14, 0, %0, c0, c7, 0" : "=r"(x));

    return x;
}

static inline void
setVCR(uint32_t x)
{
    __asm__ volatile("mcr p14, 0, %0, c0, c7, 0" : : "r"(x));
}

/* Breakpoint Value Registers */
static inline uint32_t
getBVR(int n)
{
    uint32_t x;

    switch (n) {
    case 0:
        __asm__ volatile("mrc p14, 0, %0, c0, c0, 4" : "=r"(x));
        break;
    case 1:
        __asm__ volatile("mrc p14, 0, %0, c0, c1, 4" : "=r"(x));
        break;
    case 2:
        __asm__ volatile("mrc p14, 0, %0, c0, c2, 4" : "=r"(x));
        break;
    case 3:
        __asm__ volatile("mrc p14, 0, %0, c0, c3, 4" : "=r"(x));
        break;
    case 4:
        __asm__ volatile("mrc p14, 0, %0, c0, c4, 4" : "=r"(x));
        break;
    case 5:
        __asm__ volatile("mrc p14, 0, %0, c0, c5, 4" : "=r"(x));
        break;
    default:
        break;
    }

    return x;
}

static inline void
setBVR(int n, uint32_t x)
{
    switch (n) {
    case 0:
        __asm__ volatile("mcr p14, 0, %0, c0, c0, 4" : : "r"(x));
        break;
    case 1:
        __asm__ volatile("mcr p14, 0, %0, c0, c1, 4" : : "r"(x));
        break;
    case 2:
        __asm__ volatile("mcr p14, 0, %0, c0, c2, 4" : : "r"(x));
        break;
    case 3:
        __asm__ volatile("mcr p14, 0, %0, c0, c3, 4" : : "r"(x));
        break;
    case 4:
        __asm__ volatile("mcr p14, 0, %0, c0, c4, 4" : : "r"(x));
        break;
    case 5:
        __asm__ volatile("mcr p14, 0, %0, c0, c5, 4" : : "r"(x));
        break;
    default:
        break;
    }
}


/* Breakpoint Control Registers */
# 204 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
static inline uint32_t
getBCR(int n)
{
    uint32_t x;

    switch (n) {
    case 0:
        __asm__ volatile("mrc p14, 0, %0, c0, c0, 5" : "=r"(x));
        break;
    case 1:
        __asm__ volatile("mrc p14, 0, %0, c0, c1, 5" : "=r"(x));
        break;
    case 2:
        __asm__ volatile("mrc p14, 0, %0, c0, c2, 5" : "=r"(x));
        break;
    case 3:
        __asm__ volatile("mrc p14, 0, %0, c0, c3, 5" : "=r"(x));
        break;
    case 4:
        __asm__ volatile("mrc p14, 0, %0, c0, c4, 5" : "=r"(x));
        break;
    case 5:
        __asm__ volatile("mrc p14, 0, %0, c0, c5, 5" : "=r"(x));
        break;
    default:
        break;
    }

    return x;
}

static inline void
setBCR(int n, uint32_t x)
{
    switch (n) {
    case 0:
        __asm__ volatile("mcr p14, 0, %0, c0, c0, 5" : : "r"(x));
        break;
    case 1:
        __asm__ volatile("mcr p14, 0, %0, c0, c1, 5" : : "r"(x));
        break;
    case 2:
        __asm__ volatile("mcr p14, 0, %0, c0, c2, 5" : : "r"(x));
        break;
    case 3:
        __asm__ volatile("mcr p14, 0, %0, c0, c3, 5" : : "r"(x));
        break;
    case 4:
        __asm__ volatile("mcr p14, 0, %0, c0, c4, 5" : : "r"(x));
        break;
    case 5:
        __asm__ volatile("mcr p14, 0, %0, c0, c5, 5" : : "r"(x));
        break;
    default:
        break;
    }
}
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c" 2

typedef struct {
    uint32_t va;
    break_handler_t handler;
} breakpoint_t;

breakpoint_t breakpoints[16] __attribute__((externally_visible));
int n_breakpoints;

void
debug_init(void)
{
    uint32_t didr;
    int version, variant, revision;
    unsigned int i;

    didr = getDIDR();
    n_breakpoints = ((didr >> 24) & ((1ul<<(4))-1ul)) + 1;
    version = (didr >> 16) & ((1ul<<(4))-1ul);
    variant = (didr >> 4) & ((1ul<<(4))-1ul);
    revision = (didr >> 0) & ((1ul<<(4))-1ul);

    kprintf("debug_init:  variant %d  revision %d  debug version %d\n", variant, revision, version)
                                      ;
    kprintf("debug_init:  breakpoint registers %d\n", n_breakpoints);

    /* Enable monitor mode debugging */
    setDSCR((1ul<<(15)));

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

    kprintf("Software breakpoint at %x, context:\n", (unsigned int)va);
    for (i = 0; i < 10; i++) {
        kprintf("r%d  %x\n", i, (unsigned int)context->registers[i]);
    }
    for (i = 10; i < 15; i++) {
        kprintf("r%d %x\n", i, (unsigned int)context->registers[i]);
    }
    kprintf("LR_abt %x\n", (unsigned int)context->registers[15]);
    kprintf("CPSR %x\n", (unsigned int)context->registers[16]);

    kprintf("ksCurThread context:\n");
    for (i = 0; i < 10; i++) {
        kprintf("r%d  %x\n", i, (unsigned int)ksCurThread->tcbArch.tcbContext.registers[i])
                                                                          ;
    }
    for (i = 10; i < 15; i++) {
        kprintf("r%d %x\n", i, (unsigned int)ksCurThread->tcbArch.tcbContext.registers[i])
                                                                          ;
    }
    kprintf("LR_abt %x\n", (unsigned int)ksCurThread->tcbArch.tcbContext.registers[15]);
    kprintf("CPSR %x\n", (unsigned int)ksCurThread->tcbArch.tcbContext.registers[16]);
}

void
breakpoint_multiplexer(uint32_t va, user_context_t *context)
{
    unsigned int i;

    for (i = 0; i < n_breakpoints && (breakpoints[i].va != va ||
                                      !breakpoints[i].handler); i++);

    if (i == n_breakpoints) {
        kprintf("Unhandled breakpoint @ %x\n", (unsigned int)va);
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
    setBCR(i, (0xf << 5) |
           (0x3 << 1) |
           (1ul<<(0)));

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

catch_handler_t catch_handler __attribute__((externally_visible));

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
    vcr |= (1ul<<(vector));
    setVCR(vcr);
}

void
uncatch_vector(vector_t vector)
{
    uint32_t vcr;

    vcr = getVCR();
    vcr &= ~(1ul<<(vector));
    setVCR(vcr);
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c" 2

/* Prototyped here as this is referenced from assembly */
void arm_errata(void);
# 70 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c"
__attribute__((__section__(".boot.text"))) void __attribute__((externally_visible)) arm_errata(void)
{







}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/gic_pl390.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * ARM Generic Interrupt Controller PL-390
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c" 2


/* Setters/getters helpers */
# 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c"
/* Special IRQ's */



/* Memory map for GIC distributor */
struct gic_dist_map {
    uint32_t enable; /* 0x000 */
    uint32_t ic_type; /* 0x004 */
    uint32_t dist_ident; /* 0x008 */
    uint32_t res1[29]; /* [0x00C, 0x080) */

    uint32_t security[32]; /* [0x080, 0x100) */

    uint32_t enable_set[32]; /* [0x100, 0x180) */
    uint32_t enable_clr[32]; /* [0x180, 0x200) */
    uint32_t pending_set[32]; /* [0x200, 0x280) */
    uint32_t pending_clr[32]; /* [0x280, 0x300) */
    uint32_t active[32]; /* [0x300, 0x380) */
    uint32_t res2[32]; /* [0x380, 0x400) */

    uint32_t priority[255]; /* [0x400, 0x7FC) */
    uint32_t res3; /* 0x7FC */

    uint32_t targets[255]; /* [0x800, 0xBFC) */
    uint32_t res4; /* 0xBFC */

    uint32_t config[64]; /* [0xC00, 0xD00) */

    uint32_t spi[32]; /* [0xD00, 0xD80) */
    uint32_t res5[20]; /* [0xD80, 0xDD0) */
    uint32_t res6; /* 0xDD0 */
    uint32_t legacy_int; /* 0xDD4 */
    uint32_t res7[2]; /* [0xDD8, 0xDE0) */
    uint32_t match_d; /* 0xDE0 */
    uint32_t enable_d; /* 0xDE4 */
    uint32_t res8[70]; /* [0xDE8, 0xF00) */

    uint32_t sgi_control; /* 0xF00 */
    uint32_t res9[3]; /* [0xF04, 0xF10) */
    uint32_t sgi_pending_clr[4]; /* [0xF10, 0xF20) */
    uint32_t res10[40]; /* [0xF20, 0xFC0) */

    uint32_t periph_id[12]; /* [0xFC0, 0xFF0) */
    uint32_t component_id[4]; /* [0xFF0, 0xFFF] */
};


/* Memory map for GIC  cpu interface */
struct gic_cpu_iface_map {
    uint32_t icontrol; /*  0x000         */
    uint32_t pri_msk_c; /*  0x004         */
    uint32_t pb_c; /*  0x008         */
    uint32_t int_ack; /*  0x00C         */
    uint32_t eoi; /*  0x010         */
    uint32_t run_priority; /*  0x014         */
    uint32_t hi_pend; /*  0x018         */
    uint32_t ns_alias_bp_c; /*  0x01C         */
    uint32_t ns_alias_ack; /*  0x020 GIC400 only */
    uint32_t ns_alias_eoi; /*  0x024 GIC400 only */
    uint32_t ns_alias_hi_pend; /*  0x028 GIC400 only */

    uint32_t res1[5]; /* [0x02C, 0x040) */

    uint32_t integ_en_c; /*  0x040 PL390 only */
    uint32_t interrupt_out; /*  0x044 PL390 only */
    uint32_t res2[2]; /* [0x048, 0x050)    */

    uint32_t match_c; /*  0x050 PL390 only */
    uint32_t enable_c; /*  0x054 PL390 only */

    uint32_t res3[30]; /* [0x058, 0x0FC)  */
    uint32_t active_priority[4]; /* [0x0D0, 0xDC] GIC400 only */
    uint32_t ns_active_priority[4]; /* [0xE0,0xEC] GIC400 only */
    uint32_t res4[3];

    uint32_t cpu_if_ident; /*  0x0FC         */
    uint32_t res5[948]; /* [0x100. 0xFC0) */

    uint32_t periph_id[8]; /* [0xFC0, 9xFF0) PL390 only */
    uint32_t component_id[4]; /* [0xFF0, 0xFFF] PL390 only */
};




volatile struct gic_dist_map *gic_dist =
    (volatile struct gic_dist_map*)((0xfff05000 ));





volatile struct gic_cpu_iface_map *gic_cpuiface =
    (volatile struct gic_cpu_iface_map*)((0xfff04000 + 0x100 ));



/* Helpers */
static inline int
is_irq_pending(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->pending_set[word] & (1ul<<(bit)));
}

static inline int
is_irq_active(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->active[word] & (1ul<<(bit)));
}

static inline int
is_irq_enabled(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    return !!(gic_dist->enable_set[word] & (1ul<<(bit)));
}

static inline int
is_irq_edge_triggered(irq_t irq)
{
    int word = irq / 16;
    int bit = ((irq & 0xf) * 2);
    return !!(gic_dist->config[word] & (1ul<<(bit + 1)));
}

static inline int
is_irq_1_N(irq_t irq)
{
    int word = irq / 16;
    int bit = ((irq & 0xf) * 2);
    return !!(gic_dist->config[word] & (1ul<<(bit + 0)));
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
    gic_dist->pending_clr[word] = (1ul<<(bit));
}

static inline void
dist_pending_set(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    gic_dist->pending_set[word] = (1ul<<(bit));
}

static inline void
dist_enable_clr(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    /* Using |= here is detrimental to your health */
    gic_dist->enable_clr[word] = (1ul<<(bit));
}

static inline void
dist_enable_set(irq_t irq)
{
    int word = irq / 32;
    int bit = irq & 0x1f;
    gic_dist->enable_set[word] = (1ul<<(bit));
}



/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) static void
dist_init(void)
{
    int i;
    int nirqs = 32 * ((gic_dist->ic_type & 0x1f) + 1);
    gic_dist->enable = 0;

    for (i = 0; i < nirqs; i += 32) {
        /* disable */
        gic_dist->enable_clr[i / 32] = 0xffffffff;;
        /* clear pending */
        gic_dist->pending_clr[i / 32] = 0xffffffff;;
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
        gic_dist->targets[i / 4] = ( ( (((1<<(0)))&0xff)<<0 ) | ( (((1<<(0)))&0xff)<<8 ) | ( (((1<<(0)))&0xff)<<16 ) | ( (((1<<(0)))&0xff)<<24 ) );
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
__attribute__((__section__(".boot.text"))) static void
cpu_iface_init(void)
{
    uint32_t i;

    /* For non-Exynos4, the registers are banked per CPU, need to clear them */
    gic_dist->enable_clr[0] = 0xffffffff;;
    gic_dist->pending_clr[0] = 0xffffffff;;
    gic_dist->priority[0] = 0x0;
    /* put everything in group 0 */

    /* clear any software generated interrupts */
    for (i = 0; i < 16; i += 4) {
        gic_dist->sgi_pending_clr[i / 4] = 0xffffffff;;
    }

    gic_cpuiface->icontrol = 0;
    gic_cpuiface->pri_msk_c = 0x000000f0;
    gic_cpuiface->pb_c = 0x00000003;

    while (((i = gic_cpuiface->int_ack) & ((1ul<<(10))-1ul)) != 1023) {
        gic_cpuiface->eoi = i;
    }
    gic_cpuiface->icontrol = 1;
}

/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
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
static uint32_t active_irq = 1023;

/**
   DONT_TRANSLATE
 */
interrupt_t
getActiveIRQ(void)
{
    uint32_t irq;
    if (!(((active_irq)&((1ul<<(10))-1ul)) < 1020)) {
        active_irq = gic_cpuiface->int_ack;
    }

    if ((((active_irq)&((1ul<<(10))-1ul)) < 1020)) {
        irq = active_irq & ((1ul<<(10))-1ul);
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
    return (((gic_cpuiface->hi_pend)&((1ul<<(10))-1ul)) < 1020);
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
    if(!((((active_irq)&((1ul<<(10))-1ul)) < 1020) && (active_irq & ((1ul<<(10))-1ul)) == irq)) _assert_fail("IS_IRQ_VALID(active_irq) && (active_irq & IRQ_MASK) == irq", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c", 358, __FUNCTION__);
    if (is_irq_edge_triggered(irq)) {
        dist_pending_clr(irq);
    }
    gic_cpuiface->eoi = active_irq;
    active_irq = 1023;
}

void
handleSpuriousIRQ(void)
{
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c" 2

word_t __attribute__((__pure__))
getRestartPC(tcb_t *thread)
{
    return getRegister(thread, FaultInstruction);
}

void
setNextPC(tcb_t *thread, word_t v)
{
    setRegister(thread, LR_svc, v);
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/l2c_310.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

/*
 * ARM L2 Cache controller L2C-310
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c" 2






typedef int __assert_failed_l2_l1_same_line_size[(5 == 5 /* 32 bytes */) ? 1 : -1];

/* MSHIELD Control */



/* MSHIELD Address Filter */


/* MSHIELD Control 2 */



/* MSHIELD Cache maintenance */



/* Cache ID */




/* Primary control */


/* Auxiliary control */
# 76 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
/* Latency */
# 87 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
/* Maintenance */


/* POWER */



/* PREFECTCH */
# 105 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
struct l2cc_map {

    struct {
        uint32_t cache_id; /* 0x000 */
        uint32_t cache_type; /* 0x004 */
        uint32_t res[62];
    } id /* reg0 */;

    struct {
        uint32_t control; /* 0x100 */
        uint32_t aux_control; /* 0x104 */
        uint32_t tag_ram_control; /* 0x108 */
        uint32_t data_ram_control; /* 0x10C */
        uint32_t res[60];
    } control /* reg1 */;

    struct {
        uint32_t ev_counter_ctrl; /* 0x200 */
        uint32_t ev_counter1_cfg; /* 0x204 */
        uint32_t ev_counter0_cfg; /* 0x208 */
        uint32_t ev_counter1; /* 0x20C */
        uint32_t ev_counter0; /* 0x210 */
        uint32_t int_mask; /* 0x214 */
        uint32_t int_mask_status; /* 0x218 */
        uint32_t int_raw_status; /* 0x21C */
        uint32_t int_clear; /* 0x220 */
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
        uint32_t cache_sync; /* 0x730 */
        uint32_t res1[15];
        uint32_t inv_pa; /* 0x770 */
        uint32_t res2[2];
        uint32_t inv_way; /* 0x77C */
        uint32_t res3[12];
        uint32_t clean_pa; /* 0x7B0 */
        uint32_t res4[1];
        uint32_t clean_index; /* 0x7B8 */
        uint32_t clean_way; /* 0x7BC */
        uint32_t res5[12];
        uint32_t clean_inv_pa; /* 0x7F0 */
        uint32_t res6[1];
        uint32_t clean_inv_index; /* 0x7F8 */
        uint32_t clean_inv_way; /* 0x7FC */
    } maintenance /* reg7 */;

    struct {
        uint32_t res[64];
    } reg8;

    struct {
        uint32_t d_lockdown0; /* 0x900 */
        uint32_t i_lockdown0; /* 0x904 */
        uint32_t d_lockdown1; /* 0x908 */
        uint32_t i_lockdown1; /* 0x90C */
        uint32_t d_lockdown2; /* 0x910 */
        uint32_t i_lockdown2; /* 0x914 */
        uint32_t d_lockdown3; /* 0x918 */
        uint32_t i_lockdown3; /* 0x91C */
        uint32_t d_lockdown4; /* 0x920 */
        uint32_t i_lockdown4; /* 0x924 */
        uint32_t d_lockdown5; /* 0x928 */
        uint32_t i_lockdown5; /* 0x92C */
        uint32_t d_lockdown6; /* 0x930 */
        uint32_t i_lockdown6; /* 0x934 */
        uint32_t d_lockdown7; /* 0x938 */
        uint32_t i_lockdown7; /* 0x93C */
        uint32_t res[4];
        uint32_t lock_line_eng; /* 0x950 */
        uint32_t unlock_wayg; /* 0x954 */
        uint32_t res1[42];
    } lockdown /* reg9 */;

    struct {
        uint32_t res[64];
    } reg10;
    struct {
        uint32_t res[64];
    } reg11;

    struct {
        uint32_t addr_filtering_start; /* 0xC00 */
        uint32_t addr_filtering_end; /* 0xC04 */
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
        uint32_t debug_ctrl; /* 0xF40 */
        uint32_t res1[7];
        uint32_t prefetch_ctrl; /* 0xF60 */
        uint32_t res2[7];
        uint32_t power_ctrl; /* 0xF80 */
        uint32_t res3[31];
    } control2 /* reg15 */;
};





volatile struct l2cc_map *l2cc = (volatile struct l2cc_map*)(0xfff03000 );
# 250 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
initL2Cache(void)
{

    uint32_t aux;
    uint32_t tag_ram;
    uint32_t data_ram;
    uint32_t prefetch;

    prefetch = (1ul<<(29)) | (1ul<<(28));

    tag_ram = ( (((1)&0x7) * (1ul<<(0))) | (((2)&0x7) * (1ul<<(4))) | (((1)&0x7) * (1ul<<(8))) );
    data_ram = ( (((1)&0x7) * (1ul<<(0))) | (((2)&0x7) * (1ul<<(4))) | (((1)&0x7) * (1ul<<(8))) );





    aux = 0
               | (1ul<<(29))
               | (1ul<<(28))
               | (1ul<<(27))
               | (1ul<<(26))
               | (1 * (1ul<<(16)))
               | (0 * (1ul<<(25)));


    aux |= (((3)&0x7) * (1ul<<(17)) );
# 295 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
    /* Direct register access */
    /* 1: Write to aux Tag RAM latentcy, Data RAM latency, prefect, power control registers  */
    l2cc->control.aux_control = aux;
    l2cc->control.tag_ram_control = tag_ram;
    l2cc->control.data_ram_control = data_ram;
    l2cc->control2.prefetch_ctrl = prefetch;



    /* 2: Invalidate by way. */
    l2cc->maintenance.inv_way = 0xffff;
    while ( l2cc->maintenance.inv_way & (1ul<<(0)) );

    /* 3: write to lockdown D & I reg9 if required  */
    if ( (l2cc->id.cache_type & (0xf<<25)) == (0xe<<25)) {
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
    if ( (l2cc->id.cache_type & (0xf<<25)) == (0xf<<25)) {
        /* disable lockdown */
        l2cc->lockdown.lock_line_eng = 0;
    }

    /* 4: write to interrupt clear register to clear any residual raw interrupts set */
    l2cc->interrupt.int_mask = 0x0;
    /* 5: write to interrupt mask register if you want to enable interrupts (active high) */
    l2cc->interrupt.int_clear = ((1ul<<(9))-1ul);

    /* 6: Enable the L2 cache */




    /* Direct register access */
    l2cc->control.control |= (1ul<<(0));



}

static inline void L2_cacheSync(void)
{
    dmb();
    l2cc->maintenance.cache_sync = 0;
    while (l2cc->maintenance.cache_sync & (1ul<<(0)));
}

void plat_cleanCache(void)
{

    /* Clean by way. */
    l2cc->maintenance.clean_way = 0xffff;
    while ( l2cc->maintenance.clean_way & (1ul<<(0)) );
    L2_cacheSync();

}

void plat_cleanL2Range(paddr_t start, paddr_t end)
{

    /* Documentation specifies this as the only possible line size */
    if(!(((l2cc->id.cache_type >> 12) & 0x3) == 0x0)) _assert_fail("((l2cc->id.cache_type >> 12) & 0x3) == 0x0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c", 371, __FUNCTION__);

    for (start = (((start) >> (5)) << (5));
            start != (((end + (1ul<<(5)) /* 32 byte line size */) >> (5)) << (5));
            start += (1ul<<(5)) /* 32 byte line size */) {
        l2cc->maintenance.clean_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();

}

void plat_invalidateL2Range(paddr_t start, paddr_t end)
{

    /* Documentation specifies this as the only possible line size */
    if(!(((l2cc->id.cache_type >> 12) & 0x3) == 0x0)) _assert_fail("((l2cc->id.cache_type >> 12) & 0x3) == 0x0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c", 387, __FUNCTION__);

    /* We assume that if this is a partial line that whoever is calling us
     * has already done the clean, so we just blindly invalidate all the lines */

    for (start = (((start) >> (5)) << (5));
            start != (((end + (1ul<<(5)) /* 32 byte line size */) >> (5)) << (5));
            start += (1ul<<(5)) /* 32 byte line size */) {
        l2cc->maintenance.inv_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();

}

void plat_cleanInvalidateL2Range(paddr_t start, paddr_t end)
{

    /* Documentation specifies this as the only possible line size */
    if(!(((l2cc->id.cache_type >> 12) & 0x3) == 0x0)) _assert_fail("((l2cc->id.cache_type >> 12) & 0x3) == 0x0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c", 406, __FUNCTION__);

    for (start = (((start) >> (5)) << (5));
            start != (((end + (1ul<<(5)) /* 32 byte line size */) >> (5)) << (5));
            start += (1ul<<(5)) /* 32 byte line size */) {
        /* Work around an errata and call the clean and invalidate separately */
        l2cc->maintenance.clean_pa = start;
        dmb();
        l2cc->maintenance.inv_pa = start;
        /* do not need to wait for every invalidate as 310 is atomic */
    }
    L2_cacheSync();

}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/priv_timer.c"
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
} *priv_timer = (volatile struct priv_timer*)(0xfff04000 + 0x600 );
# 36 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/priv_timer.c"
/**
   DONT_TRANSLATE
 */
__attribute__((__section__(".boot.text"))) void
initTimer(void)
{
    /* reset */
    priv_timer->ctrl = 0;
    priv_timer->ints = 0;

    /* setup */
    priv_timer->load = ((400ULL*1000 * (20)) / (((400ULL*1000 * (20)) >> 32) + 1));
    priv_timer->ctrl |= ((((400ULL*1000 * (20)) >> 32)) << (8))
                        | (1ul<<(1)) | (1ul<<(2));

    /* Enable */
    priv_timer->ctrl |= (1ul<<(0));
}

/**
   DONT_TRANSLATE
 */
void
resetTimer(void)
{
    priv_timer->ints = (1ul<<(0));
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/registerset.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/registerset.c" 2

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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/model/statedata.c" 2

/* The global frame, mapped in all address spaces */
word_t armKSGlobalsFrame[(1ul<<(ARMSmallPageBits)) / sizeof(word_t)]
__attribute__((__aligned__((1ul<<(ARMSmallPageBits))))) __attribute__((__section__(".bss.aligned")));

/* The hardware ASID to virtual ASID mapping table */
pde_t *armKSHWASIDTable[(1ul<<(hwASIDBits))];
hw_asid_t armKSNextASID;

/* The global, privileged, physically-mapped PD */
pde_t armKSGlobalPD[(1ul<<(12))] __attribute__((__aligned__((1ul<<((12 +2)))))) __attribute__((__section__(".bss.aligned")));

/* The global, privileged, page table. */
pte_t armKSGlobalPT[(1ul<<(8))] __attribute__((__aligned__((1ul<<((8 +2)))))) __attribute__((__section__(".bss.aligned")));
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c" 2

exception_t
Arch_decodeInterruptControl(unsigned int length, extra_caps_t extraCaps)
{
    current_syscall_error.type = seL4_IllegalOperation;
    return EXCEPTION_SYSCALL_ERROR;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c" 2

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
        _fail("Invalid arch cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c", 43, __func__);
    }
}

cap_t __attribute__((__const__))
Arch_updateCapData(bool_t preserve, word_t data, cap_t cap)
{
    return cap;
}

cap_t __attribute__((__const__))
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
            pde_t *pdPtr = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));
            unmapAllPageTables(pdPtr);
            memzero(pdPtr, (0xe0000000 >> ARMSectionBits) << 2);
        }
        break;

    case cap_page_table_cap:
        if (cap_page_table_cap_get_capPTMappedObject(cap)) {
            unmapPageTable(
                ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(cap))),
                cap_page_table_cap_get_capPTMappedIndex(cap),
                ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap))));
        }
        if (final) {
            unmapAllPages(
                ((pde_t *)(cap_page_table_cap_get_capPTMappedObject(cap))),
                cap_page_table_cap_get_capPTMappedIndex(cap),
                ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap))));
            clearMemory((void *)cap_get_capPtr(cap), cap_get_capSizeBits(cap));
        }
        break;

    case cap_frame_cap:
        if (cap_frame_cap_get_capFMappedObject(cap)) {
            switch (cap_frame_cap_get_capFSize(cap)) {
            case ARMSmallPage:
            case ARMLargePage:
                unmapPagePTE(cap_frame_cap_get_capFSize(cap),
                             ((pte_t *)(cap_frame_cap_get_capFMappedObject(cap))),
                             cap_frame_cap_get_capFMappedIndex(cap),
                             (void *)cap_frame_cap_get_capFBasePtr(cap));
                break;
            case ARMSection:
            case ARMSuperSection:
                unmapPagePDE(cap_frame_cap_get_capFSize(cap),
                             ((pde_t *)(cap_frame_cap_get_capFMappedObject(cap))),
                             cap_frame_cap_get_capFMappedIndex(cap),
                             (void *)cap_frame_cap_get_capFBasePtr(cap));
                break;
            }
        }
        break;
    }
    return cap_null_cap_new();
}

static cap_t __attribute__((__const__))
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
            = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));
        Arch_finaliseCap(cap, true);
        memzero(pdPtr, (0xe0000000 >> ARMSectionBits) << 2);
        cleanCacheRange_PoU((word_t)pdPtr,
                            ((word_t)pdPtr) + (1 << (12 +2)) - 1,
                            addrFromPPtr(pdPtr));
        return cap;
    }

    default:
        _fail("Arch_recycleCap: invalid cap type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c", 167, __func__);
    }

    return cap_null_cap_new();
}

bool_t __attribute__((__const__))
Arch_hasRecycleRights(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_frame_cap:
        return cap_frame_cap_get_capFVMRights(cap) == VMReadWrite;

    default:
        return true;
    }
}


bool_t __attribute__((__const__))
Arch_sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_frame_cap:
        if (cap_get_capType(cap_b) == cap_frame_cap) {
            word_t botA, botB, topA, topB;
            botA = cap_frame_cap_get_capFBasePtr(cap_a);
            botB = cap_frame_cap_get_capFBasePtr(cap_b);
            topA = botA + ((1ul<<(pageBitsForSize(cap_frame_cap_get_capFSize(cap_a))))-1ul);
            topB = botB + ((1ul<<(pageBitsForSize(cap_frame_cap_get_capFSize(cap_b))))-1ul) ;
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


bool_t __attribute__((__const__))
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
        return 2 + 8;
    case seL4_ARM_PageDirectoryObject:
        return 2 + 12;
    default:
        _fail("Invalid object type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c", 250, __func__);
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
        memzero(regionBase, 1 << (2 + 8));
        /** AUXUPD: "(True, ptr_retyps 256
              (Ptr (ptr_val \<acute>regionBase) :: pte_C ptr))" */
        cleanCacheRange_PoU((word_t)regionBase,
                            (word_t)regionBase + (1 << (8 + 2)) - 1,
                            addrFromPPtr(regionBase));

        return cap_page_table_cap_new(0, 0,
                                      (word_t)regionBase);

    case seL4_ARM_PageDirectoryObject:
        memzero(regionBase, 1 << (2 + 12));
        /** AUXUPD: "(True, ptr_retyps 4096
              (Ptr (ptr_val \<acute>regionBase) :: pde_C ptr))" */
        copyGlobalMappings((pde_t *)regionBase);
        cleanCacheRange_PoU((word_t)regionBase,
                            (word_t)regionBase + (1 << (12 + 2)) - 1,
                            addrFromPPtr(regionBase));

        return cap_page_directory_cap_new((word_t)regionBase);

    default:
        /*
         * This is a conflation of the haskell error: "Arch.createNewCaps
         * got an API type" and the case where an invalid object type is
         * passed (which is impossible in haskell).
         */
        _fail("Arch_createObject got an API type or invalid object type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c", 351, __func__);
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c" 2

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
        _fail("Invalid lookup failure", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c", 67, __func__);
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

        if(!(n_syscallMessage >= n_msgRegisters)) _assert_fail("n_syscallMessage >= n_msgRegisters", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c", 96, __FUNCTION__);
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

        if(!(n_exceptionMessage < n_msgRegisters)) _assert_fail("n_exceptionMessage < n_msgRegisters", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c", 118, __FUNCTION__);
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
        _fail("Invalid fault", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c", 131, __func__);
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
        _fail("Invalid syscall error", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c", 173, __func__);
    }
}

word_t __attribute__((__const__))
Arch_decodeTransfer(word_t flags)
{
    return 0;
}

exception_t __attribute__((__const__))
Arch_performTransfer(word_t arch, tcb_t *tcb_src, tcb_t *tcb_dest)
{
    return EXCEPTION_NONE;
}

void
Arch_leaveVMAsyncTransfer(tcb_t *tcb)
{
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/assert.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/assert.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/assert.c" 2



void _fail(
    const char* s,
    const char* file,
    unsigned int line,
    const char* function)
{
    kprintf("seL4 called fail at %s:%u in function %s, saying \"%s\"\n", file, line, function, s)





     ;
    halt();
}

void _assert_fail(
    const char* assertion,
    const char* file,
    unsigned int line,
    const char* function)
{
    kprintf("seL4 failed assertion '%s' at %s:%u in function %s\n", assertion, file, line, function)




           ;
    halt();
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/inlines.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/inlines.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/inlines.c" 2

lookup_fault_t current_lookup_fault;
fault_t current_fault;
syscall_error_t current_syscall_error;
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/boot.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c" 2

/* (node-local) state accessed only during bootstrapping */

ndks_boot_t ndks_boot __attribute__((__section__(".boot.data")));

__attribute__((__section__(".boot.text"))) bool_t
insert_region(region_t reg)
{
    unsigned int i;

    if(!(reg.start <= reg.end)) _assert_fail("reg.start <= reg.end", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 33, __FUNCTION__);
    if (is_reg_empty(reg)) {
        return true;
    }
    for (i = 0; i < 2; i++) {
        if (is_reg_empty(ndks_boot.freemem[i])) {
            ndks_boot.freemem[i] = reg;
            return true;
        }
    }
    return false;
}

__attribute__((__section__(".boot.text"))) static inline uint32_t
reg_size(region_t reg)
{
    return reg.end - reg.start;
}

__attribute__((__section__(".boot.text"))) pptr_t
alloc_region(uint32_t size_bits)
{
    unsigned int i;
    unsigned int reg_index = 0; /* gcc cannot work out that this will not be used uninitialized */
    region_t reg = (region_t){ .start = 0, .end = 0 };
    region_t rem_small = (region_t){ .start = 0, .end = 0 };
    region_t rem_large = (region_t){ .start = 0, .end = 0 };
    region_t new_reg;
    region_t new_rem_small;
    region_t new_rem_large;

    /* Search for a freemem region that will be the best fit for an allocation. We favour allocations
     * that are aligned to either end of the region. If an allocation must split a region we favour
     * an unbalanced split. In both cases we attempt to use the smallest region possible. In general
     * this means we aim to make the size of the smallest remaining region smaller (ideally zero)
     * followed by making the size of the largest remaining region smaller */

    for (i = 0; i < 2; i++) {
        /* Determine whether placing the region at the start or the end will create a bigger left over region */
        if ((((((ndks_boot.freemem[i].start) - 1ul) >> (size_bits)) + 1ul) << (size_bits)) - ndks_boot.freemem[i].start <
                ndks_boot.freemem[i].end - (((ndks_boot.freemem[i].end) >> (size_bits)) << (size_bits))) {
            new_reg.start = (((((ndks_boot.freemem[i].start) - 1ul) >> (size_bits)) + 1ul) << (size_bits));
            new_reg.end = new_reg.start + (1ul<<(size_bits));
        } else {
            new_reg.end = (((ndks_boot.freemem[i].end) >> (size_bits)) << (size_bits));
            new_reg.start = new_reg.end - (1ul<<(size_bits));
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
        kprintf("Kernel init failing: not enough memory\n");
        return 0;
    }
    /* Remove the region in question */
    ndks_boot.freemem[reg_index] = (region_t){ .start = 0, .end = 0 };
    /* Add the remaining regions in largest to smallest order */
    insert_region(rem_large);
    if (!insert_region(rem_small)) {
        kprintf("alloc_region(): wasted 0x%x bytes due to alignment, try to increase MAX_NUM_FREEMEM_REG\n", (unsigned int)(rem_small.end - rem_small.start))
                                                               ;
    }
    return reg.start;
}

__attribute__((__section__(".boot.text"))) void
write_slot(slot_ptr_t slot_ptr, cap_t cap)
{
    slot_ptr->cap = cap;
    cdtInsert(((void *)0), slot_ptr);

    //slot_ptr->cteMDBNode = nullMDBNode;
    //mdb_node_ptr_set_mdbRevocable  (&slot_ptr->cteMDBNode, true);
    //mdb_node_ptr_set_mdbFirstBadged(&slot_ptr->cteMDBNode, true);
}

/* Our root CNode needs to be able to fit all the initial caps and not
 * cover all of memory.
 */
typedef int __assert_failed_root_cnode_size_valid[(12 < 32 - 4 && (1U << 12) >= 12 /* slot where dynamically allocated caps start */) ? 1 : -1];



__attribute__((__section__(".boot.text"))) cap_t
create_root_cnode(void)
{
    pptr_t pptr;
    cap_t cap;

    /* write the number of root CNode slots to global state */
    ndks_boot.slot_pos_max = (1ul<<(12));

    /* create an empty root CNode */
    pptr = alloc_region(12 + 4);
    if (!pptr) {
        kprintf("Kernel init failing: could not create root cnode\n");
        return cap_null_cap_new();
    }
    memzero(((cte_t *)(pptr)), 1U << (12 + 4));
    cap =
        cap_cnode_cap_new(
            12, /* radix      */
            32 - 12, /* guard size */
            0, /* guard      */
            pptr /* pptr       */
        );

    /* write the root CNode cap into the root CNode */
    write_slot((((slot_ptr_t)(pptr)) + (2 /* initial thread's root CNode cap */)), cap);

    return cap;
}

typedef int __assert_failed_irq_cnode_size[((1ul<<(12 - 4)) > maxIRQ) ? 1 : -1];

__attribute__((__section__(".boot.text"))) bool_t
create_irq_cnode(void)
{
    pptr_t pptr;
    /* create an empty IRQ CNode */
    pptr = alloc_region(12);
    if (!pptr) {
        kprintf("Kernel init failing: could not create irq cnode\n");
        return false;
    }
    memzero((void*)pptr, 1 << 12);
    intStateIRQNode = (cte_t*)pptr;
    return true;
}

/* Check domain scheduler assumptions. */
typedef int __assert_failed_num_domains_valid[(1 >= 1 && 1 <= 256) ? 1 : -1];

typedef int __assert_failed_num_priorities_valid[(256 >= 1 && 256 <= 256) ? 1 : -1];


__attribute__((__section__(".boot.text"))) void
create_domain_cap(cap_t root_cnode_cap)
{
    cap_t cap;
    unsigned int i;

    /* Check domain scheduler assumptions. */
    if(!(ksDomScheduleLength > 0)) _assert_fail("ksDomScheduleLength > 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 197, __FUNCTION__);
    for (i = 0; i < ksDomScheduleLength; i++) {
        if(!(ksDomSchedule[i].domain < 1)) _assert_fail("ksDomSchedule[i].domain < CONFIG_NUM_DOMAINS", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 199, __FUNCTION__);
        if(!(ksDomSchedule[i].length > 0)) _assert_fail("ksDomSchedule[i].length > 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 200, __FUNCTION__);
    }

    cap = cap_domain_cap_new();
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (11 /* domain cap */)), cap);
}


__attribute__((__section__(".boot.text"))) cap_t
create_ipcbuf_frame(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr)
{
    cap_t cap;
    pptr_t pptr;

    /* allocate the IPC buffer frame */
    pptr = alloc_region(12);
    if (!pptr) {
        kprintf("Kernel init failing: could not create ipc buffer frame\n");
        return cap_null_cap_new();
    }
    clearMemory((void*)pptr, 12);

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)), cap);

    return cap;
}

__attribute__((__section__(".boot.text"))) void
create_bi_frame_cap(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    pptr_t pptr,
    vptr_t vptr
)
{
    cap_t cap;

    /* create a cap of it and write it into the root CNode */
    cap = create_mapped_it_frame_cap(pd_cap, pptr, vptr, false, false);
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (7 /* bootinfo frame cap */)), cap);
}

__attribute__((__section__(".boot.text"))) pptr_t
allocate_bi_frame(
    node_id_t node_id,
    uint32_t num_nodes,
    vptr_t ipcbuf_vptr
)
{
    pptr_t pptr;

    /* create the bootinfo frame object */
    pptr = alloc_region(12);
    if (!pptr) {
        kprintf("Kernel init failed: could not allocate bootinfo frame\n");
        return 0;
    }
    clearMemory((void*)pptr, 12);

    /* initialise bootinfo-related global state */
    ndks_boot.bi_frame = ((bi_t*)(pptr));
    ndks_boot.slot_pos_cur = 12 /* slot where dynamically allocated caps start */;

    ((bi_t*)(pptr))->node_id = node_id;
    ((bi_t*)(pptr))->num_nodes = num_nodes;
    ((bi_t*)(pptr))->num_iopt_levels = 0;
    ((bi_t*)(pptr))->ipcbuf_vptr = ipcbuf_vptr;
    ((bi_t*)(pptr))->it_cnode_size_bits = 12;
    ((bi_t*)(pptr))->it_domain = ksDomSchedule[ksDomScheduleIdx].domain;

    return pptr;
}

__attribute__((__section__(".boot.text"))) bool_t
provide_cap(cap_t root_cnode_cap, cap_t cap)
{
    if (ndks_boot.slot_pos_cur >= ndks_boot.slot_pos_max) {
        kprintf("Kernel init failed: ran out of cap slots\n");
        return false;
    }
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (ndks_boot.slot_pos_cur)), cap);
    ndks_boot.slot_pos_cur++;
    return true;
}

__attribute__((__section__(".boot.text"))) create_frames_of_region_ret_t
create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    int32_t pv_offset
)
{
    pptr_t f;
    cap_t frame_cap;
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;

    slot_pos_before = ndks_boot.slot_pos_cur;

    for (f = reg.start; f < reg.end; f += (1ul<<(12))) {
        if (do_map) {
            frame_cap = create_mapped_it_frame_cap(pd_cap, f, f - (0xe0000000 - 0x10000000) - pv_offset, false, false);
        } else {
            frame_cap = create_unmapped_it_frame_cap(f, false);
        }
        if (!provide_cap(root_cnode_cap, frame_cap))
            return (create_frames_of_region_ret_t) {
            (slot_region_t){ .start = 0, .end = 0 }, false
        };
    }

    slot_pos_after = ndks_boot.slot_pos_cur;

    return (create_frames_of_region_ret_t) {
        (slot_region_t) { slot_pos_before, slot_pos_after }, true
    };
}

__attribute__((__section__(".boot.text"))) bool_t
create_idle_thread(void)
{
    pptr_t pptr;
    pptr = alloc_region(((4 + 4)+1));
    if (!pptr) {
        kprintf("Kernel init failed: Unable to allocate tcb for idle thread\n");
        return false;
    }
    memzero((void *)pptr, 1 << ((4 + 4)+1));
    ksIdleThread = ((tcb_t *)(pptr + (1 << (4 + 4))));
    configureIdleThread(ksIdleThread);
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t
create_initial_thread(
    cap_t root_cnode_cap,
    cap_t it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t ipcbuf_cap
)
{
    pptr_t pptr;
    cap_t cap;
    tcb_t* tcb;
    deriveCap_ret_t dc_ret;

    /* allocate TCB */
    pptr = alloc_region(((4 + 4)+1));
    if (!pptr) {
        kprintf("Kernel init failed: Unable to allocate tcb for initial thread\n");
        return false;
    }
    memzero((void*)pptr, 1 << ((4 + 4)+1));
    tcb = ((tcb_t *)(pptr + (1 << (4 + 4))));
    tcb->tcbTimeSlice = 5;
    Arch_initContext(&tcb->tcbArch.tcbContext);

    /* derive a copy of the IPC buffer cap for inserting */
    dc_ret = deriveCap((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)), ipcbuf_cap);
    if (dc_ret.status != EXCEPTION_NONE) {
        kprintf("Failed to derive copy of IPC Buffer\n");
        return false;
    }

    /* initialise TCB (corresponds directly to abstract specification) */
    cteInsert(
        root_cnode_cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (2 /* initial thread's root CNode cap */)),
        (((slot_ptr_t)(pptr)) + (tcbCTable))
    );
    cteInsert(
        it_pd_cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (3 /* initial thread's vspace root cap */)),
        (((slot_ptr_t)(pptr)) + (tcbVTable))
    );
    cteInsert(
        dc_ret.cap,
        (((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (9 /* initial thread's IPC buffer frame cap */)),
        (((slot_ptr_t)(pptr)) + (tcbBuffer))
    );
    tcb->tcbIPCBuffer = ipcbuf_vptr;
    setRegister(tcb, capRegister, bi_frame_vptr);
    setNextPC(tcb, ui_v_entry);

    /* initialise TCB */
    tcb->tcbPriority = seL4_MaxPrio;
    setupReplyMaster(tcb);
    setThreadState(tcb, ThreadState_Running);
    ksSchedulerAction = ((tcb_t*)0);
    ksCurThread = ksIdleThread;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;
    if(!(ksCurDomain < 1 && ksDomainTime > 0)) _assert_fail("ksCurDomain < CONFIG_NUM_DOMAINS && ksDomainTime > 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 398, __FUNCTION__);

    /* initialise current thread pointer */
    switchToThread(tcb); /* initialises ksCurThread */

    /* create initial thread's TCB cap */
    cap = cap_thread_cap_new(((unsigned int)(tcb)));
    write_slot((((slot_ptr_t)((pptr_t)cap_get_capPtr(root_cnode_cap))) + (1 /* initial thread's TCB cap */)), cap);


    setThreadName(tcb, "rootserver");


    return true;
}

__attribute__((__section__(".boot.text"))) static bool_t
provide_untyped_cap(
    cap_t root_cnode_cap,
    bool_t deviceMemory,
    pptr_t pptr,
    uint32_t size_bits,
    slot_pos_t first_untyped_slot
)
{
    bool_t ret;
    unsigned int i = ndks_boot.slot_pos_cur - first_untyped_slot;
    if (i < 800) {
        ndks_boot.bi_frame->ut_obj_paddr_list[i] = pptr_to_paddr((void*)pptr);
        ndks_boot.bi_frame->ut_obj_size_bits_list[i] = size_bits;
        ret = provide_cap(root_cnode_cap, cap_untyped_cap_new(deviceMemory, size_bits, pptr));
    } else {
        kprintf("Kernel init: Too many untyped regions for boot info\n");
        ret = true;
    }
    return ret;
}

/**
  DONT_TRANSLATE
*/
__attribute__((__section__(".boot.text"))) static uint32_t boot_clz (uint32_t x)
{
    return __builtin_clz(x);
}

/**
  DONT_TRANSLATE
*/
__attribute__((__section__(".boot.text"))) static uint32_t boot_ctz (uint32_t x)
{
    return __builtin_ctz(x);
}

__attribute__((__section__(".boot.text"))) bool_t
create_untypeds_for_region(
    cap_t root_cnode_cap,
    bool_t deviceMemory,
    region_t reg,
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
        if (!deviceMemory && reg.start == 0xe0000000) {
            reg.start += (1ul<<(12));
        }
        /* Determine the maximum size of the region */
        size_bits = (8 * sizeof(word_t)) - 1 - boot_clz(reg.end - reg.start);

        /* Determine the alignment of the region */
        align_bits = boot_ctz(reg.start);

        /* Reduce size bits to align if needed */
        if (align_bits < size_bits) {
            size_bits = align_bits;
        }

        if(!(size_bits >= (8 * sizeof(word_t)) / 8)) _assert_fail("size_bits >= WORD_BITS / 8", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c", 486, __FUNCTION__);
        if (!provide_untyped_cap(root_cnode_cap, deviceMemory, reg.start, size_bits, first_untyped_slot)) {
            return false;
        }
        reg.start += (1ul<<(size_bits));
    }
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t
create_untypeds(cap_t root_cnode_cap, region_t boot_mem_reuse_reg)
{
    slot_pos_t slot_pos_before;
    slot_pos_t slot_pos_after;
    uint32_t i;
    region_t reg;

    slot_pos_before = ndks_boot.slot_pos_cur;

    /* if boot_mem_reuse_reg is not empty, we can create UT objs from boot code/data frames */
    if (!create_untypeds_for_region(root_cnode_cap, false, boot_mem_reuse_reg, slot_pos_before)) {
        return false;
    }

    /* convert remaining freemem into UT objects and provide the caps */
    for (i = 0; i < 2; i++) {
        reg = ndks_boot.freemem[i];
        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
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

__attribute__((__section__(".boot.text"))) void
bi_finalise(void)
{
    slot_pos_t slot_pos_start = ndks_boot.slot_pos_cur;
    slot_pos_t slot_pos_end = ndks_boot.slot_pos_max;
    ndks_boot.bi_frame->null_caps = (slot_region_t) {
        slot_pos_start, slot_pos_end
    };
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c" 2





void printCTE(char *msg, cte_t *cte);

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot);
static cte_t *aaRemove(bool_t isSwapped, cte_t *rootSlot, cte_t *targetSlot);
static cte_t *aaTraverseBackward(cte_t *slot);
static cte_t *aaTraverseForward(cte_t *slot);

typedef int (*comp_t)(cte_t *, cte_t *);
typedef int (*tie_comp_t)(cte_t *, cte_t *, comp_t);
typedef int (*type_comp_t)(cte_t *, cte_t *, tie_comp_t);







static inline bool_t
capsEqual(cap_t a, cap_t b)
{
    return (cap_get_capSpaceType(a) == cap_get_capSpaceType(b)) &&
           ((word_t)cap_get_capSpacePtr(a) == (word_t)cap_get_capSpacePtr(b)) &&
           (cap_get_capSpaceSize(a) == cap_get_capSpaceSize(b)) &&
           (cap_get_capBadge(a) == cap_get_capBadge(b)) &&
           (cap_get_capExtraComp(a) == cap_get_capExtraComp(b));
}

static inline int
tie_break_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check the depth */
    cmp = ({ typeof(mdb_node_get_cdtDepth(a->cteMDBNode)) _a = (mdb_node_get_cdtDepth(a->cteMDBNode)); typeof(mdb_node_get_cdtDepth(b->cteMDBNode)) _b = (mdb_node_get_cdtDepth(b->cteMDBNode)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != ( 0)) {
            return cmp;
        }
    }
    /* compare on the slot as a last resort */
    return ({ typeof(a) _a = (a); typeof(b) _b = (b); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
}

static inline int
untyped_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* Compare base address and size of the untyped object */
    cmp = ({ typeof(cap_untyped_cap_get_capPtr(a->cap)) _a = (cap_untyped_cap_get_capPtr(a->cap)); typeof(cap_untyped_cap_get_capPtr(b->cap)) _b = (cap_untyped_cap_get_capPtr(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    cmp = - ({ typeof(cap_untyped_cap_get_capBlockSize(a->cap)) _a = (cap_untyped_cap_get_capBlockSize(a->cap)); typeof(cap_untyped_cap_get_capBlockSize(b->cap)) _b = (cap_untyped_cap_get_capBlockSize(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    /* Do common late comparisons */
    return tie_break(a, b, ((void *)0));
}

static inline int
endpoint_cap_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* compare on the badge */
    cmp = ({ typeof(cap_endpoint_cap_get_capEPBadge(a->cap)) _a = (cap_endpoint_cap_get_capEPBadge(a->cap)); typeof(cap_endpoint_cap_get_capEPBadge(b->cap)) _b = (cap_endpoint_cap_get_capEPBadge(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    /* tiebreak as normal */
    return tie_break(a, b, ((void *)0));
}

static inline int
async_endpoint_cap_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    /* compare on the badge */
    cmp = ({ typeof(cap_async_endpoint_cap_get_capAEPBadge(a->cap)) _a = (cap_async_endpoint_cap_get_capAEPBadge(a->cap)); typeof(cap_async_endpoint_cap_get_capAEPBadge(b->cap)) _b = (cap_async_endpoint_cap_get_capAEPBadge(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    /* tiebreak as normal */
    return tie_break(a, b, ((void *)0));
}

static inline int cap_extra_comp(cte_t *a, cte_t *b)
{
    return ({ typeof(cap_get_capExtraComp(a->cap)) _a = (cap_get_capExtraComp(a->cap)); typeof(cap_get_capExtraComp(b->cap)) _b = (cap_get_capExtraComp(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
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
    return tie_break(a, b, ((void *)0));
}

static inline int
typed_comparator(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    int cmp;
    cap_tag_t type;
    type_comp_t comp;
    static type_comp_t comparator[] = {
        [cap_endpoint_cap] = endpoint_cap_comparator,
        [cap_async_endpoint_cap] = async_endpoint_cap_comparator,
        [cap_cnode_cap] = just_tie_break,
        [cap_thread_cap] = just_tie_break,
        [cap_frame_cap] = frame_cap_comparator,
        [cap_page_table_cap] = page_table_comparator,
        [cap_page_directory_cap] = page_directory_comparator,



        [cap_zombie_cap] = just_tie_break,
# 202 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
    };
    /* Typed objects do not overlap, so sufficient to compare base address */
    cmp = ({ typeof(cap_get_capPtr(a->cap)) _a = (cap_get_capPtr(a->cap)); typeof(cap_get_capPtr(b->cap)) _b = (cap_get_capPtr(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    /* at this point we *know* the types must be equal, so call the
     * per cap type comparator, if it needs one. */
    type = cap_get_capType(a->cap);
    if(!(type < (sizeof(typeof(comparator))/sizeof(typeof((comparator)[0]))))) _assert_fail("type < ARRAY_SIZE(comparator)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 211, __FUNCTION__);
    comp = comparator[type];
    if(!(comp)) _assert_fail("comp", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 213, __FUNCTION__);
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
            return tie_break(a, b, ((void *)0));
        } else {
            /* both irq handlers, compare on irq */
            if(!(typeA == cap_irq_handler_cap)) _assert_fail("typeA == cap_irq_handler_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 234, __FUNCTION__);
            cmp = ({ typeof(cap_irq_handler_cap_get_capIRQ(a->cap)) _a = (cap_irq_handler_cap_get_capIRQ(a->cap)); typeof(cap_irq_handler_cap_get_capIRQ(b->cap)) _b = (cap_irq_handler_cap_get_capIRQ(b->cap)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
            if (cmp != ( 0)) {
                return cmp;
            }
            return tie_break(a, b, ((void *)0));
        }
    } else if (typeA == cap_irq_control_cap) {
        return (-1);
    } else {
        if(!(typeA == cap_irq_handler_cap)) _assert_fail("typeA == cap_irq_handler_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 244, __FUNCTION__);
        return ( 1);
    }
}
# 290 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
static inline int
compare_space(int space, cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    type_comp_t comp;
    static type_comp_t comparator[] = {
        [capSpaceUntypedMemory] = untyped_comparator,
        [capSpaceTypedMemory] = typed_comparator,
        [capSpaceDomain] = just_tie_break,
        [capSpaceIRQ] = irq_comparator,







    };
    if(!(space < (sizeof(typeof(comparator))/sizeof(typeof((comparator)[0]))))) _assert_fail("space < ARRAY_SIZE(comparator)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 307, __FUNCTION__);
    comp = comparator[space];
    if(!(comp)) _assert_fail("comp", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 309, __FUNCTION__);
    return comp(a, b, tie_break);
}

static inline int
compSlotWith(cte_t *a, cte_t *b, tie_comp_t tie_break)
{
    /* check space */
    int spaceA = cap_get_capSpaceType(a->cap);
    int spaceB = cap_get_capSpaceType(b->cap);
    int cmp = ({ typeof(spaceA) _a = (spaceA); typeof(spaceB) _b = (spaceB); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
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
    cmp = ({ typeof(mdb_node_get_cdtDepth(a->cteMDBNode)) _a = (mdb_node_get_cdtDepth(a->cteMDBNode)); typeof(mdb_node_get_cdtDepth(b->cteMDBNode)) _b = (mdb_node_get_cdtDepth(b->cteMDBNode)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    if(!(pre_slot)) _assert_fail("pre_slot", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 342, __FUNCTION__);
    cmp = pre_slot(a, b);
    /* if the extra comparison was not equal then we found something, so we will claim that we found equality,
     * otherwise return a psudo-random result */
    if (cmp != ( 0)) {
        return ( 0);
    }
    return (-1);
}

cte_t *
cdtFindWithExtra(cap_t hypothetical)
{
    uint32_t i;
    unsigned int depth_bits = cte_depth_bits_cap(hypothetical);
    for (i = 0; i < (1ul<<(depth_bits)); i++) {
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
            case (-1):
                next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
                break;
            case ( 1):
                next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
                break;
            case ( 0):
                return current;
            }
        } while (next);
    }
    return ((void *)0);
}

static inline int slot_eq_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check depth and pre_slot as per normal */
    cmp = ({ typeof(mdb_node_get_cdtDepth(a->cteMDBNode)) _a = (mdb_node_get_cdtDepth(a->cteMDBNode)); typeof(mdb_node_get_cdtDepth(b->cteMDBNode)) _b = (mdb_node_get_cdtDepth(b->cteMDBNode)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != ( 0)) {
            return cmp;
        }
    }
    /* Slot is always EQ */
    return ( 0);
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
        case (-1):
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
            break;
        case ( 1):
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
            break;
        case ( 0):
            return current;
        }
    } while (next);
    return ((void *)0);
}

cte_t *
cdtFind(cap_t hypothetical)
{
    uint32_t i;
    cte_t *ret;
    unsigned int depth_bits = cte_depth_bits_cap(hypothetical);
    for (i = 0; i < (1ul<<(depth_bits)); i++) {
        ret = cdtFindAtDepth(hypothetical, i);
        if (ret) {
            return ret;
        }
    }
    return ((void *)0);
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



    case cap_irq_handler_cap:
    case cap_cnode_cap:
    case cap_thread_cap:



    case cap_zombie_cap:
        return cap;






    case cap_irq_control_cap:
        /* Largest child is a irq handler with biggest irq */
        return cap_irq_handler_cap_new(0xff);
    case cap_untyped_cap:
        /* untyped cap of smallest size at the end of this region */
        return cap_untyped_cap_new(0, 4, cap_untyped_cap_get_capPtr(cap) + (1ul<<(cap_untyped_cap_get_capBlockSize(cap))) - (1ul<<(4)));
    case cap_endpoint_cap:
        if (cap_endpoint_cap_get_capEPBadge(cap) == 0) {
            return cap_endpoint_cap_new((1ul<<(28)) - 1, 0, 0, 0, cap_endpoint_cap_get_capEPPtr(cap));
        }
        return cap;
    case cap_async_endpoint_cap:
        if (cap_async_endpoint_cap_get_capAEPBadge(cap) == 0) {
            return cap_async_endpoint_cap_new((1ul<<(28)) - 1, 0, 0, cap_async_endpoint_cap_get_capAEPPtr(cap));
        }
        return cap;
        /* We get away with not setting the extra higher as we will always be comparing
         * with an infinite depth, hence any 'extra' is not relevant */
    case cap_frame_cap:
    case cap_page_table_cap:
    case cap_page_directory_cap:
# 527 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
        return cap;
    default:
        _fail("Unknown cap type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 529, __func__);
    }
}

static inline int largest_child_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    /* Tie breaking for largest child is easy. Their depth is always less than ours */
    return (-1);
}

static inline int slot_lt_comparator(cte_t *a, cte_t *b, comp_t pre_slot)
{
    int cmp;
    /* Check depth and pre_slot as per normal */
    cmp = ({ typeof(mdb_node_get_cdtDepth(a->cteMDBNode)) _a = (mdb_node_get_cdtDepth(a->cteMDBNode)); typeof(mdb_node_get_cdtDepth(b->cteMDBNode)) _b = (mdb_node_get_cdtDepth(b->cteMDBNode)); _a == _b ? ( 0) : (_a > _b ? ( 1) : (-1)); });
    if (cmp != ( 0)) {
        return cmp;
    }
    if (pre_slot) {
        cmp = pre_slot(a, b);
        if (cmp != ( 0)) {
            return cmp;
        }
    }
    /* Slot is always LT */
    return (-1);
}

static inline cte_t *
aaFindFromBelow(cte_t *hypothetical, tie_comp_t tie_break)
{
    cte_t *current;
    cte_t *largest;
    cte_t *next;
    next = ksRootCTE;
    largest = ((void *)0);
    do {
        int cmp;
        current = next;
        cmp = compSlotWith(current, hypothetical, tie_break);
        if (cmp == (-1)) {
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
            if (!largest || compSlot(current, largest) == ( 1)) {
                largest = current;
            }
        } else {
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
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
    if (!child || compSlotWith(child, parentSlot, slot_lt_comparator) != ( 1)) {
        return ((void *)0);
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
        .cap = cap_endpoint_cap_new(0, 0, 0, 0, base + (1ul<<(size_bits)) - (1ul<<(4))),
    };
    /* Search for it from below */
    child = aaFindFromBelow(&hypothetical, largest_child_comparator);
    /* Check we found something in the right range. Construct a fake untyped
     * to reuse existing range checking */
    if (child && sameRegionAs(cap_untyped_cap_new(0, size_bits, base), child->cap)) {
        return child;
    }
    return ((void *)0);
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
    if(!(cap_get_capType(newSlot->cap) != cap_null_cap)) _assert_fail("cap_get_capType(newSlot->cap) != cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 656, __FUNCTION__);
    if(!(!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap)) _assert_fail("!parentSlot || cap_get_capType(parentSlot->cap) != cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 657, __FUNCTION__);
    if (!parentSlot || (cap_get_capSpaceType(parentSlot->cap) != cap_get_capSpaceType(newSlot->cap))) {
        depth = 0;
    } else {
        depth = mdb_node_get_cdtDepth(parentSlot->cteMDBNode) + 1;
        if (depth == (1ul<<(cte_depth_bits_cap(newSlot->cap)))) {
            depth--;
        }
    }
    newSlot->cteMDBNode = mdb_node_new(0, depth, 0, 0);
    cdtInsertTree(newSlot);
}

void
cdtRemove(cte_t *slot)
{
    if(!(cap_get_capType(slot->cap) != cap_null_cap)) _assert_fail("cap_get_capType(slot->cap) != cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 673, __FUNCTION__);
    ksRootCTE = aaRemove(false, ksRootCTE, slot);
    slot->cteMDBNode = mdb_node_new(0, false, false, 0);
}

void
cdtMove(cte_t *oldSlot, cte_t *newSlot)
{
    if(!(cap_get_capType(oldSlot->cap) != cap_null_cap)) _assert_fail("cap_get_capType(oldSlot->cap) != cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 681, __FUNCTION__);
    if(!(cap_get_capType(newSlot->cap) != cap_null_cap)) _assert_fail("cap_get_capType(newSlot->cap) != cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 682, __FUNCTION__);
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
    if(!(slot1 != slot2)) _assert_fail("slot1 != slot2", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 708, __FUNCTION__);
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

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    while (left) {
        slot = left;
        left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    }
    return slot;
}

static cte_t * aaPred(cte_t *slot)
{
    cte_t *right;

    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    while (right) {
        slot = right;
        right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    }
    return slot;
}

static cte_t *aaParent(cte_t *slot)
{
    cte_t *current = ((void *)0);
    cte_t *next;

    next = ksRootCTE;
    while (next != slot) {
        current = next;
        switch (compSlot(current, slot)) {
        case (-1):
            next = ((cte_t *)(mdb_node_get_cdtRight(current->cteMDBNode)));
            break;
        case ( 1):
            next = ((cte_t *)(mdb_node_get_cdtLeft(current->cteMDBNode)));
            break;
        case ( 0):
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
    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    if (left) {
        return aaPred(left);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */

    /* search upwards until we find an ancestor on a right link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && ((cte_t *)(mdb_node_get_cdtRight(parent->cteMDBNode))) != slot) {
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
    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    if (right) {
        return aaSucc(right);
    }
    /* We need to find our parent. This is actually hard so we
     * need to find ourselves and perform a trace as we do so */


    /* search upwards until we find an ancestor on a left link,
     * we have then found something before us */
    parent = aaParent(slot);
    while (parent && ((cte_t *)(mdb_node_get_cdtLeft(parent->cteMDBNode))) != slot) {
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

static inline int __attribute__((__const__)) min(int a, int b)
{
    return (a < b) ? a : b;
}

static cte_t *aaInsert(cte_t *rootSlot, cte_t *newSlot)
{
    cte_t *left, *right;

    if (!newSlot) {
        _fail("inserting null CTE", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 852, __func__);
    }
    if(!(newSlot != rootSlot)) _assert_fail("newSlot != rootSlot", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 854, __FUNCTION__);

    if (!rootSlot) {

        mdb_node_ptr_set_cdtLevel(&newSlot->cteMDBNode, 1);
        return newSlot;

    } else {

        switch (compSlot(newSlot, rootSlot)) {
        case ( 1):
            right = ((cte_t *)(mdb_node_get_cdtRight(rootSlot->cteMDBNode)));
            right = aaInsert(right, newSlot);
            mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, ((unsigned int)(right)));
            break;

        case (-1):
            left = ((cte_t *)(mdb_node_get_cdtLeft(rootSlot->cteMDBNode)));
            left = aaInsert(left, newSlot);
            mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, ((unsigned int)(left)));
            break;

        default:
            _fail("Inserting duplicate", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 877, __func__);
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
        _fail("removing null", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 892, __func__);
    }
    if (!rootSlot) {
        _fail("removing from null", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 895, __func__);
    }

    switch (compSlot(targetSlot, rootSlot)) {
    case ( 1):
        right = ((cte_t *)(mdb_node_get_cdtRight(rootSlot->cteMDBNode)));
        right = aaRemove(isSwapped, right, targetSlot);
        mdb_node_ptr_set_cdtRight(&rootSlot->cteMDBNode, ((unsigned int)(right)));
        break;
    case (-1):
        left = ((cte_t *)(mdb_node_get_cdtLeft(rootSlot->cteMDBNode)));
        left = aaRemove(isSwapped, left, targetSlot);
        mdb_node_ptr_set_cdtLeft(&rootSlot->cteMDBNode, ((unsigned int)(left)));
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

    left = ((cte_t *)(mdb_node_get_cdtLeft(mdb)));
    right = ((cte_t *)(mdb_node_get_cdtRight(mdb)));
    if (left) {
        pred = aaPred(left);
        left = aaRemove(true, left, pred);

        mdb_node_ptr_set_cdtLevel(&pred->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&pred->cteMDBNode, mdb_node_get_cdtRight(mdb));
        mdb_node_ptr_set_cdtLeft(&pred->cteMDBNode, ((unsigned int)(left)));

        return pred;

    } else if (right) {
        succ = aaSucc(right);
        right = aaRemove(true, right, succ);

        mdb_node_ptr_set_cdtLevel(&succ->cteMDBNode, mdb_node_get_cdtLevel(mdb));
        mdb_node_ptr_set_cdtRight(&succ->cteMDBNode, ((unsigned int)(right)));
        mdb_node_ptr_set_cdtLeft(&succ->cteMDBNode, ((unsigned int)(((void *)0))));

        return succ;

    } else {
        return ((void *)0);
    }
}

static cte_t *aaRebalance(cte_t *slot)
{
    cte_t *right, *right_right;

    if (!slot) {
        return ((void *)0);
    }

    slot = aaDecLevel(slot);
    slot = aaSkew(slot);

    right = aaSkew(((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode))));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, ((unsigned int)(right)));

    if (right) {
        right_right = aaSkew(((cte_t *)(mdb_node_get_cdtRight(right->cteMDBNode))));
        mdb_node_ptr_set_cdtRight(&right->cteMDBNode, ((unsigned int)(right_right)));
    }

    slot = aaSplit(slot);

    right = aaSplit(((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode))));
    mdb_node_ptr_set_cdtRight(&slot->cteMDBNode, ((unsigned int)(right)));

    return slot;
}

static cte_t *aaDecLevel(cte_t *slot)
{
    cte_t *left, *right;
    int should_be;

    if (!slot) {
        return ((void *)0);
    }

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));

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
     *    |T|->|R|->|X|   =>     /        *   /    /                |T|   |X|
|
     * |A|  |B|               /        *                      |A|   |B|
|
     */

    if (!slot) {
        return ((void *)0);
    }

    right = ((cte_t *)(mdb_node_get_cdtRight(slot->cteMDBNode)));
    if (right) {

        right_right = ((cte_t *)(mdb_node_get_cdtRight(right->cteMDBNode)));
        if (right_right && mdb_node_get_cdtLevel(slot->cteMDBNode)
                == mdb_node_get_cdtLevel(right_right->cteMDBNode)) {

            mdb_node_ptr_set_cdtRight(&slot->cteMDBNode,
                                      mdb_node_get_cdtLeft(right->cteMDBNode));

            level = mdb_node_get_cdtLevel(right->cteMDBNode) + 1;
            mdb_node_ptr_set_cdtLevel(&right->cteMDBNode, level);

            /* check level dosn't overflow */
            if(!(mdb_node_get_cdtLevel(right->cteMDBNode) == level)) _assert_fail("mdb_node_get_cdtLevel(right->cteMDBNode) == level", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c", 1036, __FUNCTION__);

            mdb_node_ptr_set_cdtLeft(&right->cteMDBNode, ((unsigned int)(slot)));

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
     *   /   \    \          /    /        * |A|   |B|  |R|      |A|  |B|   |R|
|
     */

    if (!slot) {
        return ((void *)0);
    }

    left = ((cte_t *)(mdb_node_get_cdtLeft(slot->cteMDBNode)));
    if (left && mdb_node_get_cdtLevel(left->cteMDBNode)
            == mdb_node_get_cdtLevel(slot->cteMDBNode)) {

        mdb_node_ptr_set_cdtLeft(&slot->cteMDBNode,
                                 mdb_node_get_cdtRight(left->cteMDBNode));
        mdb_node_ptr_set_cdtRight(&left->cteMDBNode, ((unsigned int)(slot)));

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
        kprintf("%s [NULL]@0x%x", msg, cte);
    } else {
        kprintf("%s [%d %s(%d) { addr = 0x%x, size = 0x%x } left: 0x%x right: 0x%x badge: %d depth: %d extra: 0x%x]@0x%x\n", msg, mdb_node_get_cdtLevel(cte->cteMDBNode), printCap(cte->cap), cap_get_capType(cte->cap), cap_get_capType(cte->cap) == cap_null_cap ? 0 : (word_t)cap_get_capSpacePtr(cte->cap), cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capSpaceSize(cte->cap), mdb_node_get_cdtLeft(cte->cteMDBNode), mdb_node_get_cdtRight(cte->cteMDBNode), cap_get_capBadge(cte->cap), mdb_node_get_cdtDepth(cte->cteMDBNode), cap_get_capType(cte->cap) == cap_null_cap ? 0 : cap_get_capExtraComp(cte->cap), cte)
# 1122 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
                   ;
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c" 2

lookupCap_ret_t
lookupCap(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCap_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
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
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ret.status = lu_ret.status;
        ret.slot = ((void *)0);
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

    threadRoot = (((cte_t *)((unsigned int)(thread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable))->cap;
    res_ret = resolveAddressBits(threadRoot, capptr, (1 << 5));

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

    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(root) != cap_cnode_cap), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(depth < 1 || depth > (1 << 5)), 0)) {
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = (1 << 5);
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    res_ret = resolveAddressBits(root, capptr, depth);
    if (__builtin_expect(!!(res_ret.status != EXCEPTION_NONE), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        /* current_lookup_fault will have been set by resolveAddressBits */
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(res_ret.bitsRemaining != 0), 0)) {
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
    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }

    guardBits = cap_cnode_cap_get_capCNodeGuardSize(nodeCap);
    if (__builtin_expect(!!(guardBits > n_bits), 0)) {
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
        if(!(levelBits != 0)) _assert_fail("levelBits != 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c", 168, __FUNCTION__);

        if (__builtin_expect(!!(levelBits > n_bits), 0)) {
            current_lookup_fault =
                lookup_fault_depth_mismatch_new(levelBits, n_bits);
            ret.status = EXCEPTION_LOOKUP_FAULT;
            return ret;
        }

        offset = (capptr >> (n_bits - levelBits)) & ((1ul<<(radixBits))-1ul);
        slot = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap))) + offset;

        if (__builtin_expect(!!(n_bits <= levelBits), 1)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = 0;
            return ret;
        }

        /** GHOSTUPD: "(\<acute>levelBits > 0, id)" */

        n_bits -= levelBits;
        nodeCap = slot->cap;

        if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = n_bits;
            return ret;
        }
    }

    ret.status = EXCEPTION_NONE;
    return ret;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/faulthandler.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c" 2

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
    cap_t handlerCap;
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
                ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(handlerCap))));

        return EXCEPTION_NONE;
    } else {
        current_fault = fault_cap_fault_new(handlerCPtr, false);
        current_lookup_fault = lookup_fault_missing_capability_new(0);

        return EXCEPTION_FAULT;
    }
}


static void
print_fault(fault_t f)
{
    switch (fault_get_faultType(f)) {
    case fault_null_fault:
        kprintf("null fault");
        break;
    case fault_cap_fault:
        kprintf("cap fault in %s phase at address 0x%x", fault_cap_fault_get_inReceivePhase(f) ? "receive" : "send", (unsigned int)fault_cap_fault_get_address(f))

                                                            ;
        break;
    case fault_vm_fault:
        kprintf("vm fault on %s at address 0x%x with status 0x%x", fault_vm_fault_get_instructionFault(f) ? "code" : "data", (unsigned int)fault_vm_fault_get_address(f), (unsigned int)fault_vm_fault_get_FSR(f))


                                                       ;
        break;
    case fault_unknown_syscall:
        kprintf("unknown syscall 0x%x", (unsigned int)fault_unknown_syscall_get_syscallNumber(f))
                                                                        ;
        break;
    case fault_user_exception:
        kprintf("user exception 0x%x code 0x%x", (unsigned int)fault_user_exception_get_number(f), (unsigned int)fault_user_exception_get_code(f))

                                                              ;
        break;
    default:
        kprintf("unknown fault");
        break;
    }
}


/* The second fault, ex2, is stored in the global current_fault */
void
handleDoubleFault(tcb_t *tptr, fault_t ex1)
{

    fault_t ex2 = current_fault;
    kprintf("Caught ");
    print_fault(ex2);
    kprintf("\nwhile trying to handle:\n");
    print_fault(ex1);
    kprintf("\nin thread 0x%x \"%s\" ", (unsigned int)tptr, tptr->tcbName);
    kprintf("at address 0x%x\n", (unsigned int)getRestartPC(tptr));


    setThreadState(tptr, ThreadState_Inactive);
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/faults.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c" 2

static message_info_t
transferCaps(message_info_t info, extra_caps_t caps,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer, bool_t diminish);

static inline bool_t __attribute__((__pure__))
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

static inline bool_t __attribute__((__pure__))
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

__attribute__((__section__(".boot.text"))) void
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
        _fail("Current thread is blocked", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c", 89, __func__);
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

    if (__builtin_expect(!!(!fault_get_faultType(sender->tcbFault) != fault_null_fault), 1)) {
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
    if(!(thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply)) _assert_fail("thread_state_get_tsType(receiver->tcbState) == ThreadState_BlockedOnReply",
                                     "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
# 137 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
    ,
                                     138
# 137 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
    , __FUNCTION__)
                                      ;

    if (__builtin_expect(!!(fault_get_faultType(receiver->tcbFault) == fault_null_fault), 1)) {
        doIPCTransfer(sender, ((void *)0), 0, true, receiver, false);
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
        if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
            caps.excaprefs[0] = ((void *)0);
        }
    } else {
        caps = current_extra_caps;
        caps.excaprefs[0] = ((void *)0);
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

    if (__builtin_expect(!!(!caps.excaprefs[0] || !receiveBuffer), 1)) {
        return info;
    }

    destSlot = getReceiveSlots(receiver, receiveBuffer);

    for (i = 0; i < ((1ul<<(seL4_MsgExtraCapBits))-1) && caps.excaprefs[i] != ((void *)0); i++) {
        cte_t *slot = caps.excaprefs[i];
        cap_t cap = slot->cap;

        if (cap_get_capType(cap) == cap_endpoint_cap &&
                ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))) == endpoint) {
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
                dc_ret = deriveCap(slot, maskCapRights(cap_rights_new(true, true, false), cap));
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

            destSlot = ((void *)0);
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
    if (action == (word_t)((tcb_t*)~0)) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        if (1 > 1 && ksDomainTime == 0) {
            nextDomain();
        }
        chooseThread();
        ksSchedulerAction = ((tcb_t*)0);
    } else if (action != (word_t)((tcb_t*)0)) {
        if (isRunnable(ksCurThread)) {
            tcbSchedEnqueue(ksCurThread);
        }
        /* SwitchToThread */
        switchToThread(ksSchedulerAction);
        ksSchedulerAction = ((tcb_t*)0);
    }
}

void
chooseThread(void)
{
    word_t prio;
    word_t dom;
    tcb_t *thread;

    if (1 > 1) {
        dom = ksCurDomain;
    } else {
        dom = 0;
    }

    if (__builtin_expect(!!(ksReadyQueuesL1Bitmap[dom]), 1)) {
        uint32_t l1index = ((1 << 5) - 1) - __builtin_clz(ksReadyQueuesL1Bitmap[dom]);
        uint32_t l2index = ((1 << 5) - 1) - __builtin_clz(ksReadyQueuesL2Bitmap[dom][l1index]);
        prio = l1index_to_prio(l1index) | l2index;
        thread = ksReadyQueues[ready_queues_index(dom, prio)].head;
        if(!(thread)) _assert_fail("thread", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c", 331, __FUNCTION__);
        if(!(isRunnable(thread))) _assert_fail("isRunnable(thread)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c", 332, __FUNCTION__);
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

    if (1 > 1) {
        dom_t curDom = ksCurDomain;
        dom_t targetDom = target->tcbDomain;

        if (targetDom != curDom) {
            tcbSchedEnqueue(target);
        }
    } else {
        if ((targetPrio > curPrio || (targetPrio == curPrio && onSamePriority))
                && action == ((tcb_t*)0)) {
            ksSchedulerAction = target;
        } else {
            tcbSchedEnqueue(target);
        }
        if (action != ((tcb_t*)0)
                && action != ((tcb_t*)~0)) {
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
            ksSchedulerAction == ((tcb_t*)0) &&
            !isRunnable(tptr)) {
        rescheduleRequired();
    }
}

void
timerTick(void)
{
    if (__builtin_expect(!!(isRunnable(ksCurThread)), 1)) {
        if (ksCurThread->tcbTimeSlice > 1) {
            ksCurThread->tcbTimeSlice--;
        } else {
            ksCurThread->tcbTimeSlice = 5;
            tcbSchedAppend(ksCurThread);
            rescheduleRequired();
        }
    }

    if (1 > 1) {
        ksDomainTime--;
        if (ksDomainTime == 0) {
            rescheduleRequired();
        }
    }
}

void
rescheduleRequired(void)
{
    if (ksSchedulerAction != ((tcb_t*)0)
            && ksSchedulerAction != ((tcb_t*)~0)) {
        tcbSchedEnqueue(ksSchedulerAction);
    }
    ksSchedulerAction = ((tcb_t*)~0);
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdarg.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */







typedef __builtin_va_list va_list;
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/machine/io.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/machine/io.c" 2



static unsigned int
print_string(const char *s)
{
    unsigned int n;

    for (n = 0; *s; s++, n++) {
        imx6_uart_putchar(*s);
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
        imx6_uart_putchar('0');
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
        imx6_uart_putchar(out[j - 1]);
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
            imx6_uart_putchar('0');
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
                imx6_uart_putchar('%');
                n++;
                format++;
                break;

            case 'd': {
                int x = __builtin_va_arg(ap,int);

                if (x < 0) {
                    imx6_uart_putchar('-');
                    n++;
                    x = -x;
                }

                n += print_unsigned_long((unsigned long)x, 10);
                format++;
                break;
            }

            case 'u':
                n += print_unsigned_long(__builtin_va_arg(ap,unsigned long), 10);
                format++;
                break;

            case 'x':
                n += print_unsigned_long(__builtin_va_arg(ap,unsigned long), 16);
                format++;
                break;

            case 'p': {
                unsigned long p = __builtin_va_arg(ap,unsigned long);
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
                n += print_string(__builtin_va_arg(ap,char *));
                format++;
                break;

            case 'l':
                if (*(format + 1) == 'l' && *(format + 2) == 'x') {
                    uint64_t arg = __builtin_va_arg(ap,unsigned long long);
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
                imx6_uart_putchar(*format);
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
        imx6_uart_putchar(*s);
    }
    imx6_uart_putchar('\n');
    return 0;
}

unsigned int
kprintf(const char *format, ...)
{
    va_list args;
    unsigned int i;

    __builtin_va_start(args,format);
    i = vprintf(format, args);
    __builtin_va_end(args);
    return i;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */




# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/preemption.h" 2

exception_t preemptionPoint(void);
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c" 2

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
    if (ksWorkUnitsCompleted >= 100) {
        ksWorkUnitsCompleted = 0;
        if (isIRQPending()) {
            return EXCEPTION_PREEMPTED;
        }
    }

    return EXCEPTION_NONE;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/statedata.c" 2

/* Pointer to the head of the scheduler queue for each priority */
tcb_queue_t ksReadyQueues[(1 * 256)];
word_t ksReadyQueuesL1Bitmap[1];
word_t ksReadyQueuesL2Bitmap[1][(256 / (1 << 5)) + 1];
typedef int __assert_failed_ksReadyQueuesL1BitmapBigEnough[((256 / (1 << 5)) <= (1 << 5)) ? 1 : -1];;

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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c" 2

static inline tcb_queue_t __attribute__((__pure__))
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
        if(!(dest)) _assert_fail("dest", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c", 85, __FUNCTION__);

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

    aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));

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
                                                     ((unsigned int)(aepptr)));
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
        tcb_t *thread = ((tcb_t *)(async_endpoint_ptr_get_aepQueue_head(aepptr)));

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
    if(!(async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting)) _assert_fail("async_endpoint_ptr_get_state(aepptr) == AEPState_Waiting", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c", 181, __FUNCTION__);

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

    if (__builtin_expect(!!(tcb && async_endpoint_ptr_get_state(aepptr) == AEPState_Active), 1)) {
        async_endpoint_ptr_set_state(aepptr, AEPState_Idle);
        badge = async_endpoint_ptr_get_aepMsgIdentifier(aepptr);
        setRegister(tcb, badgeRegister, badge);
    } else {
        _fail("tried to complete async ipc with inactive AEP", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c", 207, __func__);
    }
}

void
unbindAsyncEndpoint(tcb_t *tcb)
{
    async_endpoint_t *aepptr;
    aepptr = tcb->boundAsyncEndpoint;

    if (aepptr) {
        async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t) 0);
        tcb->boundAsyncEndpoint = ((void *)0);
    }
}

void
bindAsyncEndpoint(tcb_t *tcb, async_endpoint_t *aepptr)
{
    async_endpoint_ptr_set_aepBoundTCB(aepptr, (word_t)tcb);
    tcb->boundAsyncEndpoint = aepptr;
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cdt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/preemption.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 28 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c" 2

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
    if(!(cap_get_capType(cap) == cap_cnode_cap)) _assert_fail("cap_get_capType(cap) == cap_cnode_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 51, __FUNCTION__);

    if (label < CNodeRevoke || label > CNodeSaveCaller) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 54, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNodeCap: Illegal Operation attempted."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 60, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode operation: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
    index = getSyscallArg(0, buffer);
    w_bits = getSyscallArg(1, buffer);

    lu_ret = lookupTargetSlot(cap, index, w_bits);
    if (lu_ret.status != EXCEPTION_NONE) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 69, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode operation: Target slot invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

        if (length < 4 || extraCaps.excaprefs[0] == ((void *)0)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 84, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Copy/Mint/Move/Mutate: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        srcIndex = getSyscallArg(2, buffer);
        srcDepth = getSyscallArg(3, buffer);

        srcRoot = extraCaps.excaprefs[0]->cap;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 95, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Copy/Mint/Move/Mutate: Destination not empty."); kprintf(">>" "\033[0m" "\n"); } while (0);
            return status;
        }

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 101, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Copy/Mint/Move/Mutate: Invalid source slot."); kprintf(">>" "\033[0m" "\n"); } while (0);
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 107, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Copy/Mint/Move/Mutate: Source slot invalid or empty."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault =
                lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        switch (label) {
        case CNodeCopy:

            if (length < 5) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 119, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Truncated message for CNode Copy operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot, srcCap);
            if (dc_ret.status != EXCEPTION_NONE) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 128, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Error deriving cap for CNode Copy operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMint:
            if (length < 6) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 138, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Mint: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            capData = getSyscallArg(5, buffer);
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot,
                               updateCapData(false, capData, srcCap));
            if (dc_ret.status != EXCEPTION_NONE) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 149, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Error deriving cap for CNode Mint operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 165, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Mutate: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            capData = getSyscallArg(4, buffer);
            newCap = updateCapData(true, capData, srcSlot->cap);
            isMove = true;

            break;

        default:
            if(!(0)) _assert_fail("0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 177, __FUNCTION__);
            return EXCEPTION_NONE;
        }

        if (cap_get_capType(newCap) == cap_null_cap) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 182, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Copy/Mint/Move/Mutate: Mutated cap would be invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 208, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode SaveCaller: Destination slot not empty."); kprintf(">>" "\033[0m" "\n"); } while (0);
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeSaveCaller(destSlot);
    }

    if (label == CNodeRecycle) {
        if (!hasRecycleRights(destSlot->cap)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 218, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Recycle: Target cap invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

        if (length < 8 || extraCaps.excaprefs[0] == ((void *)0)
                || extraCaps.excaprefs[1] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        pivotNewData = getSyscallArg(2, buffer);
        pivotIndex = getSyscallArg(3, buffer);
        pivotDepth = getSyscallArg(4, buffer);
        srcNewData = getSyscallArg(5, buffer);
        srcIndex = getSyscallArg(6, buffer);
        srcDepth = getSyscallArg(7, buffer);

        pivotRoot = extraCaps.excaprefs[0]->cap;
        srcRoot = extraCaps.excaprefs[1]->cap;

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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 260, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Rotate: Pivot slot the same as source or dest slot."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 290, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Rotate: Source cap invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(newPivotCap) == cap_null_cap) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 296, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode Rotate: Pivot cap invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

    srcSlot = (((cte_t *)((unsigned int)(ksCurThread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));
    cap = srcSlot->cap;

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 368, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("CNode SaveCaller: Reply cap not present."); kprintf(">>" "\033[0m" "\n"); } while (0);
        break;

    case cap_reply_cap:
        if (!cap_reply_cap_get_capReplyMaster(cap)) {
            cteMove(cap, srcSlot, destSlot);
        }
        break;

    default:
        _fail("caller capability must be null or reply", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 378, __func__);
        break;
    }

    return EXCEPTION_NONE;
}

void
cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteInsert to non-empty destination" */
    if(!(cap_get_capType(destSlot->cap) == cap_null_cap)) _assert_fail("cap_get_capType(destSlot->cap) == cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 389, __FUNCTION__);

    destSlot->cap = newCap;
    cdtInsert(srcSlot, destSlot);
}

void
cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    /* Haskell error: "cteMove to non-empty destination" */
    if(!(cap_get_capType(destSlot->cap) == cap_null_cap)) _assert_fail("cap_get_capType(destSlot->cap) == cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 399, __FUNCTION__);

    destSlot->cap = newCap;
    if (cap_get_capType(newCap) == cap_reply_cap) {
        tcb_t *replyTCB = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(newCap)));
        cte_t *replySlot = (((cte_t *)((unsigned int)(replyTCB)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));
        cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, ((unsigned int)(destSlot)));
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

static inline bool_t __attribute__((__const__))
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
        _fail("finaliseCap should only return Zombie or NullCap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 492, __func__);
    }
}

static inline bool_t __attribute__((__const__))
capCyclicZombie(cap_t cap, cte_t *slot)
{
    return cap_get_capType(cap) == cap_zombie_cap &&
           ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap))) == slot;
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

    if(!(cap_get_capType(slot->cap) == cap_zombie_cap)) _assert_fail("cap_get_capType(slot->cap) == cap_zombie_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 566, __FUNCTION__);
    ptr = (cte_t*)cap_zombie_cap_get_capZombiePtr(slot->cap);
    n = cap_zombie_cap_get_capZombieNumber(slot->cap);
    type = cap_zombie_cap_get_capZombieType(slot->cap);

    /* Haskell error: "reduceZombie: expected unremovable zombie" */
    if(!(n > 0)) _assert_fail("n > 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 572, __FUNCTION__);

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
                if(!(cap_get_capType(endSlot->cap) == cap_null_cap)) _assert_fail("cap_get_capType(endSlot->cap) == cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 593, __FUNCTION__);
                /* We could call cdtUpdate here, but we know it is not necessary
                 * because a zombie is not ordered in the aaTree by its zombieNumber
                 * and so cdtUpdate will always be a noop. Skipping the call to cdtUpdate
                 * here is to make revoking large cnodes faster as this gets called
                 * for every slot in the cnode */
                slot->cap = cap_zombie_cap_set_capZombieNumber(slot->cap, n - 1);
            } else {
                /* Haskell error:
                 * "Expected new Zombie to be self-referential."
                 */
                if(!(ptr2 == slot && ptr != slot)) _assert_fail("ptr2 == slot && ptr != slot", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 604, __FUNCTION__);
            }
            break;
        }

        default:
            _fail("Expected recursion to result in Zombie.", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 610, __func__);
        }
    } else {
        /* Haskell error: "Cyclic zombie passed to unexposed reduceZombie" */
        if(!(ptr != slot)) _assert_fail("ptr != slot", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 614, __FUNCTION__);

        if (cap_get_capType(ptr->cap) == cap_zombie_cap) {
            /* Haskell error: "Moving self-referential Zombie aside." */
            if(!(ptr != ((cte_t *)(cap_zombie_cap_get_capZombiePtr(ptr->cap))))) _assert_fail("ptr != CTE_PTR(cap_zombie_cap_get_capZombiePtr(ptr->cap))", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c", 618, __FUNCTION__);
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
        finaliseCap_ret_t fc_ret __attribute__((unused));
        final = cdtIsFinal(slot);
        /** GHOSTUPD: "(gs_get_assn cteDeleteOne_'proc \<acute>ghost'state = (-1)
            \<or> gs_get_assn cteDeleteOne_'proc \<acute>ghost'state = \<acute>cap_type, id)" */
        fc_ret = finaliseCap(slot->cap, final, true);
        /* Haskell error: "cteDeleteOne: cap should be removable" */
        if(!(capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid)) _assert_fail("capRemovable(fc_ret.remainder, slot) && fc_ret.irq == irqInvalid",
                                       "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
# 638 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
        ,
                                       639
# 638 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
        , __FUNCTION__)
                                        ;
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

    slot = (((cte_t *)((unsigned int)(thread)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        /* Haskell asserts that no reply caps exist for this thread here. This
         * cannot be translated. */
        slot->cap = cap_reply_cap_new(((unsigned int)(((void *)0))), true, ((unsigned int)(((void *)0))));
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

bool_t __attribute__((__pure__))
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
        return ((void *)0);
    }

    ct = loadCapTransfer(buffer);
    cptr = ct.ctReceiveRoot;

    luc_ret = lookupCap(thread, cptr);
    if (luc_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    cnode = luc_ret.cap;

    lus_ret = lookupTargetSlot(cnode, ct.ctReceiveIndex, ct.ctReceiveDepth);
    if (lus_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    slot = lus_ret.slot;

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        return ((void *)0);
    }

    return slot;
}

cap_transfer_t __attribute__((__pure__))
loadCapTransfer(word_t *buffer)
{
    const int offset = seL4_MsgMaxLength + ((1ul<<(seL4_MsgExtraCapBits))-1) + 2;
    return capTransferFromWords(buffer + offset);
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c" 2

static inline tcb_queue_t __attribute__((__pure__))
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
                &thread->tcbState, ((unsigned int)(epptr)));
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
        if(!(dest)) _assert_fail("dest", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c", 81, __FUNCTION__);

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
    if(!(cap_get_capType(cap) == cap_endpoint_cap)) _assert_fail("cap_get_capType(cap) == cap_endpoint_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c", 121, __FUNCTION__);

    epptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));
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
                &thread->tcbState, ((unsigned int)(epptr)));
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
            if(!(sender)) _assert_fail("sender", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c", 166, __FUNCTION__);

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

        epptr = ((endpoint_t *)(thread_state_ptr_get_blockingIPCEndpoint(state)));

        /* Haskell error "blockedIPCCancel: endpoint must not be idle" */
        if(!(endpoint_ptr_get_state(epptr) != EPState_Idle)) _assert_fail("endpoint_ptr_get_state(epptr) != EPState_Idle", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c", 241, __FUNCTION__);

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
                       ((async_endpoint_t *)(thread_state_ptr_get_blockingIPCEndpoint(state))));
        break;

    case ThreadState_BlockedOnReply: {
        cte_t *slot, *callerCap;

        fault_null_fault_ptr_new(&tptr->tcbFault);

        /* Get the reply cap slot */
        slot = (((cte_t *)((unsigned int)(tptr)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));

        callerCap = ((cte_t *)(cap_reply_cap_get_capCallerSlot(slot->cap)));
        if (callerCap) {
            finaliseCap(callerCap->cap, true, true);
            callerCap->cap = cap_null_cap_new();
        }
        cap_reply_cap_ptr_set_capCallerSlot(&slot->cap, ((unsigned int)(((void *)0))));

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
        tcb_t *thread = ((tcb_t *)(endpoint_ptr_get_epQueue_head(epptr)));

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
        _fail("invalid EP state", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c", 349, __func__);
    }
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c" 2

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

        if (length < 3 || extraCaps.excaprefs[0] == ((void *)0)) {
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 77, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQControl: Illegal operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

        if (extraCaps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        aepCap = extraCaps.excaprefs[0]->cap;
        slot = extraCaps.excaprefs[0];

        if (cap_get_capType(aepCap) != cap_async_endpoint_cap ||
                !cap_async_endpoint_cap_get_capAEPCanSend(aepCap)) {
            if (cap_get_capType(aepCap) != cap_async_endpoint_cap) {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 116, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQSetHandler: provided cap is not an async endpoint capability."); kprintf(">>" "\033[0m" "\n"); } while (0);
            } else {
                do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 118, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQSetHandler: caller does not have send rights on the endpoint."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 138, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQSetMode: Not enough arguments", length); kprintf(">>" "\033[0m" "\n"); } while (0);
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 151, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQHandler: Illegal operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

    do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 194, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("IRQ %d", irq); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            sendAsyncIPC(((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap))),
                         cap_async_endpoint_cap_get_capAEPBadge(cap));
        } else {

            kprintf("Undelivered IRQ: %d\n", (int)irq);

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

        kprintf("Received disabled IRQ: %d\n", (int)irq);

        break;

    default:
        /* No corresponding haskell error */
        _fail("Invalid IRQ state", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c", 251, __func__);
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/asyncendpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/endpoint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/interrupt.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 27 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 28 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 30 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 31 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/string.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c" 2

word_t getObjectSize(word_t t, word_t userObjSize)
{
    if (t >= seL4_NonArchObjectTypeCount) {
        return Arch_getObjectSize(t);
    } else {
        switch (t) {
        case seL4_TCBObject:
            return ((4 + 4)+1);
        case seL4_EndpointObject:
            return 4;
        case seL4_AsyncEndpointObject:
            return 4;
        case seL4_CapTableObject:
            return 4 + userObjSize;
        case seL4_UntypedObject:
            return userObjSize;
        default:
            _fail("Invalid object type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 50, __func__);
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
            epCancelAll(((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))));
        }

        fc_ret.remainder = cap_null_cap_new();
        fc_ret.irq = irqInvalid;
        return fc_ret;

    case cap_async_endpoint_cap:
        if (final) {
            async_endpoint_t *aep = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap)));
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
        callee = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap)));
        replySlot = (((cte_t *)((unsigned int)(callee)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));
        /* Remove the reference to us */
        cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, ((unsigned int)(((void *)0))));
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
        _fail("finaliseCap: failed to finalise immediately.", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 144, __func__);
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

            tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));
            cte_ptr = (((cte_t *)((unsigned int)(tcb)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable));
            unbindAsyncEndpoint(tcb);
            suspend(tcb);
            replySlot = (((cte_t *)((unsigned int)(tcb)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));
            if (cap_get_capType(replySlot->cap) == cap_reply_cap) {
                if(!(cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0)) _assert_fail("cap_reply_cap_get_capTCBPtr(replySlot->cap) == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 174, __FUNCTION__);
                replySlot->cap = cap_null_cap_new();
            }
            Arch_prepareThreadDelete(tcb);
            fc_ret.remainder =
                Zombie_new(
                    tcbArchCNodeEntries,
                    (1ul<<(5)),
                    ((unsigned int)(cte_ptr))
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
        _fail("recycleCap: can't reconstruct Null", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 222, __func__);
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
        if (type == (1ul<<(5))) {
            tcb_t *tcb;
            _thread_state_t ts __attribute__((unused));

            tcb = ((tcb_t *)(cap_zombie_cap_get_capZombiePtr(cap) + (1 << (4 + 4))))
                                       ;
            ts = thread_state_get_tsType(tcb->tcbState);
            /* Haskell error:
             * "Zombie cap should point at inactive thread" */
            if(!(ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState)) _assert_fail("ts == ThreadState_Inactive || ts != ThreadState_IdleThreadState",
                                                    "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
# 243 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
            ,
                                                    244
# 243 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
            , __FUNCTION__)
                                                     ;
            /* Haskell error:
             * "Zombie cap should not point at queued thread" */
            if(!(!thread_state_get_tcbQueued(tcb->tcbState))) _assert_fail("!thread_state_get_tcbQueued(tcb->tcbState)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 247, __FUNCTION__);
            /* Haskell error:
             * "Zombie cap should not point at bound thread" */
            if(!(tcb->boundAsyncEndpoint == ((void *)0))) _assert_fail("tcb->boundAsyncEndpoint == NULL", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 250, __FUNCTION__);

            /* makeObject doesn't exist in C, objects are initialised by
             * zeroing. The effect of recycle in Haskell is to reinitialise
             * the TCB, with the exception of the TCB CTEs.  I achieve this
             * here by zeroing the TCB part of the structure, while leaving
             * the CNode alone. */
            memzero(tcb, sizeof (tcb_t));
            Arch_initContext(&tcb->tcbArch.tcbContext);
            tcb->tcbTimeSlice = 5;
            tcb->tcbDomain = ksCurDomain;

            return cap_thread_cap_new(((unsigned int)(tcb)));
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

bool_t __attribute__((__const__))
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

bool_t __attribute__((__const__))
sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_untyped_cap: {
        word_t aBase, bBase, aTop, bTop;

        aBase = (word_t)((word_t *)(cap_untyped_cap_get_capPtr(cap_a)));
        bBase = (word_t)cap_get_capPtr(cap_b);

        aTop = aBase + ((1ul<<(cap_untyped_cap_get_capBlockSize(cap_a)))-1ul);
        bTop = bBase + ((1ul<<(cap_get_capSizeBits(cap_b)))-1ul);

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

bool_t __attribute__((__const__))
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

cap_t __attribute__((__const__))
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

        if (guardSize + cap_cnode_cap_get_capCNodeRadix(cap) > (1 << 5)) {
            return cap_null_cap_new();
        } else {
            cap_t new_cap;

            guard = cnode_capdata_get_guard(w) & ((1ul<<(guardSize))-1ul);
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

cap_t __attribute__((__const__))
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
        _fail("Invalid cap type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 505, __func__); /* Sentinel for invalid enums */
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
        memzero(regionBase, 1UL << ((4 + 4)+1));
        tcb = ((tcb_t *)((word_t)regionBase + (1 << (4 + 4))));
        /** AUXUPD: "(True, ptr_retyps 5
          (Ptr ((ptr_val \<acute>tcb) - 0x100) :: cte_C ptr)
            o (ptr_retyp \<acute>tcb))" */

        /* Setup non-zero parts of the TCB. */

        Arch_initContext(&tcb->tcbArch.tcbContext);
        tcb->tcbTimeSlice = 5;
        tcb->tcbDomain = ksCurDomain;


        strlcpy(tcb->tcbName, "child of: '", ((1ul<<((4 + 4))) - sizeof(tcb_t)));
        strlcat(tcb->tcbName, ksCurThread->tcbName, ((1ul<<((4 + 4))) - sizeof(tcb_t)));
        strlcat(tcb->tcbName, "'", ((1ul<<((4 + 4))) - sizeof(tcb_t)));


        return cap_thread_cap_new(((unsigned int)(tcb)));
    }

    case seL4_EndpointObject:
        memzero(regionBase, 1UL << 4);
        /** AUXUPD: "(True, ptr_retyp
          (Ptr (ptr_val \<acute>regionBase) :: endpoint_C ptr))" */
        return cap_endpoint_cap_new(0, true, true, true,
                                    ((unsigned int)(regionBase)));

    case seL4_AsyncEndpointObject:
        memzero(regionBase, 1UL << 4);
        /** AUXUPD: "(True, ptr_retyp
              (Ptr (ptr_val \<acute>regionBase) :: async_endpoint_C ptr))" */
        return cap_async_endpoint_cap_new(0, true, true,
                                          ((unsigned int)(regionBase)));

    case seL4_CapTableObject:
        memzero(regionBase, 1UL << (4 + userSize));
        /** AUXUPD: "(True, ptr_retyps (2 ^ (unat \<acute>userSize))
          (Ptr (ptr_val \<acute>regionBase) :: cte_C ptr))" */
        /** GHOSTUPD: "(True, gs_new_cnodes (unat \<acute>userSize)
                                (ptr_val \<acute>regionBase)
                                (4 + unat \<acute>userSize))" */
        return cap_cnode_cap_new(userSize, 0, 0, ((unsigned int)(regionBase)));

    case seL4_UntypedObject:
        /*
         * No objects need to be created; instead, just insert caps into
         * the destination slots.
         */
        return cap_untyped_cap_new(deviceMemory, userSize, ((unsigned int)(regionBase)));

    default:
        _fail("Invalid object type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 573, __func__);
    }
}

void
createNewObjects(object_t t, cte_t *parent, slot_range_t slots,
                 void *regionBase, unsigned int userSize, bool_t deviceMemory)
{
    word_t objectSize;
    void *nextFreeArea;
    unsigned int i;
    word_t totalObjectSize __attribute__((unused));

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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 619, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted to invoke a null cap #%u.", capIndex); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_zombie_cap:
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 625, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted to invoke a zombie cap #%u.", capIndex); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_endpoint_cap:
        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanSend(cap)), 0)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 633, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted to invoke a read-only endpoint cap #%u.", capIndex); kprintf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Endpoint(
                   ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))),
                   cap_endpoint_cap_get_capEPBadge(cap),
                   cap_endpoint_cap_get_capCanGrant(cap), block, call);

    case cap_async_endpoint_cap: {
        if (__builtin_expect(!!(!cap_async_endpoint_cap_get_capAEPCanSend(cap)), 0)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 648, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted to invoke a read-only async-endpoint cap #%u.", capIndex); kprintf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_AsyncEndpoint(
                   ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(cap))),
                   cap_async_endpoint_cap_get_capAEPBadge(cap));
    }

    case cap_reply_cap:
        if (__builtin_expect(!!(cap_reply_cap_get_capReplyMaster(cap)), 0)) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 663, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Attempted to invoke an invalid reply cap #%u.", capIndex); kprintf(">>" "\033[0m" "\n"); } while (0)
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Reply(
                   ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap))), slot);

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
        _fail("Invalid cap type", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c", 696, __func__);
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/tcb.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/string.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c" 2

static inline void
addToBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL1Bitmap[dom] |= (1ul<<(l1index));
    ksReadyQueuesL2Bitmap[dom][l1index] |= (1ul<<(prio & ((1ul<<(5))-1ul)));
}

static inline void
removeFromBitmap(word_t dom, word_t prio)
{
    uint32_t l1index;

    l1index = prio_to_l1index(prio);
    ksReadyQueuesL2Bitmap[dom][l1index] &= ~(1ul<<(prio & ((1ul<<(5))-1ul)));
    if (__builtin_expect(!!(!ksReadyQueuesL2Bitmap[dom][l1index]), 0)) {
        ksReadyQueuesL1Bitmap[dom] &= ~(1ul<<(l1index));
    }
}

/* Add TCB to the head of a scheduler queue */
void
tcbSchedEnqueue(tcb_t *tcb)
{
    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        __attribute__((unused)) dom_t dom;
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
        tcb->tcbSchedPrev = ((void *)0);
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
        __attribute__((unused)) dom_t dom;
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
        tcb->tcbSchedNext = ((void *)0);
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
        __attribute__((unused)) dom_t dom;
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
            if (__builtin_expect(!!(!tcb->tcbSchedNext), 1)) {
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
    tcb->tcbEPNext = ((void *)0);
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

cptr_t __attribute__((__pure__))
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
    cap_t masterCap __attribute__((unused)), callerCap __attribute__((unused));

    setThreadState(sender, ThreadState_BlockedOnReply);
    replySlot = (((cte_t *)((unsigned int)(sender)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbReply));
    callerSlot = (((cte_t *)((unsigned int)(receiver)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));
    masterCap = replySlot->cap;
    /* Haskell error: "Sender must have a valid master reply cap" */
    if(!(cap_get_capType(masterCap) == cap_reply_cap)) _assert_fail("cap_get_capType(masterCap) == cap_reply_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c", 206, __FUNCTION__);
    if(!(cap_reply_cap_get_capReplyMaster(masterCap))) _assert_fail("cap_reply_cap_get_capReplyMaster(masterCap)", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c", 207, __FUNCTION__);
    if(!(((tcb_t *)(cap_reply_cap_get_capTCBPtr(masterCap))) == ((void *)0))) _assert_fail("TCB_PTR(cap_reply_cap_get_capTCBPtr(masterCap)) == NULL", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c", 208, __FUNCTION__);
    cap_reply_cap_ptr_set_capCallerSlot(&replySlot->cap, ((unsigned int)(callerSlot)));
    callerCap = callerSlot->cap;
    /* Haskell error: "Caller cap must not already exist" */
    if(!(cap_get_capType(callerCap) == cap_null_cap)) _assert_fail("cap_get_capType(callerCap) == cap_null_cap", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c", 212, __FUNCTION__);
    callerSlot->cap = cap_reply_cap_new(((unsigned int)(((void *)0))), false, ((unsigned int)(sender)));
}

void
deleteCallerCap(tcb_t *receiver)
{
    cte_t *callerSlot;

    callerSlot = (((cte_t *)((unsigned int)(receiver)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCaller));
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
        current_extra_caps.excaprefs[0] = ((void *)0);
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
    if (i < ((1ul<<(seL4_MsgExtraCapBits))-1)) {
        current_extra_caps.excaprefs[i] = ((void *)0);
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
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

    case TCBResume:
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Resume(
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

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





    default:
        /* Haskell: "throw IllegalOperation" */
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 344, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB: Illegal operation."); kprintf(">>" "\033[0m" "\n"); } while (0);
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

    if (length < 1 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 367, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB CopyRegisters: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);

    transferArch = Arch_decodeTransfer(flags >> 8);

    source_cap = extraCaps.excaprefs[0]->cap;

    if (cap_get_capType(source_cap) == cap_thread_cap) {
        srcTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(source_cap)));
    } else {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 381, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB CopyRegisters: Invalid source TCB."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_CopyRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), srcTCB,
               flags & (1ul<<(CopyRegisters_suspendSource)),
               flags & (1ul<<(CopyRegisters_resumeTarget)),
               flags & (1ul<<(CopyRegisters_transferFrame)),
               flags & (1ul<<(CopyRegisters_transferInteger)),
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 409, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB ReadRegisters: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    n = getSyscallArg(1, buffer);

    if (n < 1 || n > n_frameRegisters + n_gpRegisters) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 419, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB ReadRegisters: Attempted to read an invalid number of registers (%d).", (int)n); kprintf(">>" "\033[0m" "\n"); } while (0)
                         ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = n_frameRegisters +
                                              n_gpRegisters;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ReadRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))),
               flags & (1ul<<(ReadRegisters_suspend)),
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 448, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB WriteRegisters: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    w = getSyscallArg(1, buffer);

    if (length - 2 < w) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 458, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB WriteRegisters: Message too short for requested write size (%d/%d).", (int)(length - 2), (int)w); kprintf(">>" "\033[0m" "\n"); } while (0)
                                            ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    thread = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_WriteRegisters(thread,
                                    flags & (1ul<<(WriteRegisters_resume)),
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

    if (length < 5 || rootCaps.excaprefs[0] == ((void *)0)
            || rootCaps.excaprefs[1] == ((void *)0)
            || rootCaps.excaprefs[2] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 490, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB Configure: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP = getSyscallArg(0, buffer);
    prio = getSyscallArg(1, buffer);
    cRootData = getSyscallArg(2, buffer);
    vRootData = getSyscallArg(3, buffer);
    bufferAddr = getSyscallArg(4, buffer);

    cRootSlot = rootCaps.excaprefs[0];
    cRootCap = rootCaps.excaprefs[0]->cap;
    vRootSlot = rootCaps.excaprefs[1];
    vRootCap = rootCaps.excaprefs[1]->cap;
    bufferSlot = rootCaps.excaprefs[2];
    bufferCap = rootCaps.excaprefs[2]->cap;

    prio = prio & ((1ul<<(8))-1ul);

    if (prio > ksCurThread->tcbPriority) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 512, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB Configure: Requested priority %d too high (max %d).", (int)prio, (int)(ksCurThread->tcbPriority)); kprintf(">>" "\033[0m" "\n"); } while (0)
                                                             ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (bufferAddr == 0) {
        bufferSlot = ((void *)0);
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
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable))) ||
            slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable)))) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 537, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB Configure: CSpace or VSpace currently being deleted."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            (!0 ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 555, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB Configure: CSpace cap is invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 571, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB Configure: VSpace cap is invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 592, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetPriority: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    newPrio = getSyscallArg(0, buffer);

    /* assuming here seL4_MaxPrio is of form 2^n - 1 */
    newPrio = newPrio & ((1ul<<(8))-1ul);

    if (newPrio > ksCurThread->tcbPriority) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 604, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetPriority: Requested priority %d too high (max %d).", (int)newPrio, (int)ksCurThread->tcbPriority); kprintf(">>" "\033[0m" "\n"); } while (0)
                                                              ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), ((void *)0),
               0, newPrio,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               0, cap_null_cap_new(),
               ((void *)0), thread_control_update_priority);
}

exception_t
decodeSetIPCBuffer(cap_t cap, unsigned int length, cte_t* slot,
                   extra_caps_t extraCaps, word_t *buffer)
{
    cptr_t cptr_bufferPtr;
    cap_t bufferCap;
    cte_t *bufferSlot;

    if (length < 1 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 628, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetIPCBuffer: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    cptr_bufferPtr = getSyscallArg(0, buffer);
    bufferSlot = extraCaps.excaprefs[0];
    bufferCap = extraCaps.excaprefs[0]->cap;

    if (cptr_bufferPtr == 0) {
        bufferSlot = ((void *)0);
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
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               0,
               0, /* used to be prioInvalid, but it doesn't matter */
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
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

    if (length < 3 || extraCaps.excaprefs[0] == ((void *)0)
            || extraCaps.excaprefs[1] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 677, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetSpace: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    faultEP = getSyscallArg(0, buffer);
    cRootData = getSyscallArg(1, buffer);
    vRootData = getSyscallArg(2, buffer);

    cRootSlot = extraCaps.excaprefs[0];
    cRootCap = extraCaps.excaprefs[0]->cap;
    vRootSlot = extraCaps.excaprefs[1];
    vRootCap = extraCaps.excaprefs[1]->cap;

    if (slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable))) ||
            slotCapLongRunningDelete(
                (((cte_t *)((unsigned int)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable)))) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 695, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetSpace: CSpace or VSpace currently being deleted."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            (!0 ||
             cap_get_capType(cRootCap) != cap_null_cap)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 713, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetSpace: Invalid CNode cap."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 729, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB SetSpace: Invalid VSpace cap."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               faultEP,
               0, /* used to be prioInvalid, but it doesn't matter */
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               0, cap_null_cap_new(), ((void *)0), thread_control_update_space);
}

exception_t
decodeDomainInvocation(word_t label, unsigned int length, extra_caps_t extraCaps, word_t *buffer)
{
    word_t domain;
    cap_t tcap;

    if (__builtin_expect(!!(label != DomainSetSet), 0)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(length == 0), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 756, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Domain Configure: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    } else {
        domain = getSyscallArg(0, buffer);
        if (domain >= 1) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 763, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Domain Configure: invalid domain (%u >= %u).", domain, 1); kprintf(">>" "\033[0m" "\n"); } while (0)
                                                 ;
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    if (__builtin_expect(!!(extraCaps.excaprefs[0] == ((void *)0)), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 771, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Domain Configure: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcap = extraCaps.excaprefs[0]->cap;
    if (__builtin_expect(!!(cap_get_capType(tcap) != cap_thread_cap), 0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 778, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Domain Configure: thread cap required."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    setDomain(((tcb_t *)(cap_thread_cap_get_capTCBPtr(tcap))), domain);
    return EXCEPTION_NONE;
}

exception_t decodeBindAEP(cap_t cap, extra_caps_t extraCaps)
{
    async_endpoint_t *aepptr;
    tcb_t *tcb;

    if (extraCaps.excaprefs[0] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 795, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB BindAEP: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_get_capType(extraCaps.excaprefs[0]->cap) != cap_async_endpoint_cap) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 801, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB BindAEP: Async endpoint is invalid."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (tcb->boundAsyncEndpoint) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 809, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB BindAEP: TCB already has AEP."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    aepptr = ((async_endpoint_t *)(cap_async_endpoint_cap_get_capAEPPtr(extraCaps.excaprefs[0]->cap)));
    if ((tcb_t*)async_endpoint_ptr_get_aepQueue_head(aepptr)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 816, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB BindAEP: AEP cannot be bound."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, aepptr);
}

exception_t decodeUnbindAEP(cap_t cap)
{
    tcb_t *tcb;

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (!tcb->boundAsyncEndpoint) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 832, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("TCB UnbindAEP: TCB already has no bound AEP."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_AEPControl(tcb, ((void *)0));
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

        rootSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbCTable));
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

        rootSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbVTable));
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

        bufferSlot = (((cte_t *)((unsigned int)(target)&~((1ul<<(((4 + 4)+1)))-1ul)))+(tcbBuffer));
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

        if (ipcBuffer != ((void *)0) && i < n && i < n_frameRegisters) {
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

        if (ipcBuffer != ((void *)0) && i < n_gpRegisters
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


void
setThreadName(tcb_t *tcb, const char *name)
{
    strlcpy(tcb->tcbName, name, ((1ul<<((4 + 4))) - sizeof(tcb_t)));
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/config.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/failures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "./api/invocation.h" 1
/* @LICENSE(OKL_CORE) */

/* This header was generated by kernel/tools/invocation_header_gen.py.
 *
 * To add an invocation call number, edit libsel4/include/interfaces/sel4.xml.
 *
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/untyped.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/objecttype.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/cnode.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/cspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c" 2

static word_t
alignUp(word_t baseValue, unsigned int alignment)
{
    return (baseValue + ((1ul<<(alignment)) - 1)) & ~((1ul<<(alignment))-1ul);
}

exception_t
decodeUntypedInvocation(word_t label, unsigned int length, cte_t *slot,
                        cap_t cap, extra_caps_t extraCaps,
                        bool_t call, word_t *buffer)
{
    word_t newType, userObjSize, nodeIndex;
    word_t nodeDepth, nodeOffset, nodeWindow;
    cte_t *rootSlot __attribute__((unused));
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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 50, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped cap: Illegal operation attempted."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure message length valid. */
    if (length < 7 || extraCaps.excaprefs[0] == ((void *)0)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 57, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped invocation: Truncated message."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Fetch arguments. */
    newType = getSyscallArg(0, buffer);
    freeIndex = getSyscallArg(1, buffer);
    userObjSize = getSyscallArg(2, buffer);
    nodeIndex = getSyscallArg(3, buffer);
    nodeDepth = getSyscallArg(4, buffer);
    nodeOffset = getSyscallArg(5, buffer);
    nodeWindow = getSyscallArg(6, buffer);

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
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 82, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Untyped outside kernel window (%p).", (void*)newType); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object type valid? */
    if (newType >= seL4_ObjectTypeCount) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 90, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Invalid object type."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the requested object size valid? */
    if (userObjSize >= ((1 << 5) - 1)) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 98, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Invalid object size."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = (1 << 5) - 2;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a CNode, is it at least size 1? */
    if (newType == seL4_CapTableObject && userObjSize == 0) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 107, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Requested CapTable size too small."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* If the target object is a Untyped, is it at least size 4? */
    if (newType == seL4_UntypedObject && userObjSize < 4) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 115, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Requested UntypedItem size too small."); kprintf(">>" "\033[0m" "\n"); } while (0);
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
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 128, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Invalid destination address."); kprintf(">>" "\033[0m" "\n"); } while (0);
            return lu_ret.status;
        }
        nodeCap = lu_ret.slot->cap;
    }

    /* Is the destination actually a CNode? */
    if (cap_get_capType(nodeCap) != cap_cnode_cap) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 136, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Destination cap invalid or read-only."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = 0;
        current_lookup_fault = lookup_fault_missing_capability_new(nodeDepth);
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Is the region where the user wants to put the caps valid? */
    nodeSize = 1 << cap_cnode_cap_get_capCNodeRadix(nodeCap);
    if (nodeOffset > nodeSize - 1) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 147, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Destination node offset #%d too large.", (int)nodeOffset); kprintf(">>" "\033[0m" "\n"); } while (0)
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = nodeSize - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow < 1 || nodeWindow > 256) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 155, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Number of requested objects (%d) too small or large.", (int)nodeWindow); kprintf(">>" "\033[0m" "\n"); } while (0)
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = 256;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow > nodeSize - nodeOffset) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 162, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Requested destination window overruns size of node."); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = nodeSize - nodeOffset;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Ensure that the destination slots are all empty. */
    slots.cnode = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap)));
    slots.offset = nodeOffset;
    slots.length = nodeWindow;
    for (i = nodeOffset; i < nodeOffset + nodeWindow; i++) {
        status = ensureEmptySlot(slots.cnode + i);
        if (status != EXCEPTION_NONE) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 177, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Slot #%d in destination window non-empty.", (int)i); kprintf(">>" "\033[0m" "\n"); } while (0)
                             ;
            return status;
        }
    }

    objectSize = getObjectSize(newType, userObjSize);

    /* Align up the free region so that it is aligned to the target object's
     * size. */
    alignedFreeIndex = alignUp(freeIndex, objectSize);

    freeRef = ((word_t)(((word_t)(cap_untyped_cap_get_capPtr(cap))) + (alignedFreeIndex)));

    /* Check that this object will be within the bounds of the untyped */
    untypedSize = (1ul<<(cap_untyped_cap_get_capBlockSize(cap)));
    if (objectSize >= (1 << 5) || alignedFreeIndex + (1ul<<(objectSize)) > untypedSize) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 193, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Insufficient memory or offset outside untyped"); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_NotEnoughMemory;
        current_syscall_error.memoryLeft = untypedSize;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Check to see if this retype will collide with an existing child. */
    if (newType != seL4_UntypedObject && !cap_untyped_cap_get_capDeviceMemory(cap)) {
        cte_t *child = cdtFindTypedInRange(freeRef, nodeWindow * objectSize);
        if (child) {
            do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 203, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: collision with existing child"); kprintf(">>" "\033[0m" "\n"); } while (0);
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    /* Check we do not create non frames in frame only untypeds */
    if ( (cap_untyped_cap_get_capDeviceMemory(cap) && !Arch_isFrameType(newType))
            && newType != seL4_UntypedObject) {
        do { kprintf("\033[0m" "\033[30;1m" "<<" "\033[0m" "\033[32m" "seL4" "\033[0m" "\033[30;1m" " [%s/%d T%x \"%s\" @%x]: ", __func__, 212, (int)ksCurThread, ksCurThread->tcbName, (int)getRestartPC(ksCurThread)); kprintf("Untyped Retype: Creating kernel objects with frame only untyped"); kprintf(">>" "\033[0m" "\n"); } while (0);
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    /* Perform the retype. */
    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeUntyped_Retype(
               slot, ((word_t *)(cap_untyped_cap_get_capPtr(cap))),
               (void*)freeRef, newType, userObjSize, slots, call, cap_untyped_cap_get_capDeviceMemory(cap));
}

exception_t
invokeUntyped_Retype(cte_t *srcSlot, void* regionBase,
                     void* freeRegionBase,
                     object_t newType, unsigned int userSize,
                     slot_range_t destSlots, bool_t call, bool_t deviceMemory)
{
    word_t size_ign __attribute__((unused));

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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/types.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/kernel/vspace.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/linker.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c" 2

/* Available physical memory regions on platform (RAM) */
/* NOTE: Regions are not allowed to be adjacent! */
const p_region_t __attribute__((__section__(".boot.rodata"))) avail_p_regs[] = {
    /* 1 GiB */

    /* 1MB stolen for logging */
    { /* .start = */ 0x10000000, /* .end = */ 0x2fd00000 }



};

__attribute__((__section__(".boot.text"))) int
get_num_avail_p_regs(void)
{
    return sizeof(avail_p_regs) / sizeof(p_region_t);
}

__attribute__((__section__(".boot.text"))) p_region_t
get_avail_p_reg(unsigned int i)
{
    return avail_p_regs[i];
}

const p_region_t __attribute__((__section__(".boot.rodata"))) dev_p_regs[] = {
//  { /* .start = */ EIM_CS0_PADDR          , /* .end = */ EIM_CS0_PADDR           + (128 << 20)},
    { /* .start = */ 0x02800000 /*   4 MB    */ , /* .end = */ 0x02800000 /*   4 MB    */ + ( 4 << 20)},
    { /* .start = */ 0x02400000 /*   4 MB    */ , /* .end = */ 0x02400000 /*   4 MB    */ + ( 4 << 20)},
    { /* .start = */ 0x02208000 /*   4 pages */ , /* .end = */ 0x02208000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02204000 /*   4 pages */ , /* .end = */ 0x02204000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02200000 /*   4 pages */ , /* .end = */ 0x02200000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021F4000 /*   4 pages */ , /* .end = */ 0x021F4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021F0000 /*   4 pages */ , /* .end = */ 0x021F0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021EC000 /*   4 pages */ , /* .end = */ 0x021EC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021E8000 /*   4 pages */ , /* .end = */ 0x021E8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021E4000 /*   4 pages */ , /* .end = */ 0x021E4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021E0000 /*   4 pages */ , /* .end = */ 0x021E0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021DC000 /*   4 pages */ , /* .end = */ 0x021DC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021D8000 /*   4 pages */ , /* .end = */ 0x021D8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021D4000 /*   4 pages */ , /* .end = */ 0x021D4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021D0000 /*   4 pages */ , /* .end = */ 0x021D0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021C0000 /*   4 pages */ , /* .end = */ 0x021C0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021BC000 /*   4 pages */ , /* .end = */ 0x021BC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021B8000 /*   4 pages */ , /* .end = */ 0x021B8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021B4000 /*   4 pages */ , /* .end = */ 0x021B4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021B0000 /*   4 pages */ , /* .end = */ 0x021B0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021AC000 /*   4 pages */ , /* .end = */ 0x021AC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021A8000 /*   4 pages */ , /* .end = */ 0x021A8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021A4000 /*   4 pages */ , /* .end = */ 0x021A4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x021A0000 /*   4 pages */ , /* .end = */ 0x021A0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0219C000 /*   4 pages */ , /* .end = */ 0x0219C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02198000 /*   4 pages */ , /* .end = */ 0x02198000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02194000 /*   4 pages */ , /* .end = */ 0x02194000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02190000 /*   4 pages */ , /* .end = */ 0x02190000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0218C000 /*   4 pages */ , /* .end = */ 0x0218C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02188000 /*   4 pages */ , /* .end = */ 0x02188000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02184000 /*   4 pages */ , /* .end = */ 0x02184000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0217C000 /*   4 pages */ , /* .end = */ 0x0217C000 /*   4 pages */ + ( 4 << 12)},
//  { /* .start = */ ARM_MPCORE_PADDR       , /* .end = */ ARM_MPCORE_PADDR        + ( 27 << 12)},
    { /* .start = */ 0x02160000 /*   1 page  */ , /* .end = */ 0x02160000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215F000 /*   1 page  */ , /* .end = */ 0x0215F000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215E000 /*   1 page  */ , /* .end = */ 0x0215E000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215D000 /*   1 page  */ , /* .end = */ 0x0215D000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215C000 /*   1 page  */ , /* .end = */ 0x0215C000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215B000 /*   1 page  */ , /* .end = */ 0x0215B000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0215A000 /*   1 page  */ , /* .end = */ 0x0215A000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02159000 /*   1 page  */ , /* .end = */ 0x02159000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02158000 /*   1 page  */ , /* .end = */ 0x02158000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02157000 /*   1 page  */ , /* .end = */ 0x02157000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02156000 /*   1 page  */ , /* .end = */ 0x02156000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02155000 /*   1 page  */ , /* .end = */ 0x02155000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02154000 /*   1 page  */ , /* .end = */ 0x02154000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02153000 /*   1 page  */ , /* .end = */ 0x02153000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02152000 /*   1 page  */ , /* .end = */ 0x02152000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02151000 /*   1 page  */ , /* .end = */ 0x02151000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02150000 /*   1 page  */ , /* .end = */ 0x02150000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x0214F000 /*   1 page  */ , /* .end = */ 0x0214F000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02144000 /*   1 page  */ , /* .end = */ 0x02144000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02143000 /*   1 page  */ , /* .end = */ 0x02143000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02142000 /*   1 page  */ , /* .end = */ 0x02142000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02141000 /*   1 page  */ , /* .end = */ 0x02141000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02140000 /*   1 page  */ , /* .end = */ 0x02140000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x02100000 /*  16 pages */ , /* .end = */ 0x02100000 /*  16 pages */ + ( 16 << 12)},
    { /* .start = */ 0x020EC000 /*   4 pages */ , /* .end = */ 0x020EC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020E8000 /*   4 pages */ , /* .end = */ 0x020E8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020E4000 /*   4 pages */ , /* .end = */ 0x020E4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020E0000 /*   4 pages */ , /* .end = */ 0x020E0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020DC000 /*   1 page  */ , /* .end = */ 0x020DC000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x020D8000 /*   4 pages */ , /* .end = */ 0x020D8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020D4000 /*   4 pages */ , /* .end = */ 0x020D4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020D0000 /*   4 pages */ , /* .end = */ 0x020D0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020CC000 /*   4 pages */ , /* .end = */ 0x020CC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020CA000 /*   1 page  */ , /* .end = */ 0x020CA000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x020C9000 /*   1 page  */ , /* .end = */ 0x020C9000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x020C8000 /*   1 page  */ , /* .end = */ 0x020C8000 /*   1 page  */ + ( 1 << 12)},
    { /* .start = */ 0x020C4000 /*   4 pages */ , /* .end = */ 0x020C4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020C0000 /*   4 pages */ , /* .end = */ 0x020C0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020BC000 /*   4 pages */ , /* .end = */ 0x020BC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020B8000 /*   4 pages */ , /* .end = */ 0x020B8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020B4000 /*   4 pages */ , /* .end = */ 0x020B4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020B0000 /*   4 pages */ , /* .end = */ 0x020B0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020AC000 /*   4 pages */ , /* .end = */ 0x020AC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020A8000 /*   4 pages */ , /* .end = */ 0x020A8000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020A4000 /*   4 pages */ , /* .end = */ 0x020A4000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x020A0000 /*   4 pages */ , /* .end = */ 0x020A0000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0209C000 /*   4 pages */ , /* .end = */ 0x0209C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02098000 /*   4 pages */ , /* .end = */ 0x02098000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02094000 /*   4 pages */ , /* .end = */ 0x02094000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02090000 /*   4 pages */ , /* .end = */ 0x02090000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0208C000 /*   4 pages */ , /* .end = */ 0x0208C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02088000 /*   4 pages */ , /* .end = */ 0x02088000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02084000 /*   4 pages */ , /* .end = */ 0x02084000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02080000 /*   4 pages */ , /* .end = */ 0x02080000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0207C000 /*   4 pages */ , /* .end = */ 0x0207C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02040000 /*  60 pages */ , /* .end = */ 0x02040000 /*  60 pages */ + ( 60 << 12)},
    { /* .start = */ 0x0203C000 /*   4 pages */ , /* .end = */ 0x0203C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02034000 /*   4 pages */ , /* .end = */ 0x02034000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02030000 /*   4 pages */ , /* .end = */ 0x02030000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0202C000 /*   4 pages */ , /* .end = */ 0x0202C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02028000 /*   4 pages */ , /* .end = */ 0x02028000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02024000 /*   4 pages */ , /* .end = */ 0x02024000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02020000 /*   4 pages */ , /* .end = */ 0x02020000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02018000 /*   4 pages */ , /* .end = */ 0x02018000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02014000 /*   4 pages */ , /* .end = */ 0x02014000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02010000 /*   4 pages */ , /* .end = */ 0x02010000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x0200C000 /*   4 pages */ , /* .end = */ 0x0200C000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02008000 /*   4 pages */ , /* .end = */ 0x02008000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x02004000 /*   4 pages */ , /* .end = */ 0x02004000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x01FFC000 /*   4 pages */ , /* .end = */ 0x01FFC000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x01000000 /*  15 MB    */ , /* .end = */ 0x01000000 /*  15 MB    */ + ( 15 << 20)},
    { /* .start = */ 0x00C00000 /*   1 MB    */, /* .end = */ 0x00C00000 /*   1 MB    */ + ( 1 << 20)},
    { /* .start = */ 0x00B00000 /*   1 MB    */, /* .end = */ 0x00B00000 /*   1 MB    */ + ( 1 << 20)},
//  { /* .start = */ L2CC_PL310_PADDR       , /* .end = */ L2CC_PL310_PADDR        + (  1 << 12)},
//  { /* .start = */ ARM_MP_PADDR           , /* .end = */ ARM_MP_PADDR            + (  2 << 12)},
    { /* .start = */ 0x00940000 /* 192 pages */ , /* .end = */ 0x00940000 /* 192 pages */ + (192 << 12)},
    { /* .start = */ 0x00900000 /*  64 pages */ , /* .end = */ 0x00900000 /*  64 pages */ + ( 64 << 12)},
    { /* .start = */ 0x00800000 /*   1 MB    */, /* .end = */ 0x00800000 /*   1 MB    */ + ( 1 << 20)},
    { /* .start = */ 0x00300000 /*   1 MB    */, /* .end = */ 0x00300000 /*   1 MB    */ + ( 1 << 20)},
    { /* .start = */ 0x00200000 /*   1 MB    */, /* .end = */ 0x00200000 /*   1 MB    */ + ( 1 << 20)},
    { /* .start = */ 0x00138000 /*   4 pages */ , /* .end = */ 0x00138000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x00134000 /*   4 pages */ , /* .end = */ 0x00134000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x00130000 /*   4 pages */ , /* .end = */ 0x00130000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x00120000 /*   9 pages */ , /* .end = */ 0x00120000 /*   9 pages */ + ( 9 << 12)},
    { /* .start = */ 0x00114000 /*   4 pages */ , /* .end = */ 0x00114000 /*   4 pages */ + ( 4 << 12)},
    { /* .start = */ 0x00112000 /*   2 pages */ , /* .end = */ 0x00112000 /*   2 pages */ + ( 2 << 12)},
    { /* .start = */ 0x00110000 /*   2 pages */ , /* .end = */ 0x00110000 /*   2 pages */ + ( 2 << 12)},
    { /* .start = */ 0x00100000 /*   4 pages */ , /* .end = */ 0x00100000 /*   4 pages */ + ( 4 << 12)},
//  { /* .start = */ BOOT_ROM_PADDR         , /* .end = */ BOOT_ROM_PADDR          + ( 24 << 12)}
};

__attribute__((__section__(".boot.text"))) int
get_num_dev_p_regs(void)
{
    return sizeof(dev_p_regs) / sizeof(p_region_t);
}

__attribute__((__section__(".boot.text"))) p_region_t
get_dev_p_reg(unsigned int i)
{
    return dev_p_regs[i];
}


/* Determine if the given IRQ should be reserved by the kernel. */
bool_t __attribute__((__const__))
isReservedIRQ(irq_t irq)
{
    return irq == INTERRUPT_PRIV_TIMER;
}

/* Handle a platform-reserved IRQ. */
void
handleReservedIRQ(irq_t irq)
{
    if (irq == INTERRUPT_UART2) {
        handle_reset_on_serial();
        return;
    }
    kprintf("Received reserved IRQ: %d\n", (int)irq);
}


__attribute__((__section__(".boot.text"))) void
map_kernel_devices(void)
{
    /* map kernel device: reset controler */
    map_kernel_frame(
        0x020D8000 /*   4 pages */,
        0xfff06000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever  */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );

    /* map kernel device: watch controler */
    map_kernel_frame(
        0x020BC000 /*   4 pages */,
        0xfff07000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever  */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );

    /* map kernel device: GIC controller and private timers */
    map_kernel_frame(
        0x00A00000 /*   2 pages */,
        0xfff04000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );

    /* map kernel device: GIC distributor */
    map_kernel_frame(
        0x00A00000 /*   2 pages */ + (1ul<<(12)),
        0xfff05000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );

    /* map kernel device: L2CC */
    map_kernel_frame(
        0x00A02000 /*   1 page  */,
        0xfff03000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );



    /* map kernel device: UART */
    map_kernel_frame(
        0x021E8000 /*   4 pages */,
        0xfff01000,
        VMKernelOnly,
        vm_attributes_new(
            true, /* armExecuteNever */
            false, /* armParityEnabled */
            false /* armPageCacheable */
        )
    );

}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/io.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/devices.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c" 2
# 41 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c"
/* SR1 bits */
# 58 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c"
void init_serial(void) {
    /* read in any characters */
    uint32_t disable, enable;
    while ((*((volatile uint32_t *)(0xfff01000 + (0x98 /* UART Status Register 2 */))) & (1ul<<(0)))) {
        uint32_t c = *((volatile uint32_t *)(0xfff01000 + (0x00 /* UART Receiver Register */)));
        (void)c;
    }
    *((volatile uint32_t *)(0xfff01000 + (0x90 /* UART FIFO Control Register */))) = ((*((volatile uint32_t *)(0xfff01000 + (0x90 /* UART FIFO Control Register */)))) & ~0x3fUL) | 0x1;
    /* disable tx interrupts and enable interrupt on rx ready */
    disable = (1ul<<(15)) | (1ul<<(13)) | (1ul<<(12)) |(1ul<<(6)) | (1ul<<(2));
    enable = (1ul<<(9));
    *((volatile uint32_t *)(0xfff01000 + (0x80 /* UART Control Register 1 */))) = ((*((volatile uint32_t *)(0xfff01000 + (0x80 /* UART Control Register 1 */)))) & (~disable)) | enable;
    disable = (1ul<<(13)) | (1ul<<(12)) | (1ul<<(11)) | (1ul<<(9)) | (1ul<<(6)) | (1ul<<(5)) | (1ul<<(4)) | (1ul<<(3)) | (1ul<<(0));
    enable = 0;
    *((volatile uint32_t *)(0xfff01000 + (0x88 /* UART Control Register 3 */))) = ((*((volatile uint32_t *)(0xfff01000 + (0x88 /* UART Control Register 3 */)))) & (~disable)) | enable;
    disable = (1ul<<(8)) | (1ul<<(7)) | (1ul<<(6)) | (1ul<<(3)) | (1ul<<(2)) | (1ul<<(1));
    enable = (1ul<<(0));
    *((volatile uint32_t *)(0xfff01000 + (0x8c /* UART Control Register 4 */))) = ((*((volatile uint32_t *)(0xfff01000 + (0x8c /* UART Control Register 4 */)))) & (~disable)) | enable;
    disable = (1ul<<(15)) | (1ul<<(4)) | (1ul<<(3));
    enable = (1ul<<(0));
    *((volatile uint32_t *)(0xfff01000 + (0x84 /* UART Control Register 2 */))) = ((*((volatile uint32_t *)(0xfff01000 + (0x84 /* UART Control Register 2 */)))) & (~disable)) | enable;
}

void
handle_reset_on_serial(void){
    static char* reset_code_ptr = "reset";
    while(*((volatile uint32_t *)(0xfff01000 + (0x98 /* UART Status Register 2 */))) & (1ul<<(0))){
        /* We have a character */
        char c = *((volatile uint32_t *)(0xfff01000 + (0x00 /* UART Receiver Register */)));
        /* set to clear interrupt flag */
        *((volatile uint32_t *)(0xfff01000 + (0x94 /* UART Status Register 1 */))) = (1ul<<(9));
        if(c == *reset_code_ptr){
            reset_code_ptr++;
            if(*reset_code_ptr == '\0'){
                /* sequence found */
                volatile uint32_t *src_reg = (volatile uint32_t*)0xfff06000;
                volatile uint16_t *wdt_reg = (volatile uint16_t*)0xfff07000;
                kprintf("\n\nTrying to restart\n");
                src_reg[0] &= (~ ((1ul<<(22)) | (1ul<<(23)) | (1ul<<(24))));
                src_reg[8] = 0;
                wdt_reg[0] = (1ul<<(2));
                wdt_reg[0] = (1ul<<(2));
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
    while (!(*((volatile uint32_t *)(0xfff01000 + (0x98 /* UART Status Register 2 */))) & (1ul<<(14))));
    *((volatile uint32_t *)(0xfff01000 + (0x40 /* UART Transmitter Register */))) = c;
}

unsigned char getDebugChar(void)
{
    while (!(*((volatile uint32_t *)(0xfff01000 + (0x98 /* UART Status Register 2 */))) & (1ul<<(0))));
    return *((volatile uint32_t *)(0xfff01000 + (0x00 /* UART Receiver Register */)));
}
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/string.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/string.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/string.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/string.c" 2



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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/assert.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/stdint.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/util.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c" 2

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
    if(!((unsigned int)s % 4 == 0)) _assert_fail("(unsigned int)s % 4 == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c", 26, __FUNCTION__);
    if(!(n % 4 == 0)) _assert_fail("n % 4 == 0", "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c", 27, __FUNCTION__);

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
    if (__builtin_expect(!!(c == 0 && ((uint32_t)s % 4) == 0 && (n % 4) == 0), 1)) {
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

int __attribute__((__const__))
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

int __attribute__((__pure__))
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
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/config/default_domain.c"
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */

# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/config/default_domain.c" 2
# 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/model/statedata.h" 1
/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * This software may be distributed and modified according to the terms of
 * the GNU General Public License version 2. Note that NO WARRANTY is provided.
 * See "LICENSE_GPLv2.txt" for details.
 *
 * @TAG(GD_GPL)
 */
# 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/config/default_domain.c" 2

/* Default schedule. */
const dschedule_t ksDomSchedule[] = {
    { .domain = 0, .length = 1 },
};

const unsigned int ksDomScheduleLength = sizeof(ksDomSchedule) / sizeof(dschedule_t);
