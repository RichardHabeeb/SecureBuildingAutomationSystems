	.cpu cortex-a9
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sys_exit.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	sys_rt_sigprocmask
	.syntax unified
	.arm
	.type	sys_rt_sigprocmask, %function
sys_rt_sigprocmask:
	.fnstart
.LFB124:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.cfi_endproc
.LFE124:
	.fnend
	.size	sys_rt_sigprocmask, .-sys_rt_sigprocmask
	.align	2
	.global	sys_gettid
	.syntax unified
	.arm
	.type	sys_gettid, %function
sys_gettid:
	.fnstart
.LFB122:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.cfi_endproc
.LFE122:
	.fnend
	.size	sys_gettid, .-sys_gettid
	.align	2
	.global	sys_getpid
	.syntax unified
	.arm
	.type	sys_getpid, %function
sys_getpid:
	.fnstart
.LFB117:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libsos/src/sys_exit.c"
	.loc 1 37 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 40 0
	mov	r0, #0
.LVL1:
	bx	lr
	.cfi_endproc
.LFE117:
	.fnend
	.size	sys_getpid, .-sys_getpid
	.align	2
	.global	sys_exit
	.syntax unified
	.arm
	.type	sys_exit, %function
sys_exit:
	.fnstart
.LFB126:
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.save {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	bl	abort
	.cfi_endproc
.LFE126:
	.fnend
	.size	sys_exit, .-sys_exit
	.align	2
	.global	sys_exit_group
	.syntax unified
	.arm
	.type	sys_exit_group, %function
sys_exit_group:
	.fnstart
.LFB119:
	.loc 1 51 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	.loc 1 51 0
	push	{r4, lr}
	.save {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 52 0
	bl	abort
.LVL3:
	.cfi_endproc
.LFE119:
	.fnend
	.size	sys_exit_group, .-sys_exit_group
	.align	2
	.global	sys_tgkill
	.syntax unified
	.arm
	.type	sys_tgkill, %function
sys_tgkill:
	.fnstart
.LFB120:
	.loc 1 58 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4:
.LBB8:
.LBB9:
	.loc 1 19 0
	movw	r0, #:lower16:.LC0
.LVL5:
.LBE9:
.LBE8:
	.loc 1 58 0
	push	{r7, lr}
	.save {r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB15:
.LBB14:
	.loc 1 19 0
	movt	r0, #:upper16:.LC0
.LBB10:
.LBB11:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
	.loc 2 526 0
	mvn	r7, #10
.LBE11:
.LBE10:
	.loc 1 19 0
	bl	puts
.LVL6:
.LBB13:
.LBB12:
	.loc 2 527 0
	.syntax divided
@ 527 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h" 1
	swi #16777205
@ 0 "" 2
	.arm
	.syntax unified
.L9:
	b	.L9
.LBE12:
.LBE13:
.LBE14:
.LBE15:
	.cfi_endproc
.LFE120:
	.fnend
	.size	sys_tgkill, .-sys_tgkill
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"sos aborting\000"
	.text
.Letext0:
	.file 3 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
	.file 4 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/simple_types.h"
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/types.h"
	.file 6 "<built-in>"
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h"
	.file 8 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x252
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF687
	.byte	0xc
	.4byte	.LASF688
	.4byte	.LASF689
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF655
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF665
	.byte	0x3
	.byte	0x14
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF690
	.byte	0x4
	.byte	0x6
	.byte	0
	.4byte	0x59
	.uleb128 0x6
	.4byte	.LASF691
	.4byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF656
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF657
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF658
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF659
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF660
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF661
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF662
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF663
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF664
	.uleb128 0x4
	.4byte	.LASF666
	.byte	0x4
	.byte	0x15
	.4byte	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF667
	.uleb128 0x4
	.4byte	.LASF668
	.byte	0x5
	.byte	0x1d
	.4byte	0x9a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0xd
	.4byte	0x12d
	.uleb128 0x9
	.4byte	.LASF669
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF670
	.sleb128 -2
	.uleb128 0x9
	.4byte	.LASF671
	.sleb128 -3
	.uleb128 0x9
	.4byte	.LASF672
	.sleb128 -4
	.uleb128 0x9
	.4byte	.LASF673
	.sleb128 -5
	.uleb128 0x9
	.4byte	.LASF674
	.sleb128 -6
	.uleb128 0x9
	.4byte	.LASF675
	.sleb128 -7
	.uleb128 0x9
	.4byte	.LASF676
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF677
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF678
	.sleb128 -11
	.uleb128 0x9
	.4byte	.LASF679
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF680
	.sleb128 -13
	.uleb128 0x9
	.4byte	.LASF681
	.sleb128 -14
	.uleb128 0x9
	.4byte	.LASF682
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF683
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF684
	.sleb128 -18
	.uleb128 0xa
	.4byte	.LASF685
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF686
	.uleb128 0xb
	.4byte	.LASF692
	.byte	0x2
	.2byte	0x20c
	.byte	0x3
	.4byte	0x14e
	.uleb128 0xc
	.4byte	.LASF693
	.byte	0x2
	.2byte	0x20e
	.4byte	0xac
	.byte	0
	.uleb128 0xd
	.4byte	.LASF694
	.byte	0x1
	.byte	0x25
	.4byte	0x77
	.byte	0x1
	.4byte	0x169
	.uleb128 0xe
	.ascii	"ap\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	0x14e
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186
	.uleb128 0x10
	.4byte	0x15e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF695
	.byte	0x1
	.byte	0x32
	.4byte	0x77
	.byte	0x1
	.4byte	0x1a1
	.uleb128 0xe
	.ascii	"ap\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.4byte	0x186
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7
	.uleb128 0x10
	.4byte	0x196
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x23b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF696
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF697
	.byte	0x1
	.byte	0x39
	.4byte	0x77
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23b
	.uleb128 0x15
	.ascii	"ap\000"
	.byte	0x1
	.byte	0x39
	.4byte	0x37
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	0x1c7
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3b
	.uleb128 0x17
	.4byte	0x134
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x14
	.4byte	0x226
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x19
	.4byte	0x141
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x246
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF698
	.4byte	.LASF698
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF699
	.4byte	.LASF700
	.byte	0x6
	.byte	0
	.4byte	.LASF699
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF334
	.byte	0x6
	.uleb128 0x150
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF347
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF348
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF357
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF358
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF359
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF380
	.file 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF415
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 10 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF428
	.file 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF429
	.file 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF430
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF431
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 13 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/macros.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF450
	.file 15 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF517
	.file 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF522
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF523
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.file 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/objecttype.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x12
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF524
	.byte	0x4
	.file 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/errors.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF525
	.byte	0x4
	.file 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/constants.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.file 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x15
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF534
	.file 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/objecttype.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x16
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF535
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF536
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 23 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/functions.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF537
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.file 24 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF540
	.file 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/invocation.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF541
	.byte	0x4
	.byte	0x4
	.file 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF542
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF543
	.byte	0x4
	.file 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/bootinfo.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x1b
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x4
	.file 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sos.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF546
	.file 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.file 30 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/wchar.h"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x1e
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.file 31 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/stdint.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1f
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.4.f78ca933ac8fedd23ee475ba8f9f4741,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF386
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.5.24669c684bb73904d7b2afb6dda20124,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF391
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.23.8911e627eaddec94a7effca0f6c51b0b,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF393
	.byte	0x2
	.uleb128 0x1e
	.ascii	"EOF\000"
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF412
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.4.2a441acfbee021d3ac4b29eff53d8977,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF414
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.74.7ce7e708dd5af39cb03d93e448753205,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF427
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.simple_types.h.18.86f4332e2493068cbf52b3c36d2c0060,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF434
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.macros.h.12.95a7ddbd437300e99986fae89d7e987b,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF438
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.12.cd460de5c7246adf86f61c705d35b363,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF449
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.autoconf.h.6.e18ff89dc643d896116d6c2c72993e1f,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF516
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.20.47abdd5cdc017b13b80c9285a97731d0,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF521
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.constants.h.12.0548dac8c33811dcbb25aa5fd0df9cb7,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF528
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.49.fdd10c2d615f23eb46c86ce8d55366c6,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF533
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.syscalls.h.18.a97e235277b18e2b91ea94b92a7fd9d8,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF538
	.byte	0x6
	.uleb128 0x27e
	.4byte	.LASF539
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.bootinfo.h.12.5d34185b7cc16f7d4b6e0f3d80ca8c64,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF545
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.4.3397add6b12087b5f28c1b25cc4ff339,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF565
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.50.bd72c3864c592876b3d082cfbf64f8c4,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF583
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.46.7ec6d3ed12e9ba09d75fea6a29b95ac8,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF612
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.wchar.h.4.3000795860128190bca89d55f63a0d99,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF614
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.3.89b51772c052e446c19bd65e1e173eee,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF634
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.90.84c8b3cacbd67db36f9d16b2bed1b5d8,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF644
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sos.h.23.edfccf9e8c19d5cebb878db23e4d66e3,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF654
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF508:
	.ascii	"CONFIG_RETYPE_FAN_OUT_LIMIT 256\000"
.LASF86:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF65:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF570:
	.ascii	"__DEFINED_uint8_t \000"
.LASF543:
	.ascii	"assert_size_correct(type,expected_bytes) typedef un"
	.ascii	"signed long __type_ ##type ##_size_incorrect[ (size"
	.ascii	"of(type) == expected_bytes) ? 1 : -1]\000"
.LASF182:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF124:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF481:
	.ascii	"CONFIG_CROSS_COMPILER_PREFIX \"arm-linux-gnueabi-\""
	.ascii	"\000"
.LASF402:
	.ascii	"_IOLBF 1\000"
.LASF643:
	.ascii	"INTMAX_C(c) c ## LL\000"
.LASF600:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF450:
	.ascii	"_HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LI"
	.ascii	"BSEL4_INCLUDE_SEL4_TYPES_GEN_H \000"
.LASF472:
	.ascii	"CONFIG_OPTIMISATION_O3 1\000"
.LASF381:
	.ascii	"_STDIO_H \000"
.LASF181:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF259:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF540:
	.ascii	"__LIBSEL4_INVOCATION_H \000"
.LASF38:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF545:
	.ascii	"seL4_CapInitThreadPD seL4_CapInitThreadVSpace\000"
.LASF658:
	.ascii	"char\000"
.LASF419:
	.ascii	"RAND_MAX (0x7fffffff)\000"
.LASF105:
	.ascii	"__UINT8_C(c) c\000"
.LASF375:
	.ascii	"ARM_CORTEX_A9 1\000"
.LASF271:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF287:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF510:
	.ascii	"CONFIG_NUM_PRIORITIES 256\000"
.LASF466:
	.ascii	"CONFIG_HAVE_LIBC 1\000"
.LASF399:
	.ascii	"SEEK_CUR 1\000"
.LASF134:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF143:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF533:
	.ascii	"seL4_NilData seL4_CapData_Badge_new(0)\000"
.LASF69:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF374:
	.ascii	"ARMV7_A 1\000"
.LASF532:
	.ascii	"seL4_BadgeBits 28\000"
.LASF606:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF329:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF502:
	.ascii	"CONFIG_USER_DEBUG_INFO 1\000"
.LASF148:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF197:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF680:
	.ascii	"seL4_SysDebugSnapshot\000"
.LASF394:
	.ascii	"EOF (-1)\000"
.LASF104:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 4\000"
.LASF527:
	.ascii	"BIT(n) (1ul<<(n))\000"
.LASF489:
	.ascii	"CONFIG_DEBUG_BUILD 1\000"
.LASF456:
	.ascii	"CONFIG_LIB_NFS 1\000"
.LASF476:
	.ascii	"CONFIG_LIB_SEL4_SYNC 1\000"
.LASF655:
	.ascii	"unsigned int\000"
.LASF467:
	.ascii	"CONFIG_WORD_SIZE 32\000"
.LASF592:
	.ascii	"UINT8_MAX (0xff)\000"
.LASF581:
	.ascii	"__DEFINED_uint_fast64_t \000"
.LASF447:
	.ascii	"seL4_Frame_Args 4\000"
.LASF24:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF39:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF469:
	.ascii	"CONFIG_FASTPATH 1\000"
.LASF371:
	.ascii	"HAVE_AUTOCONF 1\000"
.LASF23:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF597:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF5:
	.ascii	"__GNUC__ 5\000"
.LASF28:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF228:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF509:
	.ascii	"CONFIG_ROOT_CNODE_SIZE_BITS 12\000"
.LASF186:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF331:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF395:
	.ascii	"SEEK_SET\000"
.LASF304:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF141:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF57:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF73:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF401:
	.ascii	"_IOFBF 0\000"
.LASF34:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF310:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF43:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF572:
	.ascii	"__DEFINED_uint32_t \000"
.LASF335:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF174:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF156:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF18:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF222:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF261:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF499:
	.ascii	"CONFIG_LIB_ETHDRIVER_NUM_PREALLOCATED_BUFFERS 512\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF99:
	.ascii	"__INT16_C(c) c\000"
.LASF388:
	.ascii	"__DEFINED_ssize_t \000"
.LASF20:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF495:
	.ascii	"CONFIG_USER_EXTRA_CFLAGS \"-D_POSIX_SOURCE\"\000"
.LASF681:
	.ascii	"seL4_SysDebugNameThread\000"
.LASF675:
	.ascii	"seL4_SysYield\000"
.LASF306:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF336:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF413:
	.ascii	"_STDLIB_H \000"
.LASF85:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF556:
	.ascii	"__NEED_int_fast8_t \000"
.LASF632:
	.ascii	"SIG_ATOMIC_MIN INT32_MIN\000"
.LASF576:
	.ascii	"__DEFINED_int_fast32_t \000"
.LASF649:
	.ascii	"N_NAME 32\000"
.LASF30:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF175:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF365:
	.ascii	"linux 1\000"
.LASF608:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF550:
	.ascii	"__NEED_int32_t \000"
.LASF211:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF615:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF497:
	.ascii	"CONFIG_SOS_IP \"192.168.168.1\"\000"
.LASF344:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF384:
	.ascii	"__NEED_size_t \000"
.LASF98:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF71:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF266:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF189:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF226:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF498:
	.ascii	"CONFIG_ARCH_ARM 1\000"
.LASF58:
	.ascii	"__INT_FAST8_TYPE__ signed char\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF560:
	.ascii	"__NEED_uint_fast8_t \000"
.LASF81:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF459:
	.ascii	"CONFIG_LIB_SEL4_CSPACE 1\000"
.LASF252:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF268:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF257:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF561:
	.ascii	"__NEED_uint_fast16_t \000"
.LASF391:
	.ascii	"__DEFINED_FILE \000"
.LASF551:
	.ascii	"__NEED_int64_t \000"
.LASF116:
	.ascii	"__UINT_FAST8_MAX__ 0xff\000"
.LASF463:
	.ascii	"CONFIG_AEP_BINDING 1\000"
.LASF303:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF621:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF376:
	.ascii	"IMX6 1\000"
.LASF61:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF548:
	.ascii	"__NEED_int8_t \000"
.LASF97:
	.ascii	"__INT8_C(c) c\000"
.LASF455:
	.ascii	"CONFIG_ARM_CORTEX_A9 1\000"
.LASF661:
	.ascii	"signed char\000"
.LASF536:
	.ascii	"__LIBSEL4_ARCH_SYSCALLS_H \000"
.LASF52:
	.ascii	"__INT_LEAST32_TYPE__ int\000"
.LASF407:
	.ascii	"TMP_MAX 10000\000"
.LASF523:
	.ascii	"__LIBSEL4_SYSCALL_H \000"
.LASF423:
	.ascii	"WCOREDUMP(s) ((s) & 0x80)\000"
.LASF267:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF566:
	.ascii	"__DEFINED_int8_t \000"
.LASF604:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF511:
	.ascii	"CONFIG_LIB_LWIP 1\000"
.LASF67:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF578:
	.ascii	"__DEFINED_uint_fast8_t \000"
.LASF400:
	.ascii	"SEEK_END 2\000"
.LASF367:
	.ascii	"__unix__ 1\000"
.LASF311:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF682:
	.ascii	"seL4_SysBenchmarkResetLog\000"
.LASF293:
	.ascii	"__SA_IBIT__ 16\000"
.LASF223:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF671:
	.ascii	"seL4_SysSend\000"
.LASF668:
	.ascii	"seL4_Word\000"
.LASF342:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF434:
	.ascii	"seL4_Null ((void*)0)\000"
.LASF128:
	.ascii	"__FLT_DIG__ 6\000"
.LASF150:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF312:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF408:
	.ascii	"L_tmpnam 20\000"
.LASF294:
	.ascii	"__DA_FBIT__ 31\000"
.LASF172:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF340:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 4\000"
.LASF122:
	.ascii	"__GCC_IEC_559 0\000"
.LASF696:
	.ascii	"sel4_abort\000"
.LASF593:
	.ascii	"UINT16_MAX (0xffff)\000"
.LASF579:
	.ascii	"__DEFINED_uint_fast16_t \000"
.LASF239:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF461:
	.ascii	"CONFIG_ARM_ERRATA_764369 1\000"
.LASF80:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF431:
	.ascii	"__LIBSEL4_ARCH_SIMPLE_TYPES_H_ \000"
.LASF258:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF208:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF193:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF582:
	.ascii	"__DEFINED_intptr_t \000"
.LASF357:
	.ascii	"__ARM_EABI__ 1\000"
.LASF667:
	.ascii	"long long unsigned int\000"
.LASF91:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF505:
	.ascii	"CONFIG_SOS_NFS_DIR \"\"\000"
.LASF88:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF219:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF188:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF216:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF289:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF110:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF126:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF115:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF641:
	.ascii	"UINT32_C(c) c ## U\000"
.LASF227:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF154:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF247:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF666:
	.ascii	"seL4_Uint32\000"
.LASF214:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF440:
	.ascii	"seL4_WordBits 32\000"
.LASF507:
	.ascii	"CONFIG_LIB_CPIO 1\000"
.LASF63:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF669:
	.ascii	"seL4_SysCall\000"
.LASF494:
	.ascii	"CONFIG_KERNEL_STABLE 1\000"
.LASF563:
	.ascii	"__NEED_uint_fast64_t \000"
.LASF544:
	.ascii	"__LIBSEL4_BOOTINFO_H \000"
.LASF612:
	.ascii	"WINT_MAX INT32_MAX\000"
.LASF368:
	.ascii	"unix 1\000"
.LASF230:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF360:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF149:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF425:
	.ascii	"WIFSTOPPED(s) (((s) & 0xff) == 0x7f)\000"
.LASF180:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF202:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF82:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF435:
	.ascii	"__LIBSEL4_MACROS_H \000"
.LASF249:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF558:
	.ascii	"__NEED_int_fast32_t \000"
.LASF241:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF165:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF382:
	.ascii	"__NEED_FILE \000"
.LASF235:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF231:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF330:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF453:
	.ascii	"CONFIG_APP_PROXY_SENSOR 1\000"
.LASF192:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF301:
	.ascii	"__USA_IBIT__ 16\000"
.LASF221:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF698:
	.ascii	"abort\000"
.LASF183:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF334:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF44:
	.ascii	"__INT32_TYPE__ int\000"
.LASF341:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF21:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF699:
	.ascii	"puts\000"
.LASF238:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF302:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF403:
	.ascii	"_IONBF 2\000"
.LASF652:
	.ascii	"FM_READ 4\000"
.LASF676:
	.ascii	"seL4_SysPoll\000"
.LASF535:
	.ascii	"__ARCH_OBJECTTYPE_H \000"
.LASF432:
	.ascii	"seL4_True 1\000"
.LASF515:
	.ascii	"CONFIG_LIB_ETHDRIVER_TX_DESC_COUNT 32\000"
.LASF8:
	.ascii	"__VERSION__ \"5.4.0 20160609\"\000"
.LASF295:
	.ascii	"__DA_IBIT__ 32\000"
.LASF26:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF251:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF198:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF542:
	.ascii	"__LIBSEL4_SEL4_CLIENT_H \000"
.LASF27:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF392:
	.ascii	"NULL\000"
.LASF262:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF620:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF451:
	.ascii	"AUTOCONF_INCLUDED \000"
.LASF15:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF292:
	.ascii	"__SA_FBIT__ 15\000"
.LASF514:
	.ascii	"CONFIG_KERNEL_EXTRA_CPPFLAGS \"\"\000"
.LASF70:
	.ascii	"__GXX_ABI_VERSION 1009\000"
.LASF562:
	.ascii	"__NEED_uint_fast32_t \000"
.LASF410:
	.ascii	"stdout (stdout)\000"
.LASF446:
	.ascii	"seL4_PageDirBits 14\000"
.LASF234:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF59:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF596:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF547:
	.ascii	"_STDINT_H \000"
.LASF47:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF486:
	.ascii	"CONFIG_USER_CFLAGS \"\"\000"
.LASF309:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF283:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF205:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF338:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF75:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF601:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF45:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF132:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF478:
	.ascii	"CONFIG_LIB_CLOCK 1\000"
.LASF678:
	.ascii	"seL4_SysDebugHalt\000"
.LASF263:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF372:
	.ascii	"SOS_NFS_DIR \"/var/tftpboot/mint\"\000"
.LASF460:
	.ascii	"CONFIG_TIMER_TICK_MS 20\000"
.LASF264:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF444:
	.ascii	"seL4_EndpointBits 4\000"
.LASF184:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF217:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF127:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF645:
	.ascii	"SOS_IPC_EP_CAP (0x1)\000"
.LASF426:
	.ascii	"WIFSIGNALED(s) (((signed char) (((s) & 0x7f) + 1) >"
	.ascii	"> 1) > 0)\000"
.LASF285:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF313:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF622:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF420:
	.ascii	"WEXITSTATUS(s) (((s) & 0xff00) >> 8)\000"
.LASF379:
	.ascii	"SEL4_DEBUG_KERNEL 1\000"
.LASF693:
	.ascii	"scno\000"
.LASF640:
	.ascii	"UINT16_C(c) c\000"
.LASF48:
	.ascii	"__UINT32_TYPE__ unsigned int\000"
.LASF246:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF117:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF144:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF236:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF689:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/li"
	.ascii	"bsos\000"
.LASF94:
	.ascii	"__UINT32_MAX__ 0xffffffffU\000"
.LASF354:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF200:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF607:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF568:
	.ascii	"__DEFINED_int32_t \000"
.LASF479:
	.ascii	"CONFIG_LIB_ELFLOADER 1\000"
.LASF454:
	.ascii	"CONFIG_APP_PROXY 1\000"
.LASF501:
	.ascii	"CONFIG_LIB_ETHDRIVER_RX_DESC_COUNT 32\000"
.LASF603:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF554:
	.ascii	"__NEED_uint32_t \000"
.LASF695:
	.ascii	"sys_exit_group\000"
.LASF240:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF616:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF256:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF692:
	.ascii	"seL4_DebugHalt\000"
.LASF220:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF613:
	.ascii	"WCHAR_MIN 0U\000"
.LASF300:
	.ascii	"__USA_FBIT__ 16\000"
.LASF92:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF359:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF93:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF378:
	.ascii	"DEBUG 1\000"
.LASF586:
	.ascii	"INT32_MIN (-1-0x7fffffff)\000"
.LASF465:
	.ascii	"CONFIG_SOS_GATEWAY \"192.168.168.2\"\000"
.LASF553:
	.ascii	"__NEED_uint16_t \000"
.LASF700:
	.ascii	"__builtin_puts\000"
.LASF474:
	.ascii	"CONFIG_APP_PROXY_MAX_NUM_CLIENTS 16\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF337:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF173:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF210:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF51:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF362:
	.ascii	"__gnu_linux__ 1\000"
.LASF654:
	.ascii	"ST_SPECIAL 2\000"
.LASF430:
	.ascii	"__LIBSEL4_SIMPLE_TYPES_H \000"
.LASF635:
	.ascii	"INT8_C(c) c\000"
.LASF694:
	.ascii	"sys_getpid\000"
.LASF623:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF142:
	.ascii	"__DBL_DIG__ 15\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF96:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF250:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF209:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF135:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF322:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF244:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF520:
	.ascii	"seL4_Assert(expr) do { if (!(expr)) { __assert_fail"
	.ascii	"(#expr, __FILE__, __LINE__, __FUNCTION__); } } whil"
	.ascii	"e(0)\000"
.LASF286:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF665:
	.ascii	"va_list\000"
.LASF436:
	.ascii	"SEL4_FORCE_LONG_ENUM(type) _enum_pad_ ## type = (1U"
	.ascii	" << ((sizeof(int)*8) - 1)) - 1\000"
.LASF697:
	.ascii	"sys_tgkill\000"
.LASF350:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF546:
	.ascii	"_SOS_H \000"
.LASF385:
	.ascii	"__NEED_ssize_t \000"
.LASF288:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF687:
	.ascii	"GNU C11 5.4.0 20160609 -marm -mcpu=cortex-a9 -mfloa"
	.ascii	"t-abi=soft -mtls-dialect=gnu -g -g3 -ggdb3 -g -g -O"
	.ascii	"2 -std=gnu11 -funwind-tables -fno-stack-protector\000"
.LASF656:
	.ascii	"long long int\000"
.LASF25:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF537:
	.ascii	"__LIBSEL4_ARCH_FUNCTIONS_H \000"
.LASF50:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF162:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF16:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF233:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF343:
	.ascii	"__arm__ 1\000"
.LASF611:
	.ascii	"WINT_MIN INT32_MIN\000"
.LASF380:
	.ascii	"FASTPATH 1\000"
.LASF155:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF584:
	.ascii	"INT8_MIN (-1-0x7f)\000"
.LASF279:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF298:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF412:
	.ascii	"L_ctermid 20\000"
.LASF308:
	.ascii	"_FORTIFY_SOURCE 2\000"
.LASF404:
	.ascii	"BUFSIZ 1024\000"
.LASF610:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF457:
	.ascii	"CONFIG_LIB_ELF 1\000"
.LASF490:
	.ascii	"CONFIG_LIB_UTILS 1\000"
.LASF521:
	.ascii	"seL4_CompileTimeAssert(expr) extern char __seL4_Com"
	.ascii	"pileTimeAssertFailed_ ## __COUNTER__[__builtin_cons"
	.ascii	"tant_p(expr) ? ((expr) ? 1 : -1) : -1] __attribute_"
	.ascii	"_((unused))\000"
.LASF369:
	.ascii	"__ELF__ 1\000"
.LASF503:
	.ascii	"CONFIG_LIB_SOS 1\000"
.LASF349:
	.ascii	"__THUMBEL__\000"
.LASF574:
	.ascii	"__DEFINED_int_fast8_t \000"
.LASF324:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF326:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF95:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF253:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF114:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF691:
	.ascii	"__ap\000"
.LASF139:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF518:
	.ascii	"__LIBSEL4_ASSERT_H \000"
.LASF433:
	.ascii	"seL4_False 0\000"
.LASF684:
	.ascii	"seL4_SysBenchmarkLogSize\000"
.LASF638:
	.ascii	"INT64_C(c) c ## LL\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF245:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF539:
	.ascii	"__SWINUM\000"
.LASF145:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF685:
	.ascii	"_enum_pad_seL4_Syscall_ID\000"
.LASF575:
	.ascii	"__DEFINED_int_fast16_t \000"
.LASF428:
	.ascii	"__LIBSEL4_SEL4_H \000"
.LASF36:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF555:
	.ascii	"__NEED_uint64_t \000"
.LASF74:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF89:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF215:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF35:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF109:
	.ascii	"__UINT32_C(c) c ## U\000"
.LASF242:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF626:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF22:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 0\000"
.LASF485:
	.ascii	"CONFIG_ARCH_ARM_V7A 1\000"
.LASF458:
	.ascii	"CONFIG_USER_DEBUG_BUILD 1\000"
.LASF361:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF358:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF203:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF79:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF255:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF373:
	.ascii	"ARCH_ARM 1\000"
.LASF207:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF398:
	.ascii	"SEEK_SET 0\000"
.LASF483:
	.ascii	"CONFIG_LIB_MUSL_C 1\000"
.LASF589:
	.ascii	"INT16_MAX (0x7fff)\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF639:
	.ascii	"UINT8_C(c) c\000"
.LASF614:
	.ascii	"WCHAR_MAX 0xffffffffU\000"
.LASF201:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF411:
	.ascii	"stderr (stderr)\000"
.LASF163:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF296:
	.ascii	"__TA_FBIT__ 63\000"
.LASF167:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF123:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF390:
	.ascii	"__DEFINED_off_t \000"
.LASF448:
	.ascii	"seL4_Frame_MRs 7\000"
.LASF157:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF646:
	.ascii	"TIMER_IPC_EP_CAP (0x2)\000"
.LASF225:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF328:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF345:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF31:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF243:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF206:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF169:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF647:
	.ascii	"PROCESS_MAX_FILES 16\000"
.LASF177:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF87:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF224:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF484:
	.ascii	"CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION 100\000"
.LASF90:
	.ascii	"__INT32_MAX__ 0x7fffffff\000"
.LASF487:
	.ascii	"CONFIG_LIB_ETHIF 1\000"
.LASF619:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF559:
	.ascii	"__NEED_int_fast64_t \000"
.LASF160:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF190:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF107:
	.ascii	"__UINT16_C(c) c\000"
.LASF191:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF673:
	.ascii	"seL4_SysWait\000"
.LASF462:
	.ascii	"CONFIG_KERNEL_CFLAGS \"\"\000"
.LASF493:
	.ascii	"CONFIG_APP_SOS 1\000"
.LASF356:
	.ascii	"__ARM_PCS 1\000"
.LASF273:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF307:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF438:
	.ascii	"PURE __attribute__((__pure__))\000"
.LASF137:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF276:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF299:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF565:
	.ascii	"__NEED_uintptr_t \000"
.LASF602:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF628:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF674:
	.ascii	"seL4_SysReply\000"
.LASF72:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF594:
	.ascii	"UINT32_MAX (0xffffffff)\000"
.LASF504:
	.ascii	"CONFIG_LIB_ETHDRIVER_PREALLOCATED_BUF_SIZE 2048\000"
.LASF414:
	.ascii	"__NEED_wchar_t \000"
.LASF29:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF275:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF524:
	.ascii	"__API_OBJECTTYPE_H \000"
.LASF383:
	.ascii	"__NEED_va_list \000"
.LASF133:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF642:
	.ascii	"UINT64_C(c) c ## ULL\000"
.LASF529:
	.ascii	"seL4_UntypedRetypeMaxObjects 256\000"
.LASF437:
	.ascii	"CONST __attribute__((__const__))\000"
.LASF624:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF464:
	.ascii	"CONFIG_SOS_STARTUP_APP \"lping\"\000"
.LASF422:
	.ascii	"WSTOPSIG(s) WEXITSTATUS(s)\000"
.LASF280:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF112:
	.ascii	"__INT_FAST8_MAX__ 0x7f\000"
.LASF100:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffff\000"
.LASF662:
	.ascii	"short int\000"
.LASF248:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF254:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF424:
	.ascii	"WIFEXITED(s) (!WTERMSIG(s))\000"
.LASF178:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF415:
	.ascii	"__DEFINED_wchar_t \000"
.LASF282:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF660:
	.ascii	"long int\000"
.LASF418:
	.ascii	"MB_CUR_MAX ((size_t)+4)\000"
.LASF348:
	.ascii	"__thumb2__\000"
.LASF567:
	.ascii	"__DEFINED_int16_t \000"
.LASF40:
	.ascii	"__CHAR32_TYPE__ unsigned int\000"
.LASF274:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF519:
	.ascii	"seL4_Fail(s) __assert_fail(s, __FILE__, __LINE__, _"
	.ascii	"_func__)\000"
.LASF212:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF677:
	.ascii	"seL4_SysDebugPutChar\000"
.LASF185:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF66:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF683:
	.ascii	"seL4_SysBenchmarkDumpLog\000"
.LASF62:
	.ascii	"__UINT_FAST8_TYPE__ unsigned char\000"
.LASF101:
	.ascii	"__INT32_C(c) c\000"
.LASF347:
	.ascii	"__thumb__\000"
.LASF168:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF42:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF78:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF363:
	.ascii	"__linux 1\000"
.LASF491:
	.ascii	"CONFIG_BENCHMARK 1\000"
.LASF625:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF534:
	.ascii	"__LIBSEL4_ARCH_CONSTANTS_H \000"
.LASF634:
	.ascii	"SIZE_MAX UINT32_MAX\000"
.LASF631:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF393:
	.ascii	"NULL ((void*)0)\000"
.LASF278:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF199:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF417:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF409:
	.ascii	"stdin (stdin)\000"
.LASF526:
	.ascii	"__API_CONSTANTS_H \000"
.LASF119:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF118:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF557:
	.ascii	"__NEED_int_fast16_t \000"
.LASF195:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF103:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF272:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF522:
	.ascii	"seL4_DebugAssert(expr) seL4_Assert(expr)\000"
.LASF339:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF76:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF19:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF281:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF46:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF541:
	.ascii	"__LIBSEL4_ARCH_INVOCATION_H \000"
.LASF439:
	.ascii	"__LIBSEL4_ARCH_TYPES_H \000"
.LASF475:
	.ascii	"CONFIG_LIB_PLATSUPPORT 1\000"
.LASF136:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF53:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF113:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF158:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF421:
	.ascii	"WTERMSIG(s) ((s) & 0x7f)\000"
.LASF32:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF443:
	.ascii	"seL4_TCBBits 9\000"
.LASF353:
	.ascii	"__VFP_FP__ 1\000"
.LASF218:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF473:
	.ascii	"CONFIG_LIB_SEL4 1\000"
.LASF627:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF290:
	.ascii	"__HA_FBIT__ 7\000"
.LASF598:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF389:
	.ascii	"__DEFINED_va_list \000"
.LASF512:
	.ascii	"CONFIG_KERNEL_COMPILER \"\"\000"
.LASF232:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF325:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF111:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF538:
	.ascii	"__SWINUM(x) ((x) & 0x00ffffff)\000"
.LASF690:
	.ascii	"__va_list\000"
.LASF629:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF516:
	.ascii	"CONFIG_BUILDSYS_USE_CCACHE 1\000"
.LASF194:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF657:
	.ascii	"sizetype\000"
.LASF284:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF291:
	.ascii	"__HA_IBIT__ 8\000"
.LASF686:
	.ascii	"long unsigned int\000"
.LASF471:
	.ascii	"CONFIG_DOMAIN_SCHEDULE \"\"\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF569:
	.ascii	"__DEFINED_int64_t \000"
.LASF366:
	.ascii	"__unix 1\000"
.LASF688:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/libs/libsos/src/s"
	.ascii	"ys_exit.c\000"
.LASF488:
	.ascii	"CONFIG_APP_PROXY_FAN 1\000"
.LASF84:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF396:
	.ascii	"SEEK_CUR\000"
.LASF549:
	.ascii	"__NEED_int16_t \000"
.LASF204:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF386:
	.ascii	"__NEED_off_t \000"
.LASF571:
	.ascii	"__DEFINED_uint16_t \000"
.LASF120:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF525:
	.ascii	"__ERRORS_H \000"
.LASF442:
	.ascii	"seL4_SlotBits 4\000"
.LASF68:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF352:
	.ascii	"__SOFTFP__ 1\000"
.LASF651:
	.ascii	"FM_WRITE 2\000"
.LASF618:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF552:
	.ascii	"__NEED_uint8_t \000"
.LASF397:
	.ascii	"SEEK_END\000"
.LASF530:
	.ascii	"seL4_GuardSizeBits 5\000"
.LASF591:
	.ascii	"INT64_MAX (0x7fffffffffffffffLL)\000"
.LASF427:
	.ascii	"WIFCONTINUED(s) ((s) == 0xffff)\000"
.LASF513:
	.ascii	"CONFIG_TIME_SLICE 5\000"
.LASF323:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF131:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF672:
	.ascii	"seL4_SysNBSend\000"
.LASF663:
	.ascii	"unsigned char\000"
.LASF170:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF171:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF670:
	.ascii	"seL4_SysReplyWait\000"
.LASF387:
	.ascii	"__DEFINED_size_t \000"
.LASF595:
	.ascii	"UINT64_MAX (0xffffffffffffffffULL)\000"
.LASF164:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF102:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF125:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF477:
	.ascii	"CONFIG_SOS_NETMASK \"225.225.225.0\"\000"
.LASF237:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF196:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF54:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF416:
	.ascii	"EXIT_FAILURE 1\000"
.LASF64:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF644:
	.ascii	"UINTMAX_C(c) c ## ULL\000"
.LASF617:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF277:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF500:
	.ascii	"CONFIG_NUM_DOMAINS 1\000"
.LASF633:
	.ascii	"SIG_ATOMIC_MAX INT32_MAX\000"
.LASF33:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF587:
	.ascii	"INT64_MIN (-1-0x7fffffffffffffffLL)\000"
.LASF370:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF265:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF609:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF320:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF482:
	.ascii	"CONFIG_APP_WEB 1\000"
.LASF468:
	.ascii	"CONFIG_APP_TEMP_CONTROL 1\000"
.LASF56:
	.ascii	"__UINT_LEAST32_TYPE__ unsigned int\000"
.LASF405:
	.ascii	"FILENAME_MAX 4095\000"
.LASF130:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF441:
	.ascii	"seL4_PageBits 12\000"
.LASF77:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF153:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF377:
	.ascii	"PLAT_IMX6 1\000"
.LASF637:
	.ascii	"INT32_C(c) c\000"
.LASF531:
	.ascii	"seL4_GuardBits 18\000"
.LASF60:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF648:
	.ascii	"MAX_IO_BUF 0x1000\000"
.LASF140:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF17:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF37:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF599:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF83:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF346:
	.ascii	"__APCS_32__ 1\000"
.LASF653:
	.ascii	"ST_FILE 1\000"
.LASF406:
	.ascii	"FOPEN_MAX 1000\000"
.LASF573:
	.ascii	"__DEFINED_uint64_t \000"
.LASF151:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF49:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF630:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF146:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF650:
	.ascii	"FM_EXEC 1\000"
.LASF452:
	.ascii	"CONFIG_IRQ_REPORTING 1\000"
.LASF664:
	.ascii	"short unsigned int\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF297:
	.ascii	"__TA_IBIT__ 64\000"
.LASF270:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF583:
	.ascii	"__DEFINED_uintptr_t \000"
.LASF588:
	.ascii	"INT8_MAX (0x7f)\000"
.LASF55:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF449:
	.ascii	"seL4_Frame_HasNPC 0\000"
.LASF159:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF564:
	.ascii	"__NEED_intptr_t \000"
.LASF528:
	.ascii	"seL4_MsgMaxExtraCaps (BIT(seL4_MsgExtraCapBits)-1)\000"
.LASF187:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF590:
	.ascii	"INT32_MAX (0x7fffffff)\000"
.LASF161:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF351:
	.ascii	"__ARMEL__ 1\000"
.LASF659:
	.ascii	"double\000"
.LASF580:
	.ascii	"__DEFINED_uint_fast32_t \000"
.LASF108:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffU\000"
.LASF585:
	.ascii	"INT16_MIN (-1-0x7fff)\000"
.LASF605:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF121:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF152:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF506:
	.ascii	"CONFIG_USER_OPTIMISATION_O2 1\000"
.LASF364:
	.ascii	"__linux__ 1\000"
.LASF480:
	.ascii	"CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS 800\000"
.LASF305:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF577:
	.ascii	"__DEFINED_int_fast64_t \000"
.LASF333:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF213:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF679:
	.ascii	"seL4_SysDebugCapIdentify\000"
.LASF517:
	.ascii	"__LIBSEL4_DEBUG_ASSERT_H \000"
.LASF492:
	.ascii	"CONFIG_PLAT_IMX6 1\000"
.LASF636:
	.ascii	"INT16_C(c) c\000"
.LASF260:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF179:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF496:
	.ascii	"CONFIG_LIB_MUSL_C_USE_PREBUILT 1\000"
.LASF355:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF327:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF41:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF429:
	.ascii	"__LIBSEL4_TYPES_H \000"
.LASF332:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF314:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF445:
	.ascii	"seL4_PageTableBits 10\000"
.LASF229:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF166:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF470:
	.ascii	"CONFIG_LIB_SERIAL 1\000"
.LASF106:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF269:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF176:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF138:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
