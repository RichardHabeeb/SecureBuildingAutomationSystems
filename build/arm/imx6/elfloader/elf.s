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
	.file	"elf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.syntax unified
	.arm
	.type	elf32_getSectionTable, %function
elf32_getSectionTable:
	.fnstart
.LFB0:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf32.h"
	.loc 1 157 0
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
	.loc 1 159 0
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	.loc 1 160 0
	mov	r0, r3
	sub	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.fnend
	.size	elf32_getSectionTable, .-elf32_getSectionTable
	.align	2
	.syntax unified
	.arm
	.type	elf32_getSectionType, %function
elf32_getSectionType:
	.fnstart
.LFB1:
	.loc 1 165 0
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
	.loc 1 166 0
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	.loc 1 167 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.fnend
	.size	elf32_getSectionType, .-elf32_getSectionType
	.align	2
	.syntax unified
	.arm
	.type	elf32_getSectionFlags, %function
elf32_getSectionFlags:
	.fnstart
.LFB2:
	.loc 1 171 0
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
	.loc 1 172 0
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r3, [r3, #8]
	.loc 1 173 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE2:
	.fnend
	.size	elf32_getSectionFlags, .-elf32_getSectionFlags
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderTable, %function
elf32_getProgramHeaderTable:
	.fnstart
.LFB3:
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
	.type	elf32_getProgramHeaderFlags, %function
elf32_getProgramHeaderFlags:
	.fnstart
.LFB4:
	.loc 1 198 0
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
	.loc 1 199 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #24]
	.loc 1 200 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE4:
	.fnend
	.size	elf32_getProgramHeaderFlags, .-elf32_getProgramHeaderFlags
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
	.type	elf32_getProgramHeaderFileSize, %function
elf32_getProgramHeaderFileSize:
	.fnstart
.LFB6:
	.loc 1 210 0
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
	.loc 1 211 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #16]
	.loc 1 212 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE6:
	.fnend
	.size	elf32_getProgramHeaderFileSize, .-elf32_getProgramHeaderFileSize
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderMemorySize, %function
elf32_getProgramHeaderMemorySize:
	.fnstart
.LFB7:
	.loc 1 216 0
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
	.loc 1 217 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #20]
	.loc 1 218 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE7:
	.fnend
	.size	elf32_getProgramHeaderMemorySize, .-elf32_getProgramHeaderMemorySize
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderVaddr, %function
elf32_getProgramHeaderVaddr:
	.fnstart
.LFB8:
	.loc 1 222 0
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
	.loc 1 223 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	.loc 1 224 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE8:
	.fnend
	.size	elf32_getProgramHeaderVaddr, .-elf32_getProgramHeaderVaddr
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderPaddr, %function
elf32_getProgramHeaderPaddr:
	.fnstart
.LFB9:
	.loc 1 228 0
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
	.loc 1 229 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	.loc 1 230 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE9:
	.fnend
	.size	elf32_getProgramHeaderPaddr, .-elf32_getProgramHeaderPaddr
	.align	2
	.syntax unified
	.arm
	.type	elf32_getProgramHeaderOffset, %function
elf32_getProgramHeaderOffset:
	.fnstart
.LFB10:
	.loc 1 234 0
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
	.loc 1 235 0
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #5
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 1 236 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE10:
	.fnend
	.size	elf32_getProgramHeaderOffset, .-elf32_getProgramHeaderOffset
	.align	2
	.syntax unified
	.arm
	.type	elf64_getSectionTable, %function
elf64_getSectionTable:
	.fnstart
.LFB11:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf64.h"
	.loc 2 168 0
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
	.loc 2 170 0
	ldr	r3, [fp, #-8]
	ldrd	r2, [r3, #40]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	.loc 2 171 0
	mov	r0, r3
	sub	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE11:
	.fnend
	.size	elf64_getSectionTable, .-elf64_getSectionTable
	.align	2
	.syntax unified
	.arm
	.type	elf64_getSectionType, %function
elf64_getSectionType:
	.fnstart
.LFB12:
	.loc 2 176 0
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
	.loc 2 177 0
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #6
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	.loc 2 178 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE12:
	.fnend
	.size	elf64_getSectionType, .-elf64_getSectionType
	.align	2
	.syntax unified
	.arm
	.type	elf64_getSectionFlags, %function
elf64_getSectionFlags:
	.fnstart
.LFB13:
	.loc 2 182 0
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
	.loc 2 183 0
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionTable
	mov	r2, r0
	ldrh	r3, [fp, #-10]
	lsl	r3, r3, #6
	add	r3, r2, r3
	ldrd	r2, [r3, #8]
	mov	r3, r2
	.loc 2 184 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE13:
	.fnend
	.size	elf64_getSectionFlags, .-elf64_getSectionFlags
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderTable, %function
elf64_getProgramHeaderTable:
	.fnstart
.LFB14:
	.loc 2 203 0
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
	.loc 2 205 0
	ldr	r3, [fp, #-8]
	ldrd	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	.loc 2 206 0
	mov	r0, r3
	sub	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE14:
	.fnend
	.size	elf64_getProgramHeaderTable, .-elf64_getProgramHeaderTable
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderFlags, %function
elf64_getProgramHeaderFlags:
	.fnstart
.LFB15:
	.loc 2 211 0
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
	.loc 2 212 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	.loc 2 213 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE15:
	.fnend
	.size	elf64_getProgramHeaderFlags, .-elf64_getProgramHeaderFlags
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderType, %function
elf64_getProgramHeaderType:
	.fnstart
.LFB16:
	.loc 2 217 0
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
	.loc 2 218 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r3, [r3]
	.loc 2 219 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE16:
	.fnend
	.size	elf64_getProgramHeaderType, .-elf64_getProgramHeaderType
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderFileSize, %function
elf64_getProgramHeaderFileSize:
	.fnstart
.LFB17:
	.loc 2 223 0
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
	.loc 2 224 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldrd	r2, [r3, #32]
	.loc 2 225 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE17:
	.fnend
	.size	elf64_getProgramHeaderFileSize, .-elf64_getProgramHeaderFileSize
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderMemorySize, %function
elf64_getProgramHeaderMemorySize:
	.fnstart
.LFB18:
	.loc 2 229 0
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
	.loc 2 230 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldrd	r2, [r3, #40]
	.loc 2 231 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE18:
	.fnend
	.size	elf64_getProgramHeaderMemorySize, .-elf64_getProgramHeaderMemorySize
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderVaddr, %function
elf64_getProgramHeaderVaddr:
	.fnstart
.LFB19:
	.loc 2 235 0
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
	.loc 2 236 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldrd	r2, [r3, #16]
	.loc 2 237 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE19:
	.fnend
	.size	elf64_getProgramHeaderVaddr, .-elf64_getProgramHeaderVaddr
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderPaddr, %function
elf64_getProgramHeaderPaddr:
	.fnstart
.LFB20:
	.loc 2 241 0
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
	.loc 2 242 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldrd	r2, [r3, #24]
	.loc 2 243 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE20:
	.fnend
	.size	elf64_getProgramHeaderPaddr, .-elf64_getProgramHeaderPaddr
	.align	2
	.syntax unified
	.arm
	.type	elf64_getProgramHeaderOffset, %function
elf64_getProgramHeaderOffset:
	.fnstart
.LFB21:
	.loc 2 247 0
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
	.loc 2 248 0
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderTable
	mov	r1, r0
	ldrh	r2, [fp, #-10]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldrd	r2, [r3, #8]
	.loc 2 249 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE21:
	.fnend
	.size	elf64_getProgramHeaderOffset, .-elf64_getProgramHeaderOffset
	.align	2
	.global	elf_checkFile
	.syntax unified
	.arm
	.type	elf_checkFile, %function
elf_checkFile:
	.fnstart
.LFB22:
	.file 3 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf.c"
	.loc 3 94 0
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
	.loc 3 95 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 97 0
	cmp	r3, #1
	bne	.L46
	.loc 3 97 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_checkFile
	mov	r3, r0
	.loc 3 95 0 is_stmt 1 discriminator 1
	b	.L48
.L46:
	.loc 3 97 0 discriminator 2
	ldr	r0, [fp, #-8]
	bl	elf64_checkFile
	mov	r3, r0
.L48:
	.loc 3 98 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE22:
	.fnend
	.size	elf_checkFile, .-elf_checkFile
	.align	2
	.global	elf_getNumProgramHeaders
	.syntax unified
	.arm
	.type	elf_getNumProgramHeaders, %function
elf_getNumProgramHeaders:
	.fnstart
.LFB23:
	.loc 3 103 0
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
	.loc 3 104 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L50
	.loc 3 104 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_getNumProgramHeaders
	mov	r3, r0
	b	.L51
.L50:
	.loc 3 104 0 discriminator 2
	ldr	r0, [fp, #-8]
	bl	elf64_getNumProgramHeaders
	mov	r3, r0
.L51:
	.loc 3 107 0 is_stmt 1 discriminator 4
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE23:
	.fnend
	.size	elf_getNumProgramHeaders, .-elf_getNumProgramHeaders
	.align	2
	.global	elf_getProgramHeaderFlags
	.syntax unified
	.arm
	.type	elf_getProgramHeaderFlags, %function
elf_getProgramHeaderFlags:
	.fnstart
.LFB24:
	.loc 3 111 0
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
	.loc 3 112 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 114 0
	cmp	r3, #1
	bne	.L54
	.loc 3 114 0 is_stmt 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderFlags
	mov	r3, r0
	.loc 3 112 0 is_stmt 1 discriminator 1
	b	.L56
.L54:
	.loc 3 114 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderFlags
	mov	r3, r0
.L56:
	.loc 3 115 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE24:
	.fnend
	.size	elf_getProgramHeaderFlags, .-elf_getProgramHeaderFlags
	.align	2
	.global	elf_getProgramHeaderType
	.syntax unified
	.arm
	.type	elf_getProgramHeaderType, %function
elf_getProgramHeaderType:
	.fnstart
.LFB25:
	.loc 3 119 0
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
	.loc 3 120 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 122 0
	cmp	r3, #1
	bne	.L58
	.loc 3 122 0 is_stmt 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderType
	mov	r3, r0
	.loc 3 120 0 is_stmt 1 discriminator 1
	b	.L60
.L58:
	.loc 3 122 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderType
	mov	r3, r0
.L60:
	.loc 3 123 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE25:
	.fnend
	.size	elf_getProgramHeaderType, .-elf_getProgramHeaderType
	.align	2
	.global	elf_getProgramHeaderPaddr
	.syntax unified
	.arm
	.type	elf_getProgramHeaderPaddr, %function
elf_getProgramHeaderPaddr:
	.fnstart
.LFB26:
	.loc 3 127 0
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
	.loc 3 128 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 130 0
	cmp	r3, #1
	bne	.L62
	.loc 3 129 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderPaddr
	mov	r3, r0
	.loc 3 130 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 128 0 discriminator 1
	b	.L64
.L62:
	.loc 3 130 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderPaddr
	mov	r2, r0
	mov	r3, r1
.L64:
	.loc 3 131 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE26:
	.fnend
	.size	elf_getProgramHeaderPaddr, .-elf_getProgramHeaderPaddr
	.align	2
	.global	elf_getProgramHeaderVaddr
	.syntax unified
	.arm
	.type	elf_getProgramHeaderVaddr, %function
elf_getProgramHeaderVaddr:
	.fnstart
.LFB27:
	.loc 3 135 0
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
	.loc 3 136 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 138 0
	cmp	r3, #1
	bne	.L66
	.loc 3 137 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderVaddr
	mov	r3, r0
	.loc 3 138 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 136 0 discriminator 1
	b	.L68
.L66:
	.loc 3 138 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderVaddr
	mov	r2, r0
	mov	r3, r1
.L68:
	.loc 3 139 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE27:
	.fnend
	.size	elf_getProgramHeaderVaddr, .-elf_getProgramHeaderVaddr
	.align	2
	.global	elf_getProgramHeaderMemorySize
	.syntax unified
	.arm
	.type	elf_getProgramHeaderMemorySize, %function
elf_getProgramHeaderMemorySize:
	.fnstart
.LFB28:
	.loc 3 143 0
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
	.loc 3 144 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 146 0
	cmp	r3, #1
	bne	.L70
	.loc 3 145 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderMemorySize
	mov	r3, r0
	.loc 3 146 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 144 0 discriminator 1
	b	.L72
.L70:
	.loc 3 146 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderMemorySize
	mov	r2, r0
	mov	r3, r1
.L72:
	.loc 3 147 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE28:
	.fnend
	.size	elf_getProgramHeaderMemorySize, .-elf_getProgramHeaderMemorySize
	.align	2
	.global	elf_getProgramHeaderFileSize
	.syntax unified
	.arm
	.type	elf_getProgramHeaderFileSize, %function
elf_getProgramHeaderFileSize:
	.fnstart
.LFB29:
	.loc 3 151 0
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
	.loc 3 152 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 154 0
	cmp	r3, #1
	bne	.L74
	.loc 3 153 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderFileSize
	mov	r3, r0
	.loc 3 154 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 152 0 discriminator 1
	b	.L76
.L74:
	.loc 3 154 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderFileSize
	mov	r2, r0
	mov	r3, r1
.L76:
	.loc 3 155 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE29:
	.fnend
	.size	elf_getProgramHeaderFileSize, .-elf_getProgramHeaderFileSize
	.align	2
	.global	elf_getProgramHeaderOffset
	.syntax unified
	.arm
	.type	elf_getProgramHeaderOffset, %function
elf_getProgramHeaderOffset:
	.fnstart
.LFB30:
	.loc 3 159 0
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
	.loc 3 160 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 162 0
	cmp	r3, #1
	bne	.L78
	.loc 3 161 0 discriminator 1
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getProgramHeaderOffset
	mov	r3, r0
	.loc 3 162 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 160 0 discriminator 1
	b	.L80
.L78:
	.loc 3 162 0 discriminator 2
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getProgramHeaderOffset
	mov	r2, r0
	mov	r3, r1
.L80:
	.loc 3 163 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE30:
	.fnend
	.size	elf_getProgramHeaderOffset, .-elf_getProgramHeaderOffset
	.align	2
	.global	elf_getSegmentStringTable
	.syntax unified
	.arm
	.type	elf_getSegmentStringTable, %function
elf_getSegmentStringTable:
	.fnstart
.LFB31:
	.loc 3 167 0
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
	.loc 3 168 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 170 0
	cmp	r3, #1
	bne	.L82
	.loc 3 170 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_getSegmentStringTable
	mov	r3, r0
	.loc 3 168 0 is_stmt 1 discriminator 1
	b	.L84
.L82:
	.loc 3 170 0 discriminator 2
	ldr	r0, [fp, #-8]
	bl	elf64_getSegmentStringTable
	mov	r3, r0
.L84:
	.loc 3 171 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE31:
	.fnend
	.size	elf_getSegmentStringTable, .-elf_getSegmentStringTable
	.align	2
	.global	elf_getStringTable
	.syntax unified
	.arm
	.type	elf_getStringTable, %function
elf_getStringTable:
	.fnstart
.LFB32:
	.loc 3 175 0
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
	.loc 3 176 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 178 0
	cmp	r3, #1
	bne	.L86
	.loc 3 178 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_getStringTable
	mov	r3, r0
	.loc 3 176 0 is_stmt 1 discriminator 1
	b	.L88
.L86:
	.loc 3 178 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getStringTable
	mov	r3, r0
.L88:
	.loc 3 179 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE32:
	.fnend
	.size	elf_getStringTable, .-elf_getStringTable
	.align	2
	.global	elf_getNumSections
	.syntax unified
	.arm
	.type	elf_getNumSections, %function
elf_getNumSections:
	.fnstart
.LFB33:
	.loc 3 184 0
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
	.loc 3 185 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 187 0
	cmp	r3, #1
	bne	.L90
	.loc 3 187 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_getNumSections
	mov	r3, r0
	.loc 3 185 0 is_stmt 1 discriminator 1
	b	.L92
.L90:
	.loc 3 187 0 discriminator 2
	ldr	r0, [fp, #-8]
	bl	elf64_getNumSections
	mov	r3, r0
.L92:
	.loc 3 188 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE33:
	.fnend
	.size	elf_getNumSections, .-elf_getNumSections
	.align	2
	.global	elf_getSectionName
	.syntax unified
	.arm
	.type	elf_getSectionName, %function
elf_getSectionName:
	.fnstart
.LFB34:
	.loc 3 192 0
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
	.loc 3 193 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 195 0
	cmp	r3, #1
	bne	.L94
	.loc 3 195 0 is_stmt 0 discriminator 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionName
	mov	r3, r0
	.loc 3 193 0 is_stmt 1 discriminator 1
	b	.L96
.L94:
	.loc 3 195 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionName
	mov	r3, r0
.L96:
	.loc 3 196 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE34:
	.fnend
	.size	elf_getSectionName, .-elf_getSectionName
	.align	2
	.global	elf_getSectionFlags
	.syntax unified
	.arm
	.type	elf_getSectionFlags, %function
elf_getSectionFlags:
	.fnstart
.LFB35:
	.loc 3 200 0
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
	.loc 3 201 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 203 0
	cmp	r3, #1
	bne	.L98
	.loc 3 202 0 discriminator 1
	ldr	r3, [fp, #-12]
	uxth	r3, r3
	.loc 3 203 0 discriminator 1
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionFlags
	mov	r3, r0
	.loc 3 201 0 discriminator 1
	b	.L100
.L98:
	.loc 3 203 0 discriminator 2
	ldr	r3, [fp, #-12]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionFlags
	mov	r3, r0
.L100:
	.loc 3 204 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE35:
	.fnend
	.size	elf_getSectionFlags, .-elf_getSectionFlags
	.align	2
	.global	elf_getSectionType
	.syntax unified
	.arm
	.type	elf_getSectionType, %function
elf_getSectionType:
	.fnstart
.LFB36:
	.loc 3 208 0
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
	.loc 3 209 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 211 0
	cmp	r3, #1
	bne	.L102
	.loc 3 210 0 discriminator 1
	ldr	r3, [fp, #-12]
	uxth	r3, r3
	.loc 3 211 0 discriminator 1
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionType
	mov	r3, r0
	.loc 3 209 0 discriminator 1
	b	.L104
.L102:
	.loc 3 211 0 discriminator 2
	ldr	r3, [fp, #-12]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionType
	mov	r3, r0
.L104:
	.loc 3 212 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE36:
	.fnend
	.size	elf_getSectionType, .-elf_getSectionType
	.align	2
	.global	elf_getSectionSize
	.syntax unified
	.arm
	.type	elf_getSectionSize, %function
elf_getSectionSize:
	.fnstart
.LFB37:
	.loc 3 216 0
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
	.loc 3 217 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 219 0
	cmp	r3, #1
	bne	.L106
	.loc 3 218 0 discriminator 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionSize
	mov	r3, r0
	.loc 3 219 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 217 0 discriminator 1
	b	.L108
.L106:
	.loc 3 219 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionSize
	mov	r2, r0
	mov	r3, r1
.L108:
	.loc 3 220 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE37:
	.fnend
	.size	elf_getSectionSize, .-elf_getSectionSize
	.align	2
	.global	elf_getSectionAddr
	.syntax unified
	.arm
	.type	elf_getSectionAddr, %function
elf_getSectionAddr:
	.fnstart
.LFB38:
	.loc 3 224 0
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
	.loc 3 225 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 227 0
	cmp	r3, #1
	bne	.L110
	.loc 3 226 0 discriminator 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionAddr
	mov	r3, r0
	.loc 3 227 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 225 0 discriminator 1
	b	.L112
.L110:
	.loc 3 227 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionAddr
	mov	r2, r0
	mov	r3, r1
.L112:
	.loc 3 228 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE38:
	.fnend
	.size	elf_getSectionAddr, .-elf_getSectionAddr
	.align	2
	.global	elf_getSection
	.syntax unified
	.arm
	.type	elf_getSection, %function
elf_getSection:
	.fnstart
.LFB39:
	.loc 3 233 0
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
	.loc 3 234 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 236 0
	cmp	r3, #1
	bne	.L114
	.loc 3 236 0 is_stmt 0 discriminator 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf32_getSection
	mov	r3, r0
	.loc 3 234 0 is_stmt 1 discriminator 1
	b	.L116
.L114:
	.loc 3 236 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getSection
	mov	r3, r0
.L116:
	.loc 3 237 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE39:
	.fnend
	.size	elf_getSection, .-elf_getSection
	.align	2
	.global	elf_getSectionNamed
	.syntax unified
	.arm
	.type	elf_getSectionNamed, %function
elf_getSectionNamed:
	.fnstart
.LFB40:
	.loc 3 241 0
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
	.loc 3 242 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 244 0
	cmp	r3, #1
	bne	.L118
	.loc 3 244 0 is_stmt 0 discriminator 1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf32_getSectionNamed
	mov	r3, r0
	.loc 3 242 0 is_stmt 1 discriminator 1
	b	.L120
.L118:
	.loc 3 244 0 discriminator 2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	elf64_getSectionNamed
	mov	r3, r0
.L120:
	.loc 3 245 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE40:
	.fnend
	.size	elf_getSectionNamed, .-elf_getSectionNamed
	.align	2
	.global	elf_getProgramHeaderInfo
	.syntax unified
	.arm
	.type	elf_getProgramHeaderInfo, %function
elf_getProgramHeaderInfo:
	.fnstart
.LFB41:
	.loc 3 251 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	strh	r1, [fp, #-10]	@ movhi
	.loc 3 252 0
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf_getProgramHeaderVaddr
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #-16]
	strd	r2, [r1]
	.loc 3 253 0
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf_getProgramHeaderPaddr
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #-20]
	strd	r2, [r1]
	.loc 3 254 0
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf_getProgramHeaderFileSize
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #4]
	strd	r2, [r1]
	.loc 3 255 0
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf_getProgramHeaderOffset
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #8]
	strd	r2, [r1]
	.loc 3 256 0
	ldrh	r3, [fp, #-10]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	elf_getProgramHeaderMemorySize
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #12]
	strd	r2, [r1]
	.loc 3 257 0
	nop
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE41:
	.fnend
	.size	elf_getProgramHeaderInfo, .-elf_getProgramHeaderInfo
	.align	2
	.global	elf_getEntryPoint
	.syntax unified
	.arm
	.type	elf_getEntryPoint, %function
elf_getEntryPoint:
	.fnstart
.LFB42:
	.loc 3 261 0
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
	.loc 3 262 0
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 3 264 0
	cmp	r3, #1
	bne	.L123
	.loc 3 263 0 discriminator 1
	ldr	r0, [fp, #-8]
	bl	elf32_getEntryPoint
	mov	r3, r0
	.loc 3 264 0 discriminator 1
	mov	r2, r3
	mov	r3, #0
	.loc 3 262 0 discriminator 1
	b	.L125
.L123:
	.loc 3 264 0 discriminator 2
	ldr	r0, [fp, #-8]
	bl	elf64_getEntryPoint
	mov	r2, r0
	mov	r3, r1
.L125:
	.loc 3 265 0 discriminator 1
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE42:
	.fnend
	.size	elf_getEntryPoint, .-elf_getEntryPoint
	.align	2
	.global	elf_getMemoryBounds
	.syntax unified
	.arm
	.type	elf_getMemoryBounds, %function
elf_getMemoryBounds:
	.fnstart
.LFB43:
	.loc 3 269 0
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
	.loc 3 270 0
	mvn	r2, #0
	mvn	r3, #0
	strd	r2, [fp, #-12]
	.loc 3 271 0
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-20]
	.loc 3 274 0
	ldr	r0, [fp, #-48]
	bl	elf_checkFile
	mov	r3, r0
	cmp	r3, #0
	beq	.L127
	.loc 3 275 0
	mov	r3, #0
	b	.L128
.L127:
	.loc 3 278 0
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L129
.L135:
.LBB2:
	.loc 3 281 0
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderMemorySize
	mov	r2, r0
	mov	r3, r1
	orrs	r3, r2, r3
	beq	.L136
	.loc 3 285 0
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L132
	.loc 3 286 0
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderPaddr
	strd	r0, [fp, #-36]
	b	.L133
.L132:
	.loc 3 288 0
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderVaddr
	strd	r0, [fp, #-36]
.L133:
	.loc 3 291 0
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderMemorySize
	ldrd	r2, [fp, #-36]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [fp, #-44]
	.loc 3 293 0
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-20]
	cmp	r1, r3
	cmpeq	r0, r2
	bls	.L134
	.loc 3 294 0
	ldrd	r2, [fp, #-44]
	strd	r2, [fp, #-20]
.L134:
	.loc 3 296 0
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #-12]
	cmp	r1, r3
	cmpeq	r0, r2
	bcs	.L131
	.loc 3 297 0
	ldrd	r2, [fp, #-36]
	strd	r2, [fp, #-12]
	b	.L131
.L136:
	.loc 3 282 0
	nop
.L131:
.LBE2:
	.loc 3 278 0 discriminator 2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L129:
	.loc 3 278 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-48]
	bl	elf_getNumProgramHeaders
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L135
	.loc 3 300 0 is_stmt 1
	ldr	r1, [fp, #-56]
	ldrd	r2, [fp, #-12]
	strd	r2, [r1]
	.loc 3 301 0
	ldr	r1, [fp, #-60]
	ldrd	r2, [fp, #-20]
	strd	r2, [r1]
	.loc 3 303 0
	mov	r3, #1
.L128:
	.loc 3 304 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE43:
	.fnend
	.size	elf_getMemoryBounds, .-elf_getMemoryBounds
	.align	2
	.global	elf_vaddrInProgramHeader
	.syntax unified
	.arm
	.type	elf_vaddrInProgramHeader, %function
elf_vaddrInProgramHeader:
	.fnstart
.LFB44:
	.loc 3 308 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #32
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	strd	r2, [fp, #-36]
	strh	r1, [fp, #-26]	@ movhi
	.loc 3 309 0
	ldrh	r3, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	elf_getProgramHeaderVaddr
	strd	r0, [fp, #-12]
	.loc 3 310 0
	ldrh	r3, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	elf_getProgramHeaderMemorySize
	ldrd	r2, [fp, #-12]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [fp, #-20]
	.loc 3 311 0
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #-12]
	cmp	r1, r3
	cmpeq	r0, r2
	bcc	.L138
	.loc 3 311 0 is_stmt 0 discriminator 1
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #-20]
	cmp	r1, r3
	cmpeq	r0, r2
	bcs	.L138
	.loc 3 312 0 is_stmt 1
	mov	r3, #1
	b	.L139
.L138:
	.loc 3 314 0
	mov	r3, #0
.L139:
	.loc 3 316 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE44:
	.fnend
	.size	elf_vaddrInProgramHeader, .-elf_vaddrInProgramHeader
	.align	2
	.global	elf_vtopProgramHeader
	.syntax unified
	.arm
	.type	elf_vtopProgramHeader, %function
elf_vtopProgramHeader:
	.fnstart
.LFB45:
	.loc 3 320 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	strd	r2, [fp, #-44]
	strh	r1, [fp, #-34]	@ movhi
	.loc 3 321 0
	ldrh	r3, [fp, #-34]
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	elf_getProgramHeaderPaddr
	strd	r0, [fp, #-12]
	.loc 3 322 0
	ldrh	r3, [fp, #-34]
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	elf_getProgramHeaderVaddr
	strd	r0, [fp, #-20]
	.loc 3 325 0
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-20]
	subs	r0, r0, r2
	sbc	r1, r1, r3
	ldrd	r2, [fp, #-12]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [fp, #-28]
	.loc 3 327 0
	ldrd	r2, [fp, #-28]
	.loc 3 328 0
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE45:
	.fnend
	.size	elf_vtopProgramHeader, .-elf_vtopProgramHeader
	.align	2
	.global	elf_loadFile
	.syntax unified
	.arm
	.type	elf_loadFile, %function
elf_loadFile:
	.fnstart
.LFB46:
	.loc 3 332 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.setfp fp, sp, #12
	add	fp, sp, #12
	.cfi_def_cfa 11, 4
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	.loc 3 335 0
	ldr	r0, [fp, #-48]
	bl	elf_checkFile
	mov	r3, r0
	cmp	r3, #0
	beq	.L143
	.loc 3 336 0
	mov	r3, #0
	b	.L144
.L143:
	.loc 3 339 0
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L145
.L148:
.LBB3:
	.loc 3 343 0
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L146
	.loc 3 344 0
	ldr	r3, [fp, #-16]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderPaddr
	strd	r0, [fp, #-28]
	b	.L147
.L146:
	.loc 3 346 0
	ldr	r3, [fp, #-16]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderVaddr
	strd	r0, [fp, #-28]
.L147:
	.loc 3 348 0 discriminator 2
	ldr	r3, [fp, #-16]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderFileSize
	mov	r2, r0
	mov	r3, r1
	mov	r3, r2
	str	r3, [fp, #-32]
	.loc 3 349 0 discriminator 2
	ldr	r3, [fp, #-48]
	mov	r4, r3
	mov	r5, #0
	ldr	r3, [fp, #-16]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderOffset
	mov	r2, r0
	mov	r3, r1
	adds	r2, r2, r4
	adc	r3, r3, r5
	strd	r2, [fp, #-44]
	.loc 3 350 0 discriminator 2
	ldr	r3, [fp, #-28]
	mov	r0, r3
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-32]
	mov	r1, r3
	bl	memcpy
	.loc 3 351 0 discriminator 2
	ldr	r3, [fp, #-32]
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-28]
	adds	r2, r2, r0
	adc	r3, r3, r1
	strd	r2, [fp, #-28]
	.loc 3 352 0 discriminator 2
	ldr	r3, [fp, #-28]
	mov	r4, r3
	ldr	r3, [fp, #-16]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	elf_getProgramHeaderMemorySize
	mov	r2, r0
	mov	r3, r1
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	mov	r2, r3
	mov	r1, #0
	mov	r0, r4
	bl	memset
.LBE3:
	.loc 3 339 0 discriminator 2
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L145:
	.loc 3 339 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-48]
	bl	elf_getNumProgramHeaders
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L148
	.loc 3 355 0 is_stmt 1
	mov	r3, #1
.L144:
	.loc 3 356 0
	mov	r0, r3
	sub	sp, fp, #12
	.cfi_def_cfa 13, 16
	@ sp needed
	pop	{r4, r5, fp, pc}
	.cfi_endproc
.LFE46:
	.fnend
	.size	elf_loadFile, .-elf_loadFile
.Letext0:
	.file 4 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/../stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xed9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF555
	.byte	0xc
	.4byte	.LASF556
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF442
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF443
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF444
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF445
	.uleb128 0x4
	.4byte	.LASF447
	.byte	0x4
	.byte	0x14
	.4byte	0x53
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF446
	.uleb128 0x4
	.4byte	.LASF448
	.byte	0x4
	.byte	0x15
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF449
	.uleb128 0x4
	.4byte	.LASF450
	.byte	0x4
	.byte	0x16
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF451
	.uleb128 0x4
	.4byte	.LASF452
	.byte	0x4
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF453
	.byte	0x4
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x5
	.4byte	.LASF469
	.byte	0x34
	.byte	0x1
	.byte	0x59
	.4byte	0x149
	.uleb128 0x6
	.4byte	.LASF454
	.byte	0x1
	.byte	0x5a
	.4byte	0x149
	.byte	0
	.uleb128 0x6
	.4byte	.LASF455
	.byte	0x1
	.byte	0x5b
	.4byte	0x48
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF456
	.byte	0x1
	.byte	0x5d
	.4byte	0x48
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF457
	.byte	0x1
	.byte	0x5e
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF458
	.byte	0x1
	.byte	0x5f
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF459
	.byte	0x1
	.byte	0x60
	.4byte	0x5a
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF460
	.byte	0x1
	.byte	0x61
	.4byte	0x5a
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF461
	.byte	0x1
	.byte	0x62
	.4byte	0x5a
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF462
	.byte	0x1
	.byte	0x63
	.4byte	0x48
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF463
	.byte	0x1
	.byte	0x64
	.4byte	0x48
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF464
	.byte	0x1
	.byte	0x66
	.4byte	0x48
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF465
	.byte	0x1
	.byte	0x68
	.4byte	0x48
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF466
	.byte	0x1
	.byte	0x69
	.4byte	0x48
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF467
	.byte	0x1
	.byte	0x6a
	.4byte	0x48
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	0x41
	.4byte	0x159
	.uleb128 0x8
	.4byte	0x159
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF468
	.uleb128 0x5
	.4byte	.LASF470
	.byte	0x28
	.byte	0x1
	.byte	0x72
	.4byte	0x1e5
	.uleb128 0x6
	.4byte	.LASF471
	.byte	0x1
	.byte	0x73
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF472
	.byte	0x1
	.byte	0x74
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF473
	.byte	0x1
	.byte	0x75
	.4byte	0x5a
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF474
	.byte	0x1
	.byte	0x76
	.4byte	0x5a
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF475
	.byte	0x1
	.byte	0x77
	.4byte	0x5a
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF476
	.byte	0x1
	.byte	0x78
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF477
	.byte	0x1
	.byte	0x79
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF478
	.byte	0x1
	.byte	0x7a
	.4byte	0x5a
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF479
	.byte	0x1
	.byte	0x7b
	.4byte	0x5a
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF480
	.byte	0x1
	.byte	0x7c
	.4byte	0x5a
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LASF481
	.byte	0x20
	.byte	0x1
	.byte	0x82
	.4byte	0x252
	.uleb128 0x6
	.4byte	.LASF482
	.byte	0x1
	.byte	0x83
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF483
	.byte	0x1
	.byte	0x84
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF484
	.byte	0x1
	.byte	0x85
	.4byte	0x5a
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF485
	.byte	0x1
	.byte	0x87
	.4byte	0x5a
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF486
	.byte	0x1
	.byte	0x89
	.4byte	0x5a
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF487
	.byte	0x1
	.byte	0x8b
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF488
	.byte	0x1
	.byte	0x90
	.4byte	0x5a
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF489
	.byte	0x1
	.byte	0x92
	.4byte	0x5a
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF490
	.byte	0x40
	.byte	0x2
	.byte	0x59
	.4byte	0x307
	.uleb128 0x6
	.4byte	.LASF454
	.byte	0x2
	.byte	0x5a
	.4byte	0x149
	.byte	0
	.uleb128 0x6
	.4byte	.LASF455
	.byte	0x2
	.byte	0x5b
	.4byte	0x48
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF456
	.byte	0x2
	.byte	0x5d
	.4byte	0x48
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF457
	.byte	0x2
	.byte	0x5e
	.4byte	0x5a
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF458
	.byte	0x2
	.byte	0x5f
	.4byte	0x6c
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF459
	.byte	0x2
	.byte	0x60
	.4byte	0x6c
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF460
	.byte	0x2
	.byte	0x61
	.4byte	0x6c
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF461
	.byte	0x2
	.byte	0x62
	.4byte	0x5a
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF462
	.byte	0x2
	.byte	0x63
	.4byte	0x48
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF463
	.byte	0x2
	.byte	0x64
	.4byte	0x48
	.byte	0x36
	.uleb128 0x6
	.4byte	.LASF464
	.byte	0x2
	.byte	0x66
	.4byte	0x48
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF465
	.byte	0x2
	.byte	0x68
	.4byte	0x48
	.byte	0x3a
	.uleb128 0x6
	.4byte	.LASF466
	.byte	0x2
	.byte	0x69
	.4byte	0x48
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF467
	.byte	0x2
	.byte	0x6a
	.4byte	0x48
	.byte	0x3e
	.byte	0
	.uleb128 0x5
	.4byte	.LASF491
	.byte	0x40
	.byte	0x2
	.byte	0x72
	.4byte	0x38c
	.uleb128 0x6
	.4byte	.LASF471
	.byte	0x2
	.byte	0x73
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF472
	.byte	0x2
	.byte	0x74
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF473
	.byte	0x2
	.byte	0x75
	.4byte	0x6c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF474
	.byte	0x2
	.byte	0x76
	.4byte	0x6c
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF475
	.byte	0x2
	.byte	0x77
	.4byte	0x6c
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF476
	.byte	0x2
	.byte	0x78
	.4byte	0x6c
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF477
	.byte	0x2
	.byte	0x79
	.4byte	0x5a
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF478
	.byte	0x2
	.byte	0x7a
	.4byte	0x5a
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF479
	.byte	0x2
	.byte	0x7b
	.4byte	0x6c
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF480
	.byte	0x2
	.byte	0x7c
	.4byte	0x6c
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.4byte	.LASF492
	.byte	0x38
	.byte	0x2
	.byte	0x82
	.4byte	0x3f9
	.uleb128 0x6
	.4byte	.LASF482
	.byte	0x2
	.byte	0x83
	.4byte	0x5a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF488
	.byte	0x2
	.byte	0x84
	.4byte	0x5a
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF483
	.byte	0x2
	.byte	0x86
	.4byte	0x6c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF484
	.byte	0x2
	.byte	0x87
	.4byte	0x6c
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF485
	.byte	0x2
	.byte	0x89
	.4byte	0x6c
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF486
	.byte	0x2
	.byte	0x8b
	.4byte	0x6c
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF487
	.byte	0x2
	.byte	0x8d
	.4byte	0x6c
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF489
	.byte	0x2
	.byte	0x92
	.4byte	0x6c
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LASF493
	.byte	0x1
	.byte	0x9d
	.4byte	0x421
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x421
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0x9d
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x160
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94
	.uleb128 0xc
	.4byte	.LASF494
	.byte	0x1
	.byte	0xa4
	.4byte	0x5a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xa4
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"s\000"
	.byte	0x1
	.byte	0xa4
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF496
	.byte	0x1
	.byte	0xaa
	.4byte	0x5a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xaa
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"s\000"
	.byte	0x1
	.byte	0xaa
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF497
	.byte	0x1
	.byte	0xbe
	.4byte	0x4bd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xbe
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1e5
	.uleb128 0xc
	.4byte	.LASF498
	.byte	0x1
	.byte	0xc5
	.4byte	0x5a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f8
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xc5
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF499
	.byte	0x1
	.byte	0xcb
	.4byte	0x5a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52d
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xcb
	.4byte	0x427
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
	.uleb128 0xc
	.4byte	.LASF500
	.byte	0x1
	.byte	0xd1
	.4byte	0x5a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x562
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xd1
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xd1
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF501
	.byte	0x1
	.byte	0xd7
	.4byte	0x5a
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x597
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xd7
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF502
	.byte	0x1
	.byte	0xdd
	.4byte	0x5a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cc
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xdd
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xdd
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF503
	.byte	0x1
	.byte	0xe3
	.4byte	0x5a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x601
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xe3
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF504
	.byte	0x1
	.byte	0xe9
	.4byte	0x5a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x636
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x1
	.byte	0xe9
	.4byte	0x427
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x1
	.byte	0xe9
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF505
	.byte	0x2
	.byte	0xa8
	.4byte	0x65e
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65e
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xa8
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x307
	.uleb128 0xb
	.byte	0x4
	.4byte	0x252
	.uleb128 0xc
	.4byte	.LASF506
	.byte	0x2
	.byte	0xaf
	.4byte	0x5a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69e
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xaf
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"s\000"
	.byte	0x2
	.byte	0xaf
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF507
	.byte	0x2
	.byte	0xb5
	.4byte	0x5a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d2
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xb5
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"s\000"
	.byte	0x2
	.byte	0xb5
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF508
	.byte	0x2
	.byte	0xcb
	.4byte	0x6fa
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fa
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xcb
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x38c
	.uleb128 0xc
	.4byte	.LASF509
	.byte	0x2
	.byte	0xd2
	.4byte	0x5a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x735
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xd2
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xd2
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF510
	.byte	0x2
	.byte	0xd8
	.4byte	0x5a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76a
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xd8
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF511
	.byte	0x2
	.byte	0xde
	.4byte	0x6c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79f
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xde
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xde
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF512
	.byte	0x2
	.byte	0xe4
	.4byte	0x6c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d4
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xe4
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xe4
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF513
	.byte	0x2
	.byte	0xea
	.4byte	0x6c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x809
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xea
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xea
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF514
	.byte	0x2
	.byte	0xf0
	.4byte	0x6c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83e
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xf0
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xf0
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF515
	.byte	0x2
	.byte	0xf6
	.4byte	0x6c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x873
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x2
	.byte	0xf6
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x2
	.byte	0xf6
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF517
	.byte	0x3
	.byte	0x5d
	.4byte	0x33
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89b
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x5d
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF518
	.byte	0x3
	.byte	0x66
	.4byte	0x48
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c5
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x66
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF519
	.byte	0x3
	.byte	0x6e
	.4byte	0x5a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fa
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x6e
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x6e
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF520
	.byte	0x3
	.byte	0x76
	.4byte	0x5a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92f
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x76
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x76
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF521
	.byte	0x3
	.byte	0x7e
	.4byte	0x6c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x964
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x7e
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x7e
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF522
	.byte	0x3
	.byte	0x86
	.4byte	0x6c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x999
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x86
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x86
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF523
	.byte	0x3
	.byte	0x8e
	.4byte	0x6c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ce
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x8e
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x8e
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF524
	.byte	0x3
	.byte	0x96
	.4byte	0x6c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa03
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x96
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x96
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF525
	.byte	0x3
	.byte	0x9e
	.4byte	0x6c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa38
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0x9e
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0x9e
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xe
	.4byte	.LASF526
	.byte	0x3
	.byte	0xa6
	.4byte	0xa60
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa60
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xa6
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa66
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF527
	.uleb128 0xe
	.4byte	.LASF528
	.byte	0x3
	.byte	0xae
	.4byte	0xa60
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xae
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF529
	.byte	0x3
	.byte	0xae
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF530
	.byte	0x3
	.byte	0xb7
	.4byte	0x65
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacb
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xb7
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.4byte	.LASF531
	.byte	0x3
	.byte	0xbf
	.4byte	0xa60
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaff
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xbf
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xbf
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF532
	.byte	0x3
	.byte	0xc7
	.4byte	0x5a
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb33
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xc7
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xc7
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF533
	.byte	0x3
	.byte	0xcf
	.4byte	0x5a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb67
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xcf
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xcf
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF534
	.byte	0x3
	.byte	0xd7
	.4byte	0x6c
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9b
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xd7
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xd7
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF535
	.byte	0x3
	.byte	0xdf
	.4byte	0x6c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcf
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xdf
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xdf
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF536
	.byte	0x3
	.byte	0xe8
	.4byte	0x89b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc03
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xe8
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x3
	.byte	0xe8
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	.LASF537
	.byte	0x3
	.byte	0xf0
	.4byte	0x89b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc39
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xf0
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF538
	.byte	0x3
	.byte	0xf0
	.4byte	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF552
	.byte	0x3
	.byte	0xf8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb0
	.uleb128 0xa
	.4byte	.LASF516
	.byte	0x3
	.byte	0xf8
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii	"ph\000"
	.byte	0x3
	.byte	0xf8
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0xa
	.4byte	.LASF484
	.byte	0x3
	.byte	0xf8
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF485
	.byte	0x3
	.byte	0xf9
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF486
	.byte	0x3
	.byte	0xf9
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF483
	.byte	0x3
	.byte	0xf9
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.4byte	.LASF487
	.byte	0x3
	.byte	0xfa
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x11
	.4byte	.LASF539
	.byte	0x3
	.2byte	0x104
	.4byte	0x6c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce0
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x3
	.2byte	0x104
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF540
	.byte	0x3
	.2byte	0x10c
	.4byte	0x33
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8a
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x3
	.2byte	0x10c
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF541
	.byte	0x3
	.2byte	0x10c
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.ascii	"min\000"
	.byte	0x3
	.2byte	0x10c
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.ascii	"max\000"
	.byte	0x3
	.2byte	0x10c
	.4byte	0xcb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF542
	.byte	0x3
	.2byte	0x10e
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF543
	.byte	0x3
	.2byte	0x10f
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x110
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x14
	.4byte	.LASF544
	.byte	0x3
	.2byte	0x117
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LASF545
	.byte	0x3
	.2byte	0x117
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF546
	.byte	0x3
	.2byte	0x133
	.4byte	0x33
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdef
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x3
	.2byte	0x133
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.ascii	"ph\000"
	.byte	0x3
	.2byte	0x133
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x12
	.4byte	.LASF547
	.byte	0x3
	.2byte	0x133
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.ascii	"min\000"
	.byte	0x3
	.2byte	0x135
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.ascii	"max\000"
	.byte	0x3
	.2byte	0x136
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF548
	.byte	0x3
	.2byte	0x13f
	.4byte	0x6c
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe63
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x3
	.2byte	0x13f
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.ascii	"ph\000"
	.byte	0x3
	.2byte	0x13f
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x12
	.4byte	.LASF547
	.byte	0x3
	.2byte	0x13f
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LASF549
	.byte	0x3
	.2byte	0x141
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF550
	.byte	0x3
	.2byte	0x142
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF551
	.byte	0x3
	.2byte	0x143
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x17
	.4byte	.LASF553
	.byte	0x3
	.2byte	0x14b
	.4byte	0x33
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x3
	.2byte	0x14b
	.4byte	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF541
	.byte	0x3
	.2byte	0x14b
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x14d
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x14
	.4byte	.LASF554
	.byte	0x3
	.2byte	0x155
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.ascii	"src\000"
	.byte	0x3
	.2byte	0x155
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.ascii	"len\000"
	.byte	0x3
	.2byte	0x156
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
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
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
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
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/elf.h"
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF381
	.byte	0x3
	.uleb128 0x6a
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.file 6 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/../stdio.h"
	.byte	0x3
	.uleb128 0x6b
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x6d
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF388
	.byte	0x4
	.byte	0x3
	.uleb128 0x6e
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF389
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/tools/common/../elfloader/src/arch-arm/elf/../string.h"
	.byte	0x3
	.uleb128 0x52
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF439
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF441
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.12.36e8edf2d689119cedfba9c16f67f676,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF384
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.12.16f9df2376aa9f04360b835d7d144ffd,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF387
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.elf.h.115.cbb96c1b81938d9780ca3474700248d1,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF438
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
.LASF391:
	.ascii	"PF_W 2\000"
.LASF146:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF405:
	.ascii	"ELFCLASS64 2\000"
.LASF547:
	.ascii	"vaddr\000"
.LASF323:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF435:
	.ascii	"DT_RELENT 19\000"
.LASF180:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF544:
	.ascii	"sect_min\000"
.LASF258:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF392:
	.ascii	"PF_R 4\000"
.LASF374:
	.ascii	"ARMV7_A 1\000"
.LASF437:
	.ascii	"ELF_PRINT_SECTIONS 2\000"
.LASF104:
	.ascii	"__UINT8_C(c) c\000"
.LASF328:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF272:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF375:
	.ascii	"ARM_CORTEX_A9 1\000"
.LASF270:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF286:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF133:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF142:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF510:
	.ascii	"elf64_getProgramHeaderType\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF292:
	.ascii	"__SA_IBIT__ 16\000"
.LASF211:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF340:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF520:
	.ascii	"elf_getProgramHeaderType\000"
.LASF220:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF460:
	.ascii	"e_shoff\000"
.LASF550:
	.ascii	"ph_virt\000"
.LASF147:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF196:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF335:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 4\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ unsigned int\000"
.LASF449:
	.ascii	"unsigned int\000"
.LASF370:
	.ascii	"_XOPEN_SOURCE 700\000"
.LASF403:
	.ascii	"ELFMAG3 'F'\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF462:
	.ascii	"e_ehsize\000"
.LASF294:
	.ascii	"__DA_IBIT__ 32\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF249:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF5:
	.ascii	"__GNUC__ 5\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF227:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF457:
	.ascii	"e_version\000"
.LASF330:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF303:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF140:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF470:
	.ascii	"Elf32_Shdr\000"
.LASF309:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF334:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF155:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF260:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF443:
	.ascii	"short int\000"
.LASF95:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF384:
	.ascii	"__PTR_SIZE 32\000"
.LASF84:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF497:
	.ascii	"elf32_getProgramHeaderTable\000"
.LASF322:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 2\000"
.LASF410:
	.ascii	"PT_NOTE 4\000"
.LASF540:
	.ascii	"elf_getMemoryBounds\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF174:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF499:
	.ascii	"elf32_getProgramHeaderType\000"
.LASF210:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF524:
	.ascii	"elf_getProgramHeaderFileSize\000"
.LASF343:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF408:
	.ascii	"PT_DYNAMIC 2\000"
.LASF97:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
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
.LASF267:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF256:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF138:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF424:
	.ascii	"DT_NULL 0\000"
.LASF414:
	.ascii	"PT_NUM 8\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF548:
	.ascii	"elf_vtopProgramHeader\000"
.LASF302:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF376:
	.ascii	"IMX6 1\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF96:
	.ascii	"__INT8_C(c) c\000"
.LASF442:
	.ascii	"signed char\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ int\000"
.LASF416:
	.ascii	"ELFDATA2MSB 2\000"
.LASF458:
	.ascii	"e_entry\000"
.LASF229:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF266:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF448:
	.ascii	"uint32_t\000"
.LASF493:
	.ascii	"elf32_getSectionTable\000"
.LASF406:
	.ascii	"PT_NULL 0\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF529:
	.ascii	"string_segment\000"
.LASF366:
	.ascii	"__unix__ 1\000"
.LASF310:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF459:
	.ascii	"e_phoff\000"
.LASF222:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF114:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF551:
	.ascii	"paddr\000"
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
.LASF171:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF339:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 4\000"
.LASF121:
	.ascii	"__GCC_IEC_559 0\000"
.LASF451:
	.ascii	"long long unsigned int\000"
.LASF525:
	.ascii	"elf_getProgramHeaderOffset\000"
.LASF238:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF434:
	.ascii	"DT_RELSZ 18\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF257:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF207:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF192:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF492:
	.ascii	"Elf64_Phdr\000"
.LASF356:
	.ascii	"__ARM_EABI__ 1\000"
.LASF103:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF183:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF495:
	.ascii	"file\000"
.LASF383:
	.ascii	"UINT64_MAX (18446744073709551615ULL)\000"
.LASF87:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF218:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF187:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF215:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF259:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF109:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF125:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF486:
	.ascii	"p_filesz\000"
.LASF439:
	.ascii	"_STRING_H_ \000"
.LASF226:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF153:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF246:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF397:
	.ascii	"EI_CLASS 4\000"
.LASF213:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF395:
	.ascii	"EI_MAG2 2\000"
.LASF388:
	.ascii	"__ELF_ELF_32_H__ \000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF115:
	.ascii	"__UINT_FAST8_MAX__ 0xff\000"
.LASF367:
	.ascii	"unix 1\000"
.LASF500:
	.ascii	"elf32_getProgramHeaderFileSize\000"
.LASF359:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__\000"
.LASF148:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF179:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 0\000"
.LASF320:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF81:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF248:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF400:
	.ascii	"ELFMAG0 '\\177'\000"
.LASF240:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF411:
	.ascii	"PT_SHLIB 5\000"
.LASF463:
	.ascii	"e_phentsize\000"
.LASF230:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF329:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF94:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF284:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF300:
	.ascii	"__USA_IBIT__ 16\000"
.LASF508:
	.ascii	"elf64_getProgramHeaderTable\000"
.LASF182:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF333:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF43:
	.ascii	"__INT32_TYPE__ int\000"
.LASF386:
	.ascii	"NULL ((void *)0)\000"
.LASF237:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF170:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF465:
	.ascii	"e_shentsize\000"
.LASF453:
	.ascii	"size_t\000"
.LASF417:
	.ascii	"SHT_PROGBITS 1\000"
.LASF8:
	.ascii	"__VERSION__ \"5.4.0 20160609\"\000"
.LASF532:
	.ascii	"elf_getSectionFlags\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF250:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF197:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF539:
	.ascii	"elf_getEntryPoint\000"
.LASF385:
	.ascii	"_STDIO_H_ \000"
.LASF261:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF399:
	.ascii	"EI_VERSION 6\000"
.LASF291:
	.ascii	"__SA_FBIT__ 15\000"
.LASF364:
	.ascii	"linux 1\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1009\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF401:
	.ascii	"ELFMAG1 'E'\000"
.LASF233:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF307:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF480:
	.ascii	"sh_entsize\000"
.LASF204:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF481:
	.ascii	"Elf32_Phdr\000"
.LASF131:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF262:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF494:
	.ascii	"elf32_getSectionType\000"
.LASF263:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF308:
	.ascii	"__NO_INLINE__ 1\000"
.LASF440:
	.ascii	"ISELF32(elfFile) ( ((struct Elf32_Header*)elfFile)-"
	.ascii	">e_ident[EI_CLASS] == ELFCLASS32 )\000"
.LASF216:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF126:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF517:
	.ascii	"elf_checkFile\000"
.LASF305:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF438:
	.ascii	"ELF_PRINT_ALL (ELF_PRINT_PROGRAM_HEADERS | ELF_PRIN"
	.ascii	"T_SECTIONS)\000"
.LASF379:
	.ascii	"SEL4_DEBUG_KERNEL 1\000"
.LASF245:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF116:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF441:
	.ascii	"ISELF64(elfFile) ( ((struct Elf64_Header*)elfFile)-"
	.ascii	">e_ident[EI_CLASS] == ELFCLASS64 )\000"
.LASF143:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF235:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF274:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF371:
	.ascii	"HAVE_AUTOCONF 1\000"
.LASF199:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF519:
	.ascii	"elf_getProgramHeaderFlags\000"
.LASF123:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF461:
	.ascii	"e_flags\000"
.LASF337:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF101:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF239:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF176:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF255:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF489:
	.ascii	"p_align\000"
.LASF297:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF426:
	.ascii	"DT_STRTAB 5\000"
.LASF396:
	.ascii	"EI_MAG3 3\000"
.LASF299:
	.ascii	"__USA_FBIT__ 16\000"
.LASF91:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF478:
	.ascii	"sh_info\000"
.LASF467:
	.ascii	"e_shstrndx\000"
.LASF92:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF378:
	.ascii	"DEBUG 1\000"
.LASF380:
	.ascii	"FASTPATH 1\000"
.LASF433:
	.ascii	"DT_REL 17\000"
.LASF469:
	.ascii	"Elf32_Header\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF336:
	.ascii	"__ARM_FEATURE_LDREX 15\000"
.LASF172:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF209:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF361:
	.ascii	"__gnu_linux__ 1\000"
.LASF141:
	.ascii	"__DBL_DIG__ 15\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF393:
	.ascii	"EI_MAG0 0\000"
.LASF523:
	.ascii	"elf_getProgramHeaderMemorySize\000"
.LASF208:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF552:
	.ascii	"elf_getProgramHeaderInfo\000"
.LASF134:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF243:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF456:
	.ascii	"e_machine\000"
.LASF112:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF541:
	.ascii	"phys\000"
.LASF522:
	.ascii	"elf_getProgramHeaderVaddr\000"
.LASF349:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF358:
	.ascii	"__ARM_FEATURE_IDIV\000"
.LASF287:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF444:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF93:
	.ascii	"__UINT32_MAX__ 0xffffffffU\000"
.LASF161:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF232:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF342:
	.ascii	"__arm__ 1\000"
.LASF542:
	.ascii	"mem_min\000"
.LASF553:
	.ascii	"elf_loadFile\000"
.LASF511:
	.ascii	"elf64_getProgramHeaderFileSize\000"
.LASF154:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF545:
	.ascii	"sect_max\000"
.LASF278:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF466:
	.ascii	"e_shnum\000"
.LASF526:
	.ascii	"elf_getSegmentStringTable\000"
.LASF368:
	.ascii	"__ELF__ 1\000"
.LASF348:
	.ascii	"__THUMBEL__\000"
.LASF98:
	.ascii	"__INT16_C(c) c\000"
.LASF488:
	.ascii	"p_flags\000"
.LASF419:
	.ascii	"SHT_NOBITS 8\000"
.LASF173:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF252:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF113:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF201:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF476:
	.ascii	"sh_size\000"
.LASF282:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF534:
	.ascii	"elf_getSectionSize\000"
.LASF90:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF244:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF144:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF515:
	.ascii	"elf64_getProgramHeaderOffset\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF390:
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
.LASF425:
	.ascii	"DT_HASH 4\000"
.LASF360:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF482:
	.ascii	"p_type\000"
.LASF202:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF254:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF373:
	.ascii	"ARCH_ARM 1\000"
.LASF206:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF184:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF521:
	.ascii	"elf_getProgramHeaderPaddr\000"
.LASF546:
	.ascii	"elf_vaddrInProgramHeader\000"
.LASF200:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF162:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF295:
	.ascii	"__TA_FBIT__ 63\000"
.LASF166:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF122:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF484:
	.ascii	"p_vaddr\000"
.LASF506:
	.ascii	"elf64_getSectionType\000"
.LASF156:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF224:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF327:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF344:
	.ascii	"__ARM_ARCH_ISA_ARM 1\000"
.LASF487:
	.ascii	"p_memsz\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF242:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF205:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF168:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF507:
	.ascii	"elf64_getSectionFlags\000"
.LASF86:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF223:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF415:
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
.LASF429:
	.ascii	"DT_RELASZ 8\000"
.LASF471:
	.ascii	"sh_name\000"
.LASF355:
	.ascii	"__ARM_PCS 1\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ unsigned int\000"
.LASF447:
	.ascii	"uint16_t\000"
.LASF306:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF518:
	.ascii	"elf_getNumProgramHeaders\000"
.LASF136:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF275:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF191:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF326:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF428:
	.ascii	"DT_RELA 7\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF498:
	.ascii	"elf32_getProgramHeaderFlags\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF432:
	.ascii	"DT_SYMENT 11\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF527:
	.ascii	"char\000"
.LASF132:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF382:
	.ascii	"_STDINT_H \000"
.LASF549:
	.ascii	"ph_phys\000"
.LASF279:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF111:
	.ascii	"__INT_FAST8_MAX__ 0x7f\000"
.LASF475:
	.ascii	"sh_offset\000"
.LASF372:
	.ascii	"SOS_NFS_DIR \"/var/tftpboot/mint\"\000"
.LASF247:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF177:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF281:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF504:
	.ascii	"elf32_getProgramHeaderOffset\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF485:
	.ascii	"p_paddr\000"
.LASF347:
	.ascii	"__thumb2__\000"
.LASF536:
	.ascii	"elf_getSection\000"
.LASF158:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF273:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF234:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF185:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF288:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF464:
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
.LASF537:
	.ascii	"elf_getSectionNamed\000"
.LASF277:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF362:
	.ascii	"__linux 1\000"
.LASF538:
	.ascii	"_str\000"
.LASF477:
	.ascii	"sh_link\000"
.LASF496:
	.ascii	"elf32_getSectionFlags\000"
.LASF502:
	.ascii	"elf32_getProgramHeaderVaddr\000"
.LASF413:
	.ascii	"PT_TLS 7\000"
.LASF450:
	.ascii	"uint64_t\000"
.LASF198:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF398:
	.ascii	"EI_DATA 5\000"
.LASF554:
	.ascii	"dest\000"
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
.LASF474:
	.ascii	"sh_addr\000"
.LASF190:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF280:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF285:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF219:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF135:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF381:
	.ascii	"__ELF_ELF_H__ \000"
.LASF157:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF338:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF352:
	.ascii	"__VFP_FP__ 1\000"
.LASF217:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF389:
	.ascii	"__LIBELF_64_H__ \000"
.LASF289:
	.ascii	"__HA_FBIT__ 7\000"
.LASF409:
	.ascii	"PT_INTERP 3\000"
.LASF420:
	.ascii	"SHT_REL 9\000"
.LASF231:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF452:
	.ascii	"uintptr_t\000"
.LASF324:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF110:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF253:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF193:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF468:
	.ascii	"sizetype\000"
.LASF283:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF290:
	.ascii	"__HA_IBIT__ 8\000"
.LASF412:
	.ascii	"PT_PHDR 6\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF357:
	.ascii	"__ARM_ARCH_EXT_IDIV__\000"
.LASF341:
	.ascii	"__ARM_ARCH_PROFILE 65\000"
.LASF531:
	.ascii	"elf_getSectionName\000"
.LASF346:
	.ascii	"__thumb__\000"
.LASF422:
	.ascii	"SHF_ALLOC 2\000"
.LASF436:
	.ascii	"ELF_PRINT_PROGRAM_HEADERS 1\000"
.LASF203:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF119:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF387:
	.ascii	"FILE void\000"
.LASF503:
	.ascii	"elf32_getProgramHeaderPaddr\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF351:
	.ascii	"__SOFTFP__ 1\000"
.LASF454:
	.ascii	"e_ident\000"
.LASF509:
	.ascii	"elf64_getProgramHeaderFlags\000"
.LASF402:
	.ascii	"ELFMAG2 'L'\000"
.LASF312:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF130:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF445:
	.ascii	"unsigned char\000"
.LASF169:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF431:
	.ascii	"DT_STRSZ 10\000"
.LASF512:
	.ascii	"elf64_getProgramHeaderMemorySize\000"
.LASF163:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF124:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF236:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF195:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF276:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF404:
	.ascii	"ELFCLASS32 1\000"
.LASF421:
	.ascii	"SHF_WRITE 1\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF455:
	.ascii	"e_type\000"
.LASF369:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF264:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF407:
	.ascii	"PT_LOAD 1\000"
.LASF430:
	.ascii	"DT_RELAENT 9\000"
.LASF473:
	.ascii	"sh_flags\000"
.LASF516:
	.ascii	"elfFile\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF501:
	.ascii	"elf32_getProgramHeaderMemorySize\000"
.LASF354:
	.ascii	"__ARM_ARCH_7A__ 1\000"
.LASF129:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF505:
	.ascii	"elf64_getSectionTable\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF152:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF377:
	.ascii	"PLAT_IMX6 1\000"
.LASF513:
	.ascii	"elf64_getProgramHeaderVaddr\000"
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
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF82:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF483:
	.ascii	"p_offset\000"
.LASF345:
	.ascii	"__APCS_32__ 1\000"
.LASF535:
	.ascii	"elf_getSectionAddr\000"
.LASF241:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF150:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF145:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF446:
	.ascii	"short unsigned int\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF296:
	.ascii	"__TA_IBIT__ 64\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF128:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF186:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF160:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF350:
	.ascii	"__ARMEL__ 1\000"
.LASF555:
	.ascii	"GNU C11 5.4.0 20160609 -marm -mcpu=cortex-a9 -mfloa"
	.ascii	"t-abi=soft -mtls-dialect=gnu -g3 -ggdb3 -g -g -std="
	.ascii	"gnu11 -funwind-tables -ffreestanding -fno-stack-pro"
	.ascii	"tector\000"
.LASF107:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffU\000"
.LASF394:
	.ascii	"EI_MAG1 1\000"
.LASF120:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF151:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF365:
	.ascii	"__unix 1\000"
.LASF363:
	.ascii	"__linux__ 1\000"
.LASF423:
	.ascii	"SHF_EXECINSTR 4\000"
.LASF479:
	.ascii	"sh_addralign\000"
.LASF304:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF490:
	.ascii	"Elf64_Header\000"
.LASF472:
	.ascii	"sh_type\000"
.LASF269:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF212:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF99:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffff\000"
.LASF491:
	.ascii	"Elf64_Shdr\000"
.LASF533:
	.ascii	"elf_getSectionType\000"
.LASF178:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF556:
	.ascii	"/home/mint/seL4/dhs-demo-feb-2018/tools/common/../e"
	.ascii	"lfloader/src/arch-arm/elf/elf.c\000"
.LASF528:
	.ascii	"elf_getStringTable\000"
.LASF83:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF514:
	.ascii	"elf64_getProgramHeaderPaddr\000"
.LASF221:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF313:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\000"
.LASF530:
	.ascii	"elf_getNumSections\000"
.LASF228:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF165:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF543:
	.ascii	"mem_max\000"
.LASF105:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF418:
	.ascii	"SHT_SYMTAB 2\000"
.LASF268:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF175:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF137:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF427:
	.ascii	"DT_SYMTAB 6\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
