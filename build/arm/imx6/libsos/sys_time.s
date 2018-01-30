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
	.file	"sys_time.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_uldivmod
	.align	2
	.global	sys_nanosleep
	.syntax unified
	.arm
	.type	sys_nanosleep, %function
sys_nanosleep:
	.fnstart
.LFB114:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/libs/libsos/src/sys_time.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 28 0
	ldr	r1, [r0]
.LVL1:
	.loc 1 35 0
	movw	r2, #16960
	.loc 1 27 0
	push	{r4, lr}
	.save {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 35 0
	mov	r4, #1000
	movt	r2, 15
	mov	r3, #0
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
.LVL2:
	mul	r4, r4, ip
	asr	r1, r0, #31
.LVL3:
	bl	__aeabi_uldivmod
.LVL4:
	add	r0, r4, r0
	bl	sos_sys_usleep
.LVL5:
	.loc 1 37 0
	mov	r0, #0
	pop	{r4, pc}
	.cfi_endproc
.LFE114:
	.fnend
	.size	sys_nanosleep, .-sys_nanosleep
	.align	2
	.global	sys_clock_gettime
	.syntax unified
	.arm
	.type	sys_clock_gettime, %function
sys_clock_gettime:
	.fnstart
.LFB115:
	.loc 1 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 41 0
	ldm	r0, {r4, r5}
.LVL7:
	.loc 1 42 0
	cmp	r4, #0
	bne	.L5
	.loc 1 45 0
	bl	sos_sys_time_stamp
.LVL8:
	.loc 1 46 0
	movw	r2, #16960
	mov	r3, #0
	movt	r2, 15
	.loc 1 45 0
	mov	r6, r0
	mov	r7, r1
.LVL9:
	.loc 1 46 0
	bl	__aeabi_uldivmod
.LVL10:
	.loc 1 47 0
	movw	r2, #16960
	.loc 1 46 0
	str	r0, [r5]
	.loc 1 47 0
	mov	r1, r7
	mov	r0, r6
	movt	r2, 15
	mov	r3, #0
	bl	__aeabi_uldivmod
.LVL11:
	mov	r3, #1000
	.loc 1 48 0
	mov	r0, r4
	.loc 1 47 0
	mul	r2, r3, r2
	str	r2, [r5, #4]
	.loc 1 48 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL12:
.L5:
	.loc 1 43 0
	mvn	r0, #21
.LVL13:
	.loc 1 49 0
	pop	{r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE115:
	.fnend
	.size	sys_clock_gettime, .-sys_clock_gettime
.Letext0:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
	.file 3 "<built-in>"
	.file 4 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sos.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1c2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1357
	.byte	0xc
	.4byte	.LASF1358
	.4byte	.LASF1359
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1330
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1331
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1332
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1333
	.uleb128 0x4
	.4byte	.LASF1338
	.byte	0x2
	.byte	0x14
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF1340
	.byte	0x4
	.byte	0x3
	.byte	0
	.4byte	0x6e
	.uleb128 0x6
	.4byte	.LASF1360
	.4byte	0x6e
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1334
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1335
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1336
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1337
	.uleb128 0x4
	.4byte	.LASF1339
	.byte	0x2
	.byte	0xab
	.4byte	0x85
	.uleb128 0x5
	.4byte	.LASF1341
	.byte	0x8
	.byte	0x2
	.byte	0xba
	.4byte	0xbc
	.uleb128 0x8
	.4byte	.LASF1342
	.byte	0x2
	.byte	0xba
	.4byte	0x8c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1343
	.byte	0x2
	.byte	0xba
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1344
	.byte	0x2
	.2byte	0x153
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1345
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1346
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1347
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1348
	.uleb128 0x4
	.4byte	.LASF1349
	.byte	0x2
	.byte	0x55
	.4byte	0x29
	.uleb128 0xa
	.4byte	.LASF1351
	.byte	0x1
	.byte	0x1b
	.4byte	0x85
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d
	.uleb128 0xb
	.ascii	"ap\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xc
	.ascii	"req\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x14d
	.4byte	.LLST1
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x14d
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF1350
	.byte	0x1
	.byte	0x21
	.4byte	0x37
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x1af
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x97
	.uleb128 0xa
	.4byte	.LASF1352
	.byte	0x1
	.byte	0x27
	.4byte	0x85
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1af
	.uleb128 0xb
	.ascii	"ap\000"
	.byte	0x1
	.byte	0x27
	.4byte	0x4c
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LASF1353
	.byte	0x1
	.byte	0x28
	.4byte	0xbc
	.4byte	.LLST5
	.uleb128 0x10
	.ascii	"res\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x14d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LASF1354
	.byte	0x1
	.byte	0x2d
	.4byte	0xe4
	.4byte	.LLST6
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x1ba
	.byte	0
	.uleb128 0x11
	.4byte	.LASF1355
	.4byte	.LASF1355
	.byte	0x4
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF1356
	.4byte	.LASF1356
	.byte	0x4
	.byte	0x7c
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0x29
	.byte	0xc
	.4byte	0xf4240
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
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
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 6 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/errno.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF450
	.file 8 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/errno.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF584
	.byte	0x4
	.file 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/fcntl.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 10 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/fcntl.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/limits.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF664
	.file 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/limits.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 13 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdarg.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF778
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/string.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x4
	.file 15 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.file 16 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF810
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.file 17 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/unistd.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro21
	.file 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/posix.h"
	.byte	0x3
	.uleb128 0xea
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.file 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/time.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro24
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1153
	.file 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro29
	.file 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/wchar.h"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x15
	.byte	0x7
	.4byte	.Ldebug_macro30
	.byte	0x4
	.file 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/stdint.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro31
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro32
	.byte	0x4
	.file 23 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1250
	.file 24 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x18
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1251
	.file 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x19
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1252
	.file 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/simple_types.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1253
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro33
	.byte	0x4
	.file 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/macros.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1b
	.byte	0x7
	.4byte	.Ldebug_macro34
	.byte	0x4
	.file 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/types.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1c
	.byte	0x7
	.4byte	.Ldebug_macro35
	.byte	0x4
	.file 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1272
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 30 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1273
	.file 31 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x1f
	.byte	0x7
	.4byte	.Ldebug_macro36
	.byte	0x4
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1278
	.byte	0x4
	.byte	0x4
	.file 32 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x20
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1279
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.byte	0x4
	.file 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/objecttype.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1280
	.byte	0x4
	.file 34 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/errors.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x22
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1281
	.byte	0x4
	.file 35 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/constants.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x23
	.byte	0x7
	.4byte	.Ldebug_macro37
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro38
	.file 36 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x24
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1290
	.file 37 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/objecttype.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x25
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1291
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 38 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1292
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 39 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/functions.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x27
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1293
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro39
	.byte	0x4
	.file 40 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1296
	.file 41 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/invocation.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1297
	.byte	0x4
	.byte	0x4
	.file 42 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x2a
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1298
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1299
	.byte	0x4
	.file 43 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/bootinfo.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x2b
	.byte	0x7
	.4byte	.Ldebug_macro40
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro41
	.byte	0x4
	.file 44 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/utils/time.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x2c
	.byte	0x7
	.4byte	.Ldebug_macro42
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.autoconf.h.6.e18ff89dc643d896116d6c2c72993e1f,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF446
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.3.50df9aa91876a5ca576db6ae86455453,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF449
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.errno.h.3.73615fa7a0040a3c1595a80c8de4937c,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF583
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.fcntl.h.4.6f9ed27dfa7bb417b422007b28e922da,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF588
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.193.dc4a40722564f08141621de41750f64e,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF591
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.fcntl.h.3.7ee30ce3072181a61f799d203977d655,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF622
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.fcntl.h.40.d29b26b5430928a24239dbaf2b254617,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF642
	.byte	0x6
	.uleb128 0x42
	.4byte	.LASF643
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF644
	.byte	0x6
	.uleb128 0x44
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF663
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.limits.h.5.30466a185806607bd52f3c27bc1edd5f,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF668
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.limits.h.13.d45c9648633a0ce6e573ead1d2ad4a1f,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF775
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdarg.h.4.4644b4794fa4d4637e6068bbbc1c309e,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF777
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdarg.h.15.f7db254ca5bfbf2e1f3fe8babfee0693,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF782
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.string.h.4.c81162742c2db8d739848ca6013182fd,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF783
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF787
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.5.38b0f769c9ff59da20782d7b8aa4cca6,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x190
	.4byte	.LASF789
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.4.f78ca933ac8fedd23ee475ba8f9f4741,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF586
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.10.f4b6fdd7ecf497c283a1b55beb854d0c,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF794
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.23.8911e627eaddec94a7effca0f6c51b0b,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF785
	.byte	0x2
	.uleb128 0x1e
	.ascii	"EOF\000"
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF795
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF643
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF644
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF807
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.4.2a441acfbee021d3ac4b29eff53d8977,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF808
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF809
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.74.7ce7e708dd5af39cb03d93e448753205,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF822
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.unistd.h.4.4948d8e53607c6a412cf9cd0cd8cd7a7,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF648
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF829
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.150.e516c684e6bf82f163ba4cc7dabc5a7a,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF832
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.unistd.h.65.04a54fba84156ac5a308fad2d588eaab,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF873
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.posix.h.3.3d3e44f7045ce7ea1020ce0adca0a685,comdat
.Ldebug_macro22:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF875
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.unistd.h.238.3220e566dabf68655e201be43d9418ca,comdat
.Ldebug_macro23:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x17c
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x182
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x183
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x188
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x18f
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x190
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x19b
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x19e
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x1a2
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x1a8
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x1a9
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x1aa
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0x1ab
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x1ac
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x1ad
	.4byte	.LASF1066
	.byte	0x5
	.uleb128 0x1ae
	.4byte	.LASF1067
	.byte	0x5
	.uleb128 0x1af
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x1b5
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x1b6
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x1ba
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0x1bc
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0x1bd
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0x1be
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0x1c0
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0x1c3
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x1c6
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x1ca
	.4byte	.LASF1094
	.byte	0x5
	.uleb128 0x1cb
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x1cd
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x1d0
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x1d1
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x1d2
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x1d3
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0x1d6
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0x1d7
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0x1d9
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0x1da
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0x1db
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0x1de
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0x1df
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x1e1
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x1e2
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x1e3
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x1e4
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x1e5
	.4byte	.LASF1119
	.byte	0x5
	.uleb128 0x1e6
	.4byte	.LASF1120
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x1e8
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x1e9
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x1ea
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x1ed
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x1ee
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x1ef
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x1f2
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x1f3
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF1135
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.4.4eb7aed16fc045609216a1245b78cfdb,comdat
.Ldebug_macro24:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1136
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1141
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF787
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.172.b1f2e792f3ad48682499bc3c42fc1eb5,comdat
.Ldebug_macro25:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1142
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF1146
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.59.4979c092c929bab7bf4ae1624faf22c6,comdat
.Ldebug_macro26:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1152
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.4.3397add6b12087b5f28c1b25cc4ff339,comdat
.Ldebug_macro27:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1167
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1171
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.50.19454e4d022f4d32acecb1b81dc48373,comdat
.Ldebug_macro28:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF1188
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.46.7ec6d3ed12e9ba09d75fea6a29b95ac8,comdat
.Ldebug_macro29:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF1217
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.wchar.h.4.3000795860128190bca89d55f63a0d99,comdat
.Ldebug_macro30:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1218
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF1219
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.3.89b51772c052e446c19bd65e1e173eee,comdat
.Ldebug_macro31:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1239
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.90.84c8b3cacbd67db36f9d16b2bed1b5d8,comdat
.Ldebug_macro32:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1249
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.simple_types.h.18.86f4332e2493068cbf52b3c36d2c0060,comdat
.Ldebug_macro33:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1256
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.macros.h.12.95a7ddbd437300e99986fae89d7e987b,comdat
.Ldebug_macro34:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1260
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.12.cd460de5c7246adf86f61c705d35b363,comdat
.Ldebug_macro35:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1271
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.20.47abdd5cdc017b13b80c9285a97731d0,comdat
.Ldebug_macro36:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1277
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.constants.h.12.0548dac8c33811dcbb25aa5fd0df9cb7,comdat
.Ldebug_macro37:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1284
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.49.fdd10c2d615f23eb46c86ce8d55366c6,comdat
.Ldebug_macro38:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1289
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.syscalls.h.18.a97e235277b18e2b91ea94b92a7fd9d8,comdat
.Ldebug_macro39:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1294
	.byte	0x6
	.uleb128 0x27e
	.4byte	.LASF1295
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.bootinfo.h.12.5d34185b7cc16f7d4b6e0f3d80ca8c64,comdat
.Ldebug_macro40:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF1300
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF1301
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sos.h.23.edfccf9e8c19d5cebb878db23e4d66e3,comdat
.Ldebug_macro41:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1302
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1303
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1304
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF1305
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF1306
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1307
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1308
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1309
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1310
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1311
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.11.a03c82f60ad3a331dbca49ad34fa4fb8,comdat
.Ldebug_macro42:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1312
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1313
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1314
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1315
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1316
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1317
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1318
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1319
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1320
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1321
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1322
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1323
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1324
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1326
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF1327
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1328
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1329
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1144:
	.ascii	"__DEFINED_timer_t \000"
.LASF796:
	.ascii	"_IOFBF 0\000"
.LASF364:
	.ascii	"__linux__ 1\000"
.LASF398:
	.ascii	"CONFIG_APP_TEMP_CONTROL 1\000"
.LASF298:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF1034:
	.ascii	"_SC_C_LANG_SUPPORT 135\000"
.LASF918:
	.ascii	"_SC_SEMAPHORES 21\000"
.LASF338:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF188:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF48:
	.ascii	"__UINT32_TYPE__ unsigned int\000"
.LASF540:
	.ascii	"EMSGSIZE 90\000"
.LASF94:
	.ascii	"__UINT32_MAX__ 0xffffffffU\000"
.LASF310:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF805:
	.ascii	"stdout (stdout)\000"
.LASF1218:
	.ascii	"WCHAR_MIN 0U\000"
.LASF557:
	.ascii	"EISCONN 106\000"
.LASF470:
	.ascii	"ENOTDIR 20\000"
.LASF1002:
	.ascii	"_SC_CHAR_MIN 103\000"
.LASF996:
	.ascii	"_SC_2_UPE 97\000"
.LASF342:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF1200:
	.ascii	"UINT64_MAX (0xffffffffffffffffULL)\000"
.LASF1064:
	.ascii	"_SC_TYPED_MEMORY_OBJECTS 165\000"
.LASF1198:
	.ascii	"UINT16_MAX (0xffff)\000"
.LASF262:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF1291:
	.ascii	"__ARCH_OBJECTTYPE_H \000"
.LASF254:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF879:
	.ascii	"_PC_NAME_MAX 3\000"
.LASF80:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF377:
	.ascii	"PLAT_IMX6 1\000"
.LASF424:
	.ascii	"CONFIG_KERNEL_STABLE 1\000"
.LASF857:
	.ascii	"_POSIX_SAVED_IDS 1\000"
.LASF82:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF562:
	.ascii	"ECONNREFUSED 111\000"
.LASF175:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF279:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF646:
	.ascii	"SEEK_SET 0\000"
.LASF992:
	.ascii	"_SC_XOPEN_ENH_I18N 93\000"
.LASF851:
	.ascii	"_POSIX_MEMLOCK_RANGE _POSIX_VERSION\000"
.LASF666:
	.ascii	"LONG_BIT 32\000"
.LASF1287:
	.ascii	"seL4_GuardBits 18\000"
.LASF661:
	.ascii	"S_IWOTH 0002\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF255:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF76:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF1184:
	.ascii	"__DEFINED_uint_fast8_t \000"
.LASF1036:
	.ascii	"_SC_CLOCK_SELECTION 137\000"
.LASF406:
	.ascii	"CONFIG_LIB_SEL4_SYNC 1\000"
.LASF477:
	.ascii	"EFBIG 27\000"
.LASF763:
	.ascii	"_POSIX_TZNAME_MAX 6\000"
.LASF662:
	.ascii	"S_IXOTH 0001\000"
.LASF926:
	.ascii	"_SC_VERSION 29\000"
.LASF950:
	.ascii	"_SC_2_LOCALEDEF 52\000"
.LASF778:
	.ascii	"__DEFINED_va_list \000"
.LASF19:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF565:
	.ascii	"EALREADY 114\000"
.LASF146:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF497:
	.ascii	"EL3RST 47\000"
.LASF934:
	.ascii	"_SC_BC_BASE_MAX 36\000"
.LASF202:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF268:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF1226:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF238:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF172:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF1061:
	.ascii	"_SC_SYSTEM_DATABASE 162\000"
.LASF1359:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/li"
	.ascii	"bsos\000"
.LASF275:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF29:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF33:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF178:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF719:
	.ascii	"RE_DUP_MAX 255\000"
.LASF688:
	.ascii	"FILESIZEBITS 64\000"
.LASF523:
	.ascii	"EDOTDOT 73\000"
.LASF42:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF1190:
	.ascii	"INT16_MIN (-1-0x7fff)\000"
.LASF388:
	.ascii	"CONFIG_USER_DEBUG_BUILD 1\000"
.LASF574:
	.ascii	"ENOMEDIUM 123\000"
.LASF1181:
	.ascii	"__DEFINED_int_fast16_t \000"
.LASF161:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF157:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF617:
	.ascii	"F_GETSIG 11\000"
.LASF155:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF1132:
	.ascii	"_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS 1144\000"
.LASF1274:
	.ascii	"__LIBSEL4_ASSERT_H \000"
.LASF1110:
	.ascii	"_CS_POSIX_V6_ILP32_OFFBIG_LIBS 1122\000"
.LASF105:
	.ascii	"__UINT8_C(c) c\000"
.LASF43:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF365:
	.ascii	"linux 1\000"
.LASF679:
	.ascii	"INT_MAX 0x7fffffff\000"
.LASF1236:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF1339:
	.ascii	"time_t\000"
.LASF850:
	.ascii	"_POSIX_MEMLOCK _POSIX_VERSION\000"
.LASF253:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF670:
	.ascii	"CHAR_MAX 255\000"
.LASF772:
	.ascii	"_POSIX2_RE_DUP_MAX 255\000"
.LASF761:
	.ascii	"_POSIX_TRACE_USER_EVENT_MAX 32\000"
.LASF566:
	.ascii	"EINPROGRESS 115\000"
.LASF1031:
	.ascii	"_SC_ADVISORY_INFO 132\000"
.LASF311:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF1041:
	.ascii	"_SC_DEVICE_SPECIFIC_R 142\000"
.LASF547:
	.ascii	"EPFNOSUPPORT 96\000"
.LASF460:
	.ascii	"ECHILD 10\000"
.LASF430:
	.ascii	"CONFIG_NUM_DOMAINS 1\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF225:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF499:
	.ascii	"EUNATCH 49\000"
.LASF579:
	.ascii	"EKEYREVOKED 128\000"
.LASF797:
	.ascii	"_IOLBF 1\000"
.LASF1018:
	.ascii	"_SC_NL_ARGMAX 119\000"
.LASF1102:
	.ascii	"_CS_POSIX_V5_WIDTH_RESTRICTED_ENVS 4\000"
.LASF61:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF36:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF632:
	.ascii	"AT_FDCWD (-100)\000"
.LASF862:
	.ascii	"_POSIX_THREAD_SAFE_FUNCTIONS _POSIX_VERSION\000"
.LASF702:
	.ascii	"OPEN_FILE_MAX 200\000"
.LASF739:
	.ascii	"_POSIX_NAME_MAX 14\000"
.LASF893:
	.ascii	"_PC_REC_XFER_ALIGN 17\000"
.LASF522:
	.ascii	"EMULTIHOP 72\000"
.LASF598:
	.ascii	"O_DSYNC 010000\000"
.LASF1104:
	.ascii	"_CS_POSIX_V6_ILP32_OFF32_CFLAGS 1116\000"
.LASF967:
	.ascii	"_SC_THREAD_SAFE_FUNCTIONS 68\000"
.LASF198:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF1067:
	.ascii	"_SC_2_PBS 168\000"
.LASF974:
	.ascii	"_SC_THREAD_STACK_MIN 75\000"
.LASF429:
	.ascii	"CONFIG_LIB_ETHDRIVER_NUM_PREALLOCATED_BUFFERS 512\000"
.LASF121:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF869:
	.ascii	"_POSIX_SPIN_LOCKS _POSIX_VERSION\000"
.LASF549:
	.ascii	"EADDRINUSE 98\000"
.LASF1323:
	.ascii	"PS_IN_MS 1000000000llu\000"
.LASF1066:
	.ascii	"_SC_USER_GROUPS_R 167\000"
.LASF1220:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF685:
	.ascii	"MB_LEN_MAX 4\000"
.LASF471:
	.ascii	"EISDIR 21\000"
.LASF910:
	.ascii	"_SC_PRIORITIZED_IO 13\000"
.LASF215:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF941:
	.ascii	"_SC_LINE_MAX 43\000"
.LASF969:
	.ascii	"_SC_GETPW_R_SIZE_MAX 70\000"
.LASF899:
	.ascii	"_SC_CLK_TCK 2\000"
.LASF400:
	.ascii	"CONFIG_LIB_SERIAL 1\000"
.LASF1038:
	.ascii	"_SC_THREAD_CPUTIME 139\000"
.LASF691:
	.ascii	"PATH_MAX 4096\000"
.LASF1329:
	.ascii	"FS_IN_S 1000000000000000llu\000"
.LASF458:
	.ascii	"ENOEXEC 8\000"
.LASF194:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF883:
	.ascii	"_PC_NO_TRUNC 7\000"
.LASF349:
	.ascii	"__THUMBEL__\000"
.LASF478:
	.ascii	"ENOSPC 28\000"
.LASF28:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF994:
	.ascii	"_SC_2_CHAR_TERM 95\000"
.LASF391:
	.ascii	"CONFIG_ARM_ERRATA_764369 1\000"
.LASF824:
	.ascii	"STDIN_FILENO 0\000"
.LASF984:
	.ascii	"_SC_PHYS_PAGES 85\000"
.LASF420:
	.ascii	"CONFIG_LIB_UTILS 1\000"
.LASF885:
	.ascii	"_PC_SYNC_IO 9\000"
.LASF538:
	.ascii	"ENOTSOCK 88\000"
.LASF1001:
	.ascii	"_SC_CHAR_MAX 102\000"
.LASF282:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF1299:
	.ascii	"assert_size_correct(type,expected_bytes) typedef un"
	.ascii	"signed long __type_ ##type ##_size_incorrect[ (size"
	.ascii	"of(type) == expected_bytes) ? 1 : -1]\000"
.LASF1085:
	.ascii	"_SC_RAW_SOCKETS 236\000"
.LASF1045:
	.ascii	"_SC_FILE_ATTRIBUTES 146\000"
.LASF820:
	.ascii	"WIFSTOPPED(s) (((s) & 0xff) == 0x7f)\000"
.LASF493:
	.ascii	"EIDRM 43\000"
.LASF599:
	.ascii	"O_SYNC 04010000\000"
.LASF1257:
	.ascii	"__LIBSEL4_MACROS_H \000"
.LASF643:
	.ascii	"SEEK_SET\000"
.LASF378:
	.ascii	"DEBUG 1\000"
.LASF251:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF920:
	.ascii	"_SC_AIO_LISTIO_MAX 23\000"
.LASF224:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF1095:
	.ascii	"_SC_XOPEN_STREAMS 246\000"
.LASF1109:
	.ascii	"_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS 1121\000"
.LASF731:
	.ascii	"_POSIX_DELAYTIMER_MAX 32\000"
.LASF389:
	.ascii	"CONFIG_LIB_SEL4_CSPACE 1\000"
.LASF353:
	.ascii	"__VFP_FP__ 1\000"
.LASF1225:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF222:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF120:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF765:
	.ascii	"_POSIX2_BC_DIM_MAX 2048\000"
.LASF325:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF117:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF585:
	.ascii	"_FCNTL_H \000"
.LASF1261:
	.ascii	"__LIBSEL4_ARCH_TYPES_H \000"
.LASF870:
	.ascii	"_POSIX_READER_WRITER_LOCKS _POSIX_VERSION\000"
.LASF1295:
	.ascii	"__SWINUM\000"
.LASF715:
	.ascii	"CHARCLASS_NAME_MAX 14\000"
.LASF173:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF207:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF774:
	.ascii	"_XOPEN_NAME_MAX 255\000"
.LASF116:
	.ascii	"__UINT_FAST8_MAX__ 0xff\000"
.LASF555:
	.ascii	"ECONNRESET 104\000"
.LASF614:
	.ascii	"F_SETOWN 8\000"
.LASF660:
	.ascii	"S_IROTH 0004\000"
.LASF607:
	.ascii	"O_NOATIME 01000000\000"
.LASF1293:
	.ascii	"__LIBSEL4_ARCH_FUNCTIONS_H \000"
.LASF835:
	.ascii	"W_OK 2\000"
.LASF881:
	.ascii	"_PC_PIPE_BUF 5\000"
.LASF1093:
	.ascii	"_SC_TRACE_SYS_MAX 244\000"
.LASF1239:
	.ascii	"SIZE_MAX UINT32_MAX\000"
.LASF54:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF769:
	.ascii	"_POSIX2_COLL_WEIGHTS_MAX 2\000"
.LASF747:
	.ascii	"_POSIX_SEM_VALUE_MAX 32767\000"
.LASF1119:
	.ascii	"_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS 1131\000"
.LASF518:
	.ascii	"EADV 68\000"
.LASF240:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF476:
	.ascii	"ETXTBSY 26\000"
.LASF246:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF1337:
	.ascii	"long int\000"
.LASF411:
	.ascii	"CONFIG_CROSS_COMPILER_PREFIX \"arm-linux-gnueabi-\""
	.ascii	"\000"
.LASF1183:
	.ascii	"__DEFINED_int_fast64_t \000"
.LASF771:
	.ascii	"_POSIX2_LINE_MAX 2048\000"
.LASF115:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF999:
	.ascii	"_SC_XOPEN_XPG4 100\000"
.LASF1247:
	.ascii	"UINT64_C(c) c ## ULL\000"
.LASF1028:
	.ascii	"_SC_XOPEN_LEGACY 129\000"
.LASF758:
	.ascii	"_POSIX_TRACE_EVENT_NAME_MAX 30\000"
.LASF184:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF583:
	.ascii	"ERFKILL 132\000"
.LASF302:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF1131:
	.ascii	"_CS_POSIX_V7_LP64_OFF64_LINTFLAGS 1143\000"
.LASF1357:
	.ascii	"GNU C11 5.4.0 20160609 -marm -mcpu=cortex-a9 -mfloa"
	.ascii	"t-abi=soft -mtls-dialect=gnu -g -g3 -ggdb3 -g -g -O"
	.ascii	"2 -std=gnu11 -funwind-tables -fno-stack-protector\000"
.LASF85:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF32:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF50:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF1015:
	.ascii	"_SC_UINT_MAX 116\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF274:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF1278:
	.ascii	"seL4_DebugAssert(expr) seL4_Assert(expr)\000"
.LASF813:
	.ascii	"MB_CUR_MAX ((size_t)+4)\000"
.LASF1048:
	.ascii	"_SC_MONOTONIC_CLOCK 149\000"
.LASF955:
	.ascii	"_SC_PII_OSI 57\000"
.LASF699:
	.ascii	"TZNAME_MAX 6\000"
.LASF531:
	.ascii	"ELIBSCN 81\000"
.LASF1007:
	.ascii	"_SC_MB_LEN_MAX 108\000"
.LASF354:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF228:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF1075:
	.ascii	"_SC_V6_ILP32_OFF32 176\000"
.LASF1153:
	.ascii	"_SOS_H \000"
.LASF968:
	.ascii	"_SC_GETGR_R_SIZE_MAX 69\000"
.LASF578:
	.ascii	"EKEYEXPIRED 127\000"
.LASF938:
	.ascii	"_SC_COLL_WEIGHTS_MAX 40\000"
.LASF1105:
	.ascii	"_CS_POSIX_V6_ILP32_OFF32_LDFLAGS 1117\000"
.LASF1077:
	.ascii	"_SC_V6_LP64_OFF64 178\000"
.LASF985:
	.ascii	"_SC_AVPHYS_PAGES 86\000"
.LASF944:
	.ascii	"_SC_2_VERSION 46\000"
.LASF1163:
	.ascii	"__NEED_int_fast8_t \000"
.LASF767:
	.ascii	"_POSIX2_BC_STRING_MAX 1000\000"
.LASF413:
	.ascii	"CONFIG_LIB_MUSL_C 1\000"
.LASF118:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF486:
	.ascii	"ENAMETOOLONG 36\000"
.LASF18:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF686:
	.ascii	"PIPE_BUF 4096\000"
.LASF507:
	.ascii	"EBADSLT 57\000"
.LASF1177:
	.ascii	"__DEFINED_uint16_t \000"
.LASF647:
	.ascii	"SEEK_CUR 1\000"
.LASF1112:
	.ascii	"_CS_POSIX_V6_LP64_OFF64_CFLAGS 1124\000"
.LASF866:
	.ascii	"_POSIX_CPUTIME _POSIX_VERSION\000"
.LASF1351:
	.ascii	"sys_nanosleep\000"
.LASF22:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF532:
	.ascii	"ELIBMAX 82\000"
.LASF510:
	.ascii	"ENOSTR 60\000"
.LASF1211:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF1264:
	.ascii	"seL4_SlotBits 4\000"
.LASF1235:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF418:
	.ascii	"CONFIG_APP_PROXY_FAN 1\000"
.LASF412:
	.ascii	"CONFIG_APP_WEB 1\000"
.LASF414:
	.ascii	"CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION 100\000"
.LASF658:
	.ascii	"S_IXGRP 0010\000"
.LASF180:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF1354:
	.ascii	"micros\000"
.LASF975:
	.ascii	"_SC_THREAD_THREADS_MAX 76\000"
.LASF419:
	.ascii	"CONFIG_DEBUG_BUILD 1\000"
.LASF812:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF304:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF1116:
	.ascii	"_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS 1128\000"
.LASF908:
	.ascii	"_SC_TIMERS 11\000"
.LASF133:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF1301:
	.ascii	"seL4_CapInitThreadPD seL4_CapInitThreadVSpace\000"
.LASF694:
	.ascii	"ARG_MAX 131072\000"
.LASF903:
	.ascii	"_SC_TZNAME_MAX 6\000"
.LASF445:
	.ascii	"CONFIG_LIB_ETHDRIVER_TX_DESC_COUNT 32\000"
.LASF1346:
	.ascii	"signed char\000"
.LASF1120:
	.ascii	"_CS_POSIX_V7_ILP32_OFF32_CFLAGS 1132\000"
.LASF948:
	.ascii	"_SC_2_FORT_RUN 50\000"
.LASF569:
	.ascii	"ENOTNAM 118\000"
.LASF444:
	.ascii	"CONFIG_KERNEL_EXTRA_CPPFLAGS \"\"\000"
.LASF309:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF826:
	.ascii	"STDERR_FILENO 2\000"
.LASF775:
	.ascii	"_XOPEN_PATH_MAX 1024\000"
.LASF963:
	.ascii	"_SC_PII_OSI_CLTS 64\000"
.LASF200:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF1210:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF264:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF421:
	.ascii	"CONFIG_BENCHMARK 1\000"
.LASF475:
	.ascii	"ENOTTY 25\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF525:
	.ascii	"EOVERFLOW 75\000"
.LASF859:
	.ascii	"_POSIX_VDISABLE 0\000"
.LASF1250:
	.ascii	"__LIBSEL4_SEL4_H \000"
.LASF151:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF622:
	.ascii	"F_GETOWN_EX 16\000"
.LASF1196:
	.ascii	"INT64_MAX (0x7fffffffffffffffLL)\000"
.LASF556:
	.ascii	"ENOBUFS 105\000"
.LASF605:
	.ascii	"O_DIRECT 0200000\000"
.LASF548:
	.ascii	"EAFNOSUPPORT 97\000"
.LASF656:
	.ascii	"S_IRGRP 0040\000"
.LASF728:
	.ascii	"_POSIX_ARG_MAX 4096\000"
.LASF128:
	.ascii	"__FLT_DIG__ 6\000"
.LASF345:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF1296:
	.ascii	"__LIBSEL4_INVOCATION_H \000"
.LASF1300:
	.ascii	"__LIBSEL4_BOOTINFO_H \000"
.LASF698:
	.ascii	"SSIZE_MAX LONG_MAX\000"
.LASF718:
	.ascii	"LINE_MAX 4096\000"
.LASF64:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF1347:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF1263:
	.ascii	"seL4_PageBits 12\000"
.LASF231:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF552:
	.ascii	"ENETUNREACH 101\000"
.LASF946:
	.ascii	"_SC_2_C_DEV 48\000"
.LASF187:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF203:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF535:
	.ascii	"ERESTART 85\000"
.LASF1265:
	.ascii	"seL4_TCBBits 9\000"
.LASF672:
	.ascii	"SCHAR_MIN (-128)\000"
.LASF849:
	.ascii	"_POSIX_MAPPED_FILES _POSIX_VERSION\000"
.LASF114:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF962:
	.ascii	"_SC_PII_OSI_COTS 63\000"
.LASF358:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF788:
	.ascii	"__DEFINED_size_t \000"
.LASF1251:
	.ascii	"__LIBSEL4_TYPES_H \000"
.LASF919:
	.ascii	"_SC_SHARED_MEMORY_OBJECTS 22\000"
.LASF498:
	.ascii	"ELNRNG 48\000"
.LASF766:
	.ascii	"_POSIX2_BC_SCALE_MAX 99\000"
.LASF1113:
	.ascii	"_CS_POSIX_V6_LP64_OFF64_LDFLAGS 1125\000"
.LASF789:
	.ascii	"__DEFINED_locale_t \000"
.LASF93:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF416:
	.ascii	"CONFIG_USER_CFLAGS \"\"\000"
.LASF278:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF613:
	.ascii	"F_SETFL 4\000"
.LASF1205:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF433:
	.ascii	"CONFIG_LIB_SOS 1\000"
.LASF860:
	.ascii	"_POSIX_THREADS _POSIX_VERSION\000"
.LASF109:
	.ascii	"__UINT32_C(c) c ## U\000"
.LASF481:
	.ascii	"EMLINK 31\000"
.LASF894:
	.ascii	"_PC_ALLOC_SIZE_MIN 18\000"
.LASF1079:
	.ascii	"_SC_HOST_NAME_MAX 180\000"
.LASF379:
	.ascii	"SEL4_DEBUG_KERNEL 1\000"
.LASF940:
	.ascii	"_SC_EXPR_NEST_MAX 42\000"
.LASF818:
	.ascii	"WCOREDUMP(s) ((s) & 0x80)\000"
.LASF20:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF265:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF524:
	.ascii	"EBADMSG 74\000"
.LASF706:
	.ascii	"SEM_VALUE_MAX 0x7fffffff\000"
.LASF833:
	.ascii	"F_OK 0\000"
.LASF624:
	.ascii	"O_RDONLY 00\000"
.LASF972:
	.ascii	"_SC_THREAD_DESTRUCTOR_ITERATIONS 73\000"
.LASF603:
	.ascii	"O_CLOEXEC 02000000\000"
.LASF784:
	.ascii	"NULL\000"
.LASF1286:
	.ascii	"seL4_GuardSizeBits 5\000"
.LASF657:
	.ascii	"S_IWGRP 0020\000"
.LASF509:
	.ascii	"EBFONT 59\000"
.LASF982:
	.ascii	"_SC_NPROCESSORS_CONF 83\000"
.LASF1100:
	.ascii	"_CS_GNU_LIBC_VERSION 2\000"
.LASF596:
	.ascii	"O_APPEND 02000\000"
.LASF23:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF1199:
	.ascii	"UINT32_MAX (0xffffffff)\000"
.LASF1292:
	.ascii	"__LIBSEL4_ARCH_SYSCALLS_H \000"
.LASF327:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF35:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF1189:
	.ascii	"INT8_MIN (-1-0x7f)\000"
.LASF629:
	.ascii	"F_WRLCK 1\000"
.LASF1318:
	.ascii	"NS_IN_US 1000llu\000"
.LASF1335:
	.ascii	"char\000"
.LASF301:
	.ascii	"__USA_IBIT__ 16\000"
.LASF1114:
	.ascii	"_CS_POSIX_V6_LP64_OFF64_LIBS 1126\000"
.LASF312:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF440:
	.ascii	"CONFIG_NUM_PRIORITIES 256\000"
.LASF779:
	.ascii	"va_start(v,l) __builtin_va_start(v,l)\000"
.LASF1355:
	.ascii	"sos_sys_usleep\000"
.LASF911:
	.ascii	"_SC_SYNCHRONIZED_IO 14\000"
.LASF545:
	.ascii	"EOPNOTSUPP 95\000"
.LASF65:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF721:
	.ascii	"NL_LANGMAX 32\000"
.LASF70:
	.ascii	"__GXX_ABI_VERSION 1009\000"
.LASF864:
	.ascii	"_POSIX_TIMEOUTS _POSIX_VERSION\000"
.LASF135:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF290:
	.ascii	"__HA_FBIT__ 7\000"
.LASF836:
	.ascii	"X_OK 1\000"
.LASF387:
	.ascii	"CONFIG_LIB_ELF 1\000"
.LASF868:
	.ascii	"_POSIX_BARRIERS _POSIX_VERSION\000"
.LASF997:
	.ascii	"_SC_XOPEN_XPG2 98\000"
.LASF743:
	.ascii	"_POSIX_PIPE_BUF 512\000"
.LASF809:
	.ascii	"__NEED_wchar_t \000"
.LASF508:
	.ascii	"EDEADLOCK EDEADLK\000"
.LASF1256:
	.ascii	"seL4_Null ((void*)0)\000"
.LASF366:
	.ascii	"__unix 1\000"
.LASF196:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF449:
	.ascii	"UNUSED_NDEBUG(x) ((void)(x))\000"
.LASF1043:
	.ascii	"_SC_FIFO 144\000"
.LASF468:
	.ascii	"EXDEV 18\000"
.LASF872:
	.ascii	"_POSIX_SEMAPHORES _POSIX_VERSION\000"
.LASF488:
	.ascii	"ENOSYS 38\000"
.LASF405:
	.ascii	"CONFIG_LIB_PLATSUPPORT 1\000"
.LASF197:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF597:
	.ascii	"O_NONBLOCK 04000\000"
.LASF423:
	.ascii	"CONFIG_APP_SOS 1\000"
.LASF1025:
	.ascii	"_SC_XBS5_ILP32_OFFBIG 126\000"
.LASF92:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF1060:
	.ascii	"_SC_THREAD_SPORADIC_SERVER 161\000"
.LASF1020:
	.ascii	"_SC_NL_MSGMAX 121\000"
.LASF159:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF1306:
	.ascii	"N_NAME 32\000"
.LASF500:
	.ascii	"ENOCSI 50\000"
.LASF1055:
	.ascii	"_SC_REGEX_VERSION 156\000"
.LASF152:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF871:
	.ascii	"_POSIX_ASYNCHRONOUS_IO _POSIX_VERSION\000"
.LASF1272:
	.ascii	"_HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LI"
	.ascii	"BSEL4_INCLUDE_SEL4_TYPES_GEN_H \000"
.LASF347:
	.ascii	"__thumb__\000"
.LASF223:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF1140:
	.ascii	"__NEED_clockid_t \000"
.LASF651:
	.ascii	"S_ISVTX 01000\000"
.LASF1044:
	.ascii	"_SC_PIPE 145\000"
.LASF1246:
	.ascii	"UINT32_C(c) c ## U\000"
.LASF1174:
	.ascii	"__DEFINED_int32_t \000"
.LASF294:
	.ascii	"__DA_FBIT__ 31\000"
.LASF1014:
	.ascii	"_SC_UCHAR_MAX 115\000"
.LASF98:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF1136:
	.ascii	"_TIME_H \000"
.LASF137:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF442:
	.ascii	"CONFIG_KERNEL_COMPILER \"\"\000"
.LASF592:
	.ascii	"O_CREAT 0100\000"
.LASF839:
	.ascii	"F_TLOCK 2\000"
.LASF1003:
	.ascii	"_SC_INT_MAX 104\000"
.LASF490:
	.ascii	"ELOOP 40\000"
.LASF667:
	.ascii	"LONG_MAX 0x7fffffffL\000"
.LASF790:
	.ascii	"_STDIO_H \000"
.LASF320:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF69:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF1327:
	.ascii	"FS_IN_US 1000000000llu\000"
.LASF1137:
	.ascii	"__NEED_time_t \000"
.LASF247:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF1146:
	.ascii	"__DEFINED_clock_t \000"
.LASF136:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF935:
	.ascii	"_SC_BC_DIM_MAX 37\000"
.LASF768:
	.ascii	"_POSIX2_CHARCLASS_NAME_MAX 14\000"
.LASF693:
	.ascii	"NGROUPS_MAX 32\000"
.LASF725:
	.ascii	"NL_TEXTMAX 2048\000"
.LASF612:
	.ascii	"F_GETFL 3\000"
.LASF58:
	.ascii	"__INT_FAST8_TYPE__ signed char\000"
.LASF1013:
	.ascii	"_SC_SHRT_MIN 114\000"
.LASF1150:
	.ascii	"CLOCK_PROCESS_CPUTIME_ID 2\000"
.LASF1099:
	.ascii	"_CS_POSIX_V6_WIDTH_RESTRICTED_ENVS 1\000"
.LASF1208:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF637:
	.ascii	"POSIX_FADV_NORMAL 0\000"
.LASF249:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF1358:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/libs/libsos/src/s"
	.ascii	"ys_time.c\000"
.LASF677:
	.ascii	"USHRT_MAX 0xffff\000"
.LASF434:
	.ascii	"CONFIG_LIB_ETHDRIVER_PREALLOCATED_BUF_SIZE 2048\000"
.LASF736:
	.ascii	"_POSIX_MAX_INPUT 255\000"
.LASF308:
	.ascii	"_FORTIFY_SOURCE 2\000"
.LASF506:
	.ascii	"EBADRQC 56\000"
.LASF1356:
	.ascii	"sos_sys_time_stamp\000"
.LASF235:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF1224:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF1350:
	.ascii	"millis\000"
.LASF593:
	.ascii	"O_EXCL 0200\000"
.LASF1310:
	.ascii	"ST_FILE 1\000"
.LASF250:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF399:
	.ascii	"CONFIG_FASTPATH 1\000"
.LASF928:
	.ascii	"_SC_PAGESIZE 30\000"
.LASF530:
	.ascii	"ELIBBAD 80\000"
.LASF1029:
	.ascii	"_SC_XOPEN_REALTIME 130\000"
.LASF690:
	.ascii	"SYMLINK_MAX 255\000"
.LASF437:
	.ascii	"CONFIG_LIB_CPIO 1\000"
.LASF898:
	.ascii	"_SC_CHILD_MAX 1\000"
.LASF800:
	.ascii	"FILENAME_MAX 4095\000"
.LASF521:
	.ascii	"EPROTO 71\000"
.LASF814:
	.ascii	"RAND_MAX (0x7fffffff)\000"
.LASF167:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF296:
	.ascii	"__TA_FBIT__ 63\000"
.LASF1152:
	.ascii	"TIMER_ABSTIME 1\000"
.LASF1107:
	.ascii	"_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS 1119\000"
.LASF1118:
	.ascii	"_CS_POSIX_V6_LPBIG_OFFBIG_LIBS 1130\000"
.LASF356:
	.ascii	"__ARM_PCS 1\000"
.LASF1179:
	.ascii	"__DEFINED_uint64_t \000"
.LASF655:
	.ascii	"S_IRWXU 0700\000"
.LASF1192:
	.ascii	"INT64_MIN (-1-0x7fffffffffffffffLL)\000"
.LASF888:
	.ascii	"_PC_SOCK_MAXBUF 12\000"
.LASF375:
	.ascii	"ARM_CORTEX_A9 1\000"
.LASF1282:
	.ascii	"__API_CONSTANTS_H \000"
.LASF87:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF469:
	.ascii	"ENODEV 19\000"
.LASF372:
	.ascii	"SOS_NFS_DIR \"/var/tftpboot/mint\"\000"
.LASF104:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF684:
	.ascii	"ULLONG_MAX (2ULL*LLONG_MAX+1)\000"
.LASF695:
	.ascii	"IOV_MAX 1024\000"
.LASF978:
	.ascii	"_SC_THREAD_PRIORITY_SCHEDULING 79\000"
.LASF819:
	.ascii	"WIFEXITED(s) (!WTERMSIG(s))\000"
.LASF952:
	.ascii	"_SC_PII_XTI 54\000"
.LASF671:
	.ascii	"CHAR_BIT 8\000"
.LASF563:
	.ascii	"EHOSTDOWN 112\000"
.LASF720:
	.ascii	"NL_ARGMAX 9\000"
.LASF664:
	.ascii	"_LIMITS_H \000"
.LASF897:
	.ascii	"_SC_ARG_MAX 0\000"
.LASF1271:
	.ascii	"seL4_Frame_HasNPC 0\000"
.LASF1180:
	.ascii	"__DEFINED_int_fast8_t \000"
.LASF591:
	.ascii	"__DEFINED_mode_t \000"
.LASF461:
	.ascii	"EAGAIN 11\000"
.LASF138:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF1304:
	.ascii	"PROCESS_MAX_FILES 16\000"
.LASF921:
	.ascii	"_SC_AIO_MAX 24\000"
.LASF564:
	.ascii	"EHOSTUNREACH 113\000"
.LASF681:
	.ascii	"LONG_MIN (-LONG_MAX-1)\000"
.LASF401:
	.ascii	"CONFIG_DOMAIN_SCHEDULE \"\"\000"
.LASF1165:
	.ascii	"__NEED_int_fast32_t \000"
.LASF806:
	.ascii	"stderr (stderr)\000"
.LASF1024:
	.ascii	"_SC_XBS5_ILP32_OFF32 125\000"
.LASF1171:
	.ascii	"__NEED_uintptr_t \000"
.LASF887:
	.ascii	"_PC_PRIO_IO 11\000"
.LASF1049:
	.ascii	"_SC_MULTI_PROCESS 150\000"
.LASF182:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF199:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF1121:
	.ascii	"_CS_POSIX_V7_ILP32_OFF32_LDFLAGS 1133\000"
.LASF1202:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF953:
	.ascii	"_SC_PII_SOCKET 55\000"
.LASF801:
	.ascii	"FOPEN_MAX 1000\000"
.LASF792:
	.ascii	"__NEED_ssize_t \000"
.LASF630:
	.ascii	"F_UNLCK 2\000"
.LASF195:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF958:
	.ascii	"_SC_UIO_MAXIOV 60\000"
.LASF263:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF492:
	.ascii	"ENOMSG 42\000"
.LASF479:
	.ascii	"ESPIPE 29\000"
.LASF362:
	.ascii	"__gnu_linux__ 1\000"
.LASF1285:
	.ascii	"seL4_UntypedRetypeMaxObjects 256\000"
.LASF307:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF95:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF675:
	.ascii	"SHRT_MIN (-1-0x7fff)\000"
.LASF100:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffff\000"
.LASF707:
	.ascii	"SEM_NSEMS_MAX 256\000"
.LASF700:
	.ascii	"TTY_NAME_MAX 20\000"
.LASF432:
	.ascii	"CONFIG_USER_DEBUG_INFO 1\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF1186:
	.ascii	"__DEFINED_uint_fast32_t \000"
.LASF554:
	.ascii	"ECONNABORTED 103\000"
.LASF96:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF459:
	.ascii	"EBADF 9\000"
.LASF332:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF709:
	.ascii	"MQ_PRIO_MAX 32768\000"
.LASF359:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF704:
	.ascii	"PTHREAD_STACK_MIN PAGE_SIZE\000"
.LASF390:
	.ascii	"CONFIG_TIMER_TICK_MS 20\000"
.LASF1054:
	.ascii	"_SC_REGEXP 155\000"
.LASF1160:
	.ascii	"__NEED_uint16_t \000"
.LASF49:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF341:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF68:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF1087:
	.ascii	"_SC_V7_ILP32_OFFBIG 238\000"
.LASF1125:
	.ascii	"_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS 1137\000"
.LASF830:
	.ascii	"__DEFINED_intptr_t \000"
.LASF1103:
	.ascii	"_CS_POSIX_V7_WIDTH_RESTRICTED_ENVS 5\000"
.LASF150:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF212:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF1334:
	.ascii	"sizetype\000"
.LASF139:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF932:
	.ascii	"_SC_SIGQUEUE_MAX 34\000"
.LASF762:
	.ascii	"_POSIX_TTY_NAME_MAX 9\000"
.LASF243:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF553:
	.ascii	"ENETRESET 102\000"
.LASF88:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF1126:
	.ascii	"_CS_POSIX_V7_ILP32_OFFBIG_LIBS 1138\000"
.LASF516:
	.ascii	"EREMOTE 66\000"
.LASF326:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF192:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1345:
	.ascii	"long unsigned int\000"
.LASF293:
	.ascii	"__SA_IBIT__ 16\000"
.LASF63:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF123:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF5:
	.ascii	"__GNUC__ 5\000"
.LASF47:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF644:
	.ascii	"SEEK_CUR\000"
.LASF395:
	.ascii	"CONFIG_SOS_GATEWAY \"192.168.168.2\"\000"
.LASF352:
	.ascii	"__SOFTFP__ 1\000"
.LASF534:
	.ascii	"EILSEQ 84\000"
.LASF559:
	.ascii	"ESHUTDOWN 108\000"
.LASF171:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF428:
	.ascii	"CONFIG_ARCH_ARM 1\000"
.LASF482:
	.ascii	"EPIPE 32\000"
.LASF465:
	.ascii	"ENOTBLK 15\000"
.LASF1326:
	.ascii	"FS_IN_NS 1000000llu\000"
.LASF979:
	.ascii	"_SC_THREAD_PRIO_INHERIT 80\000"
.LASF1040:
	.ascii	"_SC_DEVICE_SPECIFIC 141\000"
.LASF1268:
	.ascii	"seL4_PageDirBits 14\000"
.LASF1070:
	.ascii	"_SC_2_PBS_MESSAGE 171\000"
.LASF726:
	.ascii	"_POSIX_AIO_LISTIO_MAX 2\000"
.LASF261:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF1360:
	.ascii	"__ap\000"
.LASF929:
	.ascii	"_SC_RTSIG_MAX 31\000"
.LASF692:
	.ascii	"NZERO 20\000"
.LASF1090:
	.ascii	"_SC_SS_REPL_MAX 241\000"
.LASF1258:
	.ascii	"SEL4_FORCE_LONG_ENUM(type) _enum_pad_ ## type = (1U"
	.ascii	" << ((sizeof(int)*8) - 1)) - 1\000"
.LASF1047:
	.ascii	"_SC_FILE_SYSTEM 148\000"
.LASF737:
	.ascii	"_POSIX_MQ_OPEN_MAX 8\000"
.LASF653:
	.ascii	"S_IWUSR 0200\000"
.LASF865:
	.ascii	"_POSIX_MONOTONIC_CLOCK _POSIX_VERSION\000"
.LASF355:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF102:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF408:
	.ascii	"CONFIG_LIB_CLOCK 1\000"
.LASF749:
	.ascii	"_POSIX_SSIZE_MAX 32767\000"
.LASF759:
	.ascii	"_POSIX_TRACE_NAME_MAX 8\000"
.LASF131:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF669:
	.ascii	"CHAR_MIN 0\000"
.LASF687:
	.ascii	"PAGESIZE PAGE_SIZE\000"
.LASF756:
	.ascii	"_POSIX_THREAD_THREADS_MAX 64\000"
.LASF1129:
	.ascii	"_CS_POSIX_V7_LP64_OFF64_LDFLAGS 1141\000"
.LASF111:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF57:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF1232:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF519:
	.ascii	"ESRMNT 69\000"
.LASF541:
	.ascii	"EPROTOTYPE 91\000"
.LASF164:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF713:
	.ascii	"BC_SCALE_MAX 99\000"
.LASF51:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF1273:
	.ascii	"__LIBSEL4_DEBUG_ASSERT_H \000"
.LASF383:
	.ascii	"CONFIG_APP_PROXY_SENSOR 1\000"
.LASF1277:
	.ascii	"seL4_CompileTimeAssert(expr) extern char __seL4_Com"
	.ascii	"pileTimeAssertFailed_ ## __COUNTER__[__builtin_cons"
	.ascii	"tant_p(expr) ? ((expr) ? 1 : -1) : -1] __attribute_"
	.ascii	"_((unused))\000"
.LASF804:
	.ascii	"stdin (stdin)\000"
.LASF145:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF1052:
	.ascii	"_SC_READER_WRITER_LOCKS 153\000"
.LASF654:
	.ascii	"S_IXUSR 0100\000"
.LASF127:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF287:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF733:
	.ascii	"_POSIX_LINK_MAX 8\000"
.LASF396:
	.ascii	"CONFIG_HAVE_LIBC 1\000"
.LASF15:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF576:
	.ascii	"ECANCELED 125\000"
.LASF248:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF947:
	.ascii	"_SC_2_FORT_DEV 49\000"
.LASF570:
	.ascii	"ENAVAIL 119\000"
.LASF467:
	.ascii	"EEXIST 17\000"
.LASF1204:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF584:
	.ascii	"errno (*__errno_location())\000"
.LASF165:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF1311:
	.ascii	"ST_SPECIAL 2\000"
.LASF91:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF560:
	.ascii	"ETOOMANYREFS 109\000"
.LASF827:
	.ascii	"__NEED_uid_t \000"
.LASF226:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF988:
	.ascii	"_SC_XOPEN_VERSION 89\000"
.LASF933:
	.ascii	"_SC_TIMER_MAX 35\000"
.LASF742:
	.ascii	"_POSIX_PATH_MAX 256\000"
.LASF1156:
	.ascii	"__NEED_int16_t \000"
.LASF1260:
	.ascii	"PURE __attribute__((__pure__))\000"
.LASF738:
	.ascii	"_POSIX_MQ_PRIO_MAX 32\000"
.LASF386:
	.ascii	"CONFIG_LIB_NFS 1\000"
.LASF1255:
	.ascii	"seL4_False 0\000"
.LASF755:
	.ascii	"_POSIX_THREAD_KEYS_MAX 128\000"
.LASF723:
	.ascii	"NL_NMAX (MB_LEN_MAX*4)\000"
.LASF314:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF397:
	.ascii	"CONFIG_WORD_SIZE 32\000"
.LASF1245:
	.ascii	"UINT16_C(c) c\000"
.LASF876:
	.ascii	"_PC_LINK_MAX 0\000"
.LASF884:
	.ascii	"_PC_VDISABLE 8\000"
.LASF837:
	.ascii	"F_ULOCK 0\000"
.LASF134:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF462:
	.ascii	"ENOMEM 12\000"
.LASF245:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF886:
	.ascii	"_PC_ASYNC_IO 10\000"
.LASF209:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF77:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF917:
	.ascii	"_SC_MESSAGE_PASSING 20\000"
.LASF281:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF527:
	.ascii	"EBADFD 77\000"
.LASF993:
	.ascii	"_SC_XOPEN_SHM 94\000"
.LASF480:
	.ascii	"EROFS 30\000"
.LASF322:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF257:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF973:
	.ascii	"_SC_THREAD_KEYS_MAX 74\000"
.LASF1027:
	.ascii	"_SC_XBS5_LPBIG_OFFBIG 128\000"
.LASF162:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF344:
	.ascii	"__ARM_ARCH 7\000"
.LASF1309:
	.ascii	"FM_READ 4\000"
.LASF582:
	.ascii	"ENOTRECOVERABLE 131\000"
.LASF712:
	.ascii	"BC_DIM_MAX 2048\000"
.LASF126:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF1089:
	.ascii	"_SC_V7_LPBIG_OFFBIG 240\000"
.LASF1332:
	.ascii	"long long int\000"
.LASF724:
	.ascii	"NL_SETMAX 255\000"
.LASF1081:
	.ascii	"_SC_TRACE_EVENT_FILTER 182\000"
.LASF1338:
	.ascii	"va_list\000"
.LASF40:
	.ascii	"__CHAR32_TYPE__ unsigned int\000"
.LASF595:
	.ascii	"O_TRUNC 01000\000"
.LASF404:
	.ascii	"CONFIG_APP_PROXY_MAX_NUM_CLIENTS 16\000"
.LASF626:
	.ascii	"O_RDWR 02\000"
.LASF1127:
	.ascii	"_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS 1139\000"
.LASF748:
	.ascii	"_POSIX_SIGQUEUE_MAX 32\000"
.LASF1294:
	.ascii	"__SWINUM(x) ((x) & 0x00ffffff)\000"
.LASF845:
	.ascii	"_POSIX2_VERSION _POSIX_VERSION\000"
.LASF810:
	.ascii	"__DEFINED_wchar_t \000"
.LASF1280:
	.ascii	"__API_OBJECTTYPE_H \000"
.LASF1004:
	.ascii	"_SC_INT_MIN 105\000"
.LASF119:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1343:
	.ascii	"tv_nsec\000"
.LASF945:
	.ascii	"_SC_2_C_BIND 47\000"
.LASF291:
	.ascii	"__HA_IBIT__ 8\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF323:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF512:
	.ascii	"ETIME 62\000"
.LASF1111:
	.ascii	"_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS 1123\000"
.LASF990:
	.ascii	"_SC_XOPEN_UNIX 91\000"
.LASF1259:
	.ascii	"CONST __attribute__((__const__))\000"
.LASF1227:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF1336:
	.ascii	"double\000"
.LASF648:
	.ascii	"SEEK_END 2\000"
.LASF83:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF558:
	.ascii	"ENOTCONN 107\000"
.LASF949:
	.ascii	"_SC_2_SW_DEV 51\000"
.LASF129:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF45:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF861:
	.ascii	"_POSIX_THREAD_PROCESS_SHARED _POSIX_VERSION\000"
.LASF210:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF650:
	.ascii	"S_ISGID 02000\000"
.LASF620:
	.ascii	"F_SETLKW 14\000"
.LASF328:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF112:
	.ascii	"__INT_FAST8_MAX__ 0x7f\000"
.LASF447:
	.ascii	"assert\000"
.LASF1168:
	.ascii	"__NEED_uint_fast16_t \000"
.LASF701:
	.ascii	"HOST_NAME_MAX 255\000"
.LASF438:
	.ascii	"CONFIG_RETYPE_FAN_OUT_LIMIT 256\000"
.LASF753:
	.ascii	"_POSIX_SYMLOOP_MAX 8\000"
.LASF1037:
	.ascii	"_SC_CPUTIME 138\000"
.LASF376:
	.ascii	"IMX6 1\000"
.LASF427:
	.ascii	"CONFIG_SOS_IP \"192.168.168.1\"\000"
.LASF937:
	.ascii	"_SC_BC_STRING_MAX 39\000"
.LASF208:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF571:
	.ascii	"EISNAM 120\000"
.LASF1207:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF572:
	.ascii	"EREMOTEIO 121\000"
.LASF1042:
	.ascii	"_SC_FD_MGMT 143\000"
.LASF1135:
	.ascii	"_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS 1147\000"
.LASF1133:
	.ascii	"_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS 1145\000"
.LASF1316:
	.ascii	"US_IN_MS 1000llu\000"
.LASF191:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF1325:
	.ascii	"FS_IN_PS 1000llu\000"
.LASF30:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF101:
	.ascii	"__INT32_C(c) c\000"
.LASF1124:
	.ascii	"_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS 1136\000"
.LASF716:
	.ascii	"COLL_WEIGHTS_MAX 2\000"
.LASF417:
	.ascii	"CONFIG_LIB_ETHIF 1\000"
.LASF1243:
	.ascii	"INT64_C(c) c ## LL\000"
.LASF618:
	.ascii	"F_GETLK 12\000"
.LASF1317:
	.ascii	"US_IN_S 1000000llu\000"
.LASF795:
	.ascii	"EOF (-1)\000"
.LASF463:
	.ascii	"EACCES 13\000"
.LASF794:
	.ascii	"__DEFINED_FILE \000"
.LASF601:
	.ascii	"O_DIRECTORY 040000\000"
.LASF205:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF505:
	.ascii	"ENOANO 55\000"
.LASF286:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF594:
	.ascii	"O_NOCTTY 0400\000"
.LASF160:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF1122:
	.ascii	"_CS_POSIX_V7_ILP32_OFF32_LIBS 1134\000"
.LASF1219:
	.ascii	"WCHAR_MAX 0xffffffffU\000"
.LASF1056:
	.ascii	"_SC_SHELL 157\000"
.LASF828:
	.ascii	"__NEED_gid_t \000"
.LASF1167:
	.ascii	"__NEED_uint_fast8_t \000"
.LASF60:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF529:
	.ascii	"ELIBACC 79\000"
.LASF1331:
	.ascii	"unsigned int\000"
.LASF511:
	.ascii	"ENODATA 61\000"
.LASF1270:
	.ascii	"seL4_Frame_MRs 7\000"
.LASF1201:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF635:
	.ascii	"AT_SYMLINK_FOLLOW 0x400\000"
.LASF678:
	.ascii	"INT_MIN (-1-0x7fffffff)\000"
.LASF125:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF913:
	.ascii	"_SC_MAPPED_FILES 16\000"
.LASF1297:
	.ascii	"__LIBSEL4_ARCH_INVOCATION_H \000"
.LASF956:
	.ascii	"_SC_POLL 58\000"
.LASF832:
	.ascii	"__DEFINED_gid_t \000"
.LASF236:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF580:
	.ascii	"EKEYREJECTED 129\000"
.LASF976:
	.ascii	"_SC_THREAD_ATTR_STACKADDR 77\000"
.LASF634:
	.ascii	"AT_REMOVEDIR 0x200\000"
.LASF1191:
	.ascii	"INT32_MIN (-1-0x7fffffff)\000"
.LASF266:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF38:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF1155:
	.ascii	"__NEED_int8_t \000"
.LASF25:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF665:
	.ascii	"PAGE_SIZE 4096\000"
.LASF124:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF714:
	.ascii	"BC_STRING_MAX 1000\000"
.LASF56:
	.ascii	"__UINT_LEAST32_TYPE__ unsigned int\000"
.LASF381:
	.ascii	"AUTOCONF_INCLUDED \000"
.LASF71:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF1308:
	.ascii	"FM_WRITE 2\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF348:
	.ascii	"__thumb2__\000"
.LASF840:
	.ascii	"F_TEST 3\000"
.LASF1006:
	.ascii	"_SC_WORD_BIT 107\000"
.LASF682:
	.ascii	"ULONG_MAX (2UL*LONG_MAX+1)\000"
.LASF280:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF936:
	.ascii	"_SC_BC_SCALE_MAX 38\000"
.LASF1253:
	.ascii	"__LIBSEL4_ARCH_SIMPLE_TYPES_H_ \000"
.LASF1229:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF177:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF122:
	.ascii	"__GCC_IEC_559 0\000"
.LASF822:
	.ascii	"WIFCONTINUED(s) ((s) == 0xffff)\000"
.LASF645:
	.ascii	"SEEK_END\000"
.LASF1117:
	.ascii	"_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS 1129\000"
.LASF734:
	.ascii	"_POSIX_LOGIN_NAME_MAX 9\000"
.LASF213:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF330:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF214:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF472:
	.ascii	"EINVAL 22\000"
.LASF403:
	.ascii	"CONFIG_LIB_SEL4 1\000"
.LASF1209:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF31:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF1254:
	.ascii	"seL4_True 1\000"
.LASF46:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF1159:
	.ascii	"__NEED_uint8_t \000"
.LASF1030:
	.ascii	"_SC_XOPEN_REALTIME_THREADS 131\000"
.LASF41:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF1175:
	.ascii	"__DEFINED_int64_t \000"
.LASF491:
	.ascii	"EWOULDBLOCK EAGAIN\000"
.LASF1284:
	.ascii	"seL4_MsgMaxExtraCaps (BIT(seL4_MsgExtraCapBits)-1)\000"
.LASF183:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF640:
	.ascii	"POSIX_FADV_WILLNEED 3\000"
.LASF793:
	.ascii	"__DEFINED_ssize_t \000"
.LASF663:
	.ascii	"S_IRWXO 0007\000"
.LASF300:
	.ascii	"__USA_FBIT__ 16\000"
.LASF729:
	.ascii	"_POSIX_CHILD_MAX 25\000"
.LASF158:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF858:
	.ascii	"_POSIX_SHELL 1\000"
.LASF140:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF1353:
	.ascii	"clk_id\000"
.LASF951:
	.ascii	"_SC_PII 53\000"
.LASF1080:
	.ascii	"_SC_TRACE 181\000"
.LASF708:
	.ascii	"DELAYTIMER_MAX 0x7fffffff\000"
.LASF174:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF1162:
	.ascii	"__NEED_uint64_t \000"
.LASF90:
	.ascii	"__INT32_MAX__ 0x7fffffff\000"
.LASF717:
	.ascii	"EXPR_NEST_MAX 32\000"
.LASF931:
	.ascii	"_SC_SEM_VALUE_MAX 33\000"
.LASF1169:
	.ascii	"__NEED_uint_fast32_t \000"
.LASF1216:
	.ascii	"WINT_MIN INT32_MIN\000"
.LASF340:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 4\000"
.LASF343:
	.ascii	"__arm__ 1\000"
.LASF1128:
	.ascii	"_CS_POSIX_V7_LP64_OFF64_CFLAGS 1140\000"
.LASF543:
	.ascii	"EPROTONOSUPPORT 93\000"
.LASF1012:
	.ascii	"_SC_SHRT_MAX 113\000"
.LASF964:
	.ascii	"_SC_PII_OSI_M 65\000"
.LASF880:
	.ascii	"_PC_PATH_MAX 4\000"
.LASF606:
	.ascii	"O_LARGEFILE 0400000\000"
.LASF169:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF727:
	.ascii	"_POSIX_AIO_MAX 1\000"
.LASF392:
	.ascii	"CONFIG_KERNEL_CFLAGS \"\"\000"
.LASF705:
	.ascii	"PTHREAD_DESTRUCTOR_ITERATIONS 4\000"
.LASF649:
	.ascii	"S_ISUID 04000\000"
.LASF26:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF1319:
	.ascii	"NS_IN_MS 1000000llu\000"
.LASF604:
	.ascii	"O_ASYNC 020000\000"
.LASF1147:
	.ascii	"CLOCKS_PER_SEC 1000000UL\000"
.LASF611:
	.ascii	"F_SETFD 2\000"
.LASF1019:
	.ascii	"_SC_NL_LANGMAX 120\000"
.LASF297:
	.ascii	"__TA_IBIT__ 64\000"
.LASF683:
	.ascii	"LLONG_MIN (-LLONG_MAX-1)\000"
.LASF587:
	.ascii	"__NEED_pid_t \000"
.LASF1148:
	.ascii	"CLOCK_REALTIME 0\000"
.LASF1084:
	.ascii	"_SC_IPV6 235\000"
.LASF539:
	.ascii	"EDESTADDRREQ 89\000"
.LASF924:
	.ascii	"_SC_MQ_OPEN_MAX 27\000"
.LASF382:
	.ascii	"CONFIG_IRQ_REPORTING 1\000"
.LASF335:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF1352:
	.ascii	"sys_clock_gettime\000"
.LASF959:
	.ascii	"_SC_IOV_MAX 60\000"
.LASF1063:
	.ascii	"_SC_TIMEOUTS 164\000"
.LASF448:
	.ascii	"assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __F"
	.ascii	"ILE__, __LINE__, __func__)))\000"
.LASF350:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF75:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF696:
	.ascii	"SYMLOOP_MAX 40\000"
.LASF977:
	.ascii	"_SC_THREAD_ATTR_STACKSIZE 78\000"
.LASF751:
	.ascii	"_POSIX_SS_REPL_MAX 4\000"
.LASF609:
	.ascii	"F_DUPFD 0\000"
.LASF206:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF336:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF1324:
	.ascii	"PS_IN_S 1000000000000llu\000"
.LASF1176:
	.ascii	"__DEFINED_uint8_t \000"
.LASF97:
	.ascii	"__INT8_C(c) c\000"
.LASF211:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF843:
	.ascii	"_XOPEN_ENH_I18N 1\000"
.LASF895:
	.ascii	"_PC_SYMLINK_MAX 19\000"
.LASF1078:
	.ascii	"_SC_V6_LPBIG_OFFBIG 179\000"
.LASF143:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF1283:
	.ascii	"BIT(n) (1ul<<(n))\000"
.LASF1305:
	.ascii	"MAX_IO_BUF 0x1000\000"
.LASF1053:
	.ascii	"_SC_SPIN_LOCKS 154\000"
.LASF901:
	.ascii	"_SC_OPEN_MAX 4\000"
.LASF44:
	.ascii	"__INT32_TYPE__ int\000"
.LASF1182:
	.ascii	"__DEFINED_int_fast32_t \000"
.LASF1320:
	.ascii	"NS_IN_S 1000000000llu\000"
.LASF831:
	.ascii	"__DEFINED_uid_t \000"
.LASF916:
	.ascii	"_SC_MEMORY_PROTECTION 19\000"
.LASF863:
	.ascii	"_POSIX_TIMERS _POSIX_VERSION\000"
.LASF484:
	.ascii	"ERANGE 34\000"
.LASF466:
	.ascii	"EBUSY 16\000"
.LASF1222:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF754:
	.ascii	"_POSIX_THREAD_DESTRUCTOR_ITERATIONS 4\000"
.LASF673:
	.ascii	"SCHAR_MAX 127\000"
.LASF1141:
	.ascii	"__NEED_timer_t \000"
.LASF803:
	.ascii	"L_tmpnam 20\000"
.LASF1328:
	.ascii	"FS_IN_MS 1000000000000llu\000"
.LASF1197:
	.ascii	"UINT8_MAX (0xff)\000"
.LASF1341:
	.ascii	"timespec\000"
.LASF436:
	.ascii	"CONFIG_USER_OPTIMISATION_O2 1\000"
.LASF166:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF631:
	.ascii	"FD_CLOEXEC 1\000"
.LASF874:
	.ascii	"_POSIX_V6_ILP32_OFFBIG 1\000"
.LASF313:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF1275:
	.ascii	"seL4_Fail(s) __assert_fail(s, __FILE__, __LINE__, _"
	.ascii	"_func__)\000"
.LASF783:
	.ascii	"_STRING_H \000"
.LASF242:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF641:
	.ascii	"POSIX_FADV_DONTNEED 4\000"
.LASF760:
	.ascii	"_POSIX_TRACE_SYS_MAX 8\000"
.LASF1322:
	.ascii	"PS_IN_US 1000000llu\000"
.LASF385:
	.ascii	"CONFIG_ARM_CORTEX_A9 1\000"
.LASF110:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1065:
	.ascii	"_SC_USER_GROUPS 166\000"
.LASF201:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF567:
	.ascii	"ESTALE 116\000"
.LASF431:
	.ascii	"CONFIG_LIB_ETHDRIVER_RX_DESC_COUNT 32\000"
.LASF829:
	.ascii	"__NEED_intptr_t \000"
.LASF27:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF1214:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF528:
	.ascii	"EREMCHG 78\000"
.LASF176:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF1330:
	.ascii	"long long unsigned int\000"
.LASF130:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF1009:
	.ascii	"_SC_SSIZE_MAX 110\000"
.LASF256:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF273:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF72:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF1231:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF34:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF346:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF1303:
	.ascii	"TIMER_IPC_EP_CAP (0x2)\000"
.LASF639:
	.ascii	"POSIX_FADV_SEQUENTIAL 2\000"
.LASF1011:
	.ascii	"_SC_SCHAR_MIN 112\000"
.LASF581:
	.ascii	"EOWNERDEAD 130\000"
.LASF276:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF283:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF1157:
	.ascii	"__NEED_int32_t \000"
.LASF1281:
	.ascii	"__ERRORS_H \000"
.LASF1164:
	.ascii	"__NEED_int_fast16_t \000"
.LASF59:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF232:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF218:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF616:
	.ascii	"F_SETSIG 10\000"
.LASF55:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF961:
	.ascii	"_SC_PII_INTERNET_DGRAM 62\000"
.LASF744:
	.ascii	"_POSIX_RE_DUP_MAX 255\000"
.LASF439:
	.ascii	"CONFIG_ROOT_CNODE_SIZE_BITS 12\000"
.LASF39:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF1161:
	.ascii	"__NEED_uint32_t \000"
.LASF402:
	.ascii	"CONFIG_OPTIMISATION_O3 1\000"
.LASF1221:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF852:
	.ascii	"_POSIX_MEMORY_PROTECTION _POSIX_VERSION\000"
.LASF1022:
	.ascii	"_SC_NL_SETMAX 123\000"
.LASF410:
	.ascii	"CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS 800\000"
.LASF905:
	.ascii	"_SC_SAVED_IDS 8\000"
.LASF288:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF1094:
	.ascii	"_SC_TRACE_USER_EVENT_MAX 245\000"
.LASF1242:
	.ascii	"INT32_C(c) c\000"
.LASF1139:
	.ascii	"__NEED_struct_timespec \000"
.LASF995:
	.ascii	"_SC_2_C_VERSION 96\000"
.LASF1315:
	.ascii	"MS_IN_S 1000llu\000"
.LASF16:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF113:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF735:
	.ascii	"_POSIX_MAX_CANON 255\000"
.LASF1062:
	.ascii	"_SC_SYSTEM_DATABASE_R 163\000"
.LASF817:
	.ascii	"WSTOPSIG(s) WEXITSTATUS(s)\000"
.LASF730:
	.ascii	"_POSIX_CLOCKRES_MIN 20000000\000"
.LASF782:
	.ascii	"va_copy(d,s) __builtin_va_copy(d,s)\000"
.LASF896:
	.ascii	"_PC_2_SYMLINKS 20\000"
.LASF1185:
	.ascii	"__DEFINED_uint_fast16_t \000"
.LASF915:
	.ascii	"_SC_MEMLOCK_RANGE 18\000"
.LASF638:
	.ascii	"POSIX_FADV_RANDOM 1\000"
.LASF258:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF1057:
	.ascii	"_SC_SIGNALS 158\000"
.LASF1217:
	.ascii	"WINT_MAX INT32_MAX\000"
.LASF217:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF1073:
	.ascii	"_SC_STREAMS 174\000"
.LASF1082:
	.ascii	"_SC_TRACE_INHERIT 183\000"
.LASF277:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF435:
	.ascii	"CONFIG_SOS_NFS_DIR \"\"\000"
.LASF443:
	.ascii	"CONFIG_TIME_SLICE 5\000"
.LASF841:
	.ascii	"_XOPEN_VERSION 700\000"
.LASF971:
	.ascii	"_SC_TTY_NAME_MAX 72\000"
.LASF912:
	.ascii	"_SC_FSYNC 15\000"
.LASF1188:
	.ascii	"__DEFINED_uintptr_t \000"
.LASF453:
	.ascii	"ESRCH 3\000"
.LASF1106:
	.ascii	"_CS_POSIX_V6_ILP32_OFF32_LIBS 1118\000"
.LASF1344:
	.ascii	"clockid_t\000"
.LASF1170:
	.ascii	"__NEED_uint_fast64_t \000"
.LASF642:
	.ascii	"POSIX_FADV_NOREUSE 5\000"
.LASF991:
	.ascii	"_SC_XOPEN_CRYPT 92\000"
.LASF674:
	.ascii	"UCHAR_MAX 255\000"
.LASF1091:
	.ascii	"_SC_TRACE_EVENT_NAME_MAX 242\000"
.LASF680:
	.ascii	"UINT_MAX 0xffffffffU\000"
.LASF823:
	.ascii	"_UNISTD_H \000"
.LASF1071:
	.ascii	"_SC_2_PBS_TRACK 172\000"
.LASF1138:
	.ascii	"__NEED_clock_t \000"
.LASF970:
	.ascii	"_SC_LOGIN_NAME_MAX 71\000"
.LASF455:
	.ascii	"EIO 5\000"
.LASF889:
	.ascii	"_PC_FILESIZEBITS 13\000"
.LASF697:
	.ascii	"WORD_BIT 32\000"
.LASF289:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF446:
	.ascii	"CONFIG_BUILDSYS_USE_CCACHE 1\000"
.LASF292:
	.ascii	"__SA_FBIT__ 15\000"
.LASF602:
	.ascii	"O_NOFOLLOW 0100000\000"
.LASF621:
	.ascii	"F_SETOWN_EX 15\000"
.LASF1088:
	.ascii	"_SC_V7_LP64_OFF64 239\000"
.LASF1151:
	.ascii	"CLOCK_THREAD_CPUTIME_ID 3\000"
.LASF1026:
	.ascii	"_SC_XBS5_LP64_OFF64 127\000"
.LASF520:
	.ascii	"ECOMM 70\000"
.LASF746:
	.ascii	"_POSIX_SEM_NSEMS_MAX 256\000"
.LASF1288:
	.ascii	"seL4_BadgeBits 28\000"
.LASF1206:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF502:
	.ascii	"EBADE 52\000"
.LASF369:
	.ascii	"__ELF__ 1\000"
.LASF1083:
	.ascii	"_SC_TRACE_LOG 184\000"
.LASF960:
	.ascii	"_SC_PII_INTERNET_STREAM 61\000"
.LASF331:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF550:
	.ascii	"EADDRNOTAVAIL 99\000"
.LASF808:
	.ascii	"_STDLIB_H \000"
.LASF846:
	.ascii	"_POSIX_CHOWN_RESTRICTED 1\000"
.LASF271:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF798:
	.ascii	"_IONBF 2\000"
.LASF1215:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF807:
	.ascii	"L_ctermid 20\000"
.LASF371:
	.ascii	"HAVE_AUTOCONF 1\000"
.LASF1035:
	.ascii	"_SC_C_LANG_SUPPORT_R 136\000"
.LASF1166:
	.ascii	"__NEED_int_fast64_t \000"
.LASF260:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF52:
	.ascii	"__INT_LEAST32_TYPE__ int\000"
.LASF1302:
	.ascii	"SOS_IPC_EP_CAP (0x1)\000"
.LASF132:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF791:
	.ascii	"__NEED_FILE \000"
.LASF285:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 4\000"
.LASF1267:
	.ascii	"seL4_PageTableBits 10\000"
.LASF998:
	.ascii	"_SC_XOPEN_XPG3 99\000"
.LASF633:
	.ascii	"AT_SYMLINK_NOFOLLOW 0x100\000"
.LASF1195:
	.ascii	"INT32_MAX (0x7fffffff)\000"
.LASF168:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF1173:
	.ascii	"__DEFINED_int16_t \000"
.LASF452:
	.ascii	"ENOENT 2\000"
.LASF853:
	.ascii	"_POSIX_NO_TRUNC 1\000"
.LASF1097:
	.ascii	"_SC_THREAD_ROBUST_PRIO_PROTECT 248\000"
.LASF914:
	.ascii	"_SC_MEMLOCK 17\000"
.LASF628:
	.ascii	"F_RDLCK 0\000"
.LASF1241:
	.ascii	"INT16_C(c) c\000"
.LASF1000:
	.ascii	"_SC_CHAR_BIT 101\000"
.LASF489:
	.ascii	"ENOTEMPTY 39\000"
.LASF239:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF154:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF922:
	.ascii	"_SC_AIO_PRIO_DELTA_MAX 25\000"
.LASF636:
	.ascii	"AT_EACCESS 0x200\000"
.LASF544:
	.ascii	"ESOCKTNOSUPPORT 94\000"
.LASF457:
	.ascii	"E2BIG 7\000"
.LASF676:
	.ascii	"SHRT_MAX 0x7fff\000"
.LASF185:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF1059:
	.ascii	"_SC_SPORADIC_SERVER 160\000"
.LASF965:
	.ascii	"_SC_T_IOV_MAX 66\000"
.LASF551:
	.ascii	"ENETDOWN 100\000"
.LASF546:
	.ascii	"ENOTSUP EOPNOTSUPP\000"
.LASF1010:
	.ascii	"_SC_SCHAR_MAX 111\000"
.LASF786:
	.ascii	"__NEED_size_t \000"
.LASF233:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF66:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF892:
	.ascii	"_PC_REC_MIN_XFER_SIZE 16\000"
.LASF67:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF590:
	.ascii	"__DEFINED_off_t \000"
.LASF237:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF306:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF189:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF142:
	.ascii	"__DBL_DIG__ 15\000"
.LASF219:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF600:
	.ascii	"O_RSYNC 04010000\000"
.LASF1249:
	.ascii	"UINTMAX_C(c) c ## ULL\000"
.LASF450:
	.ascii	"_ERRNO_H \000"
.LASF24:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF875:
	.ascii	"_POSIX_V7_ILP32_OFFBIG 1\000"
.LASF514:
	.ascii	"ENONET 64\000"
.LASF186:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF103:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF1307:
	.ascii	"FM_EXEC 1\000"
.LASF1313:
	.ascii	"SEC_IN_MINUTE 60llu\000"
.LASF1046:
	.ascii	"_SC_FILE_LOCKING 147\000"
.LASF856:
	.ascii	"_POSIX_REGEXP 1\000"
.LASF163:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF1092:
	.ascii	"_SC_TRACE_NAME_MAX 243\000"
.LASF1314:
	.ascii	"NS_IN_MINUTE (SEC_IN_MINUTE*NS_IN_S)\000"
.LASF241:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF62:
	.ascii	"__UINT_FAST8_TYPE__ unsigned char\000"
.LASF825:
	.ascii	"STDOUT_FILENO 1\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF537:
	.ascii	"EUSERS 87\000"
.LASF1223:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF777:
	.ascii	"__NEED_va_list \000"
.LASF890:
	.ascii	"_PC_REC_INCR_XFER_SIZE 14\000"
.LASF1333:
	.ascii	"short int\000"
.LASF781:
	.ascii	"va_arg(v,l) __builtin_va_arg(v,l)\000"
.LASF107:
	.ascii	"__UINT16_C(c) c\000"
.LASF1039:
	.ascii	"_SC_DEVICE_IO 140\000"
.LASF1349:
	.ascii	"uint64_t\000"
.LASF303:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF422:
	.ascii	"CONFIG_PLAT_IMX6 1\000"
.LASF930:
	.ascii	"_SC_SEM_NSEMS_MAX 32\000"
.LASF1237:
	.ascii	"SIG_ATOMIC_MIN INT32_MIN\000"
.LASF1240:
	.ascii	"INT8_C(c) c\000"
.LASF495:
	.ascii	"EL2NSYNC 45\000"
.LASF619:
	.ascii	"F_SETLK 13\000"
.LASF503:
	.ascii	"EBADR 53\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF153:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF966:
	.ascii	"_SC_THREADS 67\000"
.LASF86:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF981:
	.ascii	"_SC_THREAD_PROCESS_SHARED 82\000"
.LASF473:
	.ascii	"ENFILE 23\000"
.LASF1032:
	.ascii	"_SC_BARRIERS 133\000"
.LASF625:
	.ascii	"O_WRONLY 01\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 0\000"
.LASF454:
	.ascii	"EINTR 4\000"
.LASF1033:
	.ascii	"_SC_BASE 134\000"
.LASF741:
	.ascii	"_POSIX_OPEN_MAX 20\000"
.LASF504:
	.ascii	"EXFULL 54\000"
.LASF907:
	.ascii	"_SC_PRIORITY_SCHEDULING 10\000"
.LASF21:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF533:
	.ascii	"ELIBEXEC 83\000"
.LASF179:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF517:
	.ascii	"ENOLINK 67\000"
.LASF536:
	.ascii	"ESTRPIPE 86\000"
.LASF147:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF773:
	.ascii	"_XOPEN_IOV_MAX 16\000"
.LASF333:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF542:
	.ascii	"ENOPROTOOPT 92\000"
.LASF1143:
	.ascii	"__DEFINED_struct_timespec \000"
.LASF770:
	.ascii	"_POSIX2_EXPR_NEST_MAX 32\000"
.LASF1086:
	.ascii	"_SC_V7_ILP32_OFF32 237\000"
.LASF815:
	.ascii	"WEXITSTATUS(s) (((s) & 0xff00) >> 8)\000"
.LASF873:
	.ascii	"_POSIX2_C_BIND _POSIX_VERSION\000"
.LASF89:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF351:
	.ascii	"__ARMEL__ 1\000"
.LASF456:
	.ascii	"ENXIO 6\000"
.LASF909:
	.ascii	"_SC_ASYNCHRONOUS_IO 12\000"
.LASF1023:
	.ascii	"_SC_NL_TEXTMAX 124\000"
.LASF1172:
	.ascii	"__DEFINED_int8_t \000"
.LASF339:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF855:
	.ascii	"_POSIX_REALTIME_SIGNALS _POSIX_VERSION\000"
.LASF785:
	.ascii	"NULL ((void*)0)\000"
.LASF1298:
	.ascii	"__LIBSEL4_SEL4_CLIENT_H \000"
.LASF745:
	.ascii	"_POSIX_RTSIG_MAX 8\000"
.LASF722:
	.ascii	"NL_MSGMAX 32767\000"
.LASF270:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF799:
	.ascii	"BUFSIZ 1024\000"
.LASF324:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF710:
	.ascii	"LOGIN_NAME_MAX 256\000"
.LASF615:
	.ascii	"F_GETOWN 9\000"
.LASF515:
	.ascii	"ENOPKG 65\000"
.LASF1005:
	.ascii	"_SC_LONG_BIT 106\000"
.LASF1312:
	.ascii	"_UTILS_TIME_H \000"
.LASF1252:
	.ascii	"__LIBSEL4_SIMPLE_TYPES_H \000"
.LASF305:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF668:
	.ascii	"LLONG_MAX 0x7fffffffffffffffLL\000"
.LASF703:
	.ascii	"PTHREAD_KEYS_MAX 1024\000"
.LASF229:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF1149:
	.ascii	"CLOCK_MONOTONIC 1\000"
.LASF1123:
	.ascii	"_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS 1135\000"
.LASF802:
	.ascii	"TMP_MAX 10000\000"
.LASF329:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF943:
	.ascii	"_SC_CHARCLASS_NAME_MAX 45\000"
.LASF513:
	.ascii	"ENOSR 63\000"
.LASF334:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF361:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF1069:
	.ascii	"_SC_2_PBS_LOCATE 170\000"
.LASF577:
	.ascii	"ENOKEY 126\000"
.LASF764:
	.ascii	"_POSIX2_BC_BASE_MAX 99\000"
.LASF780:
	.ascii	"va_end(v) __builtin_va_end(v)\000"
.LASF252:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF357:
	.ascii	"__ARM_EABI__ 1\000"
.LASF485:
	.ascii	"EDEADLK 35\000"
.LASF267:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF1269:
	.ascii	"seL4_Frame_Args 4\000"
.LASF1276:
	.ascii	"seL4_Assert(expr) do { if (!(expr)) { __assert_fail"
	.ascii	"(#expr, __FILE__, __LINE__, __FUNCTION__); } } whil"
	.ascii	"e(0)\000"
.LASF393:
	.ascii	"CONFIG_AEP_BINDING 1\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF623:
	.ascii	"O_ACCMODE 03\000"
.LASF942:
	.ascii	"_SC_RE_DUP_MAX 44\000"
.LASF1158:
	.ascii	"__NEED_int64_t \000"
.LASF1115:
	.ascii	"_CS_POSIX_V6_LP64_OFF64_LINTFLAGS 1127\000"
.LASF1058:
	.ascii	"_SC_SPAWN 159\000"
.LASF838:
	.ascii	"F_LOCK 1\000"
.LASF1290:
	.ascii	"__LIBSEL4_ARCH_CONSTANTS_H \000"
.LASF923:
	.ascii	"_SC_DELAYTIMER_MAX 26\000"
.LASF494:
	.ascii	"ECHRNG 44\000"
.LASF989:
	.ascii	"_SC_XOPEN_XCU_VERSION 90\000"
.LASF652:
	.ascii	"S_IRUSR 0400\000"
.LASF711:
	.ascii	"BC_BASE_MAX 99\000"
.LASF394:
	.ascii	"CONFIG_SOS_STARTUP_APP \"lping\"\000"
.LASF900:
	.ascii	"_SC_NGROUPS_MAX 3\000"
.LASF776:
	.ascii	"_STDARG_H \000"
.LASF1228:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF1096:
	.ascii	"_SC_THREAD_ROBUST_PRIO_INHERIT 247\000"
.LASF732:
	.ascii	"_POSIX_HOST_NAME_MAX 255\000"
.LASF750:
	.ascii	"_POSIX_STREAM_MAX 8\000"
.LASF752:
	.ascii	"_POSIX_SYMLINK_MAX 255\000"
.LASF227:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF842:
	.ascii	"_XOPEN_UNIX 1\000"
.LASF17:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF1051:
	.ascii	"_SC_NETWORKING 152\000"
.LASF221:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF877:
	.ascii	"_PC_MAX_CANON 1\000"
.LASF425:
	.ascii	"CONFIG_USER_EXTRA_CFLAGS \"-D_POSIX_SOURCE\"\000"
.LASF1213:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF1238:
	.ascii	"SIG_ATOMIC_MAX INT32_MAX\000"
.LASF474:
	.ascii	"EMFILE 24\000"
.LASF1154:
	.ascii	"_STDINT_H \000"
.LASF1233:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF234:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF464:
	.ascii	"EFAULT 14\000"
.LASF902:
	.ascii	"_SC_STREAM_MAX 5\000"
.LASF380:
	.ascii	"FASTPATH 1\000"
.LASF370:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF367:
	.ascii	"__unix__ 1\000"
.LASF374:
	.ascii	"ARMV7_A 1\000"
.LASF986:
	.ascii	"_SC_ATEXIT_MAX 87\000"
.LASF299:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF487:
	.ascii	"ENOLCK 37\000"
.LASF844:
	.ascii	"_POSIX_VERSION 200809L\000"
.LASF244:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF259:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF1178:
	.ascii	"__DEFINED_uint32_t \000"
.LASF156:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF608:
	.ascii	"O_NDELAY O_NONBLOCK\000"
.LASF149:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF983:
	.ascii	"_SC_NPROCESSORS_ONLN 84\000"
.LASF170:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF904:
	.ascii	"_SC_JOB_CONTROL 7\000"
.LASF426:
	.ascii	"CONFIG_LIB_MUSL_C_USE_PREBUILT 1\000"
.LASF79:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF588:
	.ascii	"__NEED_mode_t \000"
.LASF1098:
	.ascii	"_CS_PATH 0\000"
.LASF181:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF106:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF78:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF586:
	.ascii	"__NEED_off_t \000"
.LASF1194:
	.ascii	"INT16_MAX (0x7fff)\000"
.LASF451:
	.ascii	"EPERM 1\000"
.LASF269:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF1021:
	.ascii	"_SC_NL_NMAX 122\000"
.LASF368:
	.ascii	"unix 1\000"
.LASF148:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF954:
	.ascii	"_SC_PII_INTERNET 56\000"
.LASF1348:
	.ascii	"short unsigned int\000"
.LASF220:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF1244:
	.ascii	"UINT8_C(c) c\000"
.LASF659:
	.ascii	"S_IRWXG 0070\000"
.LASF1193:
	.ascii	"INT8_MAX (0x7f)\000"
.LASF589:
	.ascii	"__DEFINED_pid_t \000"
.LASF1187:
	.ascii	"__DEFINED_uint_fast64_t \000"
.LASF939:
	.ascii	"_SC_EQUIV_CLASS_MAX 41\000"
.LASF272:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF409:
	.ascii	"CONFIG_LIB_ELFLOADER 1\000"
.LASF834:
	.ascii	"R_OK 4\000"
.LASF1279:
	.ascii	"__LIBSEL4_SYSCALL_H \000"
.LASF407:
	.ascii	"CONFIG_SOS_NETMASK \"225.225.225.0\"\000"
.LASF1008:
	.ascii	"_SC_NZERO 109\000"
.LASF81:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF108:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffU\000"
.LASF610:
	.ascii	"F_GETFD 1\000"
.LASF384:
	.ascii	"CONFIG_APP_PROXY 1\000"
.LASF927:
	.ascii	"_SC_PAGE_SIZE 30\000"
.LASF74:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF568:
	.ascii	"EUCLEAN 117\000"
.LASF980:
	.ascii	"_SC_THREAD_PRIO_PROTECT 81\000"
.LASF1076:
	.ascii	"_SC_V6_ILP32_OFFBIG 177\000"
.LASF1142:
	.ascii	"__DEFINED_time_t \000"
.LASF1134:
	.ascii	"_CS_POSIX_V7_LPBIG_OFFBIG_LIBS 1146\000"
.LASF867:
	.ascii	"_POSIX_CLOCK_SELECTION _POSIX_VERSION\000"
.LASF1016:
	.ascii	"_SC_ULONG_MAX 117\000"
.LASF957:
	.ascii	"_SC_SELECT 59\000"
.LASF757:
	.ascii	"_POSIX_TIMER_MAX 32\000"
.LASF811:
	.ascii	"EXIT_FAILURE 1\000"
.LASF925:
	.ascii	"_SC_MQ_PRIO_MAX 28\000"
.LASF906:
	.ascii	"_SC_REALTIME_SIGNALS 9\000"
.LASF787:
	.ascii	"__NEED_locale_t \000"
.LASF740:
	.ascii	"_POSIX_NGROUPS_MAX 8\000"
.LASF1108:
	.ascii	"_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS 1120\000"
.LASF37:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF284:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF854:
	.ascii	"_POSIX_RAW_SOCKETS _POSIX_VERSION\000"
.LASF882:
	.ascii	"_PC_CHOWN_RESTRICTED 6\000"
.LASF193:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF1340:
	.ascii	"__va_list\000"
.LASF575:
	.ascii	"EMEDIUMTYPE 124\000"
.LASF360:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF483:
	.ascii	"EDOM 33\000"
.LASF496:
	.ascii	"EL3HLT 46\000"
.LASF1145:
	.ascii	"__DEFINED_clockid_t \000"
.LASF878:
	.ascii	"_PC_MAX_INPUT 2\000"
.LASF99:
	.ascii	"__INT16_C(c) c\000"
.LASF816:
	.ascii	"WTERMSIG(s) ((s) & 0x7f)\000"
.LASF573:
	.ascii	"EDQUOT 122\000"
.LASF295:
	.ascii	"__DA_IBIT__ 32\000"
.LASF1262:
	.ascii	"seL4_WordBits 32\000"
.LASF441:
	.ascii	"CONFIG_LIB_LWIP 1\000"
.LASF1248:
	.ascii	"INTMAX_C(c) c ## LL\000"
.LASF821:
	.ascii	"WIFSIGNALED(s) (((signed char) (((s) & 0x7f) + 1) >"
	.ascii	"> 1) > 0)\000"
.LASF1101:
	.ascii	"_CS_GNU_LIBPTHREAD_VERSION 3\000"
.LASF1130:
	.ascii	"_CS_POSIX_V7_LP64_OFF64_LIBS 1142\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF561:
	.ascii	"ETIMEDOUT 110\000"
.LASF501:
	.ascii	"EL2HLT 51\000"
.LASF415:
	.ascii	"CONFIG_ARCH_ARM_V7A 1\000"
.LASF363:
	.ascii	"__linux 1\000"
.LASF144:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF1266:
	.ascii	"seL4_EndpointBits 4\000"
.LASF689:
	.ascii	"NAME_MAX 255\000"
.LASF891:
	.ascii	"_PC_REC_MAX_XFER_SIZE 15\000"
.LASF987:
	.ascii	"_SC_PASS_MAX 88\000"
.LASF1074:
	.ascii	"_SC_2_PBS_CHECKPOINT 175\000"
.LASF1017:
	.ascii	"_SC_USHRT_MAX 118\000"
.LASF1230:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF190:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF1342:
	.ascii	"tv_sec\000"
.LASF1289:
	.ascii	"seL4_NilData seL4_CapData_Badge_new(0)\000"
.LASF1072:
	.ascii	"_SC_SYMLOOP_MAX 173\000"
.LASF1321:
	.ascii	"PS_IN_NS 1000llu\000"
.LASF627:
	.ascii	"F_DUPFD_CLOEXEC 1030\000"
.LASF84:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF141:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF216:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF847:
	.ascii	"_POSIX_IPV6 _POSIX_VERSION\000"
.LASF848:
	.ascii	"_POSIX_JOB_CONTROL 1\000"
.LASF1050:
	.ascii	"_SC_SINGLE_PROCESS 151\000"
.LASF1068:
	.ascii	"_SC_2_PBS_ACCOUNTING 169\000"
.LASF373:
	.ascii	"ARCH_ARM 1\000"
.LASF1203:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF73:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF53:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF1212:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF1234:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF230:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF8:
	.ascii	"__VERSION__ \"5.4.0 20160609\"\000"
.LASF526:
	.ascii	"ENOTUNIQ 76\000"
.LASF204:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
