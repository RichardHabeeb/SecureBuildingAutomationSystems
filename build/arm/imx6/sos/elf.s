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
	.file	"elf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	elf_load
	.syntax unified
	.arm
	.type	elf_load, %function
elf_load:
	.fnstart
.LFB138:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/elf.c"
	.loc 1 151 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.pad #76
	sub	sp, sp, #76
	.cfi_def_cfa_offset 112
	.loc 1 151 0
	str	r0, [sp, #32]
	.loc 1 158 0
	mov	r0, r1
.LVL1:
	.loc 1 151 0
	str	r1, [sp, #48]
	.loc 1 158 0
	bl	elf_checkFile
.LVL2:
	subs	r3, r0, #0
	str	r3, [sp, #56]
	.loc 1 159 0
	movne	r3, #1
	strne	r3, [sp, #56]
	.loc 1 158 0
	beq	.L25
.L2:
	.loc 1 186 0
	ldr	r0, [sp, #56]
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L25:
	.cfi_restore_state
	.loc 1 162 0
	ldr	r0, [sp, #48]
	bl	elf_getNumProgramHeaders
.LVL3:
	.loc 1 163 0
	subs	r3, r0, #0
	str	r3, [sp, #52]
	beq	.L2
	mov	r3, #61440
	movw	r10, #:lower16:cur_cspace
	movt	r3, 65535
.LBB47:
.LBB48:
.LBB49:
.LBB50:
	.loc 1 111 0
	movw	fp, #:lower16:.LANCHOR0
	str	r3, [sp, #36]
	movt	r10, #:upper16:cur_cspace
.LBE50:
.LBE49:
.LBE48:
.LBE47:
	.loc 1 163 0
	ldr	r3, [sp, #56]
.LBB77:
.LBB69:
.LBB65:
.LBB59:
	.loc 1 111 0
	movt	fp, #:upper16:.LANCHOR0
.LBE59:
.LBE65:
.LBE69:
.LBE77:
	.loc 1 163 0
	str	r10, [sp, #20]
	str	r3, [sp, #16]
	b	.L13
.LVL4:
.L4:
	.loc 1 163 0 is_stmt 0 discriminator 2
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #52]
	add	r3, r3, #1
	cmp	r2, r3
	str	r3, [sp, #16]
.LVL5:
	ble	.L2
.LVL6:
.L13:
.LBB78:
	.loc 1 168 0 is_stmt 1
	ldrh	r6, [sp, #16]
	ldr	r0, [sp, #48]
	mov	r1, r6
	bl	elf_getProgramHeaderType
.LVL7:
	cmp	r0, #1
	bne	.L4
	.loc 1 172 0
	ldr	r7, [sp, #48]
	mov	r1, r6
	mov	r0, r7
	bl	elf_getProgramHeaderOffset
.LVL8:
	.loc 1 173 0
	mov	r1, r6
	.loc 1 172 0
	add	r3, r7, r0
	.loc 1 173 0
	mov	r0, r7
	.loc 1 172 0
	str	r3, [sp, #12]
.LVL9:
	.loc 1 173 0
	bl	elf_getProgramHeaderFileSize
.LVL10:
	.loc 1 174 0
	mov	r1, r6
	.loc 1 173 0
	str	r0, [sp, #24]
.LVL11:
	.loc 1 174 0
	mov	r0, r7
.LVL12:
	bl	elf_getProgramHeaderMemorySize
.LVL13:
	.loc 1 175 0
	mov	r1, r6
	.loc 1 174 0
	str	r0, [sp, #28]
.LVL14:
	.loc 1 175 0
	mov	r0, r7
.LVL15:
	bl	elf_getProgramHeaderVaddr
.LVL16:
	.loc 1 176 0
	mov	r1, r6
	.loc 1 175 0
	mov	r10, r0
.LVL17:
	.loc 1 176 0
	mov	r0, r7
.LVL18:
	bl	elf_getProgramHeaderFlags
.LVL19:
.LBB70:
.LBB71:
	.loc 1 42 0
	tst	r0, #4
.LBE71:
.LBE70:
.LBB73:
.LBB66:
	.loc 1 88 0
	ldr	r2, [sp, #28]
.LBE66:
.LBE73:
.LBB74:
.LBB72:
	.loc 1 42 0
	movne	r3, #2
	moveq	r3, #0
.LVL20:
	.loc 1 47 0
	tst	r0, #1
	movne	r3, #2
.LVL21:
	.loc 1 48 0
	tst	r0, #2
	.loc 1 47 0
	str	r3, [sp, #40]
.LVL22:
	.loc 1 49 0
	orrne	r3, r3, #1
.LVL23:
	strne	r3, [sp, #40]
.LVL24:
.LBE72:
.LBE74:
.LBB75:
.LBB67:
	.loc 1 88 0
	ldr	r3, [sp, #24]
	cmp	r3, r2
	bhi	.L26
.LVL25:
.L8:
	.loc 1 97 0
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L12
	ldr	r2, [sp, #36]
	add	r3, r10, #-805306368
	str	r3, [sp, #60]
.LBB60:
	.loc 1 111 0
	movw	r8, #:lower16:.LC0
	movt	r8, #:upper16:.LC0
.LBE60:
	.loc 1 97 0
	mov	r9, #0
	and	r3, r3, r2
	str	r3, [sp, #44]
	b	.L11
.LVL26:
.L10:
.LBB61:
.LBB51:
.LBB52:
.LBB53:
.LBB54:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h"
	.loc 2 359 0
	ldr	ip, [sp, #8]
	.loc 2 383 0
	movw	r1, #36866
.LVL27:
	movt	r1, 2
.LVL28:
	.loc 2 370 0
	mov	r2, #0
	.loc 2 373 0
	mov	r3, #4096
	.loc 2 359 0
	mov	r0, ip
.LVL29:
	.loc 2 383 0
	.syntax divided
@ 383 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/syscalls.h" 1
	swi #16777215
@ 0 "" 2
.LVL30:
	.arm
	.syntax unified
.LBE54:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 142 0
	mov	r0, ip
	.loc 1 144 0
	add	r9, r9, r6
.LVL31:
	.loc 1 142 0
	bl	unmap_page
.LVL32:
.LBE61:
	.loc 1 97 0
	ldr	r3, [sp, #28]
.LBB62:
	.loc 1 145 0
	add	r10, r10, r6
.LVL33:
.LBE62:
	.loc 1 97 0
	cmp	r3, r9
.LBB63:
	.loc 1 146 0
	ldr	r3, [sp, #12]
	add	r3, r3, r6
	str	r3, [sp, #12]
.LVL34:
.LBE63:
	.loc 1 97 0
	bls	.L12
.LVL35:
.L11:
.LBB64:
	.loc 1 110 0
	mov	r0, #12
	.loc 1 124 0
	mov	r6, #3
	.loc 1 110 0
	bl	ut_alloc
.LVL36:
	.loc 1 111 0
	mov	r3, #111
	mov	r7, r0
	movw	r1, #:lower16:.LC3
	clz	r0, r0
.LVL37:
	lsr	r0, r0, #5
	str	r3, [sp]
	movt	r1, #:upper16:.LC3
	mov	r3, fp
	mov	r2, r8
	bl	__conditional_panic
.LVL38:
	.loc 1 112 0
	ldr	r3, [sp, #20]
	add	r2, sp, #68
	mov	r0, r7
	mov	r1, #5
.LBB58:
.LBB57:
.LBB56:
.LBB55:
	.loc 2 366 0
	mvn	r7, #0
.LVL39:
.LBE55:
.LBE56:
.LBE57:
.LBE58:
	.loc 1 112 0
	ldr	r3, [r3]
	str	r2, [sp]
	mov	r2, #12
	bl	cspace_ut_retype_addr
.LVL40:
	.loc 1 117 0
	mov	r3, #117
	movw	r1, #:lower16:.LC4
	str	r3, [sp]
	movt	r1, #:upper16:.LC4
	mov	r3, fp
	mov	r2, r8
	bl	__conditional_panic
.LVL41:
	.loc 1 120 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #68]
	ldr	r1, [r3]
	mov	r3, #7
	mov	r0, r1
	bl	cspace_copy_cap
.LVL42:
	.loc 1 121 0
	mov	r3, #121
	str	r0, [sp, #8]
	movw	r1, #:lower16:.LC5
	clz	r0, r0
.LVL43:
	lsr	r0, r0, #5
	str	r3, [sp]
	movt	r1, #:upper16:.LC5
	mov	r3, fp
	mov	r2, r8
	bl	__conditional_panic
.LVL44:
	.loc 1 124 0
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #40]
	str	r6, [sp]
	and	r2, r10, r2
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #68]
	bl	map_page
.LVL45:
	.loc 1 126 0
	mov	r3, #126
	movw	r1, #:lower16:.LC6
	str	r3, [sp]
	movt	r1, #:upper16:.LC6
	mov	r3, fp
	mov	r2, r8
	bl	__conditional_panic
.LVL46:
	.loc 1 128 0
	mov	r1, r6
	str	r6, [sp]
	mov	r3, #7
	ldr	r2, [sp, #44]
	ldr	r0, [sp, #8]
	.loc 1 134 0
	ubfx	r6, r10, #0, #12
	.loc 1 128 0
	bl	map_page
.LVL47:
	.loc 1 131 0
	mov	r3, #131
	movw	r1, #:lower16:.LC7
	str	r3, [sp]
	movt	r1, #:upper16:.LC7
	mov	r3, fp
	mov	r2, r8
	bl	__conditional_panic
.LVL48:
	.loc 1 135 0
	ldr	r3, [sp, #24]
	.loc 1 134 0
	rsb	r6, r6, #4096
.LVL49:
	.loc 1 135 0
	cmp	r3, r9
	bls	.L10
	.loc 1 136 0
	sub	r2, r3, r9
	ldr	r1, [sp, #12]
	cmp	r2, r6
	ldr	r0, [sp, #60]
	movcs	r2, r6
	bl	memcpy
.LVL50:
	b	.L10
.LVL51:
.L12:
.LBE64:
.LBE67:
.LBE75:
	.loc 1 182 0
	mov	r3, #182
	movw	r2, #:lower16:.LC0
	movw	r1, #:lower16:.LC2
	str	r3, [sp]
	movt	r2, #:upper16:.LC0
	movt	r1, #:upper16:.LC2
	ldr	r3, .L27
	mov	r0, #0
	bl	__conditional_panic
.LVL52:
	b	.L4
.LVL53:
.L26:
.LBB76:
.LBB68:
	.loc 1 88 0
	movw	r1, #:lower16:.LC0
	movw	r0, #:lower16:.LC1
.LVL54:
	movt	r1, #:upper16:.LC0
	movt	r0, #:upper16:.LC1
	mov	r3, fp
.LVL55:
	mov	r2, #88
.LVL56:
	bl	__assert_fail
.LVL57:
	b	.L8
.L28:
	.align	2
.L27:
	.word	.LANCHOR0+28
.LBE68:
.LBE76:
.LBE78:
	.cfi_endproc
.LFE138:
	.fnend
	.size	elf_load, .-elf_load
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__func__.6310, %object
	.size	__func__.6310, 25
__func__.6310:
	.ascii	"load_segment_into_vspace\000"
	.space	3
	.type	__func__.6337, %object
	.size	__func__.6337, 9
__func__.6337:
	.ascii	"elf_load\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/elf."
	.ascii	"c\000"
	.space	3
.LC1:
	.ascii	"file_size <= segment_size\000"
	.space	2
.LC2:
	.ascii	"Elf loading failed!\012\000"
	.space	3
.LC3:
	.ascii	"Out of memory - could not allocate frame\000"
	.space	3
.LC4:
	.ascii	"Failed to retype to a frame object\000"
	.space	1
.LC5:
	.ascii	"Failed to copy frame cap\000"
	.space	3
.LC6:
	.ascii	"Failed to map to tty address space\000"
	.space	1
.LC7:
	.ascii	"Failed to map sos address space\000"
	.text
.Letext0:
	.file 3 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/simple_types.h"
	.file 4 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/types.h"
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types_gen.h"
	.file 6 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/syscall.h"
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/errors.h"
	.file 8 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/types.h"
	.file 9 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/objecttype.h"
	.file 10 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/invocation.h"
	.file 11 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/bootinfo.h"
	.file 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/alltypes.h"
	.file 13 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/cspace/cspace.h"
	.file 14 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/interfaces/sel4_client.h"
	.file 15 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/mapping.h"
	.file 16 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/ut_manager/ut.h"
	.file 17 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/sys/panic.h"
	.file 18 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/assert.h"
	.file 19 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/elf/elf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd17
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF905
	.byte	0xc
	.4byte	.LASF906
	.4byte	.LASF907
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF739
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF740
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF741
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF742
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF743
	.uleb128 0x4
	.4byte	.LASF746
	.byte	0x3
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF744
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF745
	.uleb128 0x4
	.4byte	.LASF747
	.byte	0x4
	.byte	0x1d
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF748
	.byte	0x4
	.byte	0x1e
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF749
	.byte	0x4
	.byte	0x20
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF750
	.byte	0x4
	.byte	0x22
	.4byte	0x77
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x4
	.byte	0x2b
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF751
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF752
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF753
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF754
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF755
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x8
	.4byte	.LASF758
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.4byte	0xdf
	.uleb128 0x9
	.4byte	.LASF760
	.byte	0x5
	.byte	0x8
	.4byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0xef
	.uleb128 0xb
	.4byte	0xef
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF756
	.uleb128 0x4
	.4byte	.LASF757
	.byte	0x5
	.byte	0xa
	.4byte	0xc6
	.uleb128 0x8
	.4byte	.LASF759
	.byte	0x4
	.byte	0x5
	.byte	0xd0
	.4byte	0x11a
	.uleb128 0x9
	.4byte	.LASF760
	.byte	0x5
	.byte	0xd1
	.4byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF761
	.byte	0x5
	.byte	0xd3
	.4byte	0x101
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0xd
	.4byte	0x19b
	.uleb128 0xc
	.4byte	.LASF762
	.sleb128 -1
	.uleb128 0xc
	.4byte	.LASF763
	.sleb128 -2
	.uleb128 0xc
	.4byte	.LASF764
	.sleb128 -3
	.uleb128 0xc
	.4byte	.LASF765
	.sleb128 -4
	.uleb128 0xc
	.4byte	.LASF766
	.sleb128 -5
	.uleb128 0xc
	.4byte	.LASF767
	.sleb128 -6
	.uleb128 0xc
	.4byte	.LASF768
	.sleb128 -7
	.uleb128 0xc
	.4byte	.LASF769
	.sleb128 -8
	.uleb128 0xc
	.4byte	.LASF770
	.sleb128 -10
	.uleb128 0xc
	.4byte	.LASF771
	.sleb128 -11
	.uleb128 0xc
	.4byte	.LASF772
	.sleb128 -12
	.uleb128 0xc
	.4byte	.LASF773
	.sleb128 -13
	.uleb128 0xc
	.4byte	.LASF774
	.sleb128 -14
	.uleb128 0xc
	.4byte	.LASF775
	.sleb128 -16
	.uleb128 0xc
	.4byte	.LASF776
	.sleb128 -17
	.uleb128 0xc
	.4byte	.LASF777
	.sleb128 -18
	.uleb128 0x7
	.4byte	.LASF778
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0xe
	.4byte	0x1ea
	.uleb128 0x6
	.4byte	.LASF779
	.byte	0
	.uleb128 0x6
	.4byte	.LASF780
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF781
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF782
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF783
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF785
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF786
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF787
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF788
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF789
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x29
	.4byte	0x218
	.uleb128 0x6
	.4byte	.LASF790
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF791
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF792
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF793
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF794
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0xd
	.4byte	.LASF802
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0xe
	.4byte	0x253
	.uleb128 0x6
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF796
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF797
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF798
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF799
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF800
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF801
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	.LASF803
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0xb
	.4byte	0x2b8
	.uleb128 0x6
	.4byte	.LASF804
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF805
	.byte	0x1f
	.uleb128 0x6
	.4byte	.LASF806
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF807
	.byte	0x21
	.uleb128 0x6
	.4byte	.LASF808
	.byte	0x22
	.uleb128 0x6
	.4byte	.LASF809
	.byte	0x23
	.uleb128 0x6
	.4byte	.LASF810
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF811
	.byte	0x25
	.uleb128 0x6
	.4byte	.LASF812
	.byte	0x26
	.uleb128 0x6
	.4byte	.LASF813
	.byte	0x27
	.uleb128 0x6
	.4byte	.LASF814
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF815
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF816
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF817
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF818
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0xb
	.byte	0x12
	.4byte	0x314
	.uleb128 0x6
	.4byte	.LASF819
	.byte	0
	.uleb128 0x6
	.4byte	.LASF820
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF821
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF822
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF823
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF825
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF826
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF827
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF828
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF829
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF830
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF831
	.byte	0xc
	.byte	0x3b
	.4byte	0x37
	.uleb128 0x4
	.4byte	.LASF832
	.byte	0xc
	.byte	0x50
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF833
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF834
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF835
	.uleb128 0xe
	.2byte	0x201c
	.byte	0xd
	.byte	0x43
	.4byte	0x3b6
	.uleb128 0x9
	.4byte	.LASF836
	.byte	0xd
	.byte	0x44
	.4byte	0x31f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF837
	.byte	0xd
	.byte	0x45
	.4byte	0x77
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF838
	.byte	0xd
	.byte	0x46
	.4byte	0x11a
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF839
	.byte	0xd
	.byte	0x47
	.4byte	0x6c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF840
	.byte	0xd
	.byte	0x48
	.4byte	0x314
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF841
	.byte	0xd
	.byte	0x49
	.4byte	0x314
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF842
	.byte	0xd
	.byte	0x4a
	.4byte	0x31f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF843
	.byte	0xd
	.byte	0x4b
	.4byte	0x3b6
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF844
	.byte	0xd
	.byte	0x51
	.4byte	0x3c7
	.2byte	0x101c
	.byte	0
	.uleb128 0xa
	.4byte	0x31f
	.4byte	0x3c7
	.uleb128 0x10
	.4byte	0xef
	.2byte	0x3ff
	.byte	0
	.uleb128 0xa
	.4byte	0x3d8
	.4byte	0x3d8
	.uleb128 0x10
	.4byte	0xef
	.2byte	0x3ff
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x31f
	.uleb128 0x4
	.4byte	.LASF845
	.byte	0xd
	.byte	0x55
	.4byte	0x33f
	.uleb128 0x11
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x12
	.4byte	.LASF846
	.byte	0x5
	.byte	0xaa
	.4byte	0x53
	.byte	0x3
	.4byte	0x416
	.uleb128 0x13
	.4byte	.LASF758
	.byte	0x5
	.byte	0xaa
	.4byte	0xf6
	.uleb128 0x14
	.ascii	"ret\000"
	.byte	0x5
	.byte	0xab
	.4byte	0x53
	.byte	0
	.uleb128 0x12
	.4byte	.LASF847
	.byte	0x5
	.byte	0x35
	.4byte	0x53
	.byte	0x3
	.4byte	0x43d
	.uleb128 0x13
	.4byte	.LASF758
	.byte	0x5
	.byte	0x35
	.4byte	0xf6
	.uleb128 0x14
	.ascii	"ret\000"
	.byte	0x5
	.byte	0x36
	.4byte	0x53
	.byte	0
	.uleb128 0x15
	.4byte	.LASF848
	.byte	0x2
	.2byte	0x164
	.4byte	0xf6
	.byte	0x3
	.4byte	0x4eb
	.uleb128 0x16
	.4byte	.LASF849
	.byte	0x2
	.2byte	0x164
	.4byte	0x77
	.uleb128 0x16
	.4byte	.LASF850
	.byte	0x2
	.2byte	0x164
	.4byte	0xf6
	.uleb128 0x17
	.ascii	"mr0\000"
	.byte	0x2
	.2byte	0x165
	.4byte	0x3e9
	.uleb128 0x17
	.ascii	"mr1\000"
	.byte	0x2
	.2byte	0x165
	.4byte	0x3e9
	.uleb128 0x17
	.ascii	"mr2\000"
	.byte	0x2
	.2byte	0x165
	.4byte	0x3e9
	.uleb128 0x17
	.ascii	"mr3\000"
	.byte	0x2
	.2byte	0x165
	.4byte	0x3e9
	.uleb128 0x18
	.4byte	.LASF851
	.byte	0x2
	.2byte	0x167
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF852
	.byte	0x2
	.2byte	0x168
	.4byte	0xf6
	.uleb128 0x18
	.4byte	.LASF853
	.byte	0x2
	.2byte	0x16a
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF854
	.byte	0x2
	.2byte	0x16b
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF855
	.byte	0x2
	.2byte	0x16c
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF856
	.byte	0x2
	.2byte	0x16d
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF857
	.byte	0x2
	.2byte	0x16e
	.4byte	0x6c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF858
	.byte	0x1
	.byte	0x29
	.4byte	0x6c
	.byte	0x3
	.4byte	0x512
	.uleb128 0x13
	.4byte	.LASF859
	.byte	0x1
	.byte	0x29
	.4byte	0x2b8
	.uleb128 0x19
	.4byte	.LASF860
	.byte	0x1
	.byte	0x2a
	.4byte	0x6c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF861
	.byte	0x5
	.byte	0xd
	.4byte	0xf6
	.byte	0x3
	.4byte	0x567
	.uleb128 0x13
	.4byte	.LASF862
	.byte	0x5
	.byte	0xd
	.4byte	0x53
	.uleb128 0x13
	.4byte	.LASF863
	.byte	0x5
	.byte	0xd
	.4byte	0x53
	.uleb128 0x13
	.4byte	.LASF864
	.byte	0x5
	.byte	0xd
	.4byte	0x53
	.uleb128 0x13
	.4byte	.LASF865
	.byte	0x5
	.byte	0xd
	.4byte	0x53
	.uleb128 0x19
	.4byte	.LASF758
	.byte	0x5
	.byte	0xe
	.4byte	0xf6
	.uleb128 0x1a
	.4byte	.LASF866
	.4byte	0x57c
	.4byte	.LASF861
	.byte	0
	.uleb128 0xa
	.4byte	0x577
	.4byte	0x577
	.uleb128 0xb
	.4byte	0xef
	.byte	0x14
	.byte	0
	.uleb128 0x1b
	.4byte	0x331
	.uleb128 0x1b
	.4byte	0x567
	.uleb128 0x15
	.4byte	.LASF867
	.byte	0xe
	.2byte	0x107
	.4byte	0x37
	.byte	0x3
	.4byte	0x5e7
	.uleb128 0x16
	.4byte	.LASF868
	.byte	0xe
	.2byte	0x107
	.4byte	0x82
	.uleb128 0x16
	.4byte	.LASF869
	.byte	0xe
	.2byte	0x107
	.4byte	0x6c
	.uleb128 0x16
	.4byte	.LASF870
	.byte	0xe
	.2byte	0x107
	.4byte	0x6c
	.uleb128 0x1c
	.ascii	"tag\000"
	.byte	0xe
	.2byte	0x109
	.4byte	0xf6
	.uleb128 0x18
	.4byte	.LASF871
	.byte	0xe
	.2byte	0x10a
	.4byte	0xf6
	.uleb128 0x1c
	.ascii	"mr0\000"
	.byte	0xe
	.2byte	0x10b
	.4byte	0x6c
	.uleb128 0x1c
	.ascii	"mr1\000"
	.byte	0xe
	.2byte	0x10c
	.4byte	0x6c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF872
	.byte	0x1
	.byte	0x3a
	.4byte	0x37
	.byte	0x1
	.4byte	0x6b7
	.uleb128 0x13
	.4byte	.LASF873
	.byte	0x1
	.byte	0x3a
	.4byte	0x8d
	.uleb128 0x1d
	.ascii	"src\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x6b7
	.uleb128 0x13
	.4byte	.LASF874
	.byte	0x1
	.byte	0x3b
	.4byte	0x2b8
	.uleb128 0x13
	.4byte	.LASF875
	.byte	0x1
	.byte	0x3c
	.4byte	0x2b8
	.uleb128 0x1d
	.ascii	"dst\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x2b8
	.uleb128 0x13
	.4byte	.LASF859
	.byte	0x1
	.byte	0x3d
	.4byte	0x2b8
	.uleb128 0x1a
	.4byte	.LASF876
	.4byte	0x6cd
	.4byte	.LASF872
	.uleb128 0x14
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x2b8
	.uleb128 0x19
	.4byte	.LASF877
	.byte	0x1
	.byte	0x5c
	.4byte	0x2b8
	.uleb128 0x1e
	.uleb128 0x19
	.4byte	.LASF878
	.byte	0x1
	.byte	0x62
	.4byte	0x6c
	.uleb128 0x19
	.4byte	.LASF879
	.byte	0x1
	.byte	0x63
	.4byte	0x77
	.uleb128 0x19
	.4byte	.LASF880
	.byte	0x1
	.byte	0x63
	.4byte	0x77
	.uleb128 0x19
	.4byte	.LASF881
	.byte	0x1
	.byte	0x64
	.4byte	0x6c
	.uleb128 0x19
	.4byte	.LASF882
	.byte	0x1
	.byte	0x64
	.4byte	0x6c
	.uleb128 0x19
	.4byte	.LASF883
	.byte	0x1
	.byte	0x65
	.4byte	0x2b8
	.uleb128 0x19
	.4byte	.LASF884
	.byte	0x1
	.byte	0x66
	.4byte	0x37
	.uleb128 0x14
	.ascii	"err\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x331
	.uleb128 0xa
	.4byte	0x577
	.4byte	0x6cd
	.uleb128 0xb
	.4byte	0xef
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.4byte	0x6bd
	.uleb128 0x1f
	.4byte	.LASF908
	.byte	0x1
	.byte	0x97
	.4byte	0x37
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc41
	.uleb128 0x20
	.4byte	.LASF873
	.byte	0x1
	.byte	0x97
	.4byte	0x8d
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF885
	.byte	0x1
	.byte	0x97
	.4byte	0x6b7
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF886
	.byte	0x1
	.byte	0x99
	.4byte	0x37
	.4byte	.LLST2
	.uleb128 0x14
	.ascii	"err\000"
	.byte	0x1
	.byte	0x9a
	.4byte	0x37
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0x37
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF876
	.4byte	0xc51
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.6337
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc18
	.uleb128 0x21
	.4byte	.LASF887
	.byte	0x1
	.byte	0xa4
	.4byte	0x6b7
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LASF888
	.byte	0x1
	.byte	0xa5
	.4byte	0x2b8
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LASF875
	.byte	0x1
	.byte	0xa5
	.4byte	0x2b8
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF874
	.byte	0x1
	.byte	0xa5
	.4byte	0x2b8
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF889
	.byte	0x1
	.byte	0xa5
	.4byte	0x2b8
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	0x5e7
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xb4
	.4byte	0xb1c
	.uleb128 0x26
	.4byte	0x62e
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	0x623
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	0x618
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	0x60d
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	0x602
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	0x5f7
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x29
	.4byte	0x646
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	0x651
	.uleb128 0x2b
	.4byte	0x639
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.6310
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0xaf2
	.uleb128 0x29
	.4byte	0x65d
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	0x668
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	0x673
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.4byte	0x67e
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	0x689
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	0x694
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	0x69f
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	0x6aa
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	0x581
	.4byte	.LBB51
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x8c
	.4byte	0x917
	.uleb128 0x26
	.4byte	0x59e
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	0x5aa
	.4byte	.LLST23
	.uleb128 0x26
	.4byte	0x592
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x2a
	.4byte	0x5b6
	.uleb128 0x2a
	.4byte	0x5c2
	.uleb128 0x29
	.4byte	0x5ce
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	0x5da
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	0x43d
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x90
	.byte	0xe
	.2byte	0x113
	.uleb128 0x26
	.4byte	0x48a
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	0x47e
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	0x472
	.4byte	.LLST29
	.uleb128 0x26
	.4byte	0x466
	.4byte	.LLST30
	.uleb128 0x26
	.4byte	0x45a
	.4byte	.LLST31
	.uleb128 0x26
	.4byte	0x44e
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x2b
	.4byte	0x496
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.4byte	0x4a2
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	0x4ba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	0x4c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	0x4d2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	0x4de
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL32
	.4byte	0xc67
	.4byte	0x92d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL36
	.4byte	0xc72
	.4byte	0x940
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL38
	.4byte	0xc7d
	.4byte	0x972
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL40
	.4byte	0xc88
	.4byte	0x991
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL41
	.4byte	0xc7d
	.4byte	0x9bb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL42
	.4byte	0xc94
	.4byte	0x9ce
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL44
	.4byte	0xc7d
	.4byte	0xa02
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x79
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL45
	.4byte	0xca0
	.4byte	0xa32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL46
	.4byte	0xc7d
	.4byte	0xa5c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL47
	.4byte	0xca0
	.4byte	0xa8a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL48
	.4byte	0xc7d
	.4byte	0xab4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x83
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL50
	.4byte	0xcab
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL57
	.4byte	0xcb4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x4eb
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xb5
	.4byte	0xb48
	.uleb128 0x26
	.4byte	0x4fb
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x29
	.4byte	0x506
	.4byte	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL7
	.4byte	0xcbf
	.4byte	0xb64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL8
	.4byte	0xccb
	.4byte	0xb7e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0xcd7
	.4byte	0xb98
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0xce2
	.4byte	0xbb2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL16
	.4byte	0xced
	.4byte	0xbcc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL19
	.4byte	0xcf8
	.4byte	0xbe6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL52
	.4byte	0xc7d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+28
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0xb6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL2
	.4byte	0xd04
	.4byte	0xc2e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL3
	.4byte	0xd0f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x577
	.4byte	0xc51
	.uleb128 0xb
	.4byte	0xef
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.4byte	0xc41
	.uleb128 0x30
	.4byte	.LASF909
	.byte	0xd
	.byte	0x5b
	.4byte	0xc61
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3de
	.uleb128 0x31
	.4byte	.LASF890
	.4byte	.LASF890
	.byte	0xf
	.byte	0x28
	.uleb128 0x31
	.4byte	.LASF891
	.4byte	.LASF891
	.byte	0x10
	.byte	0x59
	.uleb128 0x31
	.4byte	.LASF892
	.4byte	.LASF892
	.byte	0x11
	.byte	0x15
	.uleb128 0x32
	.4byte	.LASF893
	.4byte	.LASF893
	.byte	0xd
	.2byte	0x1ff
	.uleb128 0x32
	.4byte	.LASF894
	.4byte	.LASF894
	.byte	0xd
	.2byte	0x140
	.uleb128 0x31
	.4byte	.LASF895
	.4byte	.LASF895
	.byte	0xf
	.byte	0x1b
	.uleb128 0x33
	.4byte	.LASF910
	.4byte	.LASF910
	.uleb128 0x31
	.4byte	.LASF896
	.4byte	.LASF896
	.byte	0x12
	.byte	0xf
	.uleb128 0x32
	.4byte	.LASF897
	.4byte	.LASF897
	.byte	0x13
	.2byte	0x116
	.uleb128 0x32
	.4byte	.LASF898
	.4byte	.LASF898
	.byte	0x13
	.2byte	0x102
	.uleb128 0x31
	.4byte	.LASF899
	.4byte	.LASF899
	.byte	0x13
	.byte	0xf7
	.uleb128 0x31
	.4byte	.LASF900
	.4byte	.LASF900
	.byte	0x13
	.byte	0xed
	.uleb128 0x31
	.4byte	.LASF901
	.4byte	.LASF901
	.byte	0x13
	.byte	0xe3
	.uleb128 0x32
	.4byte	.LASF902
	.4byte	.LASF902
	.byte	0x13
	.2byte	0x10c
	.uleb128 0x31
	.4byte	.LASF903
	.4byte	.LASF903
	.byte	0x13
	.byte	0xbd
	.uleb128 0x31
	.4byte	.LASF904
	.4byte	.LASF904
	.byte	0x13
	.byte	0xcf
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x8
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x48
	.byte	0x49
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0xb
	.byte	0x7a
	.sleb128 -805306368
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0xb
	.byte	0x7a
	.sleb128 -805306368
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 -805306368
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x7
	.byte	0x7a
	.sleb128 -805306368
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2188
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2179
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x8
	.byte	0xc
	.4byte	0x29002
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x8
	.byte	0xc
	.4byte	0x29002
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
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
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
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
	.file 20 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/sel4.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF381
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF382
	.file 21 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/simple_types.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF383
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF384
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 22 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/macros.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF403
	.file 23 "/home/mint/seL4/dhs-demo-feb-2018/include/generated/autoconf.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 24 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/debug_assert.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF470
	.file 25 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/assert.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x19
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF475
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF476
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.file 26 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/objecttype.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF477
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF478
	.byte	0x4
	.file 27 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/constants.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x1b
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.file 28 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/constants.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF487
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF488
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF489
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 29 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/arch/functions.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF490
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 30 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/sel4/invocation.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF493
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF494
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF495
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF496
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF499
	.file 31 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdint.h"
	.byte	0x3
	.uleb128 0x6a
	.uleb128 0x1f
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.file 32 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/wchar.h"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x20
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.file 33 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/bits/stdint.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x21
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.file 34 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdio.h"
	.byte	0x3
	.uleb128 0x6b
	.uleb128 0x22
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.file 35 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/elf/elf32.h"
	.byte	0x3
	.uleb128 0x6d
	.uleb128 0x23
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF630
	.byte	0x4
	.file 36 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/elf/elf64.h"
	.byte	0x3
	.uleb128 0x6e
	.uleb128 0x24
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF631
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.file 37 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/string.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x25
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x190
	.4byte	.LASF684
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF688
	.file 38 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/stdlib.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x26
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF691
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro24
	.byte	0x4
	.file 39 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/elf.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x27
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF710
	.byte	0x4
	.file 40 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/vmem_layout.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x28
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0xf
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF724
	.byte	0x4
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF725
	.file 41 "/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/sys/debug.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x29
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x4
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF738
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.simple_types.h.18.86f4332e2493068cbf52b3c36d2c0060,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF387
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.macros.h.12.95a7ddbd437300e99986fae89d7e987b,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF391
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.12.cd460de5c7246adf86f61c705d35b363,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x17
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
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.autoconf.h.6.e18ff89dc643d896116d6c2c72993e1f,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF469
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.20.47abdd5cdc017b13b80c9285a97731d0,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF474
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.constants.h.12.0548dac8c33811dcbb25aa5fd0df9cb7,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF481
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.types.h.49.fdd10c2d615f23eb46c86ce8d55366c6,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF486
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.syscalls.h.18.a97e235277b18e2b91ea94b92a7fd9d8,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF491
	.byte	0x6
	.uleb128 0x27e
	.4byte	.LASF492
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.bootinfo.h.12.5d34185b7cc16f7d4b6e0f3d80ca8c64,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF498
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.4.3397add6b12087b5f28c1b25cc4ff339,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF518
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.50.bd72c3864c592876b3d082cfbf64f8c4,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF536
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.46.7ec6d3ed12e9ba09d75fea6a29b95ac8,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF565
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.wchar.h.4.3000795860128190bca89d55f63a0d99,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF567
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.3.89b51772c052e446c19bd65e1e173eee,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF587
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.90.84c8b3cacbd67db36f9d16b2bed1b5d8,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF597
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.4.f78ca933ac8fedd23ee475ba8f9f4741,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
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
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.alltypes.h.5.24669c684bb73904d7b2afb6dda20124,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF608
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.23.8911e627eaddec94a7effca0f6c51b0b,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF610
	.byte	0x2
	.uleb128 0x1e
	.ascii	"EOF\000"
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF611
	.byte	0x6
	.uleb128 0x21
	.4byte	.LASF612
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF613
	.byte	0x6
	.uleb128 0x23
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF629
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.elf.h.115.18f73ffcaf23fd96411d895972020639,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF681
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.string.h.4.c81162742c2db8d739848ca6013182fd,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF682
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF683
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.assert.h.3.50df9aa91876a5ca576db6ae86455453,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF687
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.4.2a441acfbee021d3ac4b29eff53d8977,comdat
.Ldebug_macro22:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF689
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF690
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.74.7ce7e708dd5af39cb03d93e448753205,comdat
.Ldebug_macro23:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF703
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.cspace.h.49.604a27f9350919813701951638f0d65f,comdat
.Ldebug_macro24:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF709
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.vmem_layout.h.12.cb12b9e9cc571613f08df17eb9736a1a,comdat
.Ldebug_macro25:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF721
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ut.h.12.1e9d501ead2e59d5bfdb62ad1ed7868b,comdat
.Ldebug_macro26:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF723
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.debug.h.12.9db807d94eb43916cb724c13f8663c49,comdat
.Ldebug_macro27:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF730
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.panic.h.12.6cab1d69ea5bf08e4a026f2cec8e4ecf,comdat
.Ldebug_macro28:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF733
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF618:
	.ascii	"_IOFBF 0\000"
.LASF473:
	.ascii	"seL4_Assert(expr) do { if (!(expr)) { __assert_fail"
	.ascii	"(#expr, __FILE__, __LINE__, __FUNCTION__); } } whil"
	.ascii	"e(0)\000"
.LASF421:
	.ascii	"CONFIG_APP_TEMP_CONTROL 1\000"
.LASF298:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF407:
	.ascii	"CONFIG_APP_PROXY 1\000"
.LASF188:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF48:
	.ascii	"__UINT32_TYPE__ unsigned int\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF94:
	.ascii	"__UINT32_MAX__ 0xffffffffU\000"
.LASF310:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF708:
	.ascii	"CSPACE_NULL 0\000"
.LASF627:
	.ascii	"stdout (stdout)\000"
.LASF774:
	.ascii	"seL4_SysDebugNameThread\000"
.LASF665:
	.ascii	"SHF_ALLOC 2\000"
.LASF342:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF905:
	.ascii	"GNU C11 5.4.0 20160609 -marm -mcpu=cortex-a9 -mfloa"
	.ascii	"t-abi=soft -mtls-dialect=gnu -g3 -ggdb3 -g -g -O2 -"
	.ascii	"std=gnu11 -funwind-tables -fno-stack-protector\000"
.LASF546:
	.ascii	"UINT16_MAX (0xffff)\000"
.LASF262:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF254:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF597:
	.ascii	"UINTMAX_C(c) c ## ULL\000"
.LASF80:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF792:
	.ascii	"seL4_CanGrant\000"
.LASF377:
	.ascii	"PLAT_IMX6 1\000"
.LASF495:
	.ascii	"__LIBSEL4_SEL4_CLIENT_H \000"
.LASF729:
	.ascii	"WARN(...) _dprintf(-1, \"\\033[1;31mWARNING: \", __"
	.ascii	"VA_ARGS__)\000"
.LASF82:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF175:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF279:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF615:
	.ascii	"SEEK_SET 0\000"
.LASF731:
	.ascii	"PANIC_H \000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF212:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF76:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF429:
	.ascii	"CONFIG_LIB_SEL4_SYNC 1\000"
.LASF602:
	.ascii	"__NEED_ssize_t \000"
.LASF589:
	.ascii	"INT16_C(c) c\000"
.LASF831:
	.ascii	"int32_t\000"
.LASF606:
	.ascii	"__DEFINED_va_list \000"
.LASF19:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF659:
	.ascii	"SHT_PROGBITS 1\000"
.LASF146:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF536:
	.ascii	"__DEFINED_uintptr_t \000"
.LASF202:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF268:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF574:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF823:
	.ascii	"seL4_CapIRQControl\000"
.LASF238:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF190:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF876:
	.ascii	"__func__\000"
.LASF275:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF29:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF33:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF178:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF138:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF42:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF837:
	.ascii	"root_cnode\000"
.LASF411:
	.ascii	"CONFIG_USER_DEBUG_BUILD 1\000"
.LASF237:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF528:
	.ascii	"__DEFINED_int_fast16_t \000"
.LASF838:
	.ascii	"guard\000"
.LASF161:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF157:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF155:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF726:
	.ascii	"_DEBUG_H_ \000"
.LASF105:
	.ascii	"__UINT8_C(c) c\000"
.LASF43:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF365:
	.ascii	"linux 1\000"
.LASF584:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF772:
	.ascii	"seL4_SysDebugCapIdentify\000"
.LASF537:
	.ascii	"INT8_MIN (-1-0x7f)\000"
.LASF311:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF507:
	.ascii	"__NEED_uint32_t \000"
.LASF364:
	.ascii	"__linux__ 1\000"
.LASF453:
	.ascii	"CONFIG_NUM_DOMAINS 1\000"
.LASF746:
	.ascii	"seL4_Uint32\000"
.LASF225:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF771:
	.ascii	"seL4_SysDebugHalt\000"
.LASF619:
	.ascii	"_IOLBF 1\000"
.LASF581:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF36:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF542:
	.ascii	"INT16_MAX (0x7fff)\000"
.LASF836:
	.ascii	"levels\000"
.LASF85:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF674:
	.ascii	"DT_STRSZ 10\000"
.LASF198:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF567:
	.ascii	"WCHAR_MAX 0xffffffffU\000"
.LASF848:
	.ascii	"seL4_CallWithMRs\000"
.LASF452:
	.ascii	"CONFIG_LIB_ETHDRIVER_NUM_PREALLOCATED_BUFFERS 512\000"
.LASF884:
	.ascii	"nbytes\000"
.LASF608:
	.ascii	"__DEFINED_FILE \000"
.LASF675:
	.ascii	"DT_SYMENT 11\000"
.LASF814:
	.ascii	"ARMPageCleanInvalidate_Data\000"
.LASF857:
	.ascii	"scno\000"
.LASF150:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF798:
	.ascii	"seL4_ARM_SuperSectionObject\000"
.LASF638:
	.ascii	"EI_MAG3 3\000"
.LASF215:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF883:
	.ascii	"kdst\000"
.LASF825:
	.ascii	"seL4_CapIOSpace\000"
.LASF889:
	.ascii	"vaddr\000"
.LASF423:
	.ascii	"CONFIG_LIB_SERIAL 1\000"
.LASF290:
	.ascii	"__HA_FBIT__ 7\000"
.LASF245:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF194:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF494:
	.ascii	"__LIBSEL4_ARCH_INVOCATION_H \000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF815:
	.ascii	"ARMPageUnify_Instruction\000"
.LASF349:
	.ascii	"__THUMBEL__\000"
.LASF28:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF842:
	.ascii	"num_free_slots\000"
.LASF300:
	.ascii	"__USA_FBIT__ 16\000"
.LASF414:
	.ascii	"CONFIG_ARM_ERRATA_764369 1\000"
.LASF578:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF768:
	.ascii	"seL4_SysYield\000"
.LASF282:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF496:
	.ascii	"assert_size_correct(type,expected_bytes) typedef un"
	.ascii	"signed long __type_ ##type ##_size_incorrect[ (size"
	.ascii	"of(type) == expected_bytes) ? 1 : -1]\000"
.LASF524:
	.ascii	"__DEFINED_uint16_t \000"
.LASF701:
	.ascii	"WIFSTOPPED(s) (((s) & 0xff) == 0x7f)\000"
.LASF822:
	.ascii	"seL4_CapInitThreadVSpace\000"
.LASF826:
	.ascii	"seL4_CapBootInfoFrame\000"
.LASF840:
	.ascii	"next_level1_free_index\000"
.LASF174:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF887:
	.ascii	"source_addr\000"
.LASF378:
	.ascii	"DEBUG 1\000"
.LASF251:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF412:
	.ascii	"CONFIG_LIB_SEL4_CSPACE 1\000"
.LASF353:
	.ascii	"__VFP_FP__ 1\000"
.LASF222:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF120:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF58:
	.ascii	"__INT_FAST8_TYPE__ signed char\000"
.LASF509:
	.ascii	"__NEED_int_fast8_t \000"
.LASF117:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF236:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF684:
	.ascii	"__DEFINED_locale_t \000"
.LASF785:
	.ascii	"seL4_FailedLookup\000"
.LASF802:
	.ascii	"_object\000"
.LASF173:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF207:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF116:
	.ascii	"__UINT_FAST8_MAX__ 0xff\000"
.LASF490:
	.ascii	"__LIBSEL4_ARCH_FUNCTIONS_H \000"
.LASF498:
	.ascii	"seL4_CapInitThreadPD seL4_CapInitThreadVSpace\000"
.LASF643:
	.ascii	"ELFMAG1 'E'\000"
.LASF54:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF757:
	.ascii	"seL4_MessageInfo_t\000"
.LASF240:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF246:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF833:
	.ascii	"long int\000"
.LASF434:
	.ascii	"CONFIG_CROSS_COMPILER_PREFIX \"arm-linux-gnueabi-\""
	.ascii	"\000"
.LASF530:
	.ascii	"__DEFINED_int_fast64_t \000"
.LASF599:
	.ascii	"__NEED_FILE \000"
.LASF115:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF499:
	.ascii	"__ELF_ELF_H__ \000"
.LASF149:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF595:
	.ascii	"UINT64_C(c) c ## ULL\000"
.LASF184:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF302:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF881:
	.ascii	"vpage\000"
.LASF32:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF50:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF274:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF694:
	.ascii	"MB_CUR_MAX ((size_t)+4)\000"
.LASF390:
	.ascii	"CONST __attribute__((__const__))\000"
.LASF750:
	.ascii	"seL4_ARM_PageDirectory\000"
.LASF354:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF228:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF664:
	.ascii	"SHF_WRITE 1\000"
.LASF585:
	.ascii	"SIG_ATOMIC_MIN INT32_MIN\000"
.LASF531:
	.ascii	"__DEFINED_uint_fast8_t \000"
.LASF169:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF118:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF131:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF18:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF616:
	.ascii	"SEEK_CUR 1\000"
.LASF22:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF559:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF395:
	.ascii	"seL4_SlotBits 4\000"
.LASF641:
	.ascii	"EI_VERSION 6\000"
.LASF339:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF441:
	.ascii	"CONFIG_APP_PROXY_FAN 1\000"
.LASF435:
	.ascii	"CONFIG_APP_WEB 1\000"
.LASF642:
	.ascii	"ELFMAG0 '\\177'\000"
.LASF437:
	.ascii	"CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION 100\000"
.LASF180:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF442:
	.ascii	"CONFIG_DEBUG_BUILD 1\000"
.LASF706:
	.ascii	"CSPACE_NODE_SIZE_IN_SLOTS_BITS (CSPACE_NODE_SIZE_IN"
	.ascii	"_MEM_BITS - seL4_SlotBits)\000"
.LASF693:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF304:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF896:
	.ascii	"__assert_fail\000"
.LASF133:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF468:
	.ascii	"CONFIG_LIB_ETHDRIVER_TX_DESC_COUNT 32\000"
.LASF49:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF796:
	.ascii	"seL4_ARM_LargePageObject\000"
.LASF309:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF730:
	.ascii	"NOT_IMPLEMENTED() printf(\"\\033[22;34m %s:%d -> %s"
	.ascii	" not implemented\\n\\033[;0m\", __FILE__, __LINE__,"
	.ascii	" __func__);\000"
.LASF200:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF558:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF264:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF444:
	.ascii	"CONFIG_BENCHMARK 1\000"
.LASF436:
	.ascii	"CONFIG_LIB_MUSL_C 1\000"
.LASF811:
	.ascii	"ARMPageUnmap\000"
.LASF381:
	.ascii	"__LIBSEL4_SEL4_H \000"
.LASF106:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF719:
	.ascii	"PROCESS_IPC_BUFFER (0xA0000000)\000"
.LASF870:
	.ascii	"end_offset\000"
.LASF711:
	.ascii	"_MEM_LAYOUT_H_ \000"
.LASF500:
	.ascii	"_STDINT_H \000"
.LASF640:
	.ascii	"EI_DATA 5\000"
.LASF203:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF128:
	.ascii	"__FLT_DIG__ 6\000"
.LASF345:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF777:
	.ascii	"seL4_SysBenchmarkLogSize\000"
.LASF502:
	.ascii	"__NEED_int16_t \000"
.LASF64:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF742:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF394:
	.ascii	"seL4_PageBits 12\000"
.LASF231:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF725:
	.ascii	"verbose 0\000"
.LASF132:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF187:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF185:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF122:
	.ascii	"__GCC_IEC_559 0\000"
.LASF886:
	.ascii	"num_headers\000"
.LASF396:
	.ascii	"seL4_TCBBits 9\000"
.LASF114:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF358:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF604:
	.ascii	"__DEFINED_size_t \000"
.LASF747:
	.ascii	"seL4_Word\000"
.LASF819:
	.ascii	"seL4_CapNull\000"
.LASF860:
	.ascii	"result\000"
.LASF866:
	.ascii	"__FUNCTION__\000"
.LASF93:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF439:
	.ascii	"CONFIG_USER_CFLAGS \"\"\000"
.LASF278:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF456:
	.ascii	"CONFIG_LIB_SOS 1\000"
.LASF109:
	.ascii	"__UINT32_C(c) c ## U\000"
.LASF854:
	.ascii	"msg1\000"
.LASF379:
	.ascii	"SEL4_DEBUG_KERNEL 1\000"
.LASF587:
	.ascii	"SIZE_MAX UINT32_MAX\000"
.LASF699:
	.ascii	"WCOREDUMP(s) ((s) & 0x80)\000"
.LASF20:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF265:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF61:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF680:
	.ascii	"ELF_PRINT_SECTIONS 2\000"
.LASF605:
	.ascii	"__DEFINED_ssize_t \000"
.LASF609:
	.ascii	"NULL\000"
.LASF483:
	.ascii	"seL4_GuardSizeBits 5\000"
.LASF635:
	.ascii	"EI_MAG0 0\000"
.LASF147:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF23:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF489:
	.ascii	"__LIBSEL4_ARCH_SYSCALLS_H \000"
.LASF327:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF35:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF400:
	.ascii	"seL4_Frame_Args 4\000"
.LASF834:
	.ascii	"char\000"
.LASF301:
	.ascii	"__USA_IBIT__ 16\000"
.LASF312:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF463:
	.ascii	"CONFIG_NUM_PRIORITIES 256\000"
.LASF65:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF70:
	.ascii	"__GXX_ABI_VERSION 1009\000"
.LASF709:
	.ascii	"CSPACE_DEPTH 32\000"
.LASF135:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF573:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF410:
	.ascii	"CONFIG_LIB_ELF 1\000"
.LASF548:
	.ascii	"UINT64_MAX (0xffffffffffffffffULL)\000"
.LASF690:
	.ascii	"__NEED_wchar_t \000"
.LASF749:
	.ascii	"seL4_ARM_Page\000"
.LASF387:
	.ascii	"seL4_Null ((void*)0)\000"
.LASF366:
	.ascii	"__unix 1\000"
.LASF196:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF687:
	.ascii	"UNUSED_NDEBUG(x) ((void)(x))\000"
.LASF562:
	.ascii	"INTMAX_MAX INT64_MAX\000"
.LASF827:
	.ascii	"seL4_CapArchBootInfoFrame\000"
.LASF197:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF446:
	.ascii	"CONFIG_APP_SOS 1\000"
.LASF787:
	.ascii	"seL4_DeleteFirst\000"
.LASF92:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF159:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF152:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF713:
	.ascii	"DMA_SIZE_BITS (22)\000"
.LASF347:
	.ascii	"__thumb__\000"
.LASF521:
	.ascii	"__DEFINED_int32_t \000"
.LASF294:
	.ascii	"__DA_FBIT__ 31\000"
.LASF888:
	.ascii	"flags\000"
.LASF843:
	.ascii	"level1_alloc_table\000"
.LASF98:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF770:
	.ascii	"seL4_SysDebugPutChar\000"
.LASF137:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF465:
	.ascii	"CONFIG_KERNEL_COMPILER \"\"\000"
.LASF594:
	.ascii	"UINT32_C(c) c ## U\000"
.LASF457:
	.ascii	"CONFIG_LIB_ETHDRIVER_PREALLOCATED_BUF_SIZE 2048\000"
.LASF598:
	.ascii	"_STDIO_H \000"
.LASF69:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF363:
	.ascii	"__linux 1\000"
.LASF247:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF136:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF660:
	.ascii	"SHT_RELA 4\000"
.LASF314:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF443:
	.ascii	"CONFIG_LIB_UTILS 1\000"
.LASF677:
	.ascii	"DT_RELSZ 18\000"
.LASF649:
	.ascii	"PT_LOAD 1\000"
.LASF845:
	.ascii	"cspace_t\000"
.LASF526:
	.ascii	"__DEFINED_uint64_t \000"
.LASF119:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF320:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF308:
	.ascii	"_FORTIFY_SOURCE 2\000"
.LASF720:
	.ascii	"PROCESS_VMEM_START (0xC0000000)\000"
.LASF273:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF235:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF572:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF324:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF821:
	.ascii	"seL4_CapInitThreadCNode\000"
.LASF250:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF422:
	.ascii	"CONFIG_FASTPATH 1\000"
.LASF782:
	.ascii	"seL4_IllegalOperation\000"
.LASF460:
	.ascii	"CONFIG_LIB_CPIO 1\000"
.LASF761:
	.ascii	"seL4_CapData_t\000"
.LASF695:
	.ascii	"RAND_MAX (0x7fffffff)\000"
.LASF167:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF447:
	.ascii	"CONFIG_KERNEL_STABLE 1\000"
.LASF296:
	.ascii	"__TA_FBIT__ 63\000"
.LASF738:
	.ascii	"IS_PAGESIZE_ALIGNED(addr) !((addr) & (PAGEMASK))\000"
.LASF662:
	.ascii	"SHT_NOBITS 8\000"
.LASF356:
	.ascii	"__ARM_PCS 1\000"
.LASF540:
	.ascii	"INT64_MIN (-1-0x7fffffffffffffffLL)\000"
.LASF762:
	.ascii	"seL4_SysCall\000"
.LASF375:
	.ascii	"ARM_CORTEX_A9 1\000"
.LASF479:
	.ascii	"__API_CONSTANTS_H \000"
.LASF87:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF372:
	.ascii	"SOS_NFS_DIR \"/var/tftpboot/mint\"\000"
.LASF104:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF739:
	.ascii	"signed char\000"
.LASF644:
	.ascii	"ELFMAG2 'L'\000"
.LASF583:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF906:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/apps/sos/src/elf."
	.ascii	"c\000"
.LASF766:
	.ascii	"seL4_SysWait\000"
.LASF527:
	.ascii	"__DEFINED_int_fast8_t \000"
.LASF625:
	.ascii	"L_tmpnam 20\000"
.LASF466:
	.ascii	"CONFIG_TIME_SLICE 5\000"
.LASF424:
	.ascii	"CONFIG_DOMAIN_SCHEDULE \"\"\000"
.LASF511:
	.ascii	"__NEED_int_fast32_t \000"
.LASF628:
	.ascii	"stderr (stderr)\000"
.LASF580:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF518:
	.ascii	"__NEED_uintptr_t \000"
.LASF658:
	.ascii	"ELFDATA2MSB 2\000"
.LASF735:
	.ascii	"PAGESIZE (1 << (seL4_PageBits))\000"
.LASF182:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF199:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF550:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF623:
	.ascii	"FOPEN_MAX 1000\000"
.LASF481:
	.ascii	"seL4_MsgMaxExtraCaps (BIT(seL4_MsgExtraCapBits)-1)\000"
.LASF195:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF263:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF828:
	.ascii	"seL4_CapInitThreadIPCBuffer\000"
.LASF362:
	.ascii	"__gnu_linux__ 1\000"
.LASF482:
	.ascii	"seL4_UntypedRetypeMaxObjects 256\000"
.LASF307:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF95:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF872:
	.ascii	"load_segment_into_vspace\000"
.LASF714:
	.ascii	"DMA_VEND (DMA_VSTART + (1ull << DMA_SIZE_BITS))\000"
.LASF794:
	.ascii	"_enum_pad_seL4_CapRights\000"
.LASF455:
	.ascii	"CONFIG_USER_DEBUG_INFO 1\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF533:
	.ascii	"__DEFINED_uint_fast32_t \000"
.LASF96:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF809:
	.ascii	"ARMPageTableUnmap\000"
.LASF325:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF332:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF338:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF359:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF545:
	.ascii	"UINT8_MAX (0xff)\000"
.LASF873:
	.ascii	"dest_as\000"
.LASF341:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF68:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF767:
	.ascii	"seL4_SysReply\000"
.LASF535:
	.ascii	"__DEFINED_intptr_t \000"
.LASF419:
	.ascii	"CONFIG_HAVE_LIBC 1\000"
.LASF756:
	.ascii	"sizetype\000"
.LASF755:
	.ascii	"_enum_pad_seL4_ARM_VMAttributes\000"
.LASF139:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF692:
	.ascii	"EXIT_FAILURE 1\000"
.LASF871:
	.ascii	"output_tag\000"
.LASF850:
	.ascii	"msgInfo\000"
.LASF88:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF614:
	.ascii	"SEEK_END\000"
.LASF326:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF795:
	.ascii	"seL4_ARM_SmallPageObject\000"
.LASF909:
	.ascii	"cur_cspace\000"
.LASF818:
	.ascii	"long unsigned int\000"
.LASF293:
	.ascii	"__SA_IBIT__ 16\000"
.LASF63:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF759:
	.ascii	"seL4_CapData\000"
.LASF123:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF5:
	.ascii	"__GNUC__ 5\000"
.LASF717:
	.ascii	"PROCESS_STACK_TOP (0x90000000)\000"
.LASF47:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF613:
	.ascii	"SEEK_CUR\000"
.LASF817:
	.ascii	"nArchInvocationLabels\000"
.LASF734:
	.ascii	"MIN(a,b) (((a)<(b))?(a):(b))\000"
.LASF352:
	.ascii	"__SOFTFP__ 1\000"
.LASF751:
	.ascii	"seL4_ARM_PageCacheable\000"
.LASF171:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF451:
	.ascii	"CONFIG_ARCH_ARM 1\000"
.LASF676:
	.ascii	"DT_REL 17\000"
.LASF622:
	.ascii	"FILENAME_MAX 4095\000"
.LASF471:
	.ascii	"__LIBSEL4_ASSERT_H \000"
.LASF261:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF204:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF484:
	.ascii	"seL4_GuardBits 18\000"
.LASF863:
	.ascii	"capsUnwrapped\000"
.LASF783:
	.ascii	"seL4_RangeError\000"
.LASF355:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF41:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF431:
	.ascii	"CONFIG_LIB_CLOCK 1\000"
.LASF780:
	.ascii	"seL4_InvalidArgument\000"
.LASF121:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF382:
	.ascii	"__LIBSEL4_TYPES_H \000"
.LASF111:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF57:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF678:
	.ascii	"DT_RELENT 19\000"
.LASF164:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF851:
	.ascii	"destptr\000"
.LASF895:
	.ascii	"map_page\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF474:
	.ascii	"seL4_CompileTimeAssert(expr) extern char __seL4_Com"
	.ascii	"pileTimeAssertFailed_ ## __COUNTER__[__builtin_cons"
	.ascii	"tant_p(expr) ? ((expr) ? 1 : -1) : -1] __attribute_"
	.ascii	"_((unused))\000"
.LASF145:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF753:
	.ascii	"seL4_ARM_Default_VMAttributes\000"
.LASF127:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF287:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF15:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF705:
	.ascii	"CSPACE_NODE_SIZE_IN_MEM (1 << CSPACE_NODE_SIZE_IN_M"
	.ascii	"EM_BITS)\000"
.LASF805:
	.ascii	"ARMPDInvalidate_Data\000"
.LASF591:
	.ascii	"INT64_C(c) c ## LL\000"
.LASF667:
	.ascii	"DT_NULL 0\000"
.LASF552:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF165:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF775:
	.ascii	"seL4_SysBenchmarkResetLog\000"
.LASF333:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF702:
	.ascii	"WIFSIGNALED(s) (((signed char) (((s) & 0x7f) + 1) >"
	.ascii	"> 1) > 0)\000"
.LASF226:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF402:
	.ascii	"seL4_Frame_HasNPC 0\000"
.LASF538:
	.ascii	"INT16_MIN (-1-0x7fff)\000"
.LASF391:
	.ascii	"PURE __attribute__((__pure__))\000"
.LASF409:
	.ascii	"CONFIG_LIB_NFS 1\000"
.LASF631:
	.ascii	"__LIBELF_64_H__ \000"
.LASF844:
	.ascii	"level2_alloc_tables\000"
.LASF420:
	.ascii	"CONFIG_WORD_SIZE 32\000"
.LASF593:
	.ascii	"UINT16_C(c) c\000"
.LASF134:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF100:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffff\000"
.LASF209:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF77:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF281:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF322:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF257:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF488:
	.ascii	"__ARCH_OBJECTTYPE_H \000"
.LASF162:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF344:
	.ascii	"__ARM_ARCH 7\000"
.LASF126:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF741:
	.ascii	"long long int\000"
.LASF902:
	.ascii	"elf_getProgramHeaderFlags\000"
.LASF427:
	.ascii	"CONFIG_APP_PROXY_MAX_NUM_CLIENTS 16\000"
.LASF168:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF691:
	.ascii	"__DEFINED_wchar_t \000"
.LASF477:
	.ascii	"__API_OBJECTTYPE_H \000"
.LASF651:
	.ascii	"PT_INTERP 3\000"
.LASF788:
	.ascii	"seL4_RevokeFirst\000"
.LASF60:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF547:
	.ascii	"UINT32_MAX (0xffffffff)\000"
.LASF291:
	.ascii	"__HA_IBIT__ 8\000"
.LASF172:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF810:
	.ascii	"ARMPageMap\000"
.LASF83:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF323:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF781:
	.ascii	"seL4_InvalidCapability\000"
.LASF478:
	.ascii	"__ERRORS_H \000"
.LASF575:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF689:
	.ascii	"_STDLIB_H \000"
.LASF835:
	.ascii	"double\000"
.LASF617:
	.ascii	"SEEK_END 2\000"
.LASF102:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF812:
	.ascii	"ARMPageClean_Data\000"
.LASF671:
	.ascii	"DT_RELA 7\000"
.LASF45:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF897:
	.ascii	"elf_getProgramHeaderType\000"
.LASF210:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF25:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF586:
	.ascii	"SIG_ATOMIC_MAX INT32_MAX\000"
.LASF328:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF806:
	.ascii	"ARMPDCleanInvalidate_Data\000"
.LASF685:
	.ascii	"assert\000"
.LASF514:
	.ascii	"__NEED_uint_fast16_t \000"
.LASF764:
	.ascii	"seL4_SysSend\000"
.LASF461:
	.ascii	"CONFIG_RETYPE_FAN_OUT_LIMIT 256\000"
.LASF657:
	.ascii	"ELFDATA2LSB 1\000"
.LASF376:
	.ascii	"IMX6 1\000"
.LASF450:
	.ascii	"CONFIG_SOS_IP \"192.168.168.1\"\000"
.LASF493:
	.ascii	"__LIBSEL4_INVOCATION_H \000"
.LASF208:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF752:
	.ascii	"seL4_ARM_ParityEnabled\000"
.LASF403:
	.ascii	"_HOME_MINT_SEL4_DHS_DEMO_FEB_2018_BUILD_ARM_IMX6_LI"
	.ascii	"BSEL4_INCLUDE_SEL4_TYPES_GEN_H \000"
.LASF191:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF654:
	.ascii	"PT_PHDR 6\000"
.LASF30:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF101:
	.ascii	"__INT32_C(c) c\000"
.LASF440:
	.ascii	"CONFIG_LIB_ETHIF 1\000"
.LASF890:
	.ascii	"unmap_page\000"
.LASF891:
	.ascii	"ut_alloc\000"
.LASF724:
	.ascii	"_MAPPING_H_ \000"
.LASF205:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF839:
	.ascii	"addr\000"
.LASF286:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF160:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF893:
	.ascii	"cspace_ut_retype_addr\000"
.LASF151:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF636:
	.ascii	"EI_MAG1 1\000"
.LASF56:
	.ascii	"__UINT_LEAST32_TYPE__ unsigned int\000"
.LASF744:
	.ascii	"unsigned int\000"
.LASF901:
	.ascii	"elf_getProgramHeaderVaddr\000"
.LASF549:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF568:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF129:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF125:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF486:
	.ascii	"seL4_NilData seL4_CapData_Badge_new(0)\000"
.LASF727:
	.ascii	"_dprintf(v,col,args...) do { if ((v) < verbose){ pr"
	.ascii	"intf(col); plogf(args); printf(\"\\033[0;0m\"); } }"
	.ascii	" while (0)\000"
.LASF539:
	.ascii	"INT32_MIN (-1-0x7fffffff)\000"
.LASF266:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF249:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF501:
	.ascii	"__NEED_int8_t \000"
.LASF639:
	.ascii	"EI_CLASS 4\000"
.LASF91:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF632:
	.ascii	"PF_X 1\000"
.LASF124:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF404:
	.ascii	"AUTOCONF_INCLUDED \000"
.LASF71:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF841:
	.ascii	"next_level2_free_slot\000"
.LASF569:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF348:
	.ascii	"__thumb2__\000"
.LASF763:
	.ascii	"seL4_SysReplyWait\000"
.LASF280:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF384:
	.ascii	"__LIBSEL4_ARCH_SIMPLE_TYPES_H_ \000"
.LASF577:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF177:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF248:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF728:
	.ascii	"dprintf(v,...) _dprintf(v, \"\\033[22;33m\", __VA_A"
	.ascii	"RGS__)\000"
.LASF765:
	.ascii	"seL4_SysNBSend\000"
.LASF213:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF330:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF426:
	.ascii	"CONFIG_LIB_SEL4 1\000"
.LASF647:
	.ascii	"ELFCLASS64 2\000"
.LASF31:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF875:
	.ascii	"file_size\000"
.LASF829:
	.ascii	"seL4_CapIPI\000"
.LASF46:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF733:
	.ascii	"panic(b) conditional_panic(1, b)\000"
.LASF505:
	.ascii	"__NEED_uint8_t \000"
.LASF799:
	.ascii	"seL4_ARM_PageTableObject\000"
.LASF183:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF588:
	.ascii	"INT8_C(c) c\000"
.LASF800:
	.ascii	"seL4_ARM_PageDirectoryObject\000"
.LASF418:
	.ascii	"CONFIG_SOS_GATEWAY \"192.168.168.2\"\000"
.LASF158:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF140:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF666:
	.ascii	"SHF_EXECINSTR 4\000"
.LASF566:
	.ascii	"WCHAR_MIN 0U\000"
.LASF214:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF508:
	.ascii	"__NEED_uint64_t \000"
.LASF90:
	.ascii	"__INT32_MAX__ 0x7fffffff\000"
.LASF515:
	.ascii	"__NEED_uint_fast32_t \000"
.LASF564:
	.ascii	"WINT_MIN INT32_MIN\000"
.LASF340:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 4\000"
.LASF343:
	.ascii	"__arm__ 1\000"
.LASF801:
	.ascii	"seL4_ObjectTypeCount\000"
.LASF40:
	.ascii	"__CHAR32_TYPE__ unsigned int\000"
.LASF406:
	.ascii	"CONFIG_APP_PROXY_SENSOR 1\000"
.LASF673:
	.ascii	"DT_RELAENT 9\000"
.LASF648:
	.ascii	"PT_NULL 0\000"
.LASF773:
	.ascii	"seL4_SysDebugSnapshot\000"
.LASF504:
	.ascii	"__NEED_int64_t \000"
.LASF415:
	.ascii	"CONFIG_KERNEL_CFLAGS \"\"\000"
.LASF523:
	.ascii	"__DEFINED_uint8_t \000"
.LASF26:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF297:
	.ascii	"__TA_IBIT__ 64\000"
.LASF520:
	.ascii	"__DEFINED_int16_t \000"
.LASF405:
	.ascii	"CONFIG_IRQ_REPORTING 1\000"
.LASF778:
	.ascii	"_enum_pad_seL4_Syscall_ID\000"
.LASF335:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF880:
	.ascii	"tty_cap\000"
.LASF721:
	.ascii	"PROCESS_SCRATCH (0xD0000000)\000"
.LASF686:
	.ascii	"assert(x) ((x) ? ((void)0) : (__assert_fail(#x, __F"
	.ascii	"ILE__, __LINE__, __func__)))\000"
.LASF350:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF620:
	.ascii	"_IONBF 2\000"
.LASF75:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF467:
	.ascii	"CONFIG_KERNEL_EXTRA_CPPFLAGS \"\"\000"
.LASF206:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF336:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF97:
	.ascii	"__INT8_C(c) c\000"
.LASF211:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF679:
	.ascii	"ELF_PRINT_PROGRAM_HEADERS 1\000"
.LASF143:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF166:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF655:
	.ascii	"PT_TLS 7\000"
.LASF44:
	.ascii	"__INT32_TYPE__ int\000"
.LASF704:
	.ascii	"CSPACE_NODE_SIZE_IN_MEM_BITS seL4_PageDirBits\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF570:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF579:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF650:
	.ascii	"PT_DYNAMIC 2\000"
.LASF470:
	.ascii	"__LIBSEL4_DEBUG_ASSERT_H \000"
.LASF784:
	.ascii	"seL4_AlignmentError\000"
.LASF611:
	.ascii	"EOF (-1)\000"
.LASF459:
	.ascii	"CONFIG_USER_OPTIMISATION_O2 1\000"
.LASF852:
	.ascii	"info\000"
.LASF646:
	.ascii	"ELFCLASS32 1\000"
.LASF313:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF652:
	.ascii	"PT_NOTE 4\000"
.LASF682:
	.ascii	"_STRING_H \000"
.LASF242:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF776:
	.ascii	"seL4_SysBenchmarkDumpLog\000"
.LASF408:
	.ascii	"CONFIG_ARM_CORTEX_A9 1\000"
.LASF110:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF201:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF830:
	.ascii	"seL4_CapDomain\000"
.LASF712:
	.ascii	"DMA_VSTART (0x10000000)\000"
.LASF700:
	.ascii	"WIFEXITED(s) (!WTERMSIG(s))\000"
.LASF517:
	.ascii	"__NEED_intptr_t \000"
.LASF27:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF797:
	.ascii	"seL4_ARM_SectionObject\000"
.LASF846:
	.ascii	"seL4_MessageInfo_get_length\000"
.LASF176:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF745:
	.ascii	"long long unsigned int\000"
.LASF130:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF553:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF256:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF555:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF72:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF758:
	.ascii	"seL4_MessageInfo\000"
.LASF34:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF346:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF865:
	.ascii	"length\000"
.LASF276:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF898:
	.ascii	"elf_getProgramHeaderOffset\000"
.LASF283:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF853:
	.ascii	"msg0\000"
.LASF503:
	.ascii	"__NEED_int32_t \000"
.LASF855:
	.ascii	"msg2\000"
.LASF856:
	.ascii	"msg3\000"
.LASF813:
	.ascii	"ARMPageInvalidate_Data\000"
.LASF510:
	.ascii	"__NEED_int_fast16_t \000"
.LASF59:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF878:
	.ascii	"paddr\000"
.LASF232:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF218:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF55:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF462:
	.ascii	"CONFIG_ROOT_CNODE_SIZE_BITS 12\000"
.LASF39:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF868:
	.ascii	"service\000"
.LASF425:
	.ascii	"CONFIG_OPTIMISATION_O3 1\000"
.LASF672:
	.ascii	"DT_RELASZ 8\000"
.LASF433:
	.ascii	"CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS 800\000"
.LASF386:
	.ascii	"seL4_False 0\000"
.LASF288:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF590:
	.ascii	"INT32_C(c) c\000"
.LASF807:
	.ascii	"ARMPDUnify_Instruction\000"
.LASF16:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF113:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF698:
	.ascii	"WSTOPSIG(s) WEXITSTATUS(s)\000"
.LASF529:
	.ascii	"__DEFINED_int_fast32_t \000"
.LASF532:
	.ascii	"__DEFINED_uint_fast16_t \000"
.LASF899:
	.ascii	"elf_getProgramHeaderFileSize\000"
.LASF506:
	.ascii	"__NEED_uint16_t \000"
.LASF803:
	.ascii	"arch_invocation_label\000"
.LASF258:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF217:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF908:
	.ascii	"elf_load\000"
.LASF277:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF458:
	.ascii	"CONFIG_SOS_NFS_DIR \"\"\000"
.LASF786:
	.ascii	"seL4_TruncatedMessage\000"
.LASF516:
	.ascii	"__NEED_uint_fast64_t \000"
.LASF769:
	.ascii	"seL4_SysPoll\000"
.LASF804:
	.ascii	"ARMPDClean_Data\000"
.LASF560:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF847:
	.ascii	"seL4_MessageInfo_get_label\000"
.LASF393:
	.ascii	"seL4_WordBits 32\000"
.LASF289:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF469:
	.ascii	"CONFIG_BUILDSYS_USE_CCACHE 1\000"
.LASF292:
	.ascii	"__SA_FBIT__ 15\000"
.LASF224:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF634:
	.ascii	"PF_R 4\000"
.LASF357:
	.ascii	"__ARM_EABI__ 1\000"
.LASF485:
	.ascii	"seL4_BadgeBits 28\000"
.LASF554:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF369:
	.ascii	"__ELF__ 1\000"
.LASF331:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF637:
	.ascii	"EI_MAG2 2\000"
.LASF849:
	.ascii	"dest\000"
.LASF633:
	.ascii	"PF_W 2\000"
.LASF271:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF480:
	.ascii	"BIT(n) (1ul<<(n))\000"
.LASF563:
	.ascii	"UINTMAX_MAX UINT64_MAX\000"
.LASF629:
	.ascii	"L_ctermid 20\000"
.LASF779:
	.ascii	"seL4_NoError\000"
.LASF371:
	.ascii	"HAVE_AUTOCONF 1\000"
.LASF253:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF260:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF52:
	.ascii	"__INT_LEAST32_TYPE__ int\000"
.LASF38:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF285:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 4\000"
.LASF398:
	.ascii	"seL4_PageTableBits 10\000"
.LASF723:
	.ascii	"MIN_UT_SIZE_BITS seL4_PageDirBits\000"
.LASF37:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF543:
	.ascii	"INT32_MAX (0x7fffffff)\000"
.LASF892:
	.ascii	"__conditional_panic\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF413:
	.ascii	"CONFIG_TIMER_TICK_MS 20\000"
.LASF688:
	.ascii	"CSPACE_CSPACE_H \000"
.LASF389:
	.ascii	"SEL4_FORCE_LONG_ENUM(type) _enum_pad_ ## type = (1U"
	.ascii	" << ((sizeof(int)*8) - 1)) - 1\000"
.LASF192:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF858:
	.ascii	"get_sel4_rights_from_elf\000"
.LASF84:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF737:
	.ascii	"PAGE_ALIGN(addr) ((addr) & ~(PAGEMASK))\000"
.LASF491:
	.ascii	"__SWINUM(x) ((x) & 0x00ffffff)\000"
.LASF239:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF867:
	.ascii	"seL4_ARM_Page_Unify_Instruction\000"
.LASF525:
	.ascii	"__DEFINED_uint32_t \000"
.LASF223:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF707:
	.ascii	"CSPACE_NODE_SIZE_IN_SLOTS (1 << CSPACE_NODE_SIZE_IN"
	.ascii	"_SLOTS_BITS)\000"
.LASF601:
	.ascii	"__NEED_size_t \000"
.LASF233:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF66:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF67:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF607:
	.ascii	"__DEFINED_off_t \000"
.LASF903:
	.ascii	"elf_checkFile\000"
.LASF879:
	.ascii	"sos_cap\000"
.LASF306:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF189:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF142:
	.ascii	"__DBL_DIG__ 15\000"
.LASF219:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF454:
	.ascii	"CONFIG_LIB_ETHDRIVER_RX_DESC_COUNT 32\000"
.LASF492:
	.ascii	"__SWINUM\000"
.LASF186:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF103:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF163:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF241:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF681:
	.ascii	"ELF_PRINT_ALL (ELF_PRINT_PROGRAM_HEADERS | ELF_PRIN"
	.ascii	"T_SECTIONS)\000"
.LASF710:
	.ascii	"_LIBOS_ELF_H_ \000"
.LASF62:
	.ascii	"__UINT_FAST8_TYPE__ unsigned char\000"
.LASF789:
	.ascii	"seL4_NotEnoughMemory\000"
.LASF894:
	.ascii	"cspace_copy_cap\000"
.LASF571:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF600:
	.ascii	"__NEED_va_list \000"
.LASF740:
	.ascii	"short int\000"
.LASF882:
	.ascii	"kvpage\000"
.LASF107:
	.ascii	"__UINT16_C(c) c\000"
.LASF303:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF808:
	.ascii	"ARMPageTableMap\000"
.LASF900:
	.ascii	"elf_getProgramHeaderMemorySize\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF904:
	.ascii	"elf_getNumProgramHeaders\000"
.LASF683:
	.ascii	"__NEED_locale_t \000"
.LASF153:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF86:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF445:
	.ascii	"CONFIG_PLAT_IMX6 1\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 0\000"
.LASF760:
	.ascii	"words\000"
.LASF21:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF179:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF859:
	.ascii	"permissions\000"
.LASF472:
	.ascii	"seL4_Fail(s) __assert_fail(s, __FILE__, __LINE__, _"
	.ascii	"_func__)\000"
.LASF255:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF556:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF696:
	.ascii	"WEXITSTATUS(s) (((s) & 0xff00) >> 8)\000"
.LASF869:
	.ascii	"start_offset\000"
.LASF89:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF522:
	.ascii	"__DEFINED_int64_t \000"
.LASF399:
	.ascii	"seL4_PageDirBits 14\000"
.LASF653:
	.ascii	"PT_SHLIB 5\000"
.LASF519:
	.ascii	"__DEFINED_int8_t \000"
.LASF885:
	.ascii	"elf_file\000"
.LASF610:
	.ascii	"NULL ((void*)0)\000"
.LASF270:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF621:
	.ascii	"BUFSIZ 1024\000"
.LASF630:
	.ascii	"__ELF_ELF_32_H__ \000"
.LASF544:
	.ascii	"INT64_MAX (0x7fffffffffffffffLL)\000"
.LASF383:
	.ascii	"__LIBSEL4_SIMPLE_TYPES_H \000"
.LASF305:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF907:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/build/arm/imx6/so"
	.ascii	"s\000"
.LASF229:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF645:
	.ascii	"ELFMAG3 'F'\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF624:
	.ascii	"TMP_MAX 10000\000"
.LASF329:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF820:
	.ascii	"seL4_CapInitThreadTCB\000"
.LASF334:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF361:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF582:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF272:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF252:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF864:
	.ascii	"extraCaps\000"
.LASF170:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF824:
	.ascii	"seL4_CapIOPort\000"
.LASF267:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF416:
	.ascii	"CONFIG_AEP_BINDING 1\000"
.LASF910:
	.ascii	"memcpy\000"
.LASF24:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF718:
	.ascii	"PROCESS_CONFIG (0x70000000)\000"
.LASF732:
	.ascii	"conditional_panic(a,b) __conditional_panic(a, b, __"
	.ascii	"FILE__, __func__, __LINE__)\000"
.LASF722:
	.ascii	"_UT_H_ \000"
.LASF669:
	.ascii	"DT_STRTAB 5\000"
.LASF428:
	.ascii	"CONFIG_LIB_PLATSUPPORT 1\000"
.LASF561:
	.ascii	"INTMAX_MIN INT64_MIN\000"
.LASF417:
	.ascii	"CONFIG_SOS_STARTUP_APP \"lping\"\000"
.LASF576:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF154:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF227:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF715:
	.ascii	"DEVICE_START (0xB0000000)\000"
.LASF17:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF612:
	.ascii	"SEEK_SET\000"
.LASF221:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF448:
	.ascii	"CONFIG_USER_EXTRA_CFLAGS \"-D_POSIX_SOURCE\"\000"
.LASF234:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF380:
	.ascii	"FASTPATH 1\000"
.LASF370:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF367:
	.ascii	"__unix__ 1\000"
.LASF374:
	.ascii	"ARMV7_A 1\000"
.LASF475:
	.ascii	"seL4_DebugAssert(expr) seL4_Assert(expr)\000"
.LASF299:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF487:
	.ascii	"__LIBSEL4_ARCH_CONSTANTS_H \000"
.LASF244:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF259:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF156:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF670:
	.ascii	"DT_SYMTAB 6\000"
.LASF512:
	.ascii	"__NEED_int_fast64_t \000"
.LASF449:
	.ascii	"CONFIG_LIB_MUSL_C_USE_PREBUILT 1\000"
.LASF79:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF181:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF78:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF656:
	.ascii	"PT_NUM 8\000"
.LASF603:
	.ascii	"__NEED_off_t \000"
.LASF51:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF269:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF368:
	.ascii	"unix 1\000"
.LASF148:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF743:
	.ascii	"short unsigned int\000"
.LASF220:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF592:
	.ascii	"UINT8_C(c) c\000"
.LASF541:
	.ascii	"INT8_MAX (0x7f)\000"
.LASF351:
	.ascii	"__ARMEL__ 1\000"
.LASF534:
	.ascii	"__DEFINED_uint_fast64_t \000"
.LASF861:
	.ascii	"seL4_MessageInfo_new\000"
.LASF736:
	.ascii	"PAGEMASK ((PAGESIZE) - 1)\000"
.LASF877:
	.ascii	"dst_local\000"
.LASF432:
	.ascii	"CONFIG_LIB_ELFLOADER 1\000"
.LASF832:
	.ascii	"uint32_t\000"
.LASF243:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF476:
	.ascii	"__LIBSEL4_SYSCALL_H \000"
.LASF430:
	.ascii	"CONFIG_SOS_NETMASK \"225.225.225.0\"\000"
.LASF81:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF108:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffU\000"
.LASF626:
	.ascii	"stdin (stdin)\000"
.LASF385:
	.ascii	"seL4_True 1\000"
.LASF754:
	.ascii	"seL4_ARM_ExecuteNever\000"
.LASF74:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF874:
	.ascii	"segment_size\000"
.LASF862:
	.ascii	"label\000"
.LASF661:
	.ascii	"SHT_SYMTAB 2\000"
.LASF793:
	.ascii	"seL4_AllRights\000"
.LASF668:
	.ascii	"DT_HASH 4\000"
.LASF748:
	.ascii	"seL4_CPtr\000"
.LASF284:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF790:
	.ascii	"seL4_CanWrite\000"
.LASF193:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF703:
	.ascii	"WIFCONTINUED(s) ((s) == 0xffff)\000"
.LASF360:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF513:
	.ascii	"__NEED_uint_fast8_t \000"
.LASF99:
	.ascii	"__INT16_C(c) c\000"
.LASF697:
	.ascii	"WTERMSIG(s) ((s) & 0x7f)\000"
.LASF295:
	.ascii	"__DA_IBIT__ 32\000"
.LASF464:
	.ascii	"CONFIG_LIB_LWIP 1\000"
.LASF401:
	.ascii	"seL4_Frame_MRs 7\000"
.LASF663:
	.ascii	"SHT_REL 9\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF716:
	.ascii	"ROOT_VSTART (0xC0000000)\000"
.LASF438:
	.ascii	"CONFIG_ARCH_ARM_V7A 1\000"
.LASF388:
	.ascii	"__LIBSEL4_MACROS_H \000"
.LASF144:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF397:
	.ascii	"seL4_EndpointBits 4\000"
.LASF791:
	.ascii	"seL4_CanRead\000"
.LASF596:
	.ascii	"INTMAX_C(c) c ## LL\000"
.LASF497:
	.ascii	"__LIBSEL4_BOOTINFO_H \000"
.LASF141:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF216:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF816:
	.ascii	"ARMPageGetAddress\000"
.LASF373:
	.ascii	"ARCH_ARM 1\000"
.LASF551:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF73:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF53:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF565:
	.ascii	"WINT_MAX INT32_MAX\000"
.LASF112:
	.ascii	"__INT_FAST8_MAX__ 0x7f\000"
.LASF230:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF8:
	.ascii	"__VERSION__ \"5.4.0 20160609\"\000"
.LASF392:
	.ascii	"__LIBSEL4_ARCH_TYPES_H \000"
.LASF557:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
