	.cpu cortex-a9
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderTable, %function
elf32_getProgramHeaderTable:
	.fnstart
.LFB3:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf32.h"
	.loc 1 190 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	.setfp fp, sp, #0
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	.loc 1 192 0
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	.loc 1 193 0
	mov	r0, r3
	sub	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.fnend
	.size	elf32_getProgramHeaderTable, .-elf32_getProgramHeaderTable
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderType, %function
elf32_getProgramHeaderType:
	.fnstart
.LFB5:
	.loc 1 204 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r3, r1
	strh	r3, [fp, #-10]	@ movhi
	.loc 1 205 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3]
	.loc 1 206 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE5:
	.fnend
	.size	elf32_getProgramHeaderType, .-elf32_getProgramHeaderType
	.align	2
	.syntax unified
	.arm
	.type	regions_overlap, %function
regions_overlap:
	.fnstart
.LFB22:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/main.c"
	.loc 2 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	.setfp fp, sp, #0
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	.loc 2 27 0
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L6
	.loc 2 28 0
	mov	r3, #0
	b	.L7
.L6:
	.loc 2 30 0
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bcs	.L8
	.loc 2 31 0
	mov	r3, #0
	b	.L7
.L8:
	.loc 2 33 0
	mov	r3, #1
.L7:
	.loc 2 34 0
	mov	r0, r3
	sub	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE22:
	.fnend
	.size	regions_overlap, .-regions_overlap
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Kernel load address would overlap ELF-loader!\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.type	ensure_phys_range_valid, %function
ensure_phys_range_valid:
	.fnstart
.LFB23:
	.loc 2 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 2 45 0
	ldr	r3, [fp, #-12]
	sub	r1, r3, #1
	movw	r2, #:lower16:_start
	movt	r2, #:upper16:_start
	.loc 2 46 0
	movw	r3, #:lower16:_end
	movt	r3, #:upper16:_end
	.loc 2 45 0
	sub	r3, r3, #1
	ldr	r0, [fp, #-8]
	bl	regions_overlap
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	.loc 2 47 0
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	printf
	.loc 2 48 0
	bl	abort
.L11:
	.loc 2 50 0
	nop
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE23:
	.fnend
	.size	ensure_phys_range_valid, .-ensure_phys_range_valid
	.align	2
	.syntax unified
	.arm
	.type	unpack_elf_to_paddr, %function
unpack_elf_to_paddr:
	.fnstart
.LFB24:
	.loc 2 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	.loc 2 63 0
	sub	r3, fp, #44
	sub	r2, fp, #36
	mov	r1, #0
	ldr	r0, [fp, #-48]
	bl	elf_getMemoryBounds
	.loc 2 64 0
	ldrd	r2, [fp, #-44]
	mov	r1, r2
	ldrd	r2, [fp, #-36]
	mov	r3, r2
	sub	r3, r1, r3
	str	r3, [fp, #-12]
	.loc 2 65 0
	ldrd	r2, [fp, #-36]
	ldr	r3, [fp, #-52]
	sub	r3, r3, r2
	str	r3, [fp, #-16]
	.loc 2 68 0
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-12]
	mov	r1, #0
	mov	r0, r3
	bl	memset
	.loc 2 71 0
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L13
.L16:
.LBB2:
	.loc 2 76 0
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf32_getProgramHeaderType
	mov	r3, r0
	cmp	r3, #1
	bne	.L17
	.loc 2 81 0
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderVaddr
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	str	r3, [fp, #-20]
	.loc 2 82 0
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderFileSize
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	str	r3, [fp, #-24]
	.loc 2 83 0
	ldr	r3, [fp, #-8]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderOffset
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	str	r3, [fp, #-28]
	.loc 2 86 0
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r0, r3
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	mov	r1, r3
	bl	memcpy
	b	.L15
.L17:
	.loc 2 77 0
	nop
.L15:
.LBE2:
	.loc 2 71 0 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L13:
	.loc 2 71 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-48]
	bl	elf_getNumProgramHeaders
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L16
	.loc 2 89 0 is_stmt 1
	nop
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE24:
	.fnend
	.size	unpack_elf_to_paddr, .-unpack_elf_to_paddr
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Attempting to load ELF at unaligned physical addres"
	.ascii	"s!\012\000"
	.align	2
.LC2:
	.ascii	"Input ELF file not 4-byte aligned in memory!\012\000"
	.align	2
.LC3:
	.ascii	"ELF-loading image '%s'\012\000"
	.align	2
.LC4:
	.ascii	"  paddr=[%x..%x]\012\000"
	.align	2
.LC5:
	.ascii	"  vaddr=[%x..%x]\012\000"
	.align	2
.LC6:
	.ascii	"  virt_entry=%x\012\000"
	.align	2
.LC7:
	.ascii	"Attempting to load invalid ELF file '%s'.\012\000"
	.align	2
.LC8:
	.ascii	"Start of image '%s' is not 4K-aligned!\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.type	load_elf, %function
load_elf:
	.fnstart
.LFB25:
	.loc 2 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	.save {r4, r5, r6, r7, fp, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #20
	add	fp, sp, #20
	.cfi_def_cfa 11, 4
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	.loc 2 103 0
	sub	r3, fp, #44
	sub	r2, fp, #36
	mov	r1, #0
	ldr	r0, [fp, #-52]
	bl	elf_getMemoryBounds
	.loc 2 104 0
	ldrd	r2, [fp, #-44]
	subs	r2, r2, #1
	sbc	r3, r3, #0
	lsr	r6, r2, #12
	orr	r6, r6, r3, lsl #20
	lsr	r7, r3, #12
	adds	r2, r6, #1
	adc	r3, r7, #0
	lsl	r5, r3, #12
	orr	r5, r5, r2, lsr #20
	lsl	r4, r2, #12
	strd	r4, [fp, #-44]
	.loc 2 105 0
	ldrd	r2, [fp, #-44]
	mov	r1, r2
	ldrd	r2, [fp, #-36]
	mov	r3, r2
	sub	r3, r1, r3
	str	r3, [fp, #-24]
	.loc 2 108 0
	ldr	r3, [fp, #-56]
	ubfx	r3, r3, #0, #12
	cmp	r3, #0
	beq	.L19
	.loc 2 109 0
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	.loc 2 110 0
	bl	abort
.L19:
	.loc 2 115 0
	ldr	r3, [fp, #-56]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L20
	.loc 2 116 0
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
	.loc 2 117 0
	bl	abort
.L20:
	.loc 2 121 0
	ldr	r1, [fp, #-48]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
	.loc 2 122 0
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	sub	r3, r3, #1
	mov	r2, r3
	ldr	r1, [fp, #-56]
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	printf
	.loc 2 123 0
	ldrd	r2, [fp, #-36]
	mov	r1, r2
	ldrd	r2, [fp, #-44]
	mov	r3, r2
	sub	r3, r3, #1
	mov	r2, r3
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	printf
	.loc 2 124 0
	ldr	r0, [fp, #-52]
	bl	elf_getEntryPoint
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	mov	r1, r3
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	bl	printf
	.loc 2 127 0
	ldr	r0, [fp, #-52]
	bl	elf_checkFile
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	.loc 2 128 0
	ldr	r1, [fp, #-48]
	movw	r0, #:lower16:.LC7
	movt	r0, #:upper16:.LC7
	bl	printf
	.loc 2 129 0
	bl	abort
.L21:
	.loc 2 133 0
	ldrd	r2, [fp, #-36]
	movw	r0, #4095
	mov	r1, #0
	and	r2, r2, r0
	and	r3, r3, r1
	orrs	r3, r2, r3
	beq	.L22
	.loc 2 134 0
	ldr	r1, [fp, #-48]
	movw	r0, #:lower16:.LC8
	movt	r0, #:upper16:.LC8
	bl	printf
	.loc 2 135 0
	bl	abort
.L22:
	.loc 2 139 0
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	ensure_phys_range_valid
	.loc 2 142 0
	ldr	r1, [fp, #-56]
	ldr	r0, [fp, #-52]
	bl	unpack_elf_to_paddr
	.loc 2 145 0
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-56]
	str	r2, [r3]
	.loc 2 146 0
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #4]
	.loc 2 147 0
	ldrd	r2, [fp, #-36]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #8]
	.loc 2 148 0
	ldrd	r2, [fp, #-44]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #12]
	.loc 2 149 0
	ldr	r0, [fp, #-52]
	bl	elf_getEntryPoint
	mov	r2, r0
	mov	r3, r1
	ldr	r3, [fp, #-60]
	str	r2, [r3, #16]
	.loc 2 150 0
	ldrd	r2, [fp, #-36]
	ldr	r3, [fp, #-56]
	sub	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r2, [r3, #20]
	.loc 2 153 0
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	sub	r3, r3, #1
	lsr	r3, r3, #12
	add	r3, r3, #1
	lsl	r3, r3, #12
	.loc 2 154 0
	mov	r0, r3
	sub	sp, fp, #20
	.cfi_def_cfa 13, 24
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
	.cfi_endproc
.LFE25:
	.fnend
	.size	load_elf, .-load_elf
	.section	.rodata
	.align	2
.LC9:
	.ascii	"kernel.elf\000"
	.align	2
.LC10:
	.ascii	"No kernel image present in archive!\012\000"
	.align	2
.LC11:
	.ascii	"Kernel image not a valid ELF file!\012\000"
	.align	2
.LC12:
	.ascii	"kernel\000"
	.align	2
.LC13:
	.ascii	"Kernel image not first image in archive.\012\000"
	.text
	.align	2
	.global	load_images
	.syntax unified
	.arm
	.type	load_images, %function
load_images:
	.fnstart
.LFB26:
	.loc 2 186 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #56
	sub	sp, sp, #56
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	.loc 2 194 0
	sub	r3, fp, #44
	mov	r2, r3
	movw	r1, #:lower16:.LC9
	movt	r1, #:upper16:.LC9
	movw	r0, #:lower16:_archive_start
	movt	r0, #:upper16:_archive_start
	bl	cpio_get_file
	str	r0, [fp, #-16]
	.loc 2 195 0
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L25
	.loc 2 196 0
	movw	r0, #:lower16:.LC10
	movt	r0, #:upper16:.LC10
	bl	printf
	.loc 2 197 0
	bl	abort
.L25:
	.loc 2 199 0
	ldr	r0, [fp, #-16]
	bl	elf_checkFile
	mov	r3, r0
	cmp	r3, #0
	beq	.L26
	.loc 2 200 0
	movw	r0, #:lower16:.LC11
	movt	r0, #:upper16:.LC11
	bl	printf
	.loc 2 201 0
	bl	abort
.L26:
	.loc 2 203 0
	sub	r3, fp, #36
	sub	r2, fp, #28
	mov	r1, #1
	ldr	r0, [fp, #-16]
	bl	elf_getMemoryBounds
	.loc 2 205 0
	ldrd	r2, [fp, #-28]
	ldr	r3, [fp, #-48]
	ldr	r1, [fp, #-16]
	movw	r0, #:lower16:.LC12
	movt	r0, #:upper16:.LC12
	bl	load_elf
	str	r0, [fp, #-12]
	.loc 2 214 0
	sub	r3, fp, #44
	sub	r2, fp, #40
	mov	r1, #0
	movw	r0, #:lower16:_archive_start
	movt	r0, #:upper16:_archive_start
	bl	cpio_get_entry
	.loc 2 215 0
	ldr	r3, [fp, #-40]
	movw	r1, #:lower16:.LC9
	movt	r1, #:upper16:.LC9
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L27
	.loc 2 216 0
	movw	r0, #:lower16:.LC13
	movt	r0, #:upper16:.LC13
	bl	printf
	.loc 2 217 0
	bl	abort
.L27:
	.loc 2 219 0
	ldr	r3, [fp, #-60]
	mov	r2, #0
	str	r2, [r3]
	.loc 2 220 0
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L28
.L31:
.LBB3:
	.loc 2 222 0
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	sub	r3, fp, #44
	sub	r2, fp, #40
	movw	r0, #:lower16:_archive_start
	movt	r0, #:upper16:_archive_start
	bl	cpio_get_entry
	str	r0, [fp, #-20]
	.loc 2 224 0
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L32
	.loc 2 229 0 discriminator 2
	ldr	r0, [fp, #-40]
	.loc 2 230 0 discriminator 2
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	.loc 2 229 0 discriminator 2
	mov	r2, r3
	.loc 2 230 0 discriminator 2
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	mov	r2, r3
	.loc 2 229 0 discriminator 2
	ldr	r3, [fp, #-52]
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #-20]
	bl	load_elf
	str	r0, [fp, #-12]
	.loc 2 231 0 discriminator 2
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r3, [fp, #-60]
	str	r2, [r3]
.LBE3:
	.loc 2 220 0 discriminator 2
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L28:
	.loc 2 220 0 is_stmt 0 discriminator 1
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L31
	.loc 2 233 0 is_stmt 1
	b	.L30
.L32:
.LBB4:
	.loc 2 225 0
	nop
.L30:
.LBE4:
	.loc 2 233 0 discriminator 1
	nop
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE26:
	.fnend
	.size	load_images, .-load_images
.Letext0:
	.file 3 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/stdint.h"
	.file 4 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elfloader.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x552
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF535
	.byte	0xc
	.4byte	.LASF536
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF452
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF453
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF454
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF455
	.uleb128 0x4
	.4byte	.LASF457
	.byte	0x3
	.byte	0x14
	.4byte	0x53
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF456
	.uleb128 0x4
	.4byte	.LASF458
	.byte	0x3
	.byte	0x15
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF459
	.uleb128 0x4
	.4byte	.LASF460
	.byte	0x3
	.byte	0x16
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF461
	.uleb128 0x4
	.4byte	.LASF462
	.byte	0x3
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF478
	.byte	0x34
	.byte	0x1
	.byte	0x59
	.4byte	0x13e
	.uleb128 0x6
	.4byte	.LASF463
	.byte	0x1
	.byte	0x5a
	.4byte	0x13e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF464
	.byte	0x1
	.byte	0x5b
	.4byte	0x48
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF465
	.byte	0x1
	.byte	0x5d
	.4byte	0x48
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF466
	.byte	0x1
	.byte	0x5e
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF467
	.byte	0x1
	.byte	0x5f
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF468
	.byte	0x1
	.byte	0x60
	.4byte	0x5a
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF469
	.byte	0x1
	.byte	0x61
	.4byte	0x5a
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF470
	.byte	0x1
	.byte	0x62
	.4byte	0x5a
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF471
	.byte	0x1
	.byte	0x63
	.4byte	0x48
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF472
	.byte	0x1
	.byte	0x64
	.4byte	0x48
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF473
	.byte	0x1
	.byte	0x66
	.4byte	0x48
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF474
	.byte	0x1
	.byte	0x68
	.4byte	0x48
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF475
	.byte	0x1
	.byte	0x69
	.4byte	0x48
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF476
	.byte	0x1
	.byte	0x6a
	.4byte	0x48
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	0x41
	.4byte	0x14e
	.uleb128 0x8
	.4byte	0x14e
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF477
	.uleb128 0x5
	.4byte	.LASF479
	.byte	0x20
	.byte	0x1
	.byte	0x82
	.4byte	0x1c2
	.uleb128 0x6
	.4byte	.LASF480
	.byte	0x1
	.byte	0x83
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF481
	.byte	0x1
	.byte	0x84
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF482
	.byte	0x1
	.byte	0x85
	.4byte	0x5a
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF483
	.byte	0x1
	.byte	0x87
	.4byte	0x5a
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF484
	.byte	0x1
	.byte	0x89
	.4byte	0x5a
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF485
	.byte	0x1
	.byte	0x8b
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF486
	.byte	0x1
	.byte	0x90
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF487
	.byte	0x1
	.byte	0x92
	.4byte	0x5a
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF488
	.byte	0x4
	.byte	0x10
	.4byte	0x7e
	.uleb128 0x4
	.4byte	.LASF489
	.byte	0x4
	.byte	0x11
	.4byte	0x7e
	.uleb128 0x5
	.4byte	.LASF490
	.byte	0x18
	.byte	0x4
	.byte	0x1d
	.4byte	0x22d
	.uleb128 0x6
	.4byte	.LASF491
	.byte	0x4
	.byte	0x1f
	.4byte	0x1c2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF492
	.byte	0x4
	.byte	0x20
	.4byte	0x1c2
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF493
	.byte	0x4
	.byte	0x23
	.4byte	0x1cd
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF494
	.byte	0x4
	.byte	0x24
	.4byte	0x1cd
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF495
	.byte	0x4
	.byte	0x27
	.4byte	0x1cd
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF496
	.byte	0x4
	.byte	0x30
	.4byte	0x5a
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF497
	.uleb128 0x9
	.4byte	.LASF498
	.byte	0x1
	.byte	0xbe
	.4byte	0x25c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c
	.uleb128 0xa
	.4byte	.LASF500
	.byte	0x1
	.byte	0xbe
	.4byte	0x262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x155
	.uleb128 0xb
	.byte	0x4
	.4byte	0x89
	.uleb128 0xc
	.4byte	.LASF499
	.byte	0x1
	.byte	0xcb
	.4byte	0x5a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0xa
	.4byte	.LASF500
	.byte	0x1
	.byte	0xcb
	.4byte	0x262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF501
	.byte	0x2
	.byte	0x18
	.4byte	0x33
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ef
	.uleb128 0xa
	.4byte	.LASF502
	.byte	0x2
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF503
	.byte	0x2
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.4byte	.LASF504
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF505
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF508
	.byte	0x2
	.byte	0x2a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321
	.uleb128 0xa
	.4byte	.LASF506
	.byte	0x2
	.byte	0x2a
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF507
	.byte	0x2
	.byte	0x2a
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF509
	.byte	0x2
	.byte	0x37
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cb
	.uleb128 0xd
	.ascii	"elf\000"
	.byte	0x2
	.byte	0x37
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.4byte	.LASF510
	.byte	0x2
	.byte	0x37
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.4byte	.LASF511
	.byte	0x2
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF512
	.byte	0x2
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF513
	.byte	0x2
	.byte	0x3a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF496
	.byte	0x2
	.byte	0x3b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x2
	.byte	0x3c
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0xf
	.4byte	.LASF514
	.byte	0x2
	.byte	0x48
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF515
	.byte	0x2
	.byte	0x49
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.4byte	.LASF516
	.byte	0x2
	.byte	0x49
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF517
	.byte	0x2
	.byte	0x60
	.4byte	0x1c2
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x449
	.uleb128 0xa
	.4byte	.LASF518
	.byte	0x2
	.byte	0x60
	.4byte	0x449
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.ascii	"elf\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF510
	.byte	0x2
	.byte	0x61
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.4byte	.LASF519
	.byte	0x2
	.byte	0x61
	.4byte	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.4byte	.LASF511
	.byte	0x2
	.byte	0x63
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF512
	.byte	0x2
	.byte	0x63
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF513
	.byte	0x2
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x44f
	.uleb128 0x13
	.4byte	0x22d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0x14
	.4byte	.LASF537
	.byte	0x2
	.byte	0xb8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0xa
	.4byte	.LASF520
	.byte	0x2
	.byte	0xb8
	.4byte	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.4byte	.LASF521
	.byte	0x2
	.byte	0xb8
	.4byte	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.4byte	.LASF522
	.byte	0x2
	.byte	0xb9
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.4byte	.LASF523
	.byte	0x2
	.byte	0xb9
	.4byte	0x51c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x2
	.byte	0xbb
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF524
	.byte	0x2
	.byte	0xbc
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LASF525
	.byte	0x2
	.byte	0xbc
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.4byte	.LASF526
	.byte	0x2
	.byte	0xbd
	.4byte	0x1c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF527
	.byte	0x2
	.byte	0xbe
	.4byte	0x449
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.4byte	.LASF528
	.byte	0x2
	.byte	0xbf
	.4byte	0x522
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.4byte	.LASF529
	.byte	0x2
	.byte	0xc2
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xf
	.4byte	.LASF530
	.byte	0x2
	.byte	0xde
	.4byte	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF531
	.uleb128 0x7
	.4byte	0x22d
	.4byte	0x534
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF532
	.byte	0x4
	.byte	0x38
	.4byte	0x529
	.uleb128 0x17
	.4byte	.LASF533
	.byte	0x4
	.byte	0x39
	.4byte	0x529
	.uleb128 0x17
	.4byte	.LASF534
	.byte	0x4
	.byte	0x3a
	.4byte	0x529
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
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
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
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
	.byte	0x6
	.uleb128 0x14f
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF345
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF346
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF347
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF356
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF357
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF358
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF380
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/stdio.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 6 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/stdlib.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF387
	.byte	0x4
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/string.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF388
	.byte	0x4
	.file 8 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF389
	.file 9 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/../stdint.h"
	.byte	0x3
	.uleb128 0x6a
	.uleb128 0x9
	.byte	0x4
	.file 10 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/../stdio.h"
	.byte	0x3
	.uleb128 0x6b
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.uleb128 0x6d
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF390
	.byte	0x4
	.file 11 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf64.h"
	.byte	0x3
	.uleb128 0x6e
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF391
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 12 "/home/mint/seL4/dhs-demo-feb-2018/stage/arm/imx6/include/cpio/cpio.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF451
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.12.36e8edf2d689119cedfba9c16f67f676,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF383
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.12.16f9df2376aa9f04360b835d7d144ffd,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF386
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.elf.h.115.cbb96c1b81938d9780ca3474700248d1,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF440
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.elfloader.h.12.c8f4fefb797c3fdfb6c72a5c812e38f3,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF446
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.cpio.h.12.321ff57e3395495d9c46996693eedb0f,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF450
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF85:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF181:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF205:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF146:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF413:
	.ascii	"PT_SHLIB 5\000"
.LASF407:
	.ascii	"ELFCLASS64 2\000"
.LASF323:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF437:
	.ascii	"DT_RELENT 19\000"
.LASF180:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF389:
	.ascii	"__ELF_ELF_H__ \000"
.LASF526:
	.ascii	"next_phys_addr\000"
.LASF394:
	.ascii	"PF_R 4\000"
.LASF439:
	.ascii	"ELF_PRINT_SECTIONS 2\000"
.LASF104:
	.ascii	"__UINT8_C(c) c\000"
.LASF449:
	.ascii	"CPIO_FOOTER_MAGIC \"TRAILER!!!\"\000"
.LASF328:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF375:
	.ascii	"ARM_CORTEX_A9 1\000"
.LASF270:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF286:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF442:
	.ascii	"PAGE_BITS 12\000"
.LASF424:
	.ascii	"SHF_ALLOC 2\000"
.LASF133:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF142:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF374:
	.ascii	"ARMV7_A 1\000"
.LASF340:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF509:
	.ascii	"unpack_elf_to_paddr\000"
.LASF220:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF469:
	.ascii	"e_shoff\000"
.LASF147:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF196:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF123:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF335:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 4\000"
.LASF479:
	.ascii	"Elf32_Phdr\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ unsigned int\000"
.LASF459:
	.ascii	"unsigned int\000"
.LASF530:
	.ascii	"user_elf\000"
.LASF405:
	.ascii	"ELFMAG3 'F'\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF471:
	.ascii	"e_ehsize\000"
.LASF429:
	.ascii	"DT_SYMTAB 6\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF267:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF5:
	.ascii	"__GNUC__ 5\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF227:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF466:
	.ascii	"e_version\000"
.LASF185:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF330:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF514:
	.ascii	"dest_vaddr\000"
.LASF303:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF140:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF468:
	.ascii	"e_phoff\000"
.LASF309:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF334:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF173:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF155:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF260:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF387:
	.ascii	"_STDLIB_H_ \000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF95:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF383:
	.ascii	"__PTR_SIZE 32\000"
.LASF84:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF498:
	.ascii	"elf32_getProgramHeaderTable\000"
.LASF322:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF412:
	.ascii	"PT_NOTE 4\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF174:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF499:
	.ascii	"elf32_getProgramHeaderType\000"
.LASF151:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF210:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF343:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF410:
	.ascii	"PT_DYNAMIC 2\000"
.LASF97:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF524:
	.ascii	"kernel_phys_start\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF265:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF188:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF225:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ signed char\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF331:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF251:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF525:
	.ascii	"kernel_phys_end\000"
.LASF512:
	.ascii	"max_vaddr\000"
.LASF138:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF426:
	.ascii	"DT_NULL 0\000"
.LASF448:
	.ascii	"CPIO_HEADER_MAGIC \"070701\"\000"
.LASF350:
	.ascii	"__ARMEL__ 1\000"
.LASF302:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF376:
	.ascii	"IMX6 1\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF96:
	.ascii	"__INT8_C(c) c\000"
.LASF452:
	.ascii	"signed char\000"
.LASF444:
	.ascii	"MASK(n) (BIT(n)-1)\000"
.LASF510:
	.ascii	"dest_paddr\000"
.LASF418:
	.ascii	"ELFDATA2MSB 2\000"
.LASF467:
	.ascii	"e_entry\000"
.LASF266:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF458:
	.ascii	"uint32_t\000"
.LASF513:
	.ascii	"image_size\000"
.LASF408:
	.ascii	"PT_NULL 0\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF366:
	.ascii	"__unix__ 1\000"
.LASF256:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF292:
	.ascii	"__SA_IBIT__ 16\000"
.LASF222:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF114:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF341:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF127:
	.ascii	"__FLT_DIG__ 6\000"
.LASF149:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF314:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF311:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF293:
	.ascii	"__DA_FBIT__ 31\000"
.LASF339:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 4\000"
.LASF171:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF461:
	.ascii	"long long unsigned int\000"
.LASF421:
	.ascii	"SHT_NOBITS 8\000"
.LASF238:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF436:
	.ascii	"DT_RELSZ 18\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF450:
	.ascii	"CPIO_ALIGNMENT 4\000"
.LASF257:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF207:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF192:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF356:
	.ascii	"__ARM_EABI__ 1\000"
.LASF103:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF90:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF500:
	.ascii	"file\000"
.LASF382:
	.ascii	"UINT64_MAX (18446744073709551615ULL)\000"
.LASF87:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF218:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF187:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF451:
	.ascii	"MIN(a,b) (((a)<(b))?(a):(b))\000"
.LASF215:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF259:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF109:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF125:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF484:
	.ascii	"p_filesz\000"
.LASF226:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF153:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF246:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF399:
	.ascii	"EI_CLASS 4\000"
.LASF213:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF397:
	.ascii	"EI_MAG2 2\000"
.LASF390:
	.ascii	"__ELF_ELF_32_H__ \000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF115:
	.ascii	"__UINT_FAST8_MAX__ 0xff\000"
.LASF367:
	.ascii	"unix 1\000"
.LASF229:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF359:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF148:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF179:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF201:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF320:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF81:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF248:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF240:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF532:
	.ascii	"_start\000"
.LASF472:
	.ascii	"e_phentsize\000"
.LASF234:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF230:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF329:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF326:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF527:
	.ascii	"elf_filename\000"
.LASF191:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF300:
	.ascii	"__USA_IBIT__ 16\000"
.LASF402:
	.ascii	"ELFMAG0 '\\177'\000"
.LASF182:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF490:
	.ascii	"image_info\000"
.LASF333:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF43:
	.ascii	"__INT32_TYPE__ int\000"
.LASF385:
	.ascii	"NULL ((void *)0)\000"
.LASF170:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF515:
	.ascii	"data_size\000"
.LASF474:
	.ascii	"e_shentsize\000"
.LASF419:
	.ascii	"SHT_PROGBITS 1\000"
.LASF8:
	.ascii	"__VERSION__ \"5.4.0 20160609\"\000"
.LASF294:
	.ascii	"__DA_IBIT__ 32\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF536:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/tools/common/../e"
	.ascii	"lfloader/src/arch-arm/main.c\000"
.LASF197:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF441:
	.ascii	"_ELFLOADER_H_ \000"
.LASF384:
	.ascii	"_STDIO_H_ \000"
.LASF261:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF401:
	.ascii	"EI_VERSION 6\000"
.LASF291:
	.ascii	"__SA_FBIT__ 15\000"
.LASF364:
	.ascii	"linux 1\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1009\000"
.LASF233:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF489:
	.ascii	"vaddr_t\000"
.LASF307:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF282:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF204:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF131:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF262:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF372:
	.ascii	"SOS_NFS_DIR \"/var/tftpboot/mint\"\000"
.LASF263:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF308:
	.ascii	"__NO_INLINE__ 1\000"
.LASF183:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF216:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF126:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF284:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF305:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF440:
	.ascii	"ELF_PRINT_ALL (ELF_PRINT_PROGRAM_HEADERS | ELF_PRIN"
	.ascii	"T_SECTIONS)\000"
.LASF379:
	.ascii	"SEL4_DEBUG_KERNEL 1\000"
.LASF245:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF116:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF143:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF235:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF93:
	.ascii	"__UINT32_MAX__ 0xffffffffU\000"
.LASF353:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF488:
	.ascii	"paddr_t\000"
.LASF199:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF310:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF250:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF511:
	.ascii	"min_vaddr\000"
.LASF470:
	.ascii	"e_flags\000"
.LASF337:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF101:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF370:
	.ascii	"_XOPEN_SOURCE 700\000"
.LASF239:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF176:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF255:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF487:
	.ascii	"p_align\000"
.LASF297:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF428:
	.ascii	"DT_STRTAB 5\000"
.LASF398:
	.ascii	"EI_MAG3 3\000"
.LASF299:
	.ascii	"__USA_FBIT__ 16\000"
.LASF91:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF409:
	.ascii	"PT_LOAD 1\000"
.LASF476:
	.ascii	"e_shstrndx\000"
.LASF92:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF378:
	.ascii	"DEBUG 1\000"
.LASF507:
	.ascii	"paddr_max\000"
.LASF478:
	.ascii	"Elf32_Header\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF336:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF172:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF121:
	.ascii	"__GCC_IEC_559 0\000"
.LASF517:
	.ascii	"load_elf\000"
.LASF209:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF141:
	.ascii	"__DBL_DIG__ 15\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF395:
	.ascii	"EI_MAG0 0\000"
.LASF249:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF288:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF208:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF134:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF243:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF465:
	.ascii	"e_machine\000"
.LASF520:
	.ascii	"kernel_info\000"
.LASF358:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF287:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF454:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF161:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF232:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF342:
	.ascii	"__arm__ 1\000"
.LASF380:
	.ascii	"FASTPATH 1\000"
.LASF154:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF157:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF278:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF475:
	.ascii	"e_shnum\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF446:
	.ascii	"ROUND_UP(n,b) (((((n) - 1) >> (b)) + 1) << (b))\000"
.LASF368:
	.ascii	"__ELF__ 1\000"
.LASF348:
	.ascii	"__THUMBEL__\000"
.LASF98:
	.ascii	"__INT16_C(c) c\000"
.LASF486:
	.ascii	"p_flags\000"
.LASF491:
	.ascii	"phys_region_start\000"
.LASF94:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF252:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF113:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF523:
	.ascii	"num_images\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF244:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF144:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF502:
	.ascii	"startA\000"
.LASF504:
	.ascii	"startB\000"
.LASF392:
	.ascii	"PF_X 1\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF88:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF214:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF108:
	.ascii	"__UINT32_C(c) c ## U\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ unsigned int\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 0\000"
.LASF427:
	.ascii	"DT_HASH 4\000"
.LASF360:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF480:
	.ascii	"p_type\000"
.LASF202:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF254:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF373:
	.ascii	"ARCH_ARM 1\000"
.LASF206:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF519:
	.ascii	"info\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF200:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF361:
	.ascii	"__gnu_linux__ 1\000"
.LASF162:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF295:
	.ascii	"__TA_FBIT__ 63\000"
.LASF166:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF122:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF482:
	.ascii	"p_vaddr\000"
.LASF156:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF224:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF327:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF344:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF485:
	.ascii	"p_memsz\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF242:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF503:
	.ascii	"endA\000"
.LASF168:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF505:
	.ascii	"endB\000"
.LASF86:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF223:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF417:
	.ascii	"ELFDATA2LSB 1\000"
.LASF89:
	.ascii	"__INT32_MAX__ 0x7fffffff\000"
.LASF301:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF159:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF189:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF106:
	.ascii	"__UINT16_C(c) c\000"
.LASF521:
	.ascii	"user_info\000"
.LASF190:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF355:
	.ascii	"__ARM_PCS 1\000"
.LASF272:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF457:
	.ascii	"uint16_t\000"
.LASF306:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF136:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF275:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF237:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF258:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF430:
	.ascii	"DT_RELA 7\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF434:
	.ascii	"DT_SYMENT 11\000"
.LASF274:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF497:
	.ascii	"char\000"
.LASF132:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF381:
	.ascii	"_STDINT_H \000"
.LASF493:
	.ascii	"virt_region_start\000"
.LASF279:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF111:
	.ascii	"__INT_FAST8_MAX__ 0x7f\000"
.LASF406:
	.ascii	"ELFCLASS32 1\000"
.LASF537:
	.ascii	"load_images\000"
.LASF453:
	.ascii	"short int\000"
.LASF247:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF177:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF281:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF483:
	.ascii	"p_paddr\000"
.LASF347:
	.ascii	"__thumb2__\000"
.LASF158:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF273:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF211:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF184:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF447:
	.ascii	"_LIB_CPIO_H_ \000"
.LASF473:
	.ascii	"e_phnum\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned char\000"
.LASF100:
	.ascii	"__INT32_C(c) c\000"
.LASF164:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF167:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF362:
	.ascii	"__linux 1\000"
.LASF403:
	.ascii	"ELFMAG1 'E'\000"
.LASF416:
	.ascii	"PT_NUM 8\000"
.LASF277:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF415:
	.ascii	"PT_TLS 7\000"
.LASF460:
	.ascii	"uint64_t\000"
.LASF198:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF496:
	.ascii	"phys_virt_offset\000"
.LASF400:
	.ascii	"EI_DATA 5\000"
.LASF118:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF117:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF194:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF102:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF271:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF298:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF338:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF280:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF371:
	.ascii	"HAVE_AUTOCONF 1\000"
.LASF219:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF135:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF393:
	.ascii	"PF_W 2\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF349:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF533:
	.ascii	"_end\000"
.LASF494:
	.ascii	"virt_region_end\000"
.LASF518:
	.ascii	"name\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF352:
	.ascii	"__VFP_FP__ 1\000"
.LASF217:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF495:
	.ascii	"virt_entry\000"
.LASF289:
	.ascii	"__HA_FBIT__ 7\000"
.LASF411:
	.ascii	"PT_INTERP 3\000"
.LASF422:
	.ascii	"SHT_REL 9\000"
.LASF231:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF462:
	.ascii	"uintptr_t\000"
.LASF324:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF110:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF431:
	.ascii	"DT_RELASZ 8\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF253:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF193:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF477:
	.ascii	"sizetype\000"
.LASF435:
	.ascii	"DT_REL 17\000"
.LASF283:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF290:
	.ascii	"__HA_IBIT__ 8\000"
.LASF531:
	.ascii	"long unsigned int\000"
.LASF414:
	.ascii	"PT_PHDR 6\000"
.LASF534:
	.ascii	"_archive_start\000"
.LASF357:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF346:
	.ascii	"__thumb__\000"
.LASF528:
	.ascii	"unused\000"
.LASF438:
	.ascii	"ELF_PRINT_PROGRAM_HEADERS 1\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 0\000"
.LASF443:
	.ascii	"BIT(x) (1 << (x))\000"
.LASF119:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF386:
	.ascii	"FILE void\000"
.LASF508:
	.ascii	"ensure_phys_range_valid\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF351:
	.ascii	"__SOFTFP__ 1\000"
.LASF463:
	.ascii	"e_ident\000"
.LASF501:
	.ascii	"regions_overlap\000"
.LASF404:
	.ascii	"ELFMAG2 'L'\000"
.LASF312:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF130:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF455:
	.ascii	"unsigned char\000"
.LASF169:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF433:
	.ascii	"DT_STRSZ 10\000"
.LASF163:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF124:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF236:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF445:
	.ascii	"IS_ALIGNED(n,b) (!((n) & MASK(b)))\000"
.LASF195:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF276:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF423:
	.ascii	"SHF_WRITE 1\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ int\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF464:
	.ascii	"e_type\000"
.LASF516:
	.ascii	"data_offset\000"
.LASF369:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF264:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF432:
	.ascii	"DT_RELAENT 9\000"
.LASF396:
	.ascii	"EI_MAG1 1\000"
.LASF522:
	.ascii	"max_user_images\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ unsigned int\000"
.LASF203:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF129:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF152:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF377:
	.ascii	"PLAT_IMX6 1\000"
.LASF325:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF332:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF139:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF529:
	.ascii	"kernel_elf\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF492:
	.ascii	"phys_region_end\000"
.LASF82:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF481:
	.ascii	"p_offset\000"
.LASF345:
	.ascii	"__APCS_32__ 1\000"
.LASF241:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF150:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF145:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF456:
	.ascii	"short unsigned int\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF296:
	.ascii	"__TA_IBIT__ 64\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF128:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF186:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF160:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF535:
	.ascii	"GNU C11 5.4.0 20160609 -marm -mcpu=cortex-a9 -mfloa"
	.ascii	"t-abi=soft -mtls-dialect=gnu -g3 -ggdb3 -g -g -std="
	.ascii	"gnu11 -funwind-tables -ffreestanding -fno-stack-pro"
	.ascii	"tector\000"
.LASF107:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffU\000"
.LASF391:
	.ascii	"__LIBELF_64_H__ \000"
.LASF120:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF112:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF365:
	.ascii	"__unix 1\000"
.LASF363:
	.ascii	"__linux__ 1\000"
.LASF425:
	.ascii	"SHF_EXECINSTR 4\000"
.LASF304:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF388:
	.ascii	"_STRING_H_ \000"
.LASF269:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF212:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF99:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffff\000"
.LASF506:
	.ascii	"paddr_min\000"
.LASF178:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF354:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF83:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF221:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF313:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF228:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF165:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF285:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF105:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF420:
	.ascii	"SHT_SYMTAB 2\000"
.LASF268:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF175:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF137:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
