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
	.file	"kernel_final.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.syntax unified
	.arm
	.type	putEncodedChar, %function
putEncodedChar:
.LFB382:
	.file 1 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/capdl.c"
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 62 0
	cmp	r0, #187
.LBB5115:
.LBB5116:
	.file 2 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/io.c"
	.loc 2 119 0
	mvneq	r1, #1040384
.LBE5116:
.LBE5115:
	.loc 1 62 0
	beq	.L3
	cmp	r0, #255
.LBB5119:
.LBB5120:
	.loc 2 119 0
	mvneq	r1, #1040384
.LBE5120:
.LBE5119:
	.loc 1 62 0
	beq	.L4
	cmp	r0, #170
	beq	.L41
	.loc 1 76 0
	cmp	r0, #19
	bhi	.L10
.LBB5123:
.LBB5124:
	.loc 2 119 0
	mvn	r1, #1040384
.L25:
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L25
.LBE5124:
.LBE5123:
	.loc 1 78 0
	add	r0, r0, #20
.LVL1:
.LBB5126:
.LBB5127:
	.loc 2 119 0
	mvn	r2, #1040384
.LBE5127:
.LBE5126:
	.loc 1 78 0
	uxtb	r0, r0
.LBB5129:
.LBB5125:
	.loc 2 120 0
	mov	r3, #170
	str	r3, [r1, #-4031]
.LVL2:
.L12:
.LBE5125:
.LBE5129:
.LBB5130:
.LBB5128:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L12
.LBE5128:
.LBE5130:
.LBB5131:
.LBB5132:
	.loc 2 120 0
	str	r0, [r2, #-4031]
	bx	lr
.LVL3:
.L3:
.LBE5132:
.LBE5131:
.LBB5134:
.LBB5117:
	.loc 2 119 0
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L3
.LBE5117:
.LBE5134:
.LBB5135:
.LBB5136:
	mvn	r2, #1040384
.LBE5136:
.LBE5135:
.LBB5138:
.LBB5118:
	.loc 2 120 0
	mov	r3, #170
	str	r3, [r1, #-4031]
.L9:
.LBE5118:
.LBE5138:
.LBB5139:
.LBB5137:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L9
	.loc 2 120 0
	mov	r3, #162
	str	r3, [r2, #-4031]
	bx	lr
.L4:
.LBE5137:
.LBE5139:
.LBB5140:
.LBB5121:
	.loc 2 119 0
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L4
.LBE5121:
.LBE5140:
.LBB5141:
.LBB5142:
	mvn	r2, #1040384
.LBE5142:
.LBE5141:
.LBB5144:
.LBB5122:
	.loc 2 120 0
	mov	r3, #170
	str	r3, [r1, #-4031]
.L8:
.LBE5122:
.LBE5144:
.LBB5145:
.LBB5143:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L8
	.loc 2 120 0
	mov	r3, #160
	str	r3, [r2, #-4031]
	bx	lr
.L41:
.LBE5143:
.LBE5145:
.LBB5146:
.LBB5147:
	.loc 2 119 0
	mvn	r1, #1040384
.L5:
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L5
.LBE5147:
.LBE5146:
.LBB5149:
.LBB5150:
	mvn	r2, #1040384
.LBE5150:
.LBE5149:
.LBB5152:
.LBB5148:
	.loc 2 120 0
	mov	r3, #170
	str	r3, [r1, #-4031]
.L6:
.LBE5148:
.LBE5152:
.LBB5153:
.LBB5151:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L6
	.loc 2 120 0
	mov	r3, #161
	str	r3, [r2, #-4031]
	bx	lr
.L10:
.LBE5151:
.LBE5153:
.LBB5154:
.LBB5133:
	.loc 2 119 0
	mvn	r2, #1040384
.L26:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L26
	.loc 2 120 0
	str	r0, [r2, #-4031]
	bx	lr
.LBE5133:
.LBE5154:
	.cfi_endproc
.LFE382:
	.size	putEncodedChar, .-putEncodedChar
	.align	2
	.syntax unified
	.arm
	.type	sendWord, %function
sendWord:
.LFB384:
	.loc 1 108 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 108 0
	mov	r4, r0
	.loc 1 109 0
	uxtb	r0, r0
.LVL5:
	bl	putEncodedChar
.LVL6:
	.loc 1 110 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL7:
	.loc 1 111 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL8:
	.loc 1 112 0
	lsr	r0, r4, #24
	.loc 1 113 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL9:
	.loc 1 112 0
	b	putEncodedChar
.LVL10:
	.cfi_endproc
.LFE384:
	.size	sendWord, .-sendWord
	.align	2
	.syntax unified
	.arm
	.type	page_directory_comparator, %function
page_directory_comparator:
.LFB491:
	.file 3 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cdt.c"
	.loc 3 128 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL11:
	.loc 3 128 0
	mov	r3, r2
	.loc 3 129 0
	movw	r2, #:lower16:cap_extra_comp
.LVL12:
	movt	r2, #:upper16:cap_extra_comp
	bx	r3
.LVL13:
	.cfi_endproc
.LFE491:
	.size	page_directory_comparator, .-page_directory_comparator
	.align	2
	.syntax unified
	.arm
	.type	just_tie_break, %function
just_tie_break:
.LFB498:
	.loc 3 170 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL14:
	.loc 3 170 0
	mov	r3, r2
	.loc 3 171 0
	mov	r2, #0
.LVL15:
	bx	r3
.LVL16:
	.cfi_endproc
.LFE498:
	.size	just_tie_break, .-just_tie_break
	.align	2
	.syntax unified
	.arm
	.type	largest_child_comparator, %function
largest_child_comparator:
.LFB511:
	.loc 3 534 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL17:
	.loc 3 537 0
	mvn	r0, #0
.LVL18:
	bx	lr
	.cfi_endproc
.LFE511:
	.size	largest_child_comparator, .-largest_child_comparator
	.align	2
	.syntax unified
	.arm
	.type	tie_break_comparator, %function
tie_break_comparator:
.LFB484:
	.loc 3 49 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL19:
.LBB5168:
.LBB5169:
.LBB5170:
	.file 4 "./arch/object/structures_gen.h"
	.loc 4 469 0
	ldr	r3, [r0, #12]
.LBE5170:
.LBE5169:
.LBB5172:
.LBB5173:
	ldr	ip, [r1, #12]
.LBE5173:
.LBE5172:
.LBB5175:
.LBB5171:
	and	r3, r3, #31
.LBE5171:
.LBE5175:
.LBB5176:
.LBB5174:
	and	ip, ip, #31
.LBE5174:
.LBE5176:
	.loc 3 52 0
	cmp	ip, r3
	beq	.L48
	.loc 3 52 0 is_stmt 0 discriminator 1
	bcs	.L60
	.loc 3 52 0
	mov	r0, #1
.LVL20:
	bx	lr
.LVL21:
.L48:
.LBE5168:
.LBB5177:
.LBB5178:
	.loc 3 56 0 is_stmt 1
	cmp	r2, #0
.LBE5178:
.LBE5177:
	.loc 3 49 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	lr, r0
	mov	r5, r1
	mov	r4, r0
.LVL22:
.LBB5183:
.LBB5181:
	.loc 3 56 0
	beq	.L52
.LVL23:
	.loc 3 57 0
	blx	r2
.LVL24:
	.loc 3 58 0
	cmp	r0, #0
	popne	{r4, r5, r6, pc}
.LVL25:
.L52:
.LBB5179:
	.loc 3 63 0
	cmp	r4, r5
	beq	.L55
	bls	.L61
	mov	r0, #1
	pop	{r4, r5, r6, pc}
.LVL26:
.L60:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
.LBE5179:
.LBE5181:
.LBE5183:
.LBB5184:
	.loc 3 52 0
	mvn	r0, #0
.LVL27:
.LBE5184:
	.loc 3 64 0
	bx	lr
.LVL28:
.L61:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB5185:
.LBB5182:
.LBB5180:
	.loc 3 63 0
	mvn	r0, #0
	pop	{r4, r5, r6, pc}
.L55:
	mov	r0, #0
	pop	{r4, r5, r6, pc}
.LBE5180:
.LBE5182:
.LBE5185:
	.cfi_endproc
.LFE484:
	.size	tie_break_comparator, .-tie_break_comparator
	.align	2
	.syntax unified
	.arm
	.type	slot_eq_comparator, %function
slot_eq_comparator:
.LFB506:
	.loc 3 389 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL29:
.LBB5198:
.LBB5199:
.LBB5200:
	.loc 4 469 0
	ldr	r3, [r0, #12]
.LBE5200:
.LBE5199:
.LBB5202:
.LBB5203:
	ldr	ip, [r1, #12]
.LBE5203:
.LBE5202:
.LBB5205:
.LBB5201:
	and	r3, r3, #31
.LBE5201:
.LBE5205:
.LBB5206:
.LBB5204:
	and	ip, ip, #31
.LBE5204:
.LBE5206:
	.loc 3 392 0
	cmp	ip, r3
	beq	.L63
	.loc 3 392 0 is_stmt 0 discriminator 1
	bcs	.L69
	.loc 3 392 0
	mov	r0, #1
.LVL30:
	bx	lr
.LVL31:
.L63:
.LBE5198:
	.loc 3 396 0 is_stmt 1
	cmp	r2, #0
	beq	.L70
.LVL32:
.LBB5207:
.LBB5208:
	.loc 3 397 0
	bx	r2
.LVL33:
.L69:
.LBE5208:
.LBE5207:
.LBB5209:
	.loc 3 392 0
	mvn	r0, #0
.LVL34:
	bx	lr
.LVL35:
.L70:
.LBE5209:
	.loc 3 403 0
	mov	r0, r2
.LVL36:
	.loc 3 404 0
	bx	lr
	.cfi_endproc
.LFE506:
	.size	slot_eq_comparator, .-slot_eq_comparator
	.align	2
	.syntax unified
	.arm
	.type	slot_lt_comparator, %function
slot_lt_comparator:
.LFB512:
	.loc 3 540 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL37:
.LBB5222:
.LBB5223:
.LBB5224:
	.loc 4 469 0
	ldr	r3, [r0, #12]
.LBE5224:
.LBE5223:
.LBB5226:
.LBB5227:
	ldr	ip, [r1, #12]
.LBE5227:
.LBE5226:
.LBB5229:
.LBB5225:
	and	r3, r3, #31
.LBE5225:
.LBE5229:
.LBB5230:
.LBB5228:
	and	ip, ip, #31
.LBE5228:
.LBE5230:
	.loc 3 543 0
	cmp	ip, r3
	beq	.L72
	.loc 3 543 0 is_stmt 0 discriminator 1
	bcs	.L82
	.loc 3 543 0
	mov	r0, #1
.LVL38:
	bx	lr
.LVL39:
.L72:
.LBE5222:
	.loc 3 547 0 is_stmt 1
	cmp	r2, #0
	beq	.L82
.LVL40:
	.loc 3 540 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5231:
.LBB5232:
	.loc 3 548 0
	blx	r2
.LVL41:
	.loc 3 549 0
	cmp	r0, #0
	.loc 3 554 0
	mvneq	r0, #0
.LVL42:
	pop	{r4, pc}
.LVL43:
.L82:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	mvn	r0, #0
.LVL44:
.LBE5232:
.LBE5231:
	.loc 3 555 0
	bx	lr
	.cfi_endproc
.LFE512:
	.size	slot_lt_comparator, .-slot_lt_comparator
	.align	2
	.syntax unified
	.arm
	.type	getDecodedChar, %function
getDecodedChar:
.LFB381:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL45:
.LBB5243:
.LBB5244:
	.loc 2 125 0
	mvn	r2, #1040384
.L84:
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L84
	.loc 2 126 0
	ldr	r3, [r2, #-4095]
	uxtb	r3, r3
.LBE5244:
.LBE5243:
	.loc 1 30 0
	cmp	r3, #255
	beq	.L93
	.loc 1 33 0
	cmp	r3, #170
	beq	.L101
.L86:
	.loc 1 55 0
	strb	r3, [r0]
	.loc 1 56 0
	mov	r3, #0
.L85:
	.loc 1 58 0
	mov	r0, r3
.LVL46:
	bx	lr
.LVL47:
.L101:
.LBB5245:
.LBB5246:
.LBB5247:
.LBB5248:
	.loc 2 125 0
	mvn	r2, #1040384
.L87:
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L87
	.loc 2 126 0
	ldr	r3, [r2, #-4095]
	uxtb	r3, r3
.LBE5248:
.LBE5247:
	.loc 1 35 0
	cmp	r3, #255
	bne	.L102
.L93:
.LBE5246:
.LBE5245:
	.loc 1 31 0
	mov	r3, #1
	.loc 1 58 0
	mov	r0, r3
.LVL48:
	bx	lr
.LVL49:
.L102:
.LBB5250:
.LBB5249:
	.loc 1 38 0
	cmp	r3, #161
	beq	.L89
	cmp	r3, #162
	beq	.L90
	cmp	r3, #160
	beq	.L103
	.loc 1 49 0
	sub	r3, r3, #20
	uxtb	r3, r3
	cmp	r3, #19
	.loc 1 53 0
	movhi	r3, #0
	.loc 1 49 0
	bhi	.L85
	b	.L86
.L89:
	.loc 1 40 0
	mvn	r2, #85
	.loc 1 53 0
	mov	r3, #0
	.loc 1 40 0
	strb	r2, [r0]
	b	.L85
.L103:
	.loc 1 43 0
	mvn	r2, #0
	.loc 1 53 0
	mov	r3, #0
	.loc 1 43 0
	strb	r2, [r0]
	b	.L85
.L90:
	.loc 1 46 0
	mvn	r2, #68
	.loc 1 53 0
	mov	r3, #0
	.loc 1 46 0
	strb	r2, [r0]
	b	.L85
.LBE5249:
.LBE5250:
	.cfi_endproc
.LFE381:
	.size	getDecodedChar, .-getDecodedChar
	.align	2
	.syntax unified
	.arm
	.type	frame_cap_comparator, %function
frame_cap_comparator:
.LFB982:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r2
	movw	r2, #:lower16:cap_extra_comp
	movt	r2, #:upper16:cap_extra_comp
	bx	r3
	.cfi_endproc
.LFE982:
	.size	frame_cap_comparator, .-frame_cap_comparator
	.align	2
	.syntax unified
	.arm
	.type	page_table_comparator, %function
page_table_comparator:
.LFB980:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r2
	movw	r2, #:lower16:cap_extra_comp
	movt	r2, #:upper16:cap_extra_comp
	bx	r3
	.cfi_endproc
.LFE980:
	.size	page_table_comparator, .-page_table_comparator
	.align	2
	.syntax unified
	.arm
	.type	print_unsigned_long.part.58.constprop.314, %function
print_unsigned_long.part.58.constprop.314:
.LFB983:
	.file 5 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/machine/io.c"
	.loc 5 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL50:
	.loc 5 74 0
	cmp	r0, #0
	bxeq	lr
.LVL51:
.LBB5268:
.LBB5269:
	.loc 5 46 0
	and	r3, r0, #15
.LBE5269:
.LBE5268:
	.loc 5 55 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	cmp	r3, #9
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	addhi	r2, r3, #87
	addls	r2, r3, #48
	.loc 5 74 0
	lsrs	r3, r0, #4
	strb	r2, [sp, #4]
.LVL52:
	beq	.L114
.LVL53:
.LBB5276:
.LBB5270:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r2, r3, #87
	addls	r2, r3, #48
.LBE5270:
.LBE5276:
	.loc 5 74 0
	lsrs	r3, r0, #8
	strb	r2, [sp, #5]
.LVL54:
	beq	.L115
.LVL55:
.LBB5277:
.LBB5271:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r2, r3, #87
	addls	r2, r3, #48
.LBE5271:
.LBE5277:
	.loc 5 74 0
	lsrs	r3, r0, #12
	strb	r2, [sp, #6]
.LVL56:
	beq	.L116
.LVL57:
.LBB5278:
.LBB5272:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r2, r3, #87
	addls	r2, r3, #48
.LBE5272:
.LBE5278:
	.loc 5 74 0
	lsrs	r3, r0, #16
	strb	r2, [sp, #7]
.LVL58:
	beq	.L117
.LVL59:
.LBB5279:
.LBB5273:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r2, r3, #87
	addls	r2, r3, #48
.LBE5273:
.LBE5279:
	.loc 5 74 0
	lsrs	r3, r0, #20
	strb	r2, [sp, #8]
.LVL60:
	beq	.L118
.LVL61:
.LBB5280:
.LBB5274:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r2, r3, #87
	addls	r2, r3, #48
.LBE5274:
.LBE5280:
	.loc 5 74 0
	lsrs	r3, r0, #24
	strb	r2, [sp, #9]
.LVL62:
	beq	.L119
.LVL63:
.LBB5281:
.LBB5275:
	.loc 5 46 0
	and	r3, r3, #15
	cmp	r3, #9
	addhi	r3, r3, #87
	addls	r3, r3, #48
.LBE5275:
.LBE5281:
	.loc 5 74 0
	lsrs	r2, r0, #28
	strb	r3, [sp, #10]
.LVL64:
	beq	.L120
.LVL65:
	cmp	r2, #9
	mov	r0, #8
	addhi	r2, r2, #87
	addls	r2, r2, #48
	strb	r2, [sp, #11]
.LVL66:
.L108:
	add	lr, sp, #4
.LBB5282:
.LBB5283:
.LBB5284:
.LBB5285:
	.loc 2 119 0
	mvn	r2, #1040384
	add	r1, lr, r0
.LBE5285:
.LBE5284:
.LBB5288:
.LBB5289:
.LBB5290:
	.loc 2 120 0
	mov	r4, #13
.LVL67:
.L112:
.LBE5290:
.LBE5289:
.LBE5288:
.LBE5283:
.LBE5282:
	.loc 5 85 0
	ldrb	ip, [r1, #-1]!	@ zero_extendqisi2
.LVL68:
.L109:
.LBB5298:
.LBB5296:
.LBB5293:
.LBB5286:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L109
.LBE5286:
.LBE5293:
	.loc 2 112 0
	cmp	ip, #10
.LBB5294:
.LBB5287:
	.loc 2 120 0
	str	ip, [r2, #-4031]
.LVL69:
.LBE5287:
.LBE5294:
	.loc 2 112 0
	beq	.L111
.L110:
.LVL70:
.LBE5296:
.LBE5298:
	.loc 5 84 0
	cmp	r1, lr
	bne	.L112
	.loc 5 89 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL71:
.L111:
	.cfi_restore_state
.LBB5299:
.LBB5297:
.LBB5295:
.LBB5292:
.LBB5291:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L111
	.loc 2 120 0
	str	r4, [r2, #-4031]
	b	.L110
.LVL72:
.L114:
.LBE5291:
.LBE5292:
.LBE5295:
.LBE5297:
.LBE5299:
	.loc 5 74 0
	mov	r0, #1
	b	.L108
.LVL73:
.L115:
	mov	r0, #2
	b	.L108
.LVL74:
.L116:
	mov	r0, #3
	b	.L108
.LVL75:
.L117:
	mov	r0, #4
	b	.L108
.LVL76:
.L118:
	mov	r0, #5
	b	.L108
.LVL77:
.L119:
	mov	r0, #6
	b	.L108
.LVL78:
.L120:
	mov	r0, #7
.LVL79:
	b	.L108
	.cfi_endproc
.LFE983:
	.size	print_unsigned_long.part.58.constprop.314, .-print_unsigned_long.part.58.constprop.314
	.align	2
	.syntax unified
	.arm
	.type	getArg32, %function
getArg32:
.LFB383:
	.loc 1 86 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL80:
.LBB5310:
.LBB5311:
.LBB5312:
.LBB5313:
	.loc 2 125 0
	mvn	r2, #1040384
.LBE5313:
.LBE5312:
.LBE5311:
.LBE5310:
	.loc 1 86 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 88 0
	mov	r3, #0
	.loc 1 86 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 88 0
	strb	r3, [sp, #5]
	.loc 1 89 0
	strb	r3, [sp, #6]
	.loc 1 90 0
	strb	r3, [sp, #7]
.LVL81:
.L131:
.LBB5322:
.LBB5320:
.LBB5315:
.LBB5314:
	.loc 2 125 0
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L131
	.loc 2 126 0
	ldr	r1, [r2, #-4095]
	uxtb	r1, r1
.LBE5314:
.LBE5315:
	.loc 1 30 0
	cmp	r1, #255
	beq	.L136
	.loc 1 33 0
	cmp	r1, #170
	beq	.L157
.L134:
.LVL82:
	mov	r4, r0
.LBE5320:
.LBE5322:
	.loc 1 94 0
	add	r0, sp, #5
.LVL83:
	bl	getDecodedChar
.LVL84:
	cmp	r0, #0
	beq	.L158
.LVL85:
.L136:
	.loc 1 92 0
	mov	r0, #1
.L152:
	.loc 1 105 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL86:
.L157:
	.cfi_restore_state
.LBB5323:
.LBB5321:
.LBB5316:
.LBB5317:
.LBB5318:
.LBB5319:
	.loc 2 125 0
	mvn	r2, #1040384
.L135:
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L135
	.loc 2 126 0
	ldr	r3, [r2, #-4095]
	uxtb	r3, r3
.LBE5319:
.LBE5318:
	.loc 1 35 0
	cmp	r3, #255
	beq	.L136
	.loc 1 38 0
	cmp	r3, #161
	beq	.L134
	cmp	r3, #162
	.loc 1 46 0
	moveq	r1, #187
	.loc 1 38 0
	beq	.L134
	cmp	r3, #160
	.loc 1 43 0
	moveq	r1, #255
	.loc 1 38 0
	beq	.L134
	.loc 1 49 0
	sub	r3, r3, #20
	uxtb	r1, r3
.LBE5317:
.LBE5316:
.LBE5321:
.LBE5323:
	.loc 1 87 0
	cmp	r1, #20
	movcs	r1, #0
	b	.L134
.LVL87:
.L158:
	.loc 1 97 0
	add	r0, sp, #6
	bl	getDecodedChar
.LVL88:
	cmp	r0, #0
	bne	.L136
	.loc 1 100 0
	add	r0, sp, #7
	bl	getDecodedChar
.LVL89:
	cmp	r0, #0
	bne	.L136
	.loc 1 103 0
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	ldrb	ip, [sp, #5]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r2, r2, #8
	orr	r2, r2, ip, lsl #16
	orr	r3, r2, r3
	orr	r1, r3, r1, lsl #24
	str	r1, [r4]
	.loc 1 104 0
	b	.L152
	.cfi_endproc
.LFE383:
	.size	getArg32, .-getArg32
	.align	2
	.global	armv_init_ccnt
	.syntax unified
	.arm
	.type	armv_init_ccnt, %function
armv_init_ccnt:
.LFB272:
	.file 6 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c"
	.loc 6 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL90:
	.loc 6 22 0
	mov	r3, #1
	.syntax divided
@ 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c" 1
	mcr p15, 0, r3, c9, c14, 0

@ 0 "" 2
.LVL91:
	.loc 6 30 0
	.arm
	.syntax unified
	mov	r3, #5
	.syntax divided
@ 30 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c" 1
	mcr p15, 0, r3, c9, c12, 0

@ 0 "" 2
.LVL92:
	.loc 6 38 0
	.arm
	.syntax unified
	mov	r3, #-2147483648
	.syntax divided
@ 38 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/benchmark.c" 1
	mcr p15, 0, r3, c9, c12, 1

@ 0 "" 2
	.arm
	.syntax unified
	bx	lr
	.cfi_endproc
.LFE272:
	.size	armv_init_ccnt, .-armv_init_ccnt
	.align	2
	.global	clean_D_PoU
	.syntax unified
	.arm
	.type	clean_D_PoU, %function
clean_D_PoU:
.LFB278:
	.file 7 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c"
	.loc 7 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB5324:
.LBB5325:
	.loc 7 32 0
	.syntax divided
@ 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r8, c0, c0, 1
@ 0 "" 2
.LVL93:
	.arm
	.syntax unified
.LBE5325:
.LBE5324:
	.loc 7 75 0
	ubfx	r7, r8, #27, #3
.LVL94:
	.loc 7 78 0
	cmp	r7, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r6, #0
	mov	r5, r6
.LVL95:
.L165:
	.loc 7 79 0
	asr	r3, r8, r6
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L162
.LVL96:
.LBB5326:
.LBB5327:
.LBB5328:
	.loc 7 53 0
	.syntax divided
@ 53 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 7 55 0
	.arm
	.syntax unified
	lsl	r4, r5, #1
	.syntax divided
@ 55 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r4, c0, c0, 0
@ 0 "" 2
	.loc 7 57 0
@ 57 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 7 59 0
@ 59 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LVL97:
	.arm
	.syntax unified
.LBE5328:
.LBE5327:
	.loc 7 82 0
	ubfx	r9, r3, #3, #10
	.loc 7 81 0
	and	ip, r3, #7
	.loc 7 84 0
	ubfx	r3, r3, #13, #15
	.loc 7 82 0
	add	r10, r9, #1
	.loc 7 81 0
	add	ip, ip, #4
.LVL98:
	.loc 7 84 0
	add	r0, r3, #1
	.loc 7 83 0
	clz	r9, r9
.LVL99:
	.loc 7 87 0
	mov	lr, #0
.LVL100:
.L163:
	orr	r1, r4, lr, lsl r9
.LBE5326:
	.loc 7 78 0
	mov	r3, #0
.LVL101:
.L164:
.LBB5332:
.LBB5329:
.LBB5330:
.LBB5331:
	.loc 7 21 0 discriminator 3
	orr	r2, r1, r3, lsl ip
.LVL102:
	.syntax divided
@ 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r2, c7, c10, 2
@ 0 "" 2
.LVL103:
	.arm
	.syntax unified
.LBE5331:
.LBE5330:
	.loc 7 90 0 discriminator 3
	add	r3, r3, #1
.LVL104:
	cmp	r0, r3
	bgt	.L164
.LBE5329:
	.loc 7 87 0 discriminator 2
	add	lr, lr, #1
.LVL105:
	cmp	r10, lr
	bgt	.L163
.LVL106:
.L162:
.LBE5332:
	.loc 7 78 0
	add	r5, r5, #1
.LVL107:
	add	r6, r6, #3
	cmp	r7, r5
	bne	.L165
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE278:
	.size	clean_D_PoU, .-clean_D_PoU
	.align	2
	.global	cleanInvalidate_D_PoC
	.syntax unified
	.arm
	.type	cleanInvalidate_D_PoC, %function
cleanInvalidate_D_PoC:
.LFB279:
	.loc 7 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB5333:
.LBB5334:
	.loc 7 32 0
	.syntax divided
@ 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r8, c0, c0, 1
@ 0 "" 2
.LVL108:
	.arm
	.syntax unified
.LBE5334:
.LBE5333:
	.loc 7 103 0
	ubfx	r7, r8, #24, #3
.LVL109:
	.loc 7 106 0
	cmp	r7, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	mov	r6, #0
	mov	r5, r6
.LVL110:
.L175:
	.loc 7 107 0
	asr	r3, r8, r6
	and	r3, r3, #7
	cmp	r3, #1
	bls	.L172
.LVL111:
.LBB5335:
.LBB5336:
.LBB5337:
	.loc 7 53 0
	.syntax divided
@ 53 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 2, r2, c0, c0, 0
@ 0 "" 2
	.loc 7 55 0
	.arm
	.syntax unified
	lsl	r4, r5, #1
	.syntax divided
@ 55 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r4, c0, c0, 0
@ 0 "" 2
	.loc 7 57 0
@ 57 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mrc p15, 1, r3, c0, c0, 0
@ 0 "" 2
	.loc 7 59 0
@ 59 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 2, r2, c0, c0, 0
@ 0 "" 2
.LVL112:
	.arm
	.syntax unified
.LBE5337:
.LBE5336:
	.loc 7 110 0
	ubfx	r9, r3, #3, #10
	.loc 7 109 0
	and	ip, r3, #7
	.loc 7 112 0
	ubfx	r3, r3, #13, #15
	.loc 7 110 0
	add	r10, r9, #1
	.loc 7 109 0
	add	ip, ip, #4
.LVL113:
	.loc 7 112 0
	add	r0, r3, #1
	.loc 7 111 0
	clz	r9, r9
.LVL114:
	.loc 7 115 0
	mov	lr, #0
.LVL115:
.L173:
	orr	r1, r4, lr, lsl r9
.LBE5335:
	.loc 7 106 0
	mov	r3, #0
.LVL116:
.L174:
.LBB5341:
.LBB5338:
.LBB5339:
.LBB5340:
	.loc 7 26 0 discriminator 3
	orr	r2, r1, r3, lsl ip
.LVL117:
	.syntax divided
@ 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/cache.c" 1
	mcr p15, 0, r2, c7, c14, 2
@ 0 "" 2
.LVL118:
	.arm
	.syntax unified
.LBE5340:
.LBE5339:
	.loc 7 118 0 discriminator 3
	add	r3, r3, #1
.LVL119:
	cmp	r0, r3
	bgt	.L174
.LBE5338:
	.loc 7 115 0 discriminator 2
	add	lr, lr, #1
.LVL120:
	cmp	r10, lr
	bgt	.L173
.LVL121:
.L172:
.LBE5341:
	.loc 7 106 0
	add	r5, r5, #1
.LVL122:
	add	r6, r6, #3
	cmp	r7, r5
	bne	.L175
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE279:
	.size	cleanInvalidate_D_PoC, .-cleanInvalidate_D_PoC
	.align	2
	.global	armv_init_user_access
	.syntax unified
	.arm
	.type	armv_init_user_access, %function
armv_init_user_access:
.LFB282:
	.file 8 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c"
	.loc 8 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 8 56 0
	.syntax divided
@ 56 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 2
@ 0 "" 2
.LVL123:
	.loc 8 61 0
@ 61 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3,  c0,  c1, 1
@ 0 "" 2
.LVL124:
	.loc 8 62 0
	.arm
	.syntax unified
	tst	r3, #65536
	bxeq	lr
.LBB5342:
.LBB5343:
	.loc 8 41 0
	.syntax divided
@ 41 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mrc   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
.LVL125:
	.arm
	.syntax unified
.LBB5344:
	.loc 8 48 0
	.syntax divided
@ 48 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/armv/armv7-a/user_access.c" 1
	mcr   p15, 0,  r3, c14,  c1, 0
@ 0 "" 2
	.arm
	.syntax unified
	bx	lr
.LBE5344:
.LBE5343:
.LBE5342:
	.cfi_endproc
.LFE282:
	.size	armv_init_user_access, .-armv_init_user_access
	.section	.boot.text,"ax",%progbits
	.align	2
	.global	Arch_configureIdleThread
	.syntax unified
	.arm
	.type	Arch_configureIdleThread, %function
Arch_configureIdleThread:
.LFB317:
	.file 9 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/thread.c"
	.loc 9 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL126:
.LBB5345:
.LBB5346:
	.file 10 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine/registerset.h"
	.loc 10 21 0
	movw	r3, #:lower16:idle_thread
.LVL127:
.LBE5346:
.LBE5345:
.LBB5349:
.LBB5350:
	mov	r2, #83
.LBE5350:
.LBE5349:
.LBB5352:
.LBB5347:
	movt	r3, #:upper16:idle_thread
.LBE5347:
.LBE5352:
.LBB5353:
.LBB5351:
	str	r2, [r0, #64]
.LVL128:
.LBE5351:
.LBE5353:
.LBB5354:
.LBB5348:
	str	r3, [r0, #60]
.LVL129:
	bx	lr
.LBE5348:
.LBE5354:
	.cfi_endproc
.LFE317:
	.size	Arch_configureIdleThread, .-Arch_configureIdleThread
	.text
	.align	2
	.global	Arch_switchToIdleThread
	.syntax unified
	.arm
	.type	Arch_switchToIdleThread, %function
Arch_switchToIdleThread:
.LFB318:
	.loc 9 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 9 36 0
	movw	r3, #:lower16:.LANCHOR0
	mov	r2, #0
	movt	r3, #:upper16:.LANCHOR0
	str	r2, [r3]
	bx	lr
	.cfi_endproc
.LFE318:
	.size	Arch_switchToIdleThread, .-Arch_switchToIdleThread
	.align	2
	.global	Arch_activateIdleThread
	.syntax unified
	.arm
	.type	Arch_activateIdleThread, %function
Arch_activateIdleThread:
.LFB319:
	.loc 9 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL130:
	bx	lr
	.cfi_endproc
.LFE319:
	.size	Arch_activateIdleThread, .-Arch_activateIdleThread
	.section	.boot.text
	.align	2
	.global	activate_global_pd
	.syntax unified
	.arm
	.type	activate_global_pd, %function
activate_global_pd:
.LFB325:
	.file 11 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/vspace.c"
	.loc 11 296 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 11 296 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5384:
.LBB5385:
.LBB5386:
.LBB5387:
	.file 12 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h"
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5387:
.LBE5386:
	.file 13 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/cache.c"
	.loc 13 182 0
	bl	cleanInvalidate_D_PoC
.LVL131:
.LBB5388:
.LBB5389:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5389:
.LBE5388:
.LBB5390:
.LBB5391:
	.file 14 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h"
	.loc 14 253 0
	mov	r2, #0
	.syntax divided
@ 253 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB5392:
.LBB5393:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5393:
.LBE5392:
.LBE5391:
.LBE5390:
.LBB5394:
.LBB5395:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5395:
.LBE5394:
.LBE5385:
.LBE5384:
.LBB5396:
.LBB5397:
.LBB5398:
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5398:
.LBE5397:
.LBB5399:
.LBB5400:
	.loc 14 135 0
	ldr	r3, .L190
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE5400:
.LBE5399:
.LBB5401:
.LBB5402:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5402:
.LBE5401:
.LBE5396:
.LBB5403:
.LBB5404:
.LBB5405:
.LBB5406:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5406:
.LBE5405:
	.loc 14 156 0
	.syntax divided
@ 156 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c8, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB5407:
.LBB5408:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5408:
.LBE5407:
.LBB5409:
.LBB5410:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5410:
.LBE5409:
.LBE5404:
.LBE5403:
	.loc 11 303 0
	mov	r0, #-536870912
	bl	lockTLBEntry
.LVL132:
	.loc 11 304 0
	mov	r0, #0
	.loc 11 305 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 11 304 0
	movt	r0, 65535
	b	lockTLBEntry
.LVL133:
.L191:
	.align	2
.L190:
	.word	.LANCHOR1+805306384
	.cfi_endproc
.LFE325:
	.size	activate_global_pd, .-activate_global_pd
	.text
	.align	2
	.global	copyGlobalMappings
	.syntax unified
	.arm
	.type	copyGlobalMappings, %function
copyGlobalMappings:
.LFB326:
	.loc 11 311 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL134:
	.loc 11 311 0
	movw	r2, #3585
	mov	r3, #3584
	ldr	ip, .L198
	b	.L193
.LVL135:
.L194:
	add	r3, r3, #1
	add	r2, r2, #1
.L193:
.LVL136:
	.loc 11 316 0
	cmp	r3, #4080
	beq	.L194
	.loc 11 317 0
	ldr	r1, [ip, r3, lsl #2]
	.loc 11 315 0
	cmp	r2, #4096
	.loc 11 317 0
	str	r1, [r0, r3, lsl #2]
.LVL137:
	.loc 11 315 0
	bne	.L194
	.loc 11 320 0
	bx	lr
.L199:
	.align	2
.L198:
	.word	.LANCHOR1+16
	.cfi_endproc
.LFE326:
	.size	copyGlobalMappings, .-copyGlobalMappings
	.align	2
	.global	isValidVTableRoot
	.syntax unified
	.arm
	.type	isValidVTableRoot, %function
isValidVTableRoot:
.LFB341:
	.loc 11 710 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 11 710 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r0, [sp]
.LVL138:
.LBB5411:
.LBB5412:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r0, r0
	.loc 4 998 0
	andne	r0, r0, #15
.LBE5412:
.LBE5411:
	.loc 11 712 0
	sub	r0, r0, #5
	clz	r0, r0
	lsr	r0, r0, #5
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE341:
	.size	isValidVTableRoot, .-isValidVTableRoot
	.align	2
	.global	maskVMRights
	.syntax unified
	.arm
	.type	maskVMRights, %function
maskVMRights:
.LFB343:
	.loc 11 735 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL139:
	.loc 11 736 0
	cmp	r0, #0
	bxeq	lr
	.loc 11 739 0
	cmp	r0, #2
	beq	.L212
	.loc 11 743 0
	cmp	r0, #3
	beq	.L213
.L210:
	.loc 11 751 0
	mov	r0, #1
.LVL140:
	.loc 11 752 0
	bx	lr
.LVL141:
.L212:
	.loc 11 739 0 discriminator 1
	tst	r1, #2
	.loc 11 741 0 discriminator 1
	moveq	r0, #1
.LVL142:
	movne	r0, #2
	bx	lr
.LVL143:
.L213:
	.loc 11 743 0 discriminator 1
	tst	r1, #2
	beq	.L210
.LVL144:
	.loc 11 745 0
	tst	r1, #1
	.loc 11 748 0
	moveq	r0, #2
.LVL145:
	movne	r0, #3
	bx	lr
	.cfi_endproc
.LFE343:
	.size	maskVMRights, .-maskVMRights
	.align	2
	.global	findFreeHWASID
	.syntax unified
	.arm
	.type	findFreeHWASID, %function
findFreeHWASID:
.LFB346:
	.loc 11 774 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL146:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	movw	lr, #:lower16:armKSNextASID
	movt	lr, #:upper16:armKSNextASID
	movw	r1, #:lower16:armKSHWASIDTable
	movt	r1, #:upper16:armKSHWASIDTable
	.loc 11 779 0
	mov	r3, #0
	ldrb	ip, [lr]	@ zero_extendqisi2
.LVL147:
.L216:
	add	r0, ip, r3
	add	r3, r3, #1
.LVL148:
	uxtb	r0, r0
.LVL149:
	.loc 11 783 0
	ldr	r2, [r1, r0, lsl #2]
	cmp	r2, #0
	ldreq	pc, [sp], #4
	.loc 11 779 0
	cmp	r3, #256
	bne	.L216
.LVL150:
.LBB5425:
.LBB5426:
.LBB5427:
.LBB5428:
	.loc 11 425 0
	ldr	r3, [r1, ip, lsl #2]
.LVL151:
	mov	r2, #0
	add	r3, r3, #12288
	str	r2, [r3, #4032]
.LVL152:
.LBE5428:
.LBE5427:
.LBB5429:
.LBB5430:
.LBB5431:
.LBB5432:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5432:
.LBE5431:
	.loc 14 165 0
	.syntax divided
@ 165 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, ip, c8, c7, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBB5433:
.LBB5434:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5434:
.LBE5433:
.LBB5435:
.LBB5436:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL153:
	.arm
	.syntax unified
.LBE5436:
.LBE5435:
.LBE5430:
.LBE5429:
	.loc 11 798 0
	ldrb	r3, [lr]	@ zero_extendqisi2
	mov	r0, ip
.LVL154:
	.loc 11 795 0
	str	r2, [r1, ip, lsl #2]
	.loc 11 798 0
	add	r3, r3, #1
	strb	r3, [lr]
.LVL155:
.LBE5426:
.LBE5425:
	.loc 11 801 0
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE346:
	.size	findFreeHWASID, .-findFreeHWASID
	.align	2
	.global	cleanCacheRange_PoU
	.syntax unified
	.arm
	.type	cleanCacheRange_PoU, %function
cleanCacheRange_PoU:
.LFB375:
	.loc 13 86 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL156:
	.loc 13 95 0
	lsr	r1, r1, #5
.LVL157:
	lsr	r0, r0, #5
.LVL158:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L225:
.LVL159:
.LBB5437:
.LBB5438:
	.loc 14 212 0 discriminator 3
	lsl	r3, r0, #5
.LVL160:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB5439:
.LBB5440:
	.loc 12 23 0 discriminator 3
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL161:
	.arm
	.syntax unified
.LBE5440:
.LBE5439:
.LBE5438:
.LBE5437:
	.loc 13 95 0 discriminator 3
	add	r0, r0, #1
.LVL162:
	cmp	r0, r1
	bne	.L225
	bx	lr
	.cfi_endproc
.LFE375:
	.size	cleanCacheRange_PoU, .-cleanCacheRange_PoU
	.align	2
	.global	invalidateCacheRange_I
	.syntax unified
	.arm
	.type	invalidateCacheRange_I, %function
invalidateCacheRange_I:
.LFB377:
	.loc 13 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL163:
	.loc 13 150 0
	lsr	r1, r1, #5
.LVL164:
	lsr	r0, r0, #5
.LVL165:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L230:
.LVL166:
.LBB5441:
.LBB5442:
	.loc 14 240 0 discriminator 3
	lsl	r3, r0, #5
.LVL167:
	.syntax divided
@ 240 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB5443:
.LBB5444:
	.loc 12 29 0 discriminator 3
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL168:
	.arm
	.syntax unified
.LBE5444:
.LBE5443:
.LBE5442:
.LBE5441:
	.loc 13 150 0 discriminator 3
	add	r0, r0, #1
.LVL169:
	cmp	r0, r1
	bne	.L230
	bx	lr
	.cfi_endproc
.LFE377:
	.size	invalidateCacheRange_I, .-invalidateCacheRange_I
	.align	2
	.global	branchFlushRange
	.syntax unified
	.arm
	.type	branchFlushRange, %function
branchFlushRange:
.LFB378:
	.loc 13 158 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL170:
	.loc 13 162 0
	lsr	r1, r1, #5
.LVL171:
	lsr	r0, r0, #5
.LVL172:
	add	r1, r1, #1
	cmp	r0, r1
	bxcs	lr
.L235:
.LVL173:
.LBB5445:
.LBB5446:
	.loc 14 277 0 discriminator 3
	lsl	r3, r0, #5
.LVL174:
	.syntax divided
@ 277 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 7
@ 0 "" 2
.LVL175:
	.arm
	.syntax unified
.LBE5446:
.LBE5445:
	.loc 13 162 0 discriminator 3
	add	r0, r0, #1
.LVL176:
	cmp	r0, r1
	bne	.L235
	bx	lr
	.cfi_endproc
.LFE378:
	.size	branchFlushRange, .-branchFlushRange
	.align	2
	.global	cleanCaches_PoU
	.syntax unified
	.arm
	.type	cleanCaches_PoU, %function
cleanCaches_PoU:
.LFB379:
	.loc 13 170 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5447:
.LBB5448:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5448:
.LBE5447:
	.loc 13 172 0
	bl	clean_D_PoU
.LVL177:
.LBB5449:
.LBB5450:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5450:
.LBE5449:
.LBB5451:
.LBB5452:
	.loc 14 253 0
	mov	r3, #0
	.syntax divided
@ 253 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB5453:
.LBB5454:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5454:
.LBE5453:
.LBE5452:
.LBE5451:
.LBB5455:
.LBB5456:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
	pop	{r4, pc}
.LBE5456:
.LBE5455:
	.cfi_endproc
.LFE379:
	.size	cleanCaches_PoU, .-cleanCaches_PoU
	.align	2
	.global	cleanInvalidateL1Caches
	.syntax unified
	.arm
	.type	cleanInvalidateL1Caches, %function
cleanInvalidateL1Caches:
.LFB380:
	.loc 13 180 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5457:
.LBB5458:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5458:
.LBE5457:
	.loc 13 182 0
	bl	cleanInvalidate_D_PoC
.LVL178:
.LBB5459:
.LBB5460:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5460:
.LBE5459:
.LBB5461:
.LBB5462:
	.loc 14 253 0
	mov	r3, #0
	.syntax divided
@ 253 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBB5463:
.LBB5464:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5464:
.LBE5463:
.LBE5462:
.LBE5461:
.LBB5465:
.LBB5466:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
	pop	{r4, pc}
.LBE5466:
.LBE5465:
	.cfi_endproc
.LFE380:
	.size	cleanInvalidateL1Caches, .-cleanInvalidateL1Caches
	.align	2
	.global	set_breakpoint
	.syntax unified
	.arm
	.type	set_breakpoint, %function
set_breakpoint:
.LFB405:
	.file 15 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/debug.c"
	.loc 15 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL179:
	.loc 15 101 0
	movw	r3, #:lower16:n_breakpoints
	.loc 15 98 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 15 101 0
	movt	r3, #:upper16:n_breakpoints
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L294
	movw	r3, #:lower16:breakpoints
	movt	r3, #:upper16:breakpoints
	ldr	ip, [r3, #4]
	cmp	ip, #0
	beq	.L243
.LVL180:
	cmp	r2, #1
	beq	.L292
	ldr	ip, [r3, #12]
	cmp	ip, #0
	beq	.L265
.LVL181:
	cmp	r2, #2
	beq	.L292
	ldr	ip, [r3, #20]
	cmp	ip, #0
	beq	.L267
.LVL182:
	cmp	r2, #3
	beq	.L292
	ldr	ip, [r3, #28]
	cmp	ip, #0
	beq	.L269
.LVL183:
	cmp	r2, #4
	beq	.L292
	ldr	ip, [r3, #36]
	cmp	ip, #0
	beq	.L271
.LVL184:
	cmp	r2, #5
	beq	.L292
	ldr	ip, [r3, #44]
	cmp	ip, #0
	beq	.L273
.LVL185:
	cmp	r2, #6
	beq	.L292
	ldr	ip, [r3, #52]
	cmp	ip, #0
	beq	.L275
.LVL186:
	cmp	r2, #7
	beq	.L292
	ldr	ip, [r3, #60]
	cmp	ip, #0
	beq	.L277
.LVL187:
	cmp	r2, #8
	beq	.L292
	ldr	ip, [r3, #68]
	cmp	ip, #0
	beq	.L279
.LVL188:
	cmp	r2, #9
	beq	.L292
	ldr	ip, [r3, #76]
	cmp	ip, #0
	beq	.L281
.LVL189:
	cmp	r2, #10
	beq	.L292
	ldr	ip, [r3, #84]
	cmp	ip, #0
	beq	.L283
.LVL190:
	cmp	r2, #11
	beq	.L292
	ldr	ip, [r3, #92]
	cmp	ip, #0
	beq	.L285
.LVL191:
	cmp	r2, #12
	beq	.L292
	ldr	ip, [r3, #100]
	cmp	ip, #0
	beq	.L287
.LVL192:
	cmp	r2, #13
	beq	.L292
	ldr	ip, [r3, #108]
	cmp	ip, #0
	beq	.L289
.LVL193:
	cmp	r2, #14
	beq	.L292
	ldr	ip, [r3, #116]
	cmp	ip, #0
	beq	.L291
.LVL194:
	cmp	r2, #15
	beq	.L292
	ldr	ip, [r3, #124]
	cmp	ip, #0
	movne	ip, #16
	moveq	ip, #15
.LVL195:
.L247:
	.loc 15 103 0
	cmp	ip, r2
	beq	.L294
.L245:
	.loc 15 108 0
	add	lr, r3, ip, lsl #3
	.loc 15 107 0
	str	r0, [r3, ip, lsl #3]
	mov	r2, ip
	.loc 15 108 0
	str	r1, [lr, #4]
.LVL196:
.LBB5471:
.LBB5472:
	.file 16 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h"
	.loc 16 170 0
	cmp	ip, #5
	ldrls	pc, [pc, ip, asl #2]
	b	.L248
.L250:
	.word	.L249
	.word	.L251
	.word	.L252
	.word	.L253
	.word	.L254
	.word	.L255
.LVL197:
.L292:
.LBE5472:
.LBE5471:
	.loc 15 101 0
	mov	ip, r2
	b	.L247
.LVL198:
.L255:
.LBB5479:
.LBB5473:
	.loc 16 187 0
	.syntax divided
@ 187 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c5, 4
@ 0 "" 2
.LVL199:
	.arm
	.syntax unified
.L261:
.LBE5473:
.LBE5479:
.LBB5480:
.LBB5481:
	.loc 16 255 0
	movw	r3, #487
	.syntax divided
@ 255 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c5, 5
@ 0 "" 2
.LVL200:
	.arm
	.syntax unified
.L295:
.LBE5481:
.LBE5480:
	.loc 15 119 0
	mov	r0, r2
.LVL201:
	ldr	pc, [sp], #4
.LVL202:
.L251:
.LBB5488:
.LBB5474:
	.loc 16 175 0
	.syntax divided
@ 175 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c1, 4
@ 0 "" 2
.LVL203:
	.arm
	.syntax unified
.L257:
.LBE5474:
.LBE5488:
.LBB5489:
.LBB5482:
	.loc 16 243 0
	movw	r3, #487
	.syntax divided
@ 243 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c1, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE5482:
.LBE5489:
	.loc 15 119 0
	mov	r0, r2
.LVL204:
	ldr	pc, [sp], #4
.LVL205:
.L252:
.LBB5490:
.LBB5475:
	.loc 16 178 0
	.syntax divided
@ 178 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c2, 4
@ 0 "" 2
.LVL206:
	.arm
	.syntax unified
.L258:
.LBE5475:
.LBE5490:
.LBB5491:
.LBB5483:
	.loc 16 246 0
	movw	r3, #487
	.syntax divided
@ 246 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c2, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE5483:
.LBE5491:
	.loc 15 119 0
	mov	r0, r2
.LVL207:
	ldr	pc, [sp], #4
.LVL208:
.L253:
.LBB5492:
.LBB5476:
	.loc 16 181 0
	.syntax divided
@ 181 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c3, 4
@ 0 "" 2
.LVL209:
	.arm
	.syntax unified
.L259:
.LBE5476:
.LBE5492:
.LBB5493:
.LBB5484:
	.loc 16 249 0
	movw	r3, #487
	.syntax divided
@ 249 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c3, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE5484:
.LBE5493:
	.loc 15 119 0
	mov	r0, r2
.LVL210:
	ldr	pc, [sp], #4
.LVL211:
.L254:
.LBB5494:
.LBB5477:
	.loc 16 184 0
	.syntax divided
@ 184 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c4, 4
@ 0 "" 2
.LVL212:
	.arm
	.syntax unified
.L260:
.LBE5477:
.LBE5494:
.LBB5495:
.LBB5485:
	.loc 16 252 0
	movw	r3, #487
	.syntax divided
@ 252 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c4, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE5485:
.LBE5495:
	.loc 15 119 0
	mov	r0, r2
.LVL213:
	ldr	pc, [sp], #4
.LVL214:
.L243:
	.loc 15 108 0
	mov	r2, ip
	.loc 15 107 0
	str	r0, [r3]
	.loc 15 108 0
	str	r1, [r3, #4]
.LVL215:
.L249:
.LBB5496:
.LBB5478:
	.loc 16 172 0
	.syntax divided
@ 172 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c0, 4
@ 0 "" 2
.LVL216:
	.arm
	.syntax unified
.L256:
.LBE5478:
.LBE5496:
.LBB5497:
.LBB5486:
	.loc 16 240 0
	movw	r3, #487
	.syntax divided
@ 240 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c0, 5
@ 0 "" 2
	.arm
	.syntax unified
.LBE5486:
.LBE5497:
	.loc 15 119 0
	mov	r0, r2
.LVL217:
	ldr	pc, [sp], #4
.LVL218:
.L248:
.LBB5498:
.LBB5487:
	.loc 16 238 0
	cmp	ip, #5
	ldrls	pc, [pc, ip, asl #2]
	b	.L295
.L262:
	.word	.L256
	.word	.L257
	.word	.L258
	.word	.L259
	.word	.L260
	.word	.L261
.LVL219:
.L294:
.LBE5487:
.LBE5498:
	.loc 15 104 0
	mvn	r2, #0
	b	.L295
.LVL220:
.L265:
	.loc 15 101 0
	mov	ip, #1
	b	.L245
.LVL221:
.L275:
	mov	ip, #6
	b	.L247
.LVL222:
.L273:
	mov	ip, #5
	b	.L247
.LVL223:
.L271:
	mov	ip, #4
	b	.L247
.LVL224:
.L269:
	mov	ip, #3
	b	.L247
.LVL225:
.L291:
	mov	ip, #14
	b	.L247
.LVL226:
.L267:
	mov	ip, #2
	b	.L247
.LVL227:
.L277:
	mov	ip, #7
	b	.L247
.LVL228:
.L281:
	mov	ip, #9
	b	.L247
.LVL229:
.L279:
	mov	ip, #8
	b	.L247
.LVL230:
.L289:
	mov	ip, #13
	b	.L247
.LVL231:
.L287:
	mov	ip, #12
	b	.L247
.LVL232:
.L285:
	mov	ip, #11
	b	.L247
.LVL233:
.L283:
	mov	ip, #10
	b	.L247
	.cfi_endproc
.LFE405:
	.size	set_breakpoint, .-set_breakpoint
	.align	2
	.global	clear_breakpoint
	.syntax unified
	.arm
	.type	clear_breakpoint, %function
clear_breakpoint:
.LFB406:
	.loc 15 123 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL234:
	.loc 15 126 0
	movw	r3, #:lower16:n_breakpoints
	movt	r3, #:upper16:n_breakpoints
	ldr	r2, [r3]
	cmp	r2, #0
	bxeq	lr
	.loc 15 127 0
	movw	r3, #:lower16:breakpoints
	movt	r3, #:upper16:breakpoints
	ldr	r1, [r3]
	cmp	r1, r0
	beq	.L409
.L299:
.LVL235:
	.loc 15 126 0
	cmp	r2, #1
	bxeq	lr
.L438:
	.loc 15 127 0
	ldr	r1, [r3, #8]
	cmp	r0, r1
	beq	.L410
.L301:
.LVL236:
	.loc 15 126 0
	cmp	r2, #2
	bxeq	lr
.L437:
	.loc 15 127 0
	ldr	r1, [r3, #16]
	cmp	r0, r1
	beq	.L411
.L302:
.LVL237:
	.loc 15 126 0
	cmp	r2, #3
	bxeq	lr
.L436:
	.loc 15 127 0
	ldr	r1, [r3, #24]
	cmp	r0, r1
	beq	.L412
.L303:
.LVL238:
	.loc 15 126 0
	cmp	r2, #4
	bxeq	lr
.L435:
	.loc 15 127 0
	ldr	r1, [r3, #32]
	cmp	r0, r1
	beq	.L413
.L304:
.LVL239:
	.loc 15 126 0
	cmp	r2, #5
	bxeq	lr
.L434:
	.loc 15 127 0
	ldr	r1, [r3, #40]
	cmp	r0, r1
	beq	.L414
.L305:
.LVL240:
	.loc 15 126 0
	cmp	r2, #6
	bxeq	lr
.L433:
	.loc 15 127 0
	ldr	r1, [r3, #48]
	cmp	r0, r1
	beq	.L415
.LVL241:
	.loc 15 126 0
	cmp	r2, #7
	bxeq	lr
.L432:
	.loc 15 127 0
	ldr	r1, [r3, #56]
	cmp	r0, r1
	beq	.L416
.LVL242:
	.loc 15 126 0
	cmp	r2, #8
	bxeq	lr
.L431:
	.loc 15 127 0
	ldr	r1, [r3, #64]
	cmp	r0, r1
	beq	.L417
.LVL243:
	.loc 15 126 0
	cmp	r2, #9
	bxeq	lr
.L430:
	.loc 15 127 0
	ldr	r1, [r3, #72]
	cmp	r0, r1
	beq	.L418
.LVL244:
	.loc 15 126 0
	cmp	r2, #10
	bxeq	lr
.L429:
	.loc 15 127 0
	ldr	r1, [r3, #80]
	cmp	r0, r1
	beq	.L419
.LVL245:
	.loc 15 126 0
	cmp	r2, #11
	bxeq	lr
.L428:
	.loc 15 127 0
	ldr	r1, [r3, #88]
	cmp	r0, r1
	beq	.L420
.LVL246:
	.loc 15 126 0
	cmp	r2, #12
	bxeq	lr
.L427:
	.loc 15 127 0
	ldr	r1, [r3, #96]
	cmp	r0, r1
	beq	.L421
.LVL247:
	.loc 15 126 0
	cmp	r2, #13
	bxeq	lr
.L426:
	.loc 15 127 0
	ldr	r1, [r3, #104]
	cmp	r0, r1
	beq	.L422
.LVL248:
	.loc 15 126 0
	cmp	r2, #14
	bxeq	lr
.L425:
	.loc 15 127 0
	ldr	r1, [r3, #112]
	cmp	r0, r1
	beq	.L423
.LVL249:
	.loc 15 126 0
	cmp	r2, #15
	bxeq	lr
.L424:
	.loc 15 127 0
	ldr	r2, [r3, #120]
	cmp	r2, r0
	bxne	lr
	.loc 15 127 0 is_stmt 0 discriminator 1
	ldr	r2, [r3, #124]
	cmp	r2, #0
	.loc 15 130 0 is_stmt 1 discriminator 1
	movne	r2, #0
	strne	r2, [r3, #124]
.LVL250:
	bx	lr
.LVL251:
.L423:
	.loc 15 127 0
	ldr	r1, [r3, #116]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #116]
.LVL252:
	.loc 15 126 0
	cmp	r2, #15
	bne	.L424
	bx	lr
.LVL253:
.L422:
	.loc 15 127 0
	ldr	r1, [r3, #108]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #108]
.LVL254:
	.loc 15 126 0
	cmp	r2, #14
	bne	.L425
	bx	lr
.LVL255:
.L421:
	.loc 15 127 0
	ldr	r1, [r3, #100]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #100]
.LVL256:
	.loc 15 126 0
	cmp	r2, #13
	bne	.L426
	bx	lr
.LVL257:
.L420:
	.loc 15 127 0
	ldr	r1, [r3, #92]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #92]
.LVL258:
	.loc 15 126 0
	cmp	r2, #12
	bne	.L427
	bx	lr
.LVL259:
.L419:
	.loc 15 127 0
	ldr	r1, [r3, #84]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #84]
.LVL260:
	.loc 15 126 0
	cmp	r2, #11
	bne	.L428
	bx	lr
.LVL261:
.L418:
	.loc 15 127 0
	ldr	r1, [r3, #76]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #76]
.LVL262:
	.loc 15 126 0
	cmp	r2, #10
	bne	.L429
	bx	lr
.LVL263:
.L417:
	.loc 15 127 0
	ldr	r1, [r3, #68]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #68]
.LVL264:
	.loc 15 126 0
	cmp	r2, #9
	bne	.L430
	bx	lr
.LVL265:
.L416:
	.loc 15 127 0
	ldr	r1, [r3, #60]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #60]
.LVL266:
	.loc 15 126 0
	cmp	r2, #8
	bne	.L431
	bx	lr
.LVL267:
.L415:
	.loc 15 127 0
	ldr	r1, [r3, #52]
	cmp	r1, #0
	.loc 15 130 0
	movne	r1, #0
	strne	r1, [r3, #52]
.LVL268:
	.loc 15 126 0
	cmp	r2, #7
	bne	.L432
	bx	lr
.LVL269:
.L414:
	.loc 15 127 0
	ldr	r1, [r3, #44]
	cmp	r1, #0
	beq	.L305
.LVL270:
.LBB5501:
.LBB5502:
	.loc 16 255 0
	mov	r1, #0
	.syntax divided
@ 255 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c5, 5
@ 0 "" 2
.LVL271:
	.arm
	.syntax unified
.LBE5502:
.LBE5501:
	.loc 15 126 0
	cmp	r2, #6
	.loc 15 130 0
	str	r1, [r3, #44]
.LVL272:
	.loc 15 126 0
	bne	.L433
	bx	lr
.LVL273:
.L413:
	.loc 15 127 0
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L304
.LVL274:
.LBB5508:
.LBB5503:
	.loc 16 252 0
	mov	r1, #0
	.syntax divided
@ 252 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c4, 5
@ 0 "" 2
.LVL275:
	.arm
	.syntax unified
.LBE5503:
.LBE5508:
	.loc 15 126 0
	cmp	r2, #5
	.loc 15 130 0
	str	r1, [r3, #36]
.LVL276:
	.loc 15 126 0
	bne	.L434
	bx	lr
.LVL277:
.L412:
	.loc 15 127 0
	ldr	r1, [r3, #28]
	cmp	r1, #0
	beq	.L303
.LVL278:
.LBB5509:
.LBB5504:
	.loc 16 249 0
	mov	r1, #0
	.syntax divided
@ 249 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c3, 5
@ 0 "" 2
.LVL279:
	.arm
	.syntax unified
.LBE5504:
.LBE5509:
	.loc 15 126 0
	cmp	r2, #4
	.loc 15 130 0
	str	r1, [r3, #28]
.LVL280:
	.loc 15 126 0
	bne	.L435
	bx	lr
.LVL281:
.L411:
	.loc 15 127 0
	ldr	r1, [r3, #20]
	cmp	r1, #0
	beq	.L302
.LVL282:
.LBB5510:
.LBB5505:
	.loc 16 246 0
	mov	r1, #0
	.syntax divided
@ 246 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c2, 5
@ 0 "" 2
.LVL283:
	.arm
	.syntax unified
.LBE5505:
.LBE5510:
	.loc 15 126 0
	cmp	r2, #3
	.loc 15 130 0
	str	r1, [r3, #20]
.LVL284:
	.loc 15 126 0
	bne	.L436
	bx	lr
.LVL285:
.L410:
	.loc 15 127 0
	ldr	r1, [r3, #12]
	cmp	r1, #0
	beq	.L301
.LVL286:
.LBB5511:
.LBB5506:
	.loc 16 243 0
	mov	r1, #0
	.syntax divided
@ 243 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c1, 5
@ 0 "" 2
.LVL287:
	.arm
	.syntax unified
.LBE5506:
.LBE5511:
	.loc 15 126 0
	cmp	r2, #2
	.loc 15 130 0
	str	r1, [r3, #12]
.LVL288:
	.loc 15 126 0
	bne	.L437
	bx	lr
.LVL289:
.L409:
	.loc 15 127 0
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L299
.LVL290:
.LBB5512:
.LBB5507:
	.loc 16 240 0
	mov	r1, #0
	.syntax divided
@ 240 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r1, c0, c0, 5
@ 0 "" 2
.LVL291:
	.arm
	.syntax unified
.LBE5507:
.LBE5512:
	.loc 15 126 0
	cmp	r2, #1
	.loc 15 130 0
	str	r1, [r3, #4]
.LVL292:
	.loc 15 126 0
	bne	.L438
	bx	lr
	.cfi_endproc
.LFE406:
	.size	clear_breakpoint, .-clear_breakpoint
	.align	2
	.global	set_catch_handler
	.syntax unified
	.arm
	.type	set_catch_handler, %function
set_catch_handler:
.LFB407:
	.loc 15 139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL293:
	.loc 15 140 0
	movw	r3, #:lower16:catch_handler
	movt	r3, #:upper16:catch_handler
	str	r0, [r3]
	bx	lr
	.cfi_endproc
.LFE407:
	.size	set_catch_handler, .-set_catch_handler
	.align	2
	.global	catch_vector
	.syntax unified
	.arm
	.type	catch_vector, %function
catch_vector:
.LFB408:
	.loc 15 145 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL294:
.LBB5513:
.LBB5514:
	.loc 16 124 0
	.syntax divided
@ 124 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r3, c0, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE5514:
.LBE5513:
.LBB5515:
.LBB5516:
	.loc 16 132 0
	mov	r2, #1
	orr	r0, r3, r2, lsl r0
.LVL295:
	.syntax divided
@ 132 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
	bx	lr
.LBE5516:
.LBE5515:
	.cfi_endproc
.LFE408:
	.size	catch_vector, .-catch_vector
	.align	2
	.global	uncatch_vector
	.syntax unified
	.arm
	.type	uncatch_vector, %function
uncatch_vector:
.LFB409:
	.loc 15 155 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL296:
.LBB5517:
.LBB5518:
	.loc 16 124 0
	.syntax divided
@ 124 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r3, c0, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE5518:
.LBE5517:
.LBB5519:
.LBB5520:
	.loc 16 132 0
	mov	r2, #1
	bic	r0, r3, r2, lsl r0
.LVL297:
	.syntax divided
@ 132 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r0, c0, c7, 0
@ 0 "" 2
	.arm
	.syntax unified
	bx	lr
.LBE5520:
.LBE5519:
	.cfi_endproc
.LFE409:
	.size	uncatch_vector, .-uncatch_vector
	.section	.boot.text
	.align	2
	.global	arm_errata
	.syntax unified
	.arm
	.type	arm_errata, %function
arm_errata:
.LFB410:
	.file 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/errata.c"
	.loc 17 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE410:
	.size	arm_errata, .-arm_errata
	.align	2
	.global	initIRQController
	.syntax unified
	.arm
	.type	initIRQController, %function
initIRQController:
.LFB423:
	.file 18 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/gic_pl390.c"
	.loc 18 288 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB5525:
.LBB5526:
	.loc 18 219 0
	movw	ip, #:lower16:.LANCHOR2
	.loc 18 220 0
	mov	r1, #0
	.loc 18 219 0
	movt	ip, #:upper16:.LANCHOR2
.LBE5526:
.LBE5525:
	.loc 18 288 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB5530:
.LBB5527:
	.loc 18 219 0
	ldr	r3, [ip]
	.loc 18 222 0
	mov	r0, r1
	.loc 18 224 0
	mvn	lr, #0
	.loc 18 219 0
	ldr	r2, [r3, #4]
	.loc 18 220 0
	str	r1, [r3]
	.loc 18 219 0
	and	r2, r2, #31
	add	r2, r2, #1
	lsl	r2, r2, #5
.LVL298:
.L444:
	asr	r1, r0, #5
	.loc 18 222 0
	add	r0, r0, #32
.LVL299:
	cmp	r2, r0
	add	r1, r3, r1, lsl #2
	.loc 18 224 0
	str	lr, [r1, #384]
	.loc 18 226 0
	str	lr, [r1, #640]
	.loc 18 222 0
	bgt	.L444
.LVL300:
	.loc 18 230 0
	cmp	r2, #32
	movne	r1, #32
	.loc 18 231 0
	movne	lr, #0
	.loc 18 230 0
	beq	.L448
.LVL301:
.L447:
	.loc 18 231 0
	asr	r0, r1, #2
	.loc 18 230 0
	add	r1, r1, #4
.LVL302:
	cmp	r2, r1
	.loc 18 231 0
	add	r0, r0, #256
	str	lr, [r3, r0, lsl #2]
	.loc 18 230 0
	bgt	.L447
.LVL303:
.L448:
	.loc 18 239 0
	movw	lr, #257
	.loc 18 230 0
	mov	r1, #0
	.loc 18 239 0
	movt	lr, 257
.L446:
.LVL304:
	asr	r0, r1, #2
	.loc 18 238 0
	add	r1, r1, #4
.LVL305:
	cmp	r2, r1
	.loc 18 239 0
	add	r0, r0, #512
	str	lr, [r3, r0, lsl #2]
	.loc 18 238 0
	bgt	.L446
.LVL306:
	.loc 18 243 0
	cmp	r2, #64
	.loc 18 244 0
	movwgt	lr, #21845
	.loc 18 243 0
	movgt	r1, #64
	.loc 18 244 0
	movtgt	lr, 21845
	.loc 18 243 0
	ble	.L452
.LVL307:
.L451:
	.loc 18 244 0
	asr	r0, r1, #5
	.loc 18 243 0
	add	r1, r1, #32
.LVL308:
	cmp	r2, r1
	.loc 18 244 0
	add	r0, r0, #768
	str	lr, [r3, r0, lsl #2]
	.loc 18 243 0
	bgt	.L451
.LVL309:
.L452:
	mov	r1, #0
	.loc 18 248 0
	mov	lr, r1
.L450:
.LVL310:
	asr	r0, r1, #5
	.loc 18 247 0
	add	r1, r1, #32
.LVL311:
	cmp	r2, r1
	.loc 18 248 0
	add	r0, r0, #32
	str	lr, [r3, r0, lsl #2]
	.loc 18 247 0
	bgt	.L450
.LBE5527:
.LBE5530:
.LBB5531:
.LBB5532:
	.loc 18 273 0
	ldr	r2, [ip, #4]
.LVL312:
	.loc 18 263 0
	mvn	r1, #0
.LVL313:
.LBE5532:
.LBE5531:
.LBB5535:
.LBB5528:
	.loc 18 251 0
	mov	r0, #1
.LBE5528:
.LBE5535:
.LBB5536:
.LBB5533:
	.loc 18 274 0
	mov	r4, #240
	.loc 18 275 0
	mov	ip, #3
.LBE5533:
.LBE5536:
.LBB5537:
.LBB5529:
	.loc 18 251 0
	str	r0, [r3]
.LBE5529:
.LBE5537:
.LBB5538:
.LBB5534:
	.loc 18 263 0
	str	r1, [r3, #384]
	.loc 18 277 0
	movw	r0, #1023
	.loc 18 264 0
	str	r1, [r3, #640]
	.loc 18 265 0
	str	lr, [r3, #1024]
.LVL314:
	.loc 18 270 0
	str	r1, [r3, #3856]
.LVL315:
	str	r1, [r3, #3860]
.LVL316:
	str	r1, [r3, #3864]
.LVL317:
	str	r1, [r3, #3868]
.LVL318:
	.loc 18 273 0
	str	lr, [r2]
	.loc 18 274 0
	str	r4, [r2, #4]
	.loc 18 275 0
	str	ip, [r2, #8]
	.loc 18 277 0
	ldr	r3, [r2, #12]
.LVL319:
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	beq	.L455
.L454:
	.loc 18 278 0
	str	r3, [r2, #16]
	.loc 18 277 0
	ldr	r3, [r2, #12]
.LVL320:
	ubfx	r1, r3, #0, #10
	cmp	r1, r0
	bne	.L454
.L455:
	.loc 18 280 0
	mov	r3, #1
.LVL321:
	str	r3, [r2]
.LBE5534:
.LBE5538:
	.loc 18 291 0
	pop	{r4, pc}
	.cfi_endproc
.LFE423:
	.size	initIRQController, .-initIRQController
	.text
	.align	2
	.global	getActiveIRQ
	.syntax unified
	.arm
	.type	getActiveIRQ, %function
getActiveIRQ:
.LFB424:
	.loc 18 309 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 18 311 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	ldr	r0, [r3, #8]
	ubfx	r0, r0, #0, #10
	cmp	r0, #1020
	bcc	.L465
	.loc 18 312 0
	ldr	r2, [r3, #4]
	ldr	r2, [r2, #12]
	.loc 18 315 0
	ubfx	r0, r2, #0, #10
	.loc 18 312 0
	str	r2, [r3, #8]
	.loc 18 315 0
	cmp	r0, #1020
	bcc	.L465
	movw	r0, #65535
	bx	lr
.L465:
	uxth	r0, r0
	.loc 18 322 0
	bx	lr
	.cfi_endproc
.LFE424:
	.size	getActiveIRQ, .-getActiveIRQ
	.align	2
	.global	isIRQPending
	.syntax unified
	.arm
	.type	isIRQPending, %function
isIRQPending:
.LFB425:
	.loc 18 334 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 18 335 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	ldr	r3, [r3, #4]
	ldr	r0, [r3, #24]
	ubfx	r0, r0, #0, #10
	.loc 18 336 0
	cmp	r0, #1020
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
	.cfi_endproc
.LFE425:
	.size	isIRQPending, .-isIRQPending
	.align	2
	.global	maskInterrupt
	.syntax unified
	.arm
	.type	maskInterrupt, %function
maskInterrupt:
.LFB426:
	.loc 18 344 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL322:
.LBB5547:
.LBB5548:
.LBB5549:
	.loc 18 199 0
	movw	r2, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r1, #5
.LVL323:
	.loc 18 199 0
	movt	r2, #:upper16:.LANCHOR2
.LBE5549:
.LBE5548:
.LBE5547:
	.loc 18 345 0
	cmp	r0, #0
.LBB5554:
.LBB5552:
.LBB5550:
	.loc 18 199 0
	and	r1, r1, #31
.LVL324:
	ldr	r0, [r2]
.LVL325:
	mov	r2, #1
.LBE5550:
.LBE5552:
.LBE5554:
.LBB5555:
.LBB5556:
	.loc 18 207 0
	lsl	r1, r2, r1
.LVL326:
.LBE5556:
.LBE5555:
.LBB5558:
.LBB5553:
.LBB5551:
	.loc 18 199 0
	addne	r3, r3, #96
.LVL327:
.LBE5551:
.LBE5553:
.LBE5558:
.LBB5559:
.LBB5557:
	.loc 18 207 0
	addeq	r3, r3, #64
	str	r1, [r0, r3, lsl #2]
	bx	lr
.LBE5557:
.LBE5559:
	.cfi_endproc
.LFE426:
	.size	maskInterrupt, .-maskInterrupt
	.align	2
	.global	handleSpuriousIRQ
	.syntax unified
	.arm
	.type	handleSpuriousIRQ, %function
handleSpuriousIRQ:
.LFB428:
	.loc 18 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE428:
	.size	handleSpuriousIRQ, .-handleSpuriousIRQ
	.align	2
	.global	getRestartPC
	.syntax unified
	.arm
	.type	getRestartPC, %function
getRestartPC:
.LFB429:
	.file 19 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/hardware.c"
	.loc 19 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL328:
	.loc 19 19 0
	ldr	r0, [r0, #68]
.LVL329:
	bx	lr
	.cfi_endproc
.LFE429:
	.size	getRestartPC, .-getRestartPC
	.align	2
	.global	setNextPC
	.syntax unified
	.arm
	.type	setNextPC, %function
setNextPC:
.LFB430:
	.loc 19 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL330:
.LBB5560:
.LBB5561:
	.loc 10 21 0
	str	r1, [r0, #60]
.LVL331:
	bx	lr
.LBE5561:
.LBE5560:
	.cfi_endproc
.LFE430:
	.size	setNextPC, .-setNextPC
	.section	.boot.text
	.align	2
	.global	initL2Cache
	.syntax unified
	.arm
	.type	initL2Cache, %function
initL2Cache:
.LFB431:
	.file 20 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/l2c_310.c"
	.loc 20 255 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL332:
	.loc 20 297 0
	movw	r3, #:lower16:.LANCHOR2
	mov	r1, #0
	movt	r3, #:upper16:.LANCHOR2
	movt	r1, 15367
	ldr	r2, [r3, #12]
	.loc 20 300 0
	mov	ip, #805306368
	.loc 20 298 0
	movw	r3, #289
	.loc 20 305 0
	movw	r0, #65535
	.loc 20 297 0
	str	r1, [r2, #260]
	.loc 20 298 0
	str	r3, [r2, #264]
	.loc 20 299 0
	str	r3, [r2, #268]
	.loc 20 300 0
	str	ip, [r2, #3936]
	.loc 20 305 0
	str	r0, [r2, #1916]
.L477:
	.loc 20 306 0 discriminator 1
	ldr	r3, [r2, #1916]
	ands	r3, r3, #1
	bne	.L477
	.loc 20 309 0
	ldr	r1, [r2, #4]
	and	r1, r1, #503316480
	cmp	r1, #469762048
	beq	.L481
.L478:
	.loc 20 328 0
	ldr	r3, [r2, #4]
	.loc 20 334 0
	mov	r1, #0
	.loc 20 328 0
	and	r3, r3, #503316480
	cmp	r3, #503316480
	.loc 20 330 0
	moveq	r3, #0
	streq	r3, [r2, #2384]
	.loc 20 336 0
	movw	r3, #511
	.loc 20 334 0
	str	r1, [r2, #532]
	.loc 20 336 0
	str	r3, [r2, #544]
	.loc 20 344 0
	ldr	r3, [r2, #256]
	orr	r3, r3, #1
	str	r3, [r2, #256]
	bx	lr
.L481:
	.loc 20 311 0
	str	r3, [r2, #2304]
	.loc 20 312 0
	str	r3, [r2, #2308]
	.loc 20 313 0
	str	r3, [r2, #2312]
	.loc 20 314 0
	str	r3, [r2, #2316]
	.loc 20 315 0
	str	r3, [r2, #2320]
	.loc 20 316 0
	str	r3, [r2, #2324]
	.loc 20 317 0
	str	r3, [r2, #2328]
	.loc 20 318 0
	str	r3, [r2, #2332]
	.loc 20 319 0
	str	r3, [r2, #2336]
	.loc 20 320 0
	str	r3, [r2, #2340]
	.loc 20 321 0
	str	r3, [r2, #2344]
	.loc 20 322 0
	str	r3, [r2, #2348]
	.loc 20 323 0
	str	r3, [r2, #2352]
	.loc 20 324 0
	str	r3, [r2, #2356]
	.loc 20 325 0
	str	r3, [r2, #2360]
	.loc 20 326 0
	str	r3, [r2, #2364]
	b	.L478
	.cfi_endproc
.LFE431:
	.size	initL2Cache, .-initL2Cache
	.text
	.align	2
	.global	plat_cleanCache
	.syntax unified
	.arm
	.type	plat_cleanCache, %function
plat_cleanCache:
.LFB433:
	.loc 20 358 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 20 361 0
	movw	r1, #:lower16:.LANCHOR2
	movw	r3, #65535
	movt	r1, #:upper16:.LANCHOR2
	ldr	r2, [r1, #12]
	str	r3, [r2, #1980]
.L483:
	.loc 20 362 0 discriminator 1
	ldr	r3, [r2, #1980]
	ands	r3, r3, #1
	bne	.L483
.LBB5562:
.LBB5563:
.LBB5564:
.LBB5565:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE5565:
.LBE5564:
	.loc 20 353 0
	ldr	r2, [r1, #12]
	str	r3, [r2, #1840]
.L484:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L484
.LBE5563:
.LBE5562:
	.loc 20 365 0
	bx	lr
	.cfi_endproc
.LFE433:
	.size	plat_cleanCache, .-plat_cleanCache
	.section	.boot.text
	.align	2
	.global	initTimer
	.syntax unified
	.arm
	.type	initTimer, %function
initTimer:
.LFB437:
	.file 21 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/machine/priv_timer.c"
	.loc 21 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 21 43 0
	movw	r3, #:lower16:.LANCHOR2
	.loc 21 47 0
	mov	r2, #4608
	.loc 21 43 0
	movt	r3, #:upper16:.LANCHOR2
	mov	r1, #0
	ldr	r3, [r3, #16]
	.loc 21 47 0
	movt	r2, 122
	.loc 21 43 0
	str	r1, [r3, #8]
	.loc 21 44 0
	str	r1, [r3, #12]
	.loc 21 47 0
	str	r2, [r3]
	.loc 21 48 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #6
	str	r2, [r3, #8]
	.loc 21 52 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	bx	lr
	.cfi_endproc
.LFE437:
	.size	initTimer, .-initTimer
	.text
	.align	2
	.global	resetTimer
	.syntax unified
	.arm
	.type	resetTimer, %function
resetTimer:
.LFB438:
	.loc 21 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 21 61 0
	movw	r3, #:lower16:.LANCHOR2
	mov	r2, #1
	movt	r3, #:upper16:.LANCHOR2
	ldr	r3, [r3, #16]
	str	r2, [r3, #12]
	bx	lr
	.cfi_endproc
.LFE438:
	.size	resetTimer, .-resetTimer
	.align	2
	.global	Arch_decodeInterruptControl
	.syntax unified
	.arm
	.type	Arch_decodeInterruptControl, %function
Arch_decodeInterruptControl:
.LFB439:
	.file 22 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/interrupt.c"
	.loc 22 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL333:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 22 19 0
	movw	ip, #:lower16:current_syscall_error
	.loc 22 18 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 22 19 0
	mov	r0, #3
.LVL334:
	movt	ip, #:upper16:current_syscall_error
	.loc 22 18 0
	add	lr, sp, #16
	stmdb	lr, {r1, r2, r3}
	.loc 22 19 0
	str	r0, [ip, #24]
	.loc 22 21 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE439:
	.size	Arch_decodeInterruptControl, .-Arch_decodeInterruptControl
	.align	2
	.global	Arch_updateCapData
	.syntax unified
	.arm
	.type	Arch_updateCapData, %function
Arch_updateCapData:
.LFB441:
	.file 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/objecttype.c"
	.loc 23 49 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL335:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 23 49 0
	mov	ip, r0
	sub	r2, sp, #4
.LVL336:
	.loc 23 51 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 23 49 0
	str	r3, [r2, #8]!
	.loc 23 50 0
	ldm	r2, {r0, r1}
.LVL337:
	stm	ip, {r0, r1}
	.loc 23 51 0
	mov	r0, ip
	bx	lr
	.cfi_endproc
.LFE441:
	.size	Arch_updateCapData, .-Arch_updateCapData
	.align	2
	.global	Arch_prepareThreadDelete
	.syntax unified
	.arm
	.type	Arch_prepareThreadDelete, %function
Arch_prepareThreadDelete:
.LFB976:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE976:
	.size	Arch_prepareThreadDelete, .-Arch_prepareThreadDelete
	.align	2
	.global	Arch_isFrameType
	.syntax unified
	.arm
	.type	Arch_isFrameType, %function
Arch_isFrameType:
.LFB453:
	.loc 23 371 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL338:
	.loc 23 372 0
	sub	r0, r0, #5
.LVL339:
	.loc 23 381 0
	cmp	r0, #3
	movhi	r0, #0
.LVL340:
	movls	r0, #1
	bx	lr
	.cfi_endproc
.LFE453:
	.size	Arch_isFrameType, .-Arch_isFrameType
	.align	2
	.global	Arch_decodeTransfer
	.syntax unified
	.arm
	.type	Arch_decodeTransfer, %function
Arch_decodeTransfer:
.LFB458:
	.file 24 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/object/tcb.c"
	.loc 24 179 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL341:
	.loc 24 181 0
	mov	r0, #0
.LVL342:
	bx	lr
	.cfi_endproc
.LFE458:
	.size	Arch_decodeTransfer, .-Arch_decodeTransfer
	.align	2
	.global	Arch_performTransfer
	.syntax unified
	.arm
	.type	Arch_performTransfer, %function
Arch_performTransfer:
.LFB459:
	.loc 24 185 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL343:
	.loc 24 187 0
	mov	r0, #0
.LVL344:
	bx	lr
	.cfi_endproc
.LFE459:
	.size	Arch_performTransfer, .-Arch_performTransfer
	.align	2
	.global	Arch_leaveVMAsyncTransfer
	.syntax unified
	.arm
	.type	Arch_leaveVMAsyncTransfer, %function
Arch_leaveVMAsyncTransfer:
.LFB460:
	.loc 24 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL345:
	bx	lr
	.cfi_endproc
.LFE460:
	.size	Arch_leaveVMAsyncTransfer, .-Arch_leaveVMAsyncTransfer
	.section	.boot.text
	.align	2
	.global	bi_finalise
	.syntax unified
	.arm
	.type	bi_finalise, %function
bi_finalise:
.LFB482:
	.file 25 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/boot.c"
	.loc 25 528 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL346:
	.loc 25 530 0
	movw	r3, #:lower16:.LANCHOR3
	movt	r3, #:upper16:.LANCHOR3
	ldr	r1, [r3, #24]
.LVL347:
	.loc 25 531 0
	ldr	r2, [r3, #16]
	ldr	r3, [r3, #20]
	str	r1, [r2, #20]
.LVL348:
	str	r3, [r2, #16]
	bx	lr
	.cfi_endproc
.LFE482:
	.size	bi_finalise, .-bi_finalise
	.text
	.align	2
	.global	doPollFailedTransfer
	.syntax unified
	.arm
	.type	doPollFailedTransfer, %function
doPollFailedTransfer:
.LFB562:
	.file 26 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/thread.c"
	.loc 26 271 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL349:
.LBB5566:
.LBB5567:
	.loc 10 21 0
	mov	r3, #0
	str	r3, [r0]
.LVL350:
	bx	lr
.LBE5567:
.LBE5566:
	.cfi_endproc
.LFE562:
	.size	doPollFailedTransfer, .-doPollFailedTransfer
	.align	2
	.global	switchToIdleThread
	.syntax unified
	.arm
	.type	switchToIdleThread, %function
switchToIdleThread:
.LFB567:
	.loc 26 351 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 26 353 0
	movw	r1, #:lower16:ksIdleThread
	movw	r3, #:lower16:ksCurThread
	movt	r1, #:upper16:ksIdleThread
.LBB5568:
.LBB5569:
	.loc 9 36 0
	movw	r2, #:lower16:.LANCHOR0
.LBE5569:
.LBE5568:
	.loc 26 353 0
	ldr	r1, [r1]
	movt	r3, #:upper16:ksCurThread
.LBB5571:
.LBB5570:
	.loc 9 36 0
	movt	r2, #:upper16:.LANCHOR0
	mov	r0, #0
	str	r0, [r2]
.LBE5570:
.LBE5571:
	.loc 26 353 0
	str	r1, [r3]
	bx	lr
	.cfi_endproc
.LFE567:
	.size	switchToIdleThread, .-switchToIdleThread
	.align	2
	.global	print_unsigned_long
	.syntax unified
	.arm
	.type	print_unsigned_long, %function
print_unsigned_long:
.LFB580:
	.loc 5 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL351:
	.loc 5 65 0
	cmp	r1, #10
	cmpne	r1, #16
	movne	r2, #1
	moveq	r2, #0
	bne	.L522
	.loc 5 69 0
	cmp	r0, #0
.LBB5594:
.LBB5595:
.LBB5596:
	.loc 2 119 0
	mvneq	r2, #1040384
.LBE5596:
.LBE5595:
.LBE5594:
	.loc 5 69 0
	beq	.L506
.LVL352:
.LBB5601:
.LBB5602:
.LBB5603:
.LBB5604:
	.loc 5 44 0
	cmp	r1, #10
.LBE5604:
.LBE5603:
.LBE5602:
.LBE5601:
	.loc 5 56 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB5636:
.LBB5633:
.LBB5608:
.LBB5605:
	.loc 5 44 0
	beq	.L524
	cmp	r1, #16
	movne	lr, #1
	movne	r3, #48
	beq	.L551
.LVL353:
.L549:
.LBE5605:
.LBE5608:
	.loc 5 77 0
	mov	ip, lr
.LBB5609:
.LBB5610:
	.loc 5 31 0
	cmp	r1, #10
	add	lr, sp, #16
	add	r2, lr, r2
	strb	r3, [r2, #-12]
.LVL354:
	bne	.L552
.LVL355:
	.loc 5 35 0
	movw	r2, #52429
	movt	r2, 52428
	umull	r2, r3, r0, r2
.LVL356:
.LBE5610:
.LBE5609:
	.loc 5 74 0
	lsrs	r0, r3, #3
.LVL357:
	beq	.L513
	add	lr, ip, #1
.LVL358:
	mov	r2, ip
.LVL359:
.L508:
	movw	r4, #52429
	movt	r4, 52428
	umull	r4, r5, r0, r4
	lsr	r3, r5, #3
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #1
	add	r3, r3, #48
	uxtb	r3, r3
	b	.L549
.LVL360:
.L506:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
.LBE5633:
.LBE5636:
.LBB5637:
.LBB5599:
.LBB5597:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L506
	.loc 2 120 0
	mov	r3, #48
.LBE5597:
.LBE5599:
.LBE5637:
	.loc 5 71 0
	mov	r0, #1
.LVL361:
.LBB5638:
.LBB5600:
.LBB5598:
	.loc 2 120 0
	str	r3, [r2, #-4031]
.LBE5598:
.LBE5600:
.LBE5638:
	.loc 5 89 0
	bx	lr
.LVL362:
.L522:
	.loc 5 66 0
	mov	r0, #0
.LVL363:
	bx	lr
.LVL364:
.L552:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB5639:
.LBB5634:
.LBB5612:
.LBB5611:
	.loc 5 31 0
	cmp	r1, #16
	beq	.L512
.LVL365:
.L513:
.LBE5611:
.LBE5612:
	.loc 5 84 0
	cmp	ip, #0
	addne	lr, sp, #4
.LBB5613:
.LBB5614:
.LBB5615:
.LBB5616:
	.loc 2 119 0
	mvnne	r2, #1040384
	addne	r1, lr, ip
.LVL366:
.LBE5616:
.LBE5615:
.LBB5619:
.LBB5620:
.LBB5621:
	.loc 2 120 0
	movne	r4, #13
.LBE5621:
.LBE5620:
.LBE5619:
.LBE5614:
.LBE5613:
	.loc 5 84 0
	beq	.L520
.LVL367:
.L519:
	.loc 5 85 0
	ldrb	r0, [r1, #-1]!	@ zero_extendqisi2
.LVL368:
.L516:
.LBB5629:
.LBB5627:
.LBB5624:
.LBB5617:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L516
.LBE5617:
.LBE5624:
	.loc 2 112 0
	cmp	r0, #10
.LBB5625:
.LBB5618:
	.loc 2 120 0
	str	r0, [r2, #-4031]
.LVL369:
.LBE5618:
.LBE5625:
	.loc 2 112 0
	beq	.L518
.L517:
.LVL370:
.LBE5627:
.LBE5629:
	.loc 5 84 0
	cmp	r1, lr
	bne	.L519
.LVL371:
.L520:
	mov	r0, ip
.LBE5634:
.LBE5639:
	.loc 5 89 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL372:
.L518:
	.cfi_restore_state
.LBB5640:
.LBB5635:
.LBB5630:
.LBB5628:
.LBB5626:
.LBB5623:
.LBB5622:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L518
	.loc 2 120 0
	str	r4, [r2, #-4031]
	b	.L517
.LVL373:
.L554:
	add	lr, ip, #1
.L509:
.LVL374:
.LBE5622:
.LBE5623:
.LBE5626:
.LBE5628:
.LBE5630:
.LBB5631:
.LBB5606:
	.loc 5 46 0
	and	r3, r0, #15
.LVL375:
.LBE5606:
.LBE5631:
	.loc 5 77 0
	cmp	r3, #9
	bls	.L553
	add	r2, sp, #16
	add	r3, r3, #87
	add	ip, r2, ip
.LVL376:
	strb	r3, [ip, #-12]
.LVL377:
	mov	ip, lr
.L512:
.LVL378:
	.loc 5 74 0
	lsrs	r0, r0, #4
.LVL379:
	bne	.L554
	b	.L513
.LVL380:
.L553:
	.loc 5 77 0
	mov	r2, ip
	add	r3, r3, #48
	b	.L549
.LVL381:
.L551:
.LBB5632:
.LBB5607:
	.loc 5 44 0
	mov	ip, r2
	mov	lr, #1
	b	.L509
.L524:
	mov	lr, #1
	b	.L508
.LBE5607:
.LBE5632:
.LBE5635:
.LBE5640:
	.cfi_endproc
.LFE580:
	.size	print_unsigned_long, .-print_unsigned_long
	.align	2
	.global	puts
	.syntax unified
	.arm
	.type	puts, %function
puts:
.LFB583:
	.loc 5 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL382:
	.loc 5 223 0
	ldrb	r1, [r0]	@ zero_extendqisi2
	cmp	r1, #0
.LBB5661:
.LBB5662:
.LBB5663:
.LBB5664:
	.loc 2 119 0
	mvnne	r2, #1040384
.LBE5664:
.LBE5663:
.LBB5667:
.LBB5668:
.LBB5669:
	.loc 2 120 0
	movne	ip, #13
.LBE5669:
.LBE5668:
.LBE5667:
.LBE5662:
.LBE5661:
	.loc 5 223 0
	beq	.L562
.LVL383:
.L558:
.LBB5677:
.LBB5675:
.LBB5672:
.LBB5665:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L558
.LBE5665:
.LBE5672:
	.loc 2 112 0
	cmp	r1, #10
.LBB5673:
.LBB5666:
	.loc 2 120 0
	str	r1, [r2, #-4031]
.LBE5666:
.LBE5673:
	.loc 2 112 0
	beq	.L560
.L559:
.LVL384:
.LBE5675:
.LBE5677:
	.loc 5 223 0 discriminator 2
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2
.LVL385:
	cmp	r1, #0
	bne	.L558
.LVL386:
.L562:
.LBB5678:
.LBB5679:
.LBB5680:
	.loc 2 119 0
	mvn	r1, #1040384
.L557:
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L557
.LBE5680:
.LBE5679:
.LBB5682:
.LBB5683:
.LBB5684:
	mvn	r2, #1040384
.LBE5684:
.LBE5683:
.LBE5682:
.LBB5689:
.LBB5681:
	.loc 2 120 0
	mov	r3, #10
	str	r3, [r1, #-4031]
.LVL387:
.L563:
.LBE5681:
.LBE5689:
.LBB5690:
.LBB5687:
.LBB5685:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L563
	.loc 2 120 0
	mov	r3, #13
.LBE5685:
.LBE5687:
.LBE5690:
.LBE5678:
	.loc 5 228 0
	mov	r0, #0
.LBB5692:
.LBB5691:
.LBB5688:
.LBB5686:
	.loc 2 120 0
	str	r3, [r2, #-4031]
.LVL388:
.LBE5686:
.LBE5688:
.LBE5691:
.LBE5692:
	.loc 5 228 0
	bx	lr
.L560:
.LBB5693:
.LBB5676:
.LBB5674:
.LBB5671:
.LBB5670:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L560
	.loc 2 120 0
	str	ip, [r2, #-4031]
	b	.L559
.LBE5670:
.LBE5671:
.LBE5674:
.LBE5676:
.LBE5693:
	.cfi_endproc
.LFE583:
	.size	puts, .-puts
	.align	2
	.global	kprintf
	.syntax unified
	.arm
	.type	kprintf, %function
kprintf:
.LFB584:
	.loc 5 232 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 1
.LVL389:
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 52
	.cfi_offset 4, -52
	.cfi_offset 5, -48
	.cfi_offset 6, -44
	.cfi_offset 7, -40
	.cfi_offset 8, -36
	.cfi_offset 9, -32
	.cfi_offset 10, -28
	.cfi_offset 11, -24
	.cfi_offset 14, -20
	sub	sp, sp, #44
	.cfi_def_cfa_offset 96
	.loc 5 236 0
	add	r3, sp, #84
	.loc 5 232 0
	ldr	r4, [sp, #80]
	.loc 5 236 0
	str	r3, [sp, #24]
.LVL390:
.LBB5824:
.LBB5825:
	.loc 5 133 0
	cmp	r4, #0
	beq	.L635
	mov	r0, #0
.LBB5826:
.LBB5827:
.LBB5828:
.LBB5829:
	.loc 5 80 0
	movw	r8, #52429
.LBB5830:
.LBB5831:
	.loc 5 35 0
	movw	r9, #34079
	movw	r10, #19923
	movw	fp, #5977
	mov	r6, r3
	movw	r2, #56963
	movw	r3, #23237
.LVL391:
.LBE5831:
.LBE5830:
.LBE5829:
.LBE5828:
.LBE5827:
.LBE5826:
	.loc 5 133 0
	mov	r5, r0
.LBB5876:
.LBB5872:
.LBB5863:
.LBB5860:
	.loc 5 80 0
	movt	r8, 52428
.LBB5837:
.LBB5832:
	.loc 5 35 0
	movt	r9, 20971
	movt	r10, 4194
	movt	fp, 53687
	movt	r3, 2684
	movt	r2, 17179
	str	r3, [sp, #4]
	str	r2, [sp, #16]
.LVL392:
.L575:
.LBE5832:
.LBE5837:
.LBE5860:
.LBE5863:
.LBE5872:
.LBE5876:
	.loc 5 139 0
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L713
.L632:
	.loc 5 140 0
	cmp	r0, #0
	beq	.L576
	.loc 5 141 0
	cmp	r2, #112
	beq	.L578
	bhi	.L579
	cmp	r2, #100
	beq	.L580
	cmp	r2, #108
	beq	.L581
	cmp	r2, #37
.LBB5877:
.LBB5878:
.LBB5879:
	.loc 2 119 0
	mvneq	r2, #1040384
.LBE5879:
.LBE5878:
.LBE5877:
	.loc 5 141 0
	beq	.L582
.LVL393:
.L577:
	.loc 5 197 0
	add	r4, r4, #1
.LVL394:
	.loc 5 139 0
	ldrb	r2, [r4]	@ zero_extendqisi2
	.loc 5 201 0
	mov	r0, #0
.LVL395:
	.loc 5 139 0
	cmp	r2, #0
	bne	.L632
.L713:
	.loc 5 218 0
	mov	r0, r5
.LVL396:
.LBE5825:
.LBE5824:
	.loc 5 240 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL397:
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.LVL398:
.L582:
	.cfi_restore_state
.LBB6060:
.LBB6058:
.LBB5884:
.LBB5882:
.LBB5880:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L582
	.loc 2 120 0
	mov	r3, #37
.LBE5880:
.LBE5882:
.LBE5884:
	.loc 5 144 0
	add	r5, r5, #1
.LVL399:
	.loc 5 145 0
	add	r4, r4, #1
.LVL400:
.LBB5885:
.LBB5883:
.LBB5881:
	.loc 2 120 0
	str	r3, [r2, #-4031]
.LVL401:
.LBE5881:
.LBE5883:
.LBE5885:
	.loc 5 201 0
	mov	r0, #0
.LVL402:
	b	.L575
.LVL403:
.L576:
	.loc 5 203 0
	cmp	r2, #37
.LBB5886:
.LBB5887:
.LBB5888:
.LBB5889:
	.loc 2 119 0
	mvnne	r1, #1040384
.LBE5889:
.LBE5888:
.LBE5887:
.LBE5886:
	.loc 5 206 0
	addeq	r4, r4, #1
.LVL404:
	.loc 5 205 0
	moveq	r0, #1
.LVL405:
	.loc 5 203 0
	beq	.L575
.L628:
.LBB5899:
.LBB5897:
.LBB5892:
.LBB5890:
	.loc 2 119 0
	ldr	r3, [r1, #-3943]
	tst	r3, #16384
	beq	.L628
.LBE5890:
.LBE5892:
	.loc 2 112 0
	cmp	r2, #10
.LBB5893:
.LBB5891:
	.loc 2 120 0
	str	r2, [r1, #-4031]
.LBE5891:
.LBE5893:
	.loc 2 112 0
	beq	.L714
.L630:
.LBE5897:
.LBE5899:
	.loc 5 211 0
	add	r5, r5, #1
.LVL406:
	.loc 5 212 0
	add	r4, r4, #1
.LVL407:
	b	.L575
.LVL408:
.L579:
	.loc 5 141 0
	cmp	r2, #117
	beq	.L583
	cmp	r2, #120
	beq	.L584
	cmp	r2, #115
	bne	.L577
	.loc 5 185 0
	ldr	ip, [r6]
	add	r6, r6, #4
.LVL409:
.LBB5900:
.LBB5901:
	.loc 5 21 0
	ldrb	r1, [ip]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L636
	add	r0, ip, #1
.LVL410:
.LBB5902:
.LBB5903:
.LBB5904:
.LBB5905:
	.loc 2 119 0
	mvn	r2, #1040384
.LBE5905:
.LBE5904:
.LBB5908:
.LBB5909:
.LBB5910:
	.loc 2 120 0
	mov	lr, #13
.LVL411:
.L617:
.LBE5910:
.LBE5909:
.LBE5908:
.LBB5913:
.LBB5906:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L617
.LBE5906:
.LBE5913:
	.loc 2 112 0
	cmp	r1, #10
.LBB5914:
.LBB5907:
	.loc 2 120 0
	str	r1, [r2, #-4031]
.LBE5907:
.LBE5914:
	.loc 2 112 0
	beq	.L619
.L618:
.LVL412:
	sub	r3, r0, ip
.LVL413:
.LBE5903:
.LBE5902:
	.loc 5 21 0
	ldrb	r1, [r0], #1	@ zero_extendqisi2
.LVL414:
	cmp	r1, #0
	bne	.L617
.LVL415:
.L616:
.LBE5901:
.LBE5900:
	.loc 5 185 0
	add	r5, r5, r3
.LVL416:
	.loc 5 186 0
	add	r4, r4, #1
.LVL417:
	.loc 5 201 0
	mov	r0, #0
	b	.L575
.L619:
.LBB5920:
.LBB5918:
.LBB5917:
.LBB5916:
.LBB5915:
.LBB5912:
.LBB5911:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L619
	.loc 2 120 0
	str	lr, [r2, #-4031]
	b	.L618
.LVL418:
.L584:
.LBE5911:
.LBE5912:
.LBE5915:
.LBE5916:
.LBE5917:
.LBE5918:
.LBE5920:
	.loc 5 168 0
	ldr	r0, [r6]
.LVL419:
	add	r6, r6, #4
.LVL420:
.LBB5921:
.LBB5922:
	.loc 5 69 0
	cmp	r0, #0
.LBB5923:
.LBB5924:
.LBB5925:
	.loc 2 119 0
	mvneq	r2, #1040384
.LBE5925:
.LBE5924:
.LBE5923:
	.loc 5 69 0
	bne	.L715
.L604:
.LBB5930:
.LBB5928:
.LBB5926:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L604
.LVL421:
.L710:
.LBE5926:
.LBE5928:
.LBE5930:
	.loc 5 71 0
	mov	r0, #1
.LBB5931:
.LBB5929:
.LBB5927:
	.loc 2 120 0
	mov	r3, #48
	str	r3, [r2, #-4031]
.LVL422:
.L709:
.LBE5927:
.LBE5929:
.LBE5931:
.LBE5922:
.LBE5921:
.LBB5933:
	.loc 5 178 0
	add	r5, r5, r0
.LVL423:
	b	.L577
.LVL424:
.L583:
.LBE5933:
	.loc 5 163 0
	ldr	ip, [r6]
	add	r6, r6, #4
.LVL425:
.LBB5976:
.LBB5873:
	.loc 5 69 0
	cmp	ip, #0
.LBB5864:
.LBB5865:
.LBB5866:
	.loc 2 119 0
	mvneq	r2, #1040384
.LBE5866:
.LBE5865:
.LBE5864:
	.loc 5 69 0
	bne	.L716
.L597:
.LBB5869:
.LBB5868:
.LBB5867:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	bne	.L710
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L597
	b	.L710
.LVL426:
.L578:
.LBE5867:
.LBE5868:
.LBE5869:
.LBE5873:
.LBE5976:
.LBB5977:
	.loc 5 173 0
	ldr	r0, [r6]
.LVL427:
	add	r6, r6, #4
.LVL428:
	.loc 5 174 0
	cmp	r0, #0
	bne	.L606
	movw	ip, #:lower16:.LC1
	mov	r1, #40
	movt	ip, #:upper16:.LC1
.LBB5934:
.LBB5935:
.LBB5936:
.LBB5937:
.LBB5938:
.LBB5939:
	.loc 2 119 0
	mvn	r2, #1040384
.LBE5939:
.LBE5938:
.LBB5942:
.LBB5943:
.LBB5944:
	.loc 2 120 0
	mov	lr, #13
.LVL429:
.L607:
.LBE5944:
.LBE5943:
.LBE5942:
.LBB5947:
.LBB5940:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L607
.LBE5940:
.LBE5947:
	.loc 2 112 0
	cmp	r1, #10
.LBB5948:
.LBB5941:
	.loc 2 120 0
	str	r1, [r2, #-4031]
.LBE5941:
.LBE5948:
	.loc 2 112 0
	beq	.L609
.L608:
.LVL430:
.LBE5937:
.LBE5936:
	.loc 5 21 0
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
	add	r0, r0, #1
.LVL431:
	cmp	r1, #0
	bne	.L607
	b	.L709
.LVL432:
.L581:
.LBE5935:
.LBE5934:
.LBE5977:
	.loc 5 190 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #108
	beq	.L717
.LVL433:
.L621:
	.loc 5 194 0
	add	r4, r4, #3
.LVL434:
	.loc 5 201 0
	mov	r0, #0
	b	.L575
.LVL435:
.L580:
.LBB5978:
	.loc 5 149 0
	ldr	ip, [r6]
	add	r6, r6, #4
.LVL436:
	.loc 5 151 0
	cmp	ip, #0
	blt	.L718
.LVL437:
.LBB5979:
.LBB5980:
.LBB5981:
.LBB5982:
.LBB5983:
	.loc 2 119 0
	mvneq	r2, #1040384
.LBE5983:
.LBE5982:
.LBE5981:
	.loc 5 69 0
	bne	.L589
.L683:
.LBB5986:
.LBB5985:
.LBB5984:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L683
	b	.L710
.LVL438:
.L606:
	movw	ip, #:lower16:.LC2
.LBE5984:
.LBE5985:
.LBE5986:
.LBE5980:
.LBE5979:
.LBE5978:
.LBB6023:
	.loc 5 174 0
	mov	r7, #0
	movt	ip, #:upper16:.LC2
	mov	r1, #48
.LBB5953:
.LBB5954:
.LBB5955:
.LBB5956:
.LBB5957:
.LBB5958:
	.loc 2 119 0
	mvn	r2, #1040384
.LBE5958:
.LBE5957:
.LBB5961:
.LBB5962:
.LBB5963:
	.loc 2 120 0
	mov	lr, #13
.L612:
.LBE5963:
.LBE5962:
.LBE5961:
.LBB5966:
.LBB5959:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L612
.LBE5959:
.LBE5966:
	.loc 2 112 0
	cmp	r1, #10
.LBB5967:
.LBB5960:
	.loc 2 120 0
	str	r1, [r2, #-4031]
.LBE5960:
.LBE5967:
	.loc 2 112 0
	beq	.L614
.L613:
.LVL439:
.LBE5956:
.LBE5955:
	.loc 5 21 0
	ldrb	r1, [ip, #1]!	@ zero_extendqisi2
	add	r7, r7, #1
.LVL440:
	cmp	r1, #0
	bne	.L612
.LVL441:
.LBE5954:
.LBE5953:
.LBB5972:
.LBB5973:
	bl	print_unsigned_long.part.58.constprop.314
.LVL442:
.LBE5973:
.LBE5972:
	.loc 5 178 0
	add	r0, r0, r7
	b	.L709
.LVL443:
.L614:
.LBB5974:
.LBB5971:
.LBB5970:
.LBB5969:
.LBB5968:
.LBB5965:
.LBB5964:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L614
	.loc 2 120 0
	str	lr, [r2, #-4031]
	b	.L613
.LVL444:
.L609:
.LBE5964:
.LBE5965:
.LBE5968:
.LBE5969:
.LBE5970:
.LBE5971:
.LBE5974:
.LBB5975:
.LBB5952:
.LBB5951:
.LBB5950:
.LBB5949:
.LBB5946:
.LBB5945:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L609
	.loc 2 120 0
	str	lr, [r2, #-4031]
	b	.L608
.L714:
.LBE5945:
.LBE5946:
.LBE5949:
.LBE5950:
.LBE5951:
.LBE5952:
.LBE5975:
.LBE6023:
.LBB6024:
.LBB5898:
.LBB5894:
.LBB5895:
.LBB5896:
	.loc 2 119 0
	mvn	r2, #1040384
.L631:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L631
	.loc 2 120 0
	mov	r3, #13
	str	r3, [r2, #-4031]
	b	.L630
.LVL445:
.L716:
.LBE5896:
.LBE5895:
.LBE5894:
.LBE5898:
.LBE6024:
.LBB6025:
.LBB5874:
.LBB5870:
.LBB5861:
	.loc 5 80 0
	umull	r2, r3, ip, r8
	lsr	r1, r3, #3
	add	r3, r1, r1, lsl #2
	.loc 5 74 0
	cmp	r1, #0
	moveq	r0, #1
.LVL446:
	.loc 5 80 0
	sub	r3, ip, r3, lsl #1
	add	r3, r3, #48
	strb	r3, [sp, #28]
.LVL447:
	.loc 5 74 0
	bne	.L719
.LVL448:
.L634:
	add	r3, sp, #40
	add	ip, sp, #27
.LVL449:
	add	r1, r3, r0
.LBB5838:
.LBB5839:
.LBB5840:
.LBB5841:
	.loc 2 119 0
	mvn	r2, #1040384
	sub	r1, r1, #13
.LBE5841:
.LBE5840:
.LBB5844:
.LBB5845:
.LBB5846:
	.loc 2 120 0
	mov	lr, #13
.LVL450:
.L602:
.LBE5846:
.LBE5845:
.LBE5844:
.LBE5839:
.LBE5838:
	.loc 5 85 0
	ldrb	r7, [r1], #-1	@ zero_extendqisi2
.LVL451:
.L599:
.LBB5854:
.LBB5852:
.LBB5849:
.LBB5842:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L599
.LBE5842:
.LBE5849:
	.loc 2 112 0
	cmp	r7, #10
.LBB5850:
.LBB5843:
	.loc 2 120 0
	str	r7, [r2, #-4031]
.LVL452:
.LBE5843:
.LBE5850:
	.loc 2 112 0
	beq	.L601
.L600:
.LVL453:
.LBE5852:
.LBE5854:
	.loc 5 84 0
	cmp	r1, ip
	bne	.L602
	b	.L709
.LVL454:
.L601:
.LBB5855:
.LBB5853:
.LBB5851:
.LBB5848:
.LBB5847:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L601
	.loc 2 120 0
	str	lr, [r2, #-4031]
	b	.L600
.LVL455:
.L715:
.LBE5847:
.LBE5848:
.LBE5851:
.LBE5853:
.LBE5855:
.LBE5861:
.LBE5870:
.LBE5874:
.LBE6025:
.LBB6026:
.LBB5932:
	bl	print_unsigned_long.part.58.constprop.314
.LVL456:
	b	.L709
.LVL457:
.L717:
.LBE5932:
.LBE6026:
	.loc 5 190 0
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L621
.LBB6027:
	.loc 5 191 0
	add	r6, r6, #7
.LVL458:
	bic	r3, r6, #7
.LBB6028:
.LBB6029:
	.loc 5 105 0
	ldr	r2, [r3, #4]
.LBE6029:
.LBE6028:
	.loc 5 191 0
	add	r6, r3, #8
.LVL459:
	ldr	r1, [r3]
.LVL460:
.LBB6052:
.LBB6050:
	.loc 5 105 0
	mov	r3, #0
.LVL461:
	str	r3, [sp, #12]
.LVL462:
	str	r2, [sp, #8]
.LVL463:
	.loc 5 109 0
	ldrd	r2, [sp, #8]
	orrs	r3, r2, r3
	bne	.L720
.LVL464:
.LBB6030:
.LBB6031:
	.loc 5 69 0
	cmp	r1, #0
.LBB6032:
.LBB6033:
.LBB6034:
	.loc 2 119 0
	mvneq	r3, #1040384
.LBE6034:
.LBE6033:
.LBE6032:
	.loc 5 69 0
	bne	.L721
.L626:
.LBB6037:
.LBB6036:
.LBB6035:
	.loc 2 119 0
	ldr	r2, [r3, #-3943]
	tst	r2, #16384
	beq	.L626
	.loc 2 120 0
	mov	r0, #1
.LVL465:
	mov	r2, #48
	str	r2, [r3, #-4031]
.LVL466:
.L627:
.LBE6035:
.LBE6036:
.LBE6037:
.LBE6031:
.LBE6030:
.LBE6050:
.LBE6052:
	.loc 5 192 0
	add	r5, r5, r0
.LVL467:
	b	.L621
.LVL468:
.L718:
.LBE6027:
.LBB6054:
.LBB6016:
.LBB6017:
.LBB6018:
	.loc 2 119 0
	mvn	r2, #1040384
.L682:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L682
.LBE6018:
.LBE6017:
.LBE6016:
	.loc 5 153 0
	add	r5, r5, #1
.LVL469:
	.loc 5 157 0
	rsb	ip, ip, #0
.LVL470:
.LBB6021:
.LBB6020:
.LBB6019:
	.loc 2 120 0
	mov	r3, #45
	str	r3, [r2, #-4031]
.LVL471:
.L589:
.LBE6019:
.LBE6020:
.LBE6021:
.LBB6022:
.LBB6015:
.LBB5987:
.LBB5988:
	.loc 5 80 0
	umull	r2, r3, ip, r8
	lsr	r1, r3, #3
	add	r3, r1, r1, lsl #2
	.loc 5 74 0
	cmp	r1, #0
	moveq	r0, #1
.LVL472:
	.loc 5 80 0
	sub	r3, ip, r3, lsl #1
	add	r3, r3, #48
	strb	r3, [sp, #28]
.LVL473:
	.loc 5 74 0
	bne	.L722
.LVL474:
.L633:
	add	r3, sp, #40
	add	ip, sp, #27
.LVL475:
	add	r1, r3, r0
.LBB5989:
.LBB5990:
.LBB5991:
.LBB5992:
	.loc 2 119 0
	mvn	r2, #1040384
	sub	r1, r1, #13
.LBE5992:
.LBE5991:
.LBB5995:
.LBB5996:
.LBB5997:
	.loc 2 120 0
	mov	lr, #13
.LVL476:
.L595:
.LBE5997:
.LBE5996:
.LBE5995:
.LBE5990:
.LBE5989:
	.loc 5 85 0
	ldrb	r7, [r1], #-1	@ zero_extendqisi2
.LVL477:
.L592:
.LBB6005:
.LBB6003:
.LBB6000:
.LBB5993:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L592
.LBE5993:
.LBE6000:
	.loc 2 112 0
	cmp	r7, #10
.LBB6001:
.LBB5994:
	.loc 2 120 0
	str	r7, [r2, #-4031]
.LVL478:
.LBE5994:
.LBE6001:
	.loc 2 112 0
	beq	.L594
.L593:
.LVL479:
.LBE6003:
.LBE6005:
	.loc 5 84 0
	cmp	r1, ip
	bne	.L595
	b	.L709
.LVL480:
.L594:
.LBB6006:
.LBB6004:
.LBB6002:
.LBB5999:
.LBB5998:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L594
	.loc 2 120 0
	str	lr, [r2, #-4031]
	b	.L593
.LVL481:
.L722:
.LBE5998:
.LBE5999:
.LBE6002:
.LBE6004:
.LBE6006:
	.loc 5 80 0
	umull	r2, r3, r1, r8
	lsr	lr, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, r9
	.loc 5 80 0
	add	lr, lr, lr, lsl #2
	.loc 5 74 0
	lsrs	r0, r3, #5
	.loc 5 80 0
	sub	r3, r1, lr, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #2
	.loc 5 80 0
	strb	r3, [sp, #29]
.LVL482:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r2, r3, r0, r8
	lsr	lr, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, r10
	.loc 5 80 0
	add	lr, lr, lr, lsl #2
	.loc 5 74 0
	lsrs	r1, r3, #6
	.loc 5 80 0
	sub	r3, r0, lr, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #3
	.loc 5 80 0
	strb	r3, [sp, #30]
.LVL483:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r2, r3, r1, r8
	lsr	r0, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, fp
	.loc 5 80 0
	add	r0, r0, r0, lsl #2
	.loc 5 74 0
	lsrs	lr, r3, #13
	.loc 5 80 0
	sub	r3, r1, r0, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #4
	.loc 5 80 0
	strb	r3, [sp, #31]
.LVL484:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r0, r1, lr, r8
.LBB6007:
.LBB6008:
	.loc 5 35 0
	ldr	r3, [sp, #4]
	lsr	r2, ip, #5
	umull	r2, r3, r2, r3
.LBE6008:
.LBE6007:
	.loc 5 80 0
	lsr	r2, r1, #3
	add	r2, r2, r2, lsl #2
	.loc 5 74 0
	lsrs	r1, r3, #7
	.loc 5 80 0
	sub	r3, lr, r2, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #5
	.loc 5 80 0
	strb	r3, [sp, #32]
.LVL485:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r2, r3, r1, r8
.LVL486:
	lsr	r0, r3, #3
	.loc 5 74 0
	ldr	r3, [sp, #16]
	.loc 5 80 0
	add	r0, r0, r0, lsl #2
	.loc 5 74 0
	umull	r2, r3, ip, r3
	lsrs	lr, r3, #18
	.loc 5 80 0
	sub	r3, r1, r0, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #6
	.loc 5 80 0
	strb	r3, [sp, #33]
.LVL487:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r2, r3, lr, r8
.LBB6012:
.LBB6009:
	.loc 5 35 0
	movw	r0, #51819
	movt	r0, 27487
	umull	r0, r1, ip, r0
.LBE6009:
.LBE6012:
	.loc 5 80 0
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	.loc 5 74 0
	lsrs	r7, r1, #22
	.loc 5 80 0
	sub	r3, lr, r3, lsl #1
	.loc 5 74 0
	moveq	r0, #7
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #34]
.LVL488:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r2, r3, r7, r8
.LBB6013:
.LBB6010:
	.loc 5 35 0
	movw	r0, #15241
	movt	r0, 21990
	umull	r0, r1, ip, r0
.LBE6010:
.LBE6013:
	.loc 5 80 0
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	.loc 5 74 0
	lsrs	lr, r1, #25
	.loc 5 80 0
	sub	r3, r7, r3, lsl #1
	.loc 5 74 0
	moveq	r0, #8
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #35]
.LVL489:
	.loc 5 74 0
	beq	.L633
	.loc 5 80 0
	umull	r0, r1, lr, r8
.LBB6014:
.LBB6011:
	.loc 5 35 0
	lsr	r2, ip, #9
	movw	r3, #19331
	movt	r3, 4
	umull	r2, r3, r2, r3
.LBE6011:
.LBE6014:
	.loc 5 80 0
	lsr	r2, r1, #3
	add	r2, r2, r2, lsl #2
	.loc 5 74 0
	lsrs	r1, r3, #7
	.loc 5 80 0
	sub	r3, lr, r2, lsl #1
	.loc 5 74 0
	moveq	r0, #9
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #36]
.LVL490:
	.loc 5 74 0
	.loc 5 80 0
	addne	r3, r1, #48
	.loc 5 74 0
	movne	r0, #10
	.loc 5 80 0
	strbne	r3, [sp, #37]
.LVL491:
	b	.L633
.LVL492:
.L719:
.LBE5988:
.LBE5987:
.LBE6015:
.LBE6022:
.LBE6054:
.LBB6055:
.LBB5875:
.LBB5871:
.LBB5862:
	umull	r2, r3, r1, r8
	lsr	lr, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, r9
	.loc 5 80 0
	add	lr, lr, lr, lsl #2
	.loc 5 74 0
	lsrs	r0, r3, #5
	.loc 5 80 0
	sub	r3, r1, lr, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #2
	.loc 5 80 0
	strb	r3, [sp, #29]
.LVL493:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, r0, r8
	lsr	lr, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, r10
	.loc 5 80 0
	add	lr, lr, lr, lsl #2
	.loc 5 74 0
	lsrs	r1, r3, #6
	.loc 5 80 0
	sub	r3, r0, lr, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #3
	.loc 5 80 0
	strb	r3, [sp, #30]
.LVL494:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, r1, r8
	lsr	r0, r3, #3
	.loc 5 74 0
	umull	r2, r3, ip, fp
	.loc 5 80 0
	add	r0, r0, r0, lsl #2
	.loc 5 74 0
	lsrs	lr, r3, #13
	.loc 5 80 0
	sub	r3, r1, r0, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #4
	.loc 5 80 0
	strb	r3, [sp, #31]
.LVL495:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, lr, r8
.LBB5856:
.LBB5833:
	.loc 5 35 0
	ldr	r1, [sp, #4]
	lsr	r0, ip, #5
	umull	r0, r1, r0, r1
.LBE5833:
.LBE5856:
	.loc 5 80 0
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	.loc 5 74 0
	lsrs	r1, r1, #7
	.loc 5 80 0
	sub	r3, lr, r3, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #5
	.loc 5 80 0
	strb	r3, [sp, #32]
.LVL496:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, r1, r8
	lsr	r0, r3, #3
	.loc 5 74 0
	ldr	r3, [sp, #16]
	.loc 5 80 0
	add	r0, r0, r0, lsl #2
	.loc 5 74 0
	umull	r2, r3, ip, r3
	lsrs	lr, r3, #18
	.loc 5 80 0
	sub	r3, r1, r0, lsl #1
	add	r3, r3, #48
	.loc 5 74 0
	moveq	r0, #6
	.loc 5 80 0
	strb	r3, [sp, #33]
.LVL497:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, lr, r8
.LBB5857:
.LBB5834:
	.loc 5 35 0
	movw	r0, #51819
	movt	r0, 27487
	umull	r0, r1, ip, r0
.LBE5834:
.LBE5857:
	.loc 5 80 0
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	.loc 5 74 0
	lsrs	r7, r1, #22
	.loc 5 80 0
	sub	r3, lr, r3, lsl #1
	.loc 5 74 0
	moveq	r0, #7
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #34]
.LVL498:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r2, r3, r7, r8
.LBB5858:
.LBB5835:
	.loc 5 35 0
	movw	r0, #15241
	movt	r0, 21990
	umull	r0, r1, ip, r0
.LBE5835:
.LBE5858:
	.loc 5 80 0
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	.loc 5 74 0
	lsrs	lr, r1, #25
	.loc 5 80 0
	sub	r3, r7, r3, lsl #1
	.loc 5 74 0
	moveq	r0, #8
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #35]
.LVL499:
	.loc 5 74 0
	beq	.L634
	.loc 5 80 0
	umull	r0, r1, lr, r8
.LBB5859:
.LBB5836:
	.loc 5 35 0
	lsr	r2, ip, #9
	movw	r3, #19331
	movt	r3, 4
	umull	r2, r3, r2, r3
.LBE5836:
.LBE5859:
	.loc 5 80 0
	lsr	r2, r1, #3
	add	r2, r2, r2, lsl #2
	.loc 5 74 0
	lsrs	r1, r3, #7
	.loc 5 80 0
	sub	r3, lr, r2, lsl #1
	.loc 5 74 0
	moveq	r0, #9
	.loc 5 80 0
	add	r3, r3, #48
	strb	r3, [sp, #36]
.LVL500:
	.loc 5 74 0
	.loc 5 80 0
	addne	r3, r1, #48
	.loc 5 74 0
	movne	r0, #10
	.loc 5 80 0
	strbne	r3, [sp, #37]
.LVL501:
	b	.L634
.LVL502:
.L635:
.LBE5862:
.LBE5871:
.LBE5875:
.LBE6055:
	.loc 5 133 0
	mov	r0, r4
.LVL503:
.LBE6058:
.LBE6060:
	.loc 5 240 0
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 0
	.cfi_restore 1
	.cfi_restore 2
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	bx	lr
.LVL504:
.L636:
	.cfi_restore_state
.LBB6061:
.LBB6059:
.LBB6056:
.LBB5919:
	.loc 5 21 0
	mov	r3, r1
	b	.L616
.LVL505:
.L721:
.LBE5919:
.LBE6056:
.LBB6057:
.LBB6053:
.LBB6051:
	.loc 5 96 0
	mov	r7, #0
.LVL506:
.L623:
.LBB6039:
.LBB6038:
	mov	r0, r1
	bl	print_unsigned_long.part.58.constprop.314
.LVL507:
	add	r0, r0, r7
	b	.L627
.LVL508:
.L720:
.LBE6038:
.LBE6039:
.LBB6040:
.LBB6041:
	ldr	r0, [sp, #8]
.LVL509:
	str	r1, [sp, #20]
	bl	print_unsigned_long.part.58.constprop.314
.LVL510:
.LBE6041:
.LBE6040:
	.loc 5 113 0
	ldr	r1, [sp, #20]
.LBB6043:
.LBB6042:
	mov	r7, r0
.LVL511:
.LBE6042:
.LBE6043:
	tst	r1, #-268435456
	bne	.L623
	mov	r0, #-268435456
.LVL512:
.LBB6044:
.LBB6045:
.LBB6046:
	.loc 2 119 0
	mvn	r2, #1040384
	.loc 2 120 0
	mov	ip, #48
.LVL513:
.L624:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L624
.LBE6046:
.LBE6045:
.LBE6044:
	.loc 5 116 0
	lsr	r0, r0, #4
.LBB6049:
.LBB6048:
.LBB6047:
	.loc 2 120 0
	str	ip, [r2, #-4031]
.LBE6047:
.LBE6048:
.LBE6049:
	.loc 5 115 0
	add	r7, r7, #1
.LVL514:
	.loc 5 113 0
	tst	r1, r0
	beq	.L624
	b	.L623
.LBE6051:
.LBE6053:
.LBE6057:
.LBE6059:
.LBE6061:
	.cfi_endproc
.LFE584:
	.size	kprintf, .-kprintf
	.align	2
	.global	checkValidIPCBuffer
	.syntax unified
	.arm
	.type	checkValidIPCBuffer, %function
checkValidIPCBuffer:
.LFB342:
	.loc 11 716 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL515:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 11 716 0
	add	r3, sp, #16
	mov	r4, r0
	stmdb	r3, {r1, r2}
	ldr	r3, [sp, #8]
.LVL516:
.LBB6077:
.LBB6078:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL517:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE6078:
.LBE6077:
	.loc 11 717 0
	cmp	r3, #1
	bne	.L732
	.loc 11 723 0
	ubfx	r0, r0, #0, #9
.LVL518:
	cmp	r0, #0
	bne	.L733
.L727:
	.loc 11 731 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL519:
.L732:
	.cfi_restore_state
	.loc 11 718 0
	movw	r3, #:lower16:ksCurThread
	movw	r1, #:lower16:.LANCHOR4
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL520:
	ldr	r3, [r3]
	movt	r1, #:upper16:.LANCHOR4
	movw	r2, #718
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL521:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	kprintf
.LVL522:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL523:
	.loc 11 719 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 11 720 0
	mov	r0, r2
	.loc 11 719 0
	str	r2, [r3, #24]
	.loc 11 731 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL524:
.L733:
	.cfi_restore_state
.LBB6079:
.LBB6080:
	.loc 11 724 0
	movw	r3, #:lower16:ksCurThread
	movw	r1, #:lower16:.LANCHOR4
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	r3, [r3]
	movw	r2, #725
	movt	r1, #:upper16:.LANCHOR4
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL525:
	movw	r0, #:lower16:.LC6
	mov	r1, r4
	movt	r0, #:upper16:.LC6
	bl	kprintf
.LVL526:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL527:
	.loc 11 726 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	mov	r0, #3
	str	r2, [r3, #24]
.LVL528:
	b	.L727
.LBE6080:
.LBE6079:
	.cfi_endproc
.LFE342:
	.size	checkValidIPCBuffer, .-checkValidIPCBuffer
	.align	2
	.global	kernelPrefetchAbort
	.syntax unified
	.arm
	.type	kernelPrefetchAbort, %function
kernelPrefetchAbort:
.LFB370:
	.loc 11 1809 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL529:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 1809 0
	mov	r5, r0
.LBB6081:
.LBB6082:
	.loc 14 308 0
	.syntax divided
@ 308 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r4, c5, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBE6082:
.LBE6081:
	.loc 11 1812 0
	movw	r0, #:lower16:.LC7
.LVL530:
	movt	r0, #:upper16:.LC7
	bl	kprintf
.LVL531:
	.loc 11 1813 0
	movw	r0, #:lower16:.LC8
	mov	r1, r5
	movt	r0, #:upper16:.LC8
	bl	kprintf
.LVL532:
	.loc 11 1814 0
	movw	r0, #:lower16:.LC9
	mov	r1, r4
	movt	r0, #:upper16:.LC9
	bl	kprintf
.LVL533:
	.loc 11 1816 0
	bl	halt
.LVL534:
	.cfi_endproc
.LFE370:
	.size	kernelPrefetchAbort, .-kernelPrefetchAbort
	.align	2
	.global	kernelDataAbort
	.syntax unified
	.arm
	.type	kernelDataAbort, %function
kernelDataAbort:
.LFB371:
	.loc 11 1821 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL535:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 1821 0
	mov	r6, r0
.LBB6083:
.LBB6084:
	.loc 14 316 0
	.syntax divided
@ 316 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r5, c5, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6084:
.LBE6083:
.LBB6085:
.LBB6086:
	.loc 14 324 0
	.syntax divided
@ 324 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r4, c6, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6086:
.LBE6085:
	.loc 11 1825 0
	movw	r0, #:lower16:.LC10
.LVL536:
	movt	r0, #:upper16:.LC10
	bl	kprintf
.LVL537:
	.loc 11 1826 0
	movw	r0, #:lower16:.LC8
	mov	r1, r6
	movt	r0, #:upper16:.LC8
	bl	kprintf
.LVL538:
	.loc 11 1827 0
	movw	r0, #:lower16:.LC11
	mov	r2, r5
	mov	r1, r4
	movt	r0, #:upper16:.LC11
	bl	kprintf
.LVL539:
	.loc 11 1829 0
	bl	halt
.LVL540:
	.cfi_endproc
.LFE371:
	.size	kernelDataAbort, .-kernelDataAbort
	.align	2
	.global	debug_init
	.syntax unified
	.arm
	.type	debug_init, %function
debug_init:
.LFB402:
	.loc 15 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6095:
.LBB6096:
	.loc 16 70 0
	.syntax divided
@ 70 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mrc p14, 0, r1, c0, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6096:
.LBE6095:
	.loc 15 33 0
	movw	r4, #:lower16:n_breakpoints
	ubfx	ip, r1, #24, #4
	.loc 15 38 0
	movw	r0, #:lower16:.LC12
	.loc 15 33 0
	add	ip, ip, #1
	.loc 15 38 0
	ubfx	r3, r1, #16, #4
	and	r2, r1, #15
	.loc 15 33 0
	movt	r4, #:upper16:n_breakpoints
	.loc 15 38 0
	ubfx	r1, r1, #4, #4
	movt	r0, #:upper16:.LC12
	.loc 15 33 0
	str	ip, [r4]
.LVL541:
	.loc 15 38 0
	bl	kprintf
.LVL542:
	.loc 15 40 0
	movw	r0, #:lower16:.LC13
	ldr	r1, [r4]
	movt	r0, #:upper16:.LC13
	bl	kprintf
.LVL543:
.LBB6097:
.LBB6098:
	.loc 16 105 0
	mov	r3, #32768
	.syntax divided
@ 105 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c1, 0
@ 0 "" 2
.LVL544:
	.arm
	.syntax unified
.LBE6098:
.LBE6097:
	.loc 15 46 0
	ldr	r0, [r4]
	cmp	r0, #0
	movne	r3, #0
	movwne	r1, #:lower16:breakpoints
	.loc 15 47 0
	movne	r2, r3
	movtne	r1, #:upper16:breakpoints
	.loc 15 46 0
	beq	.L749
.LVL545:
.L754:
	.loc 15 47 0 discriminator 3
	add	ip, r1, r3, lsl #3
	str	r2, [ip, #4]
.LVL546:
.LBB6099:
.LBB6100:
	.loc 16 238 0 discriminator 3
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L740
.L742:
	.word	.L741
	.word	.L743
	.word	.L744
	.word	.L745
	.word	.L746
	.word	.L747
.L741:
.LVL547:
	.loc 16 240 0
	.syntax divided
@ 240 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c0, 5
@ 0 "" 2
.LVL548:
	.arm
	.syntax unified
.LBE6100:
.LBE6099:
	.loc 15 46 0
	cmp	r0, #1
	beq	.L749
	.loc 15 47 0
	str	r2, [r1, #12]
.LVL549:
.L743:
.LBB6106:
.LBB6101:
	.loc 16 243 0
	.syntax divided
@ 243 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c1, 5
@ 0 "" 2
.LVL550:
	.arm
	.syntax unified
.LBE6101:
.LBE6106:
	.loc 15 46 0
	cmp	r0, #2
	bls	.L749
	.loc 15 47 0
	str	r2, [r1, #20]
.LVL551:
.L744:
.LBB6107:
.LBB6102:
	.loc 16 246 0
	.syntax divided
@ 246 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c2, 5
@ 0 "" 2
.LVL552:
	.arm
	.syntax unified
.LBE6102:
.LBE6107:
	.loc 15 46 0
	cmp	r0, #3
	bls	.L749
	.loc 15 47 0
	str	r2, [r1, #28]
.LVL553:
.L745:
.LBB6108:
.LBB6103:
	.loc 16 249 0
	.syntax divided
@ 249 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c3, 5
@ 0 "" 2
.LVL554:
	.arm
	.syntax unified
.LBE6103:
.LBE6108:
	.loc 15 46 0
	cmp	r0, #4
	bls	.L749
	.loc 15 47 0
	str	r2, [r1, #36]
.LVL555:
.L746:
.LBB6109:
.LBB6104:
	.loc 16 252 0
	.syntax divided
@ 252 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c4, 5
@ 0 "" 2
.LVL556:
	.arm
	.syntax unified
.LBE6104:
.LBE6109:
	.loc 15 46 0
	cmp	r0, #5
	bls	.L749
	.loc 15 47 0
	str	r2, [r1, #44]
.LVL557:
.L747:
.LBB6110:
.LBB6105:
	.loc 16 255 0
	.syntax divided
@ 255 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r2, c0, c5, 5
@ 0 "" 2
	.arm
	.syntax unified
	mov	r3, #5
.LVL558:
.L740:
.LBE6105:
.LBE6110:
	.loc 15 46 0 discriminator 3
	add	r3, r3, #1
.LVL559:
	cmp	r3, r0
	bcc	.L754
.LVL560:
.L749:
.LBB6111:
.LBB6112:
	.loc 16 132 0
	mov	r3, #0
	.syntax divided
@ 132 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/debug.h" 1
	mcr p14, 0, r3, c0, c7, 0
@ 0 "" 2
.LVL561:
	.arm
	.syntax unified
.LBE6112:
.LBE6111:
	.loc 15 51 0
	pop	{r4, pc}
	.cfi_endproc
.LFE402:
	.size	debug_init, .-debug_init
	.align	2
	.global	software_breakpoint
	.syntax unified
	.arm
	.type	software_breakpoint, %function
software_breakpoint:
.LFB403:
	.loc 15 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL562:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 15 55 0
	mov	r7, r1
	.loc 15 58 0
	mov	r1, r0
.LVL563:
	movw	r0, #:lower16:.LC14
.LVL564:
	.loc 15 60 0
	movw	r6, #:lower16:.LC15
	.loc 15 58 0
	movt	r0, #:upper16:.LC14
	sub	r5, r7, #4
	.loc 15 60 0
	movt	r6, #:upper16:.LC15
	.loc 15 59 0
	mov	r4, #0
	.loc 15 58 0
	bl	kprintf
.LVL565:
.L759:
	.loc 15 60 0 discriminator 3
	mov	r1, r4
	ldr	r2, [r5, #4]!
	mov	r0, r6
	.loc 15 59 0 discriminator 3
	add	r4, r4, #1
.LVL566:
	.loc 15 60 0 discriminator 3
	bl	kprintf
.LVL567:
	.loc 15 59 0 discriminator 3
	cmp	r4, #10
	bne	.L759
	.loc 15 63 0
	movw	r6, #:lower16:.LC16
	add	r5, r7, #36
	movt	r6, #:upper16:.LC16
.L760:
	.loc 15 63 0 is_stmt 0 discriminator 3
	mov	r1, r4
	ldr	r2, [r5, #4]!
	mov	r0, r6
	.loc 15 62 0 is_stmt 1 discriminator 3
	add	r4, r4, #1
.LVL568:
	.loc 15 63 0 discriminator 3
	bl	kprintf
.LVL569:
	.loc 15 62 0 discriminator 3
	cmp	r4, #15
	bne	.L760
	.loc 15 65 0
	movw	r0, #:lower16:.LC17
	ldr	r1, [r7, #60]
	movt	r0, #:upper16:.LC17
	movw	r5, #:lower16:ksCurThread
	bl	kprintf
.LVL570:
	.loc 15 66 0
	movw	r0, #:lower16:.LC18
	ldr	r1, [r7, #64]
	movt	r0, #:upper16:.LC18
	.loc 15 70 0
	movw	r6, #:lower16:.LC15
	.loc 15 66 0
	bl	kprintf
.LVL571:
	.loc 15 68 0
	movw	r0, #:lower16:.LC19
	movt	r5, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC19
	.loc 15 70 0
	movt	r6, #:upper16:.LC15
	.loc 15 69 0
	mov	r4, #0
.LVL572:
	.loc 15 68 0
	bl	kprintf
.LVL573:
.L761:
	.loc 15 70 0 discriminator 3
	ldr	r3, [r5]
	mov	r1, r4
	mov	r0, r6
	ldr	r2, [r3, r4, lsl #2]
	.loc 15 69 0 discriminator 3
	add	r4, r4, #1
.LVL574:
	.loc 15 70 0 discriminator 3
	bl	kprintf
.LVL575:
	.loc 15 69 0 discriminator 3
	cmp	r4, #10
	bne	.L761
	.loc 15 74 0 discriminator 3
	movw	r6, #:lower16:.LC16
	movt	r6, #:upper16:.LC16
.L762:
	ldr	r3, [r5]
	mov	r1, r4
	mov	r0, r6
	ldr	r2, [r3, r4, lsl #2]
	.loc 15 73 0 discriminator 3
	add	r4, r4, #1
.LVL576:
	.loc 15 74 0 discriminator 3
	bl	kprintf
.LVL577:
	.loc 15 73 0 discriminator 3
	cmp	r4, #15
	bne	.L762
	.loc 15 77 0
	ldr	r3, [r5]
	movw	r0, #:lower16:.LC17
	movt	r0, #:upper16:.LC17
	ldr	r1, [r3, #60]
	bl	kprintf
.LVL578:
	.loc 15 78 0
	ldr	r3, [r5]
	movw	r0, #:lower16:.LC18
	movt	r0, #:upper16:.LC18
	.loc 15 79 0
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL579:
	.loc 15 78 0
	ldr	r1, [r3, #64]
	b	kprintf
.LVL580:
	.cfi_endproc
.LFE403:
	.size	software_breakpoint, .-software_breakpoint
	.align	2
	.global	breakpoint_multiplexer
	.syntax unified
	.arm
	.type	breakpoint_multiplexer, %function
breakpoint_multiplexer:
.LFB404:
	.loc 15 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL581:
	.loc 15 86 0
	movw	r3, #:lower16:n_breakpoints
	.loc 15 83 0
	mov	ip, r0
	.loc 15 86 0
	movt	r3, #:upper16:n_breakpoints
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L825
	movw	r3, #:lower16:breakpoints
	.loc 15 83 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 15 86 0
	movt	r3, #:upper16:breakpoints
	ldr	r0, [r3]
.LVL582:
	cmp	ip, r0
	beq	.L826
.L770:
.LVL583:
	cmp	r2, #1
	beq	.L817
	ldr	r0, [r3, #8]
	cmp	ip, r0
	beq	.L827
.L773:
.LVL584:
	cmp	r2, #2
	beq	.L817
	ldr	r0, [r3, #16]
	cmp	ip, r0
	beq	.L828
.L774:
.LVL585:
	cmp	r2, #3
	beq	.L817
	ldr	r0, [r3, #24]
	cmp	ip, r0
	beq	.L829
.L776:
.LVL586:
	cmp	r2, #4
	beq	.L817
	ldr	r0, [r3, #32]
	cmp	ip, r0
	beq	.L830
.L777:
.LVL587:
	cmp	r2, #5
	beq	.L817
	ldr	r0, [r3, #40]
	cmp	ip, r0
	beq	.L831
.L778:
.LVL588:
	cmp	r2, #6
	beq	.L817
	ldr	r0, [r3, #48]
	cmp	ip, r0
	beq	.L832
.L779:
.LVL589:
	cmp	r2, #7
	beq	.L817
	ldr	r0, [r3, #56]
	cmp	ip, r0
	beq	.L833
.L780:
.LVL590:
	cmp	r2, #8
	beq	.L817
	ldr	r0, [r3, #64]
	cmp	ip, r0
	beq	.L834
.L781:
.LVL591:
	cmp	r2, #9
	beq	.L817
	ldr	lr, [r3, #72]
	cmp	ip, lr
	beq	.L835
.L782:
.LVL592:
	cmp	r2, #10
	beq	.L817
	ldr	lr, [r3, #80]
	cmp	ip, lr
	beq	.L836
.L783:
.LVL593:
	cmp	r2, #11
	beq	.L817
	ldr	lr, [r3, #88]
	cmp	ip, lr
	beq	.L837
.L784:
.LVL594:
	cmp	r2, #12
	beq	.L817
	ldr	lr, [r3, #96]
	cmp	ip, lr
	beq	.L838
.L785:
.LVL595:
	cmp	r2, #13
	beq	.L817
	ldr	lr, [r3, #104]
	cmp	ip, lr
	beq	.L839
.L786:
.LVL596:
	cmp	r2, #14
	beq	.L817
	ldr	lr, [r3, #112]
	cmp	ip, lr
	beq	.L840
.L787:
.LVL597:
	cmp	r2, #15
	beq	.L817
	.loc 15 86 0 is_stmt 0 discriminator 2
	ldr	lr, [r3, #120]
	cmp	lr, ip
	.loc 15 87 0 is_stmt 1 discriminator 2
	movne	lr, #16
	.loc 15 86 0 discriminator 2
	beq	.L841
.LVL598:
.L789:
	.loc 15 89 0
	cmp	lr, r2
	beq	.L842
.L771:
	.loc 15 92 0
	add	r3, r3, lr, lsl #3
	mov	r0, r1
	.loc 15 94 0
	ldr	lr, [sp], #4
	.cfi_remember_state
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 15 92 0
	ldr	r3, [r3, #4]
	bx	r3	@ indirect register sibling call
.LVL599:
.L817:
	.cfi_restore_state
	.loc 15 87 0
	mov	lr, r2
	.loc 15 89 0
	cmp	lr, r2
	bne	.L771
.L842:
	.loc 15 90 0
	movw	r0, #:lower16:.LC20
	mov	r1, ip
.LVL600:
	movt	r0, #:upper16:.LC20
	.loc 15 94 0
	ldr	lr, [sp], #4
	.cfi_remember_state
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 15 90 0
	b	kprintf
.LVL601:
.L826:
	.cfi_restore_state
	.loc 15 86 0
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L770
	mov	lr, #0
	b	.L771
.LVL602:
.L841:
	.loc 15 86 0 is_stmt 0 discriminator 3
	ldr	r0, [r3, #124]
	.loc 15 87 0 is_stmt 1 discriminator 3
	cmp	r0, #0
	moveq	lr, #16
	movne	lr, #15
	b	.L789
.LVL603:
.L840:
	.loc 15 86 0
	ldr	r0, [r3, #116]
	cmp	r0, #0
	beq	.L787
	.loc 15 87 0
	mov	lr, #14
	b	.L789
.LVL604:
.L839:
	.loc 15 86 0
	ldr	r0, [r3, #108]
	cmp	r0, #0
	beq	.L786
	.loc 15 87 0
	mov	lr, #13
	b	.L789
.LVL605:
.L838:
	.loc 15 86 0
	ldr	r0, [r3, #100]
	cmp	r0, #0
	beq	.L785
	.loc 15 87 0
	mov	lr, #12
	b	.L789
.LVL606:
.L837:
	.loc 15 86 0
	ldr	r0, [r3, #92]
	cmp	r0, #0
	beq	.L784
	.loc 15 87 0
	mov	lr, #11
	b	.L789
.LVL607:
.L836:
	.loc 15 86 0
	ldr	r0, [r3, #84]
	cmp	r0, #0
	beq	.L783
	.loc 15 87 0
	mov	lr, #10
	b	.L789
.LVL608:
.L835:
	.loc 15 86 0
	ldr	r0, [r3, #76]
	cmp	r0, #0
	beq	.L782
	.loc 15 87 0
	mov	lr, #9
	b	.L789
.LVL609:
.L834:
	.loc 15 86 0
	ldr	r0, [r3, #68]
	cmp	r0, #0
	beq	.L781
	.loc 15 87 0
	mov	lr, #8
	b	.L789
.LVL610:
.L833:
	.loc 15 86 0
	ldr	r0, [r3, #60]
	cmp	r0, #0
	beq	.L780
	.loc 15 87 0
	mov	lr, #7
	b	.L789
.LVL611:
.L832:
	.loc 15 86 0
	ldr	r0, [r3, #52]
	cmp	r0, #0
	beq	.L779
	.loc 15 87 0
	mov	lr, #6
	b	.L789
.LVL612:
.L831:
	.loc 15 86 0
	ldr	r0, [r3, #44]
	cmp	r0, #0
	beq	.L778
	.loc 15 87 0
	mov	lr, #5
	b	.L789
.LVL613:
.L830:
	.loc 15 86 0
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L777
	.loc 15 87 0
	mov	lr, #4
	b	.L789
.LVL614:
.L829:
	.loc 15 86 0
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L776
	.loc 15 87 0
	mov	lr, #3
	b	.L789
.LVL615:
.L828:
	.loc 15 86 0
	ldr	r0, [r3, #20]
	cmp	r0, #0
	beq	.L774
	.loc 15 87 0
	mov	lr, #2
	b	.L789
.LVL616:
.L827:
	.loc 15 86 0
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L773
	.loc 15 87 0
	mov	lr, #1
	b	.L771
.LVL617:
.L825:
	.cfi_def_cfa_offset 0
	.cfi_restore 14
	.loc 15 90 0
	movw	r0, #:lower16:.LC20
.LVL618:
	mov	r1, ip
.LVL619:
	movt	r0, #:upper16:.LC20
	b	kprintf
.LVL620:
	.cfi_endproc
.LFE404:
	.size	breakpoint_multiplexer, .-breakpoint_multiplexer
	.align	2
	.global	_fail
	.syntax unified
	.arm
	.type	_fail, %function
_fail:
.LFB461:
	.file 27 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/assert.c"
	.loc 27 21 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL621:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 22 0
	str	r0, [sp]
	movw	r0, #:lower16:.LC21
.LVL622:
	movt	r0, #:upper16:.LC21
	bl	kprintf
.LVL623:
	.loc 27 29 0
	bl	halt
.LVL624:
	.cfi_endproc
.LFE461:
	.size	_fail, .-_fail
	.align	2
	.syntax unified
	.arm
	.type	pageBitsForSize, %function
pageBitsForSize:
.LFB191:
	.file 28 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/hardware.h"
	.loc 28 112 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL625:
	.loc 28 113 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L846
.L848:
	.word	.L847
	.word	.L849
	.word	.L852
	.word	.L851
.L852:
	.loc 28 121 0
	mov	r0, #20
.LVL626:
	.loc 28 129 0
	bx	lr
.LVL627:
.L849:
	.loc 28 118 0
	mov	r0, #16
.LVL628:
	bx	lr
.LVL629:
.L847:
	.loc 28 115 0
	mov	r0, #12
.LVL630:
	bx	lr
.LVL631:
.L851:
	.loc 28 124 0
	mov	r0, #24
.LVL632:
	bx	lr
.LVL633:
.L846:
.LBB6115:
.LBB6116:
	.loc 28 127 0
	movw	r1, #:lower16:.LC22
	movw	r0, #:lower16:.LC23
.LVL634:
.LBE6116:
.LBE6115:
	.loc 28 112 0
	push	{r4, lr}
.LBB6118:
.LBB6117:
	.loc 28 127 0
	movt	r1, #:upper16:.LC22
	movt	r0, #:upper16:.LC23
	ldr	r3, .L854
	mov	r2, #127
	bl	_fail
.LVL635:
.L855:
	.align	2
.L854:
	.word	.LANCHOR4+20
.LBE6117:
.LBE6118:
	.cfi_endproc
.LFE191:
	.size	pageBitsForSize, .-pageBitsForSize
	.align	2
	.global	Arch_getObjectSize
	.syntax unified
	.arm
	.type	Arch_getObjectSize, %function
Arch_getObjectSize:
.LFB449:
	.loc 23 235 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL636:
	.loc 23 236 0
	sub	r0, r0, #5
.LVL637:
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L857
.L859:
	.word	.L858
	.word	.L860
	.word	.L865
	.word	.L862
	.word	.L863
	.word	.L864
.L865:
	.loc 23 242 0
	mov	r0, #20
.LVL638:
	.loc 23 253 0
	bx	lr
.L862:
	.loc 23 244 0
	mov	r0, #24
	bx	lr
.L863:
	.loc 23 246 0
	mov	r0, #10
	bx	lr
.L864:
	.loc 23 248 0
	mov	r0, #14
	bx	lr
.L858:
	.loc 23 238 0
	mov	r0, #12
	bx	lr
.L860:
	.loc 23 240 0
	mov	r0, #16
	bx	lr
.L857:
.LVL639:
.LBB6121:
.LBB6122:
	.loc 23 250 0
	movw	r1, #:lower16:.LC24
	movw	r0, #:lower16:.LC25
.LBE6122:
.LBE6121:
	.loc 23 235 0
	push	{r4, lr}
.LBB6124:
.LBB6123:
	.loc 23 250 0
	movt	r1, #:upper16:.LC24
	movt	r0, #:upper16:.LC25
	ldr	r3, .L867
	mov	r2, #250
	bl	_fail
.LVL640:
.L868:
	.align	2
.L867:
	.word	.LANCHOR4+36
.LBE6123:
.LBE6124:
	.cfi_endproc
.LFE449:
	.size	Arch_getObjectSize, .-Arch_getObjectSize
	.align	2
	.syntax unified
	.arm
	.type	APFromVMRights, %function
APFromVMRights:
.LFB320:
	.loc 11 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL641:
	.loc 11 72 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L870
.L872:
	.word	.L871
	.word	.L873
	.word	.L876
	.word	.L875
.L876:
	.loc 11 80 0
	mov	r0, #2
.LVL642:
	.loc 11 88 0
	bx	lr
.LVL643:
.L873:
	.loc 11 77 0
	mov	r0, #1
.LVL644:
	bx	lr
.LVL645:
.L871:
	.loc 11 74 0
	mov	r0, #0
.LVL646:
	bx	lr
.LVL647:
.L875:
	.loc 11 83 0
	mov	r0, #3
.LVL648:
	bx	lr
.LVL649:
.L870:
.LBB6127:
.LBB6128:
	.loc 11 86 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC27
.LVL650:
.LBE6128:
.LBE6127:
	.loc 11 71 0
	push	{r4, lr}
.LBB6130:
.LBB6129:
	.loc 11 86 0
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC27
	ldr	r3, .L878
	mov	r2, #86
	bl	_fail
.LVL651:
.L879:
	.align	2
.L878:
	.word	.LANCHOR4+56
.LBE6129:
.LBE6130:
	.cfi_endproc
.LFE320:
	.size	APFromVMRights, .-APFromVMRights
	.align	2
	.global	_assert_fail
	.syntax unified
	.arm
	.type	_assert_fail, %function
_assert_fail:
.LFB462:
	.loc 27 37 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL652:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 27 38 0
	str	r3, [sp]
	mov	r3, r2
.LVL653:
	mov	r2, r1
.LVL654:
	mov	r1, r0
.LVL655:
	movw	r0, #:lower16:.LC28
.LVL656:
	movt	r0, #:upper16:.LC28
	bl	kprintf
.LVL657:
	.loc 27 44 0
	bl	halt
.LVL658:
	.cfi_endproc
.LFE462:
	.size	_assert_fail, .-_assert_fail
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.type	cap_thread_cap_get_capTCBPtr.isra.64.part.65, %function
cap_thread_cap_get_capTCBPtr.isra.64.part.65:
.LFB779:
	.loc 4 1574 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1576 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC30
	.loc 4 1574 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1576 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC30
	ldr	r3, .L884
	movw	r2, #1577
	bl	_assert_fail
.LVL659:
.L885:
	.align	2
.L884:
	.word	.LANCHOR4+72
	.cfi_endproc
.LFE779:
	.size	cap_thread_cap_get_capTCBPtr.isra.64.part.65, .-cap_thread_cap_get_capTCBPtr.isra.64.part.65
	.align	2
	.syntax unified
	.arm
	.type	cap_reply_cap_get_capReplyMaster.part.68, %function
cap_reply_cap_get_capReplyMaster.part.68:
.LFB782:
	.loc 4 1437 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1439 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC31
	.loc 4 1437 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1439 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC31
	ldr	r3, .L888
	mov	r2, #1440
	bl	_assert_fail
.LVL660:
.L889:
	.align	2
.L888:
	.word	.LANCHOR4+104
	.cfi_endproc
.LFE782:
	.size	cap_reply_cap_get_capReplyMaster.part.68, .-cap_reply_cap_get_capReplyMaster.part.68
	.text
	.align	2
	.syntax unified
	.arm
	.type	cap_reply_cap_get_capTCBPtr.isra.69.part.70, %function
cap_reply_cap_get_capTCBPtr.isra.69.part.70:
.LFB784:
	.loc 4 1451 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1453 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC31
	.loc 4 1451 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1453 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC31
	ldr	r3, .L892
	movw	r2, #1454
	bl	_assert_fail
.LVL661:
.L893:
	.align	2
.L892:
	.word	.LANCHOR4+140
	.cfi_endproc
.LFE784:
	.size	cap_reply_cap_get_capTCBPtr.isra.69.part.70, .-cap_reply_cap_get_capTCBPtr.isra.69.part.70
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_get_capCanReceive.part.71, %function
cap_endpoint_cap_get_capCanReceive.part.71:
.LFB785:
	.loc 4 1172 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1174 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC32
	.loc 4 1172 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1174 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC32
	ldr	r3, .L896
	movw	r2, #1175
	bl	_assert_fail
.LVL662:
.L897:
	.align	2
.L896:
	.word	.LANCHOR4+168
	.cfi_endproc
.LFE785:
	.size	cap_endpoint_cap_get_capCanReceive.part.71, .-cap_endpoint_cap_get_capCanReceive.part.71
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73, %function
cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73:
.LFB787:
	.loc 4 1354 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1356 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC33
	.loc 4 1354 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1356 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC33
	ldr	r3, .L900
	movw	r2, #1357
	bl	_assert_fail
.LVL663:
.L901:
	.align	2
.L900:
	.word	.LANCHOR4+204
	.cfi_endproc
.LFE787:
	.size	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73, .-cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
	.align	2
	.syntax unified
	.arm
	.type	cap_async_endpoint_cap_get_capAEPCanReceive.part.74, %function
cap_async_endpoint_cap_get_capAEPCanReceive.part.74:
.LFB788:
	.loc 4 1302 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1304 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC33
	.loc 4 1302 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1304 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC33
	ldr	r3, .L904
	movw	r2, #1305
	bl	_assert_fail
.LVL664:
.L905:
	.align	2
.L904:
	.word	.LANCHOR4+244
	.cfi_endproc
.LFE788:
	.size	cap_async_endpoint_cap_get_capAEPCanReceive.part.74, .-cap_async_endpoint_cap_get_capAEPCanReceive.part.74
	.align	2
	.syntax unified
	.arm
	.type	lookup_fault_missing_capability_new.part.75, %function
lookup_fault_missing_capability_new.part.75:
.LFB789:
	.loc 4 2263 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL665:
	.loc 4 2270 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC34
	.loc 4 2263 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2270 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC34
	ldr	r3, .L908
	movw	r2, #2270
	bl	_assert_fail
.LVL666:
.L909:
	.align	2
.L908:
	.word	.LANCHOR4+288
	.cfi_endproc
.LFE789:
	.size	lookup_fault_missing_capability_new.part.75, .-lookup_fault_missing_capability_new.part.75
	.text
	.align	2
	.syntax unified
	.arm
	.type	cap_cnode_cap_get_capCNodeGuardSize.part.77, %function
cap_cnode_cap_get_capCNodeGuardSize.part.77:
.LFB791:
	.loc 4 1491 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1493 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC35
	.loc 4 1491 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1493 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC35
	ldr	r3, .L912
	movw	r2, #1494
	bl	_assert_fail
.LVL667:
.L913:
	.align	2
.L912:
	.word	.LANCHOR4+324
	.cfi_endproc
.LFE791:
	.size	cap_cnode_cap_get_capCNodeGuardSize.part.77, .-cap_cnode_cap_get_capCNodeGuardSize.part.77
	.align	2
	.syntax unified
	.arm
	.type	cap_cnode_cap_get_capCNodeRadix.part.78, %function
cap_cnode_cap_get_capCNodeRadix.part.78:
.LFB792:
	.loc 4 1517 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1519 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC35
	.loc 4 1517 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1519 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC35
	ldr	r3, .L916
	mov	r2, #1520
	bl	_assert_fail
.LVL668:
.L917:
	.align	2
.L916:
	.word	.LANCHOR4+360
	.cfi_endproc
.LFE792:
	.size	cap_cnode_cap_get_capCNodeRadix.part.78, .-cap_cnode_cap_get_capCNodeRadix.part.78
	.align	2
	.syntax unified
	.arm
	.type	cap_cnode_cap_get_capCNodePtr.isra.79.part.80, %function
cap_cnode_cap_get_capCNodePtr.isra.79.part.80:
.LFB794:
	.loc 4 1543 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1545 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC35
	.loc 4 1543 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1545 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC35
	ldr	r3, .L920
	movw	r2, #1546
	bl	_assert_fail
.LVL669:
.L921:
	.align	2
.L920:
	.word	.LANCHOR4+392
	.cfi_endproc
.LFE794:
	.size	cap_cnode_cap_get_capCNodePtr.isra.79.part.80, .-cap_cnode_cap_get_capCNodePtr.isra.79.part.80
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_get_capCanSend.part.81, %function
cap_endpoint_cap_get_capCanSend.part.81:
.LFB795:
	.loc 4 1198 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1200 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC32
	.loc 4 1198 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1200 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC32
	ldr	r3, .L924
	movw	r2, #1201
	bl	_assert_fail
.LVL670:
.L925:
	.align	2
.L924:
	.word	.LANCHOR4+424
	.cfi_endproc
.LFE795:
	.size	cap_endpoint_cap_get_capCanSend.part.81, .-cap_endpoint_cap_get_capCanSend.part.81
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_get_capEPPtr.part.82, %function
cap_endpoint_cap_get_capEPPtr.part.82:
.LFB796:
	.loc 4 1132 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1134 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC32
	.loc 4 1132 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1134 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC32
	ldr	r3, .L928
	movw	r2, #1135
	bl	_assert_fail
.LVL671:
.L929:
	.align	2
.L928:
	.word	.LANCHOR4+456
	.cfi_endproc
.LFE796:
	.size	cap_endpoint_cap_get_capEPPtr.part.82, .-cap_endpoint_cap_get_capEPPtr.part.82
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_get_capCanGrant.part.83, %function
cap_endpoint_cap_get_capCanGrant.part.83:
.LFB797:
	.loc 4 1146 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1148 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC32
	.loc 4 1146 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1148 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC32
	ldr	r3, .L932
	movw	r2, #1149
	bl	_assert_fail
.LVL672:
.L933:
	.align	2
.L932:
	.word	.LANCHOR4+488
	.cfi_endproc
.LFE797:
	.size	cap_endpoint_cap_get_capCanGrant.part.83, .-cap_endpoint_cap_get_capCanGrant.part.83
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_invalid_get_stored_asid_valid.part.84, %function
pde_pde_invalid_get_stored_asid_valid.part.84:
.LFB798:
	.loc 4 790 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 792 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC36
	.loc 4 790 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 792 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC36
	ldr	r3, .L936
	movw	r2, #793
	bl	_assert_fail
.LVL673:
.L937:
	.align	2
.L936:
	.word	.LANCHOR4+524
	.cfi_endproc
.LFE798:
	.size	pde_pde_invalid_get_stored_asid_valid.part.84, .-pde_pde_invalid_get_stored_asid_valid.part.84
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_get_capEPBadge.isra.85.part.86, %function
cap_endpoint_cap_get_capEPBadge.isra.85.part.86:
.LFB800:
	.loc 4 1224 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1226 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC32
	.loc 4 1224 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1226 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC32
	ldr	r3, .L940
	movw	r2, #1227
	bl	_assert_fail
.LVL674:
.L941:
	.align	2
.L940:
	.word	.LANCHOR4+564
	.cfi_endproc
.LFE800:
	.size	cap_endpoint_cap_get_capEPBadge.isra.85.part.86, .-cap_endpoint_cap_get_capEPBadge.isra.85.part.86
	.align	2
	.syntax unified
	.arm
	.type	endpoint_cap_comparator, %function
endpoint_cap_comparator:
.LFB486:
	.loc 3 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL675:
	ldr	r3, [r0]
.LVL676:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 3 85 0
	mov	lr, r2
.LBB6143:
.LBB6144:
.LBB6145:
	.loc 4 1226 0
	and	r2, r3, #15
.LVL677:
	cmp	r2, #4
	bne	.L944
	ldr	r2, [r1]
	.loc 4 1229 0
	lsr	r3, r3, #4
.LVL678:
.LBE6145:
.LBE6144:
.LBB6147:
.LBB6148:
	.loc 4 1226 0
	and	ip, r2, #15
	cmp	ip, #4
	bne	.L944
	.loc 4 1229 0
	lsr	r2, r2, #4
.LVL679:
.LBE6148:
.LBE6147:
	.loc 3 88 0
	cmp	r2, r3
	beq	.L945
	.loc 3 88 0 is_stmt 0 discriminator 1
	bcs	.L951
	.loc 3 88 0
	mov	r0, #1
.LVL680:
.LBE6143:
	.loc 3 94 0 is_stmt 1
	pop	{r4, pc}
.LVL681:
.L951:
.LBB6150:
	.loc 3 88 0
	mvn	r0, #0
.LVL682:
	pop	{r4, pc}
.LVL683:
.L945:
.LBE6150:
.LBB6151:
.LBB6152:
	.loc 3 106 0
	mov	r3, lr
	mov	r2, #0
.LBE6152:
.LBE6151:
	.loc 3 94 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL684:
.LBB6154:
.LBB6153:
	.loc 3 106 0
	bx	r3
.LVL685:
.L944:
	.cfi_restore_state
.LBE6153:
.LBE6154:
.LBB6155:
.LBB6149:
.LBB6146:
	bl	cap_endpoint_cap_get_capEPBadge.isra.85.part.86
.LVL686:
.LBE6146:
.LBE6149:
.LBE6155:
	.cfi_endproc
.LFE486:
	.size	endpoint_cap_comparator, .-endpoint_cap_comparator
	.align	2
	.syntax unified
	.arm
	.type	fastpath_copy_mrs, %function
fastpath_copy_mrs:
.LFB300:
	.file 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c"
	.loc 29 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL687:
	.loc 29 188 0
	cmp	r0, #0
	bxeq	lr
	.loc 29 192 0
	cmp	r0, #4
	bhi	.L967
.LVL688:
.LBB6190:
.LBB6191:
	.loc 10 27 0
	ldr	r3, [r1, #8]
.LVL689:
.LBE6191:
.LBE6190:
	.loc 29 202 0
	cmp	r0, #1
.LBB6192:
.LBB6193:
	.loc 10 21 0
	str	r3, [r2, #8]
.LBE6193:
.LBE6192:
	.loc 29 202 0
	bxeq	lr
.LVL690:
.LBB6194:
.LBB6195:
	.loc 10 27 0
	ldr	r3, [r1, #12]
.LVL691:
.LBE6195:
.LBE6194:
	.loc 29 205 0
	cmp	r0, #2
.LBB6196:
.LBB6197:
	.loc 10 21 0
	str	r3, [r2, #12]
.LBE6197:
.LBE6196:
	.loc 29 205 0
	bxeq	lr
.LVL692:
.LBB6198:
.LBB6199:
	.loc 10 27 0
	ldr	r3, [r1, #16]
.LVL693:
.LBE6199:
.LBE6198:
	.loc 29 208 0
	cmp	r0, #4
.LBB6200:
.LBB6201:
	.loc 10 21 0
	str	r3, [r2, #16]
.LVL694:
.LBE6201:
.LBE6200:
.LBB6202:
.LBB6203:
	.loc 10 27 0
	ldreq	r3, [r1, #20]
.LVL695:
.LBE6203:
.LBE6202:
.LBB6204:
.LBB6205:
	.loc 10 21 0
	streq	r3, [r2, #20]
	bx	lr
.LVL696:
.L967:
.LBE6205:
.LBE6204:
.LBB6206:
.LBB6207:
	.loc 29 192 0
	movw	r1, #:lower16:.LC37
.LVL697:
	movw	r0, #:lower16:.LC38
.LVL698:
.LBE6207:
.LBE6206:
	.loc 29 187 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6209:
.LBB6208:
	.loc 29 192 0
	movt	r1, #:upper16:.LC37
	movt	r0, #:upper16:.LC38
	ldr	r3, .L968
	mov	r2, #192
.LVL699:
	bl	_assert_fail
.LVL700:
.L969:
	.align	2
.L968:
	.word	.LANCHOR4+596
.LBE6208:
.LBE6209:
	.cfi_endproc
.LFE300:
	.size	fastpath_copy_mrs, .-fastpath_copy_mrs
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_invalid_get_stored_hw_asid.part.89, %function
pde_pde_invalid_get_stored_hw_asid.part.89:
.LFB803:
	.loc 4 776 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 778 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC36
	.loc 4 776 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 778 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC36
	ldr	r3, .L972
	movw	r2, #779
	bl	_assert_fail
.LVL701:
.L973:
	.align	2
.L972:
	.word	.LANCHOR4+616
	.cfi_endproc
.LFE803:
	.size	pde_pde_invalid_get_stored_hw_asid.part.89, .-pde_pde_invalid_get_stored_hw_asid.part.89
	.section	.vectors.fastpath_call,"ax",%progbits
	.align	2
	.global	fastpath_call
	.syntax unified
	.arm
	.type	fastpath_call, %function
fastpath_call:
.LFB301:
	.loc 29 215 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL702:
	.loc 29 238 0
	movw	r4, #:lower16:ksCurThread
	.loc 29 242 0
	ubfx	r2, r1, #0, #9
	.loc 29 238 0
	movt	r4, #:upper16:ksCurThread
	.loc 29 215 0
	mov	r6, r1
.LVL703:
	.loc 29 238 0
	ldr	r1, [r4]
.LVL704:
	.loc 29 215 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 29 242 0
	ldr	r3, [r1, #88]
	ands	r3, r3, #7
	movne	r3, #1
	cmp	r2, #4
	orrhi	r3, r3, #1
	cmp	r3, #0
	bne	.L977
	.loc 29 248 0
	ldr	r3, [r1, #84]
	cmp	r3, #0
	beq	.L976
.LVL705:
	.loc 29 248 0 is_stmt 0 discriminator 1
	ldr	r3, [r3]
.LVL706:
	and	r3, r3, #3
	cmp	r3, #2
	beq	.L977
.LVL707:
.L976:
	.loc 29 254 0 is_stmt 1
	bic	r3, r1, #508
	bic	r3, r3, #3
	ldr	r5, [r3]
	ldr	r2, [r3, #4]
.LVL708:
.LBB6297:
.LBB6298:
	.loc 29 69 0
	and	ip, r5, #15
	cmp	ip, #10
	bne	.L977
.LVL709:
.LBB6299:
.LBB6300:
	.loc 4 1496 0
	ubfx	lr, r2, #23, #5
.LVL710:
.L979:
.LBE6300:
.LBE6299:
.LBB6301:
.LBB6302:
	.loc 4 1522 0
	ubfx	r2, r2, #18, #5
.LVL711:
.LBE6302:
.LBE6301:
	.loc 29 78 0
	lsl	ip, r0, lr
.LVL712:
	rsb	r7, r2, #32
	lsr	ip, ip, r7
.LVL713:
	bic	r5, r5, #31
.LVL714:
	.loc 29 81 0
	add	lr, lr, r2
.LVL715:
	.loc 29 78 0
	add	r2, r5, ip, lsl #4
.LVL716:
	.loc 29 80 0
	ldr	r5, [r5, ip, lsl #4]
	.loc 29 82 0
	cmp	lr, #31
	.loc 29 80 0
	ldr	r2, [r2, #4]
.LVL717:
	.loc 29 82 0
	and	ip, r5, #15
.LVL718:
	bls	.L1001
.L978:
.LVL719:
.LBE6298:
.LBE6297:
	.loc 29 257 0
	cmp	ip, #4
	bne	.L977
.LVL720:
	tst	r2, #1
	beq	.L977
.LVL721:
	.loc 29 263 0
	bic	ip, r2, #15
.LVL722:
	.loc 29 270 0
	ldr	lr, [ip]
	ldr	r0, [ip, #4]
.LVL723:
	and	lr, lr, #3
	cmp	lr, #2
	.loc 29 267 0
	bic	r7, r0, #15
.LVL724:
	.loc 29 270 0
	bne	.L977
	.loc 29 275 0
	bic	r0, r0, #508
	bic	r0, r0, #3
	ldr	r8, [r0, #16]
.LVL725:
	.loc 29 283 0
	and	lr, r8, #15
	cmp	lr, #5
	bne	.L977
.LVL726:
	.loc 29 291 0
	ldr	r9, [r7, #108]
	ldr	lr, [r1, #108]
	cmp	r9, lr
	bcc	.L977
	ldr	lr, [r7, #80]
.LVL727:
	ubfx	r2, r2, #2, #1
.LVL728:
	eor	r2, r2, #1
	.loc 29 296 0
	orr	r2, r2, lr
	tst	r2, #1
	bne	.L977
.LBB6304:
.LBB6305:
	.loc 29 90 0
	bic	r8, r8, #31
.LVL729:
.LBE6305:
.LBE6304:
	.loc 29 288 0
	add	r2, r8, #12288
	ldr	r9, [r2, #4032]
.LVL730:
.LBB6306:
.LBB6307:
	.loc 4 792 0
	ands	lr, r9, #3
	bne	.L1002
.LVL731:
.LBE6307:
.LBE6306:
	.loc 29 301 0
	tst	r9, #8388608
	beq	.L977
	.loc 29 317 0
	ldr	r2, [r7, #132]
.LVL732:
.LBB6309:
.LBB6310:
	.loc 29 152 0
	mov	r10, #0
.LBE6310:
.LBE6309:
	.loc 29 318 0
	cmp	r2, #0
.LBB6314:
.LBB6315:
	.loc 29 165 0
	str	r2, [ip, #4]
.LVL733:
.LBE6315:
.LBE6314:
.LBB6316:
.LBB6317:
	.loc 29 159 0
	streq	r2, [ip]
.LBE6317:
.LBE6316:
.LBB6318:
.LBB6319:
	.loc 29 123 0
	mov	ip, #5
.LVL734:
.LBE6319:
.LBE6318:
	.loc 29 319 0
	strne	lr, [r2, #136]
.LVL735:
	.loc 29 334 0
	add	r2, r0, #48
.LBB6321:
.LBB6311:
	.loc 29 151 0
	orr	lr, r1, #8
.LBE6311:
.LBE6321:
.LBB6322:
.LBB6320:
	.loc 29 123 0
	str	ip, [r1, #72]
.LVL736:
.LBE6320:
.LBE6322:
.LBB6323:
.LBB6312:
	.loc 29 151 0
	str	lr, [r0, #48]
.LBE6312:
.LBE6323:
.LBB6324:
.LBB6325:
	.loc 29 144 0
	orr	ip, r2, #1
	.loc 29 145 0
	mov	r0, #8
.LBE6325:
.LBE6324:
.LBB6328:
.LBB6313:
	.loc 29 152 0
	str	r10, [r2, #4]
.LVL737:
.LBE6313:
.LBE6328:
.LBB6329:
.LBB6326:
	.loc 29 144 0
	str	ip, [r3, #36]
.LBE6326:
.LBE6329:
	.loc 29 340 0
	mov	r2, r7
.LVL738:
.LBB6330:
.LBB6327:
	.loc 29 145 0
	str	r0, [r3, #32]
.LVL739:
.LBE6327:
.LBE6330:
	.loc 29 340 0
	and	r0, r6, #127
	bl	fastpath_copy_mrs
.LVL740:
.LBB6331:
.LBB6332:
	.loc 29 123 0
	mov	r3, #1
	str	r3, [r7, #72]
.LVL741:
.LBE6332:
.LBE6331:
.LBB6333:
.LBB6334:
.LBB6335:
.LBB6336:
.LBB6337:
.LBB6338:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6338:
.LBE6337:
.LBB6339:
.LBB6340:
	.loc 14 135 0
	ldr	r2, .L1003
	mov	r3, #57344
	movt	r3, 65535
	and	r2, r2, r3
	orr	r2, r2, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6340:
.LBE6339:
.LBB6341:
.LBB6342:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL742:
	.arm
	.syntax unified
.LBE6342:
.LBE6341:
.LBB6343:
.LBB6344:
.LBB6345:
	.loc 14 123 0
	lsr	r9, r9, #24
.LVL743:
	.syntax divided
@ 123 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r9, c13, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6346:
.LBB6347:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL744:
	.arm
	.syntax unified
.LBE6347:
.LBE6346:
.LBE6345:
.LBE6344:
.LBE6343:
.LBB6348:
.LBB6349:
	.loc 14 135 0
	add	r8, r8, #805306368
.LVL745:
	and	r3, r3, r8
	orr	r3, r3, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6349:
.LBE6348:
.LBB6350:
.LBB6351:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL746:
	.arm
	.syntax unified
.LBE6351:
.LBE6350:
.LBE6336:
.LBE6335:
	.loc 29 115 0
	ldr	r1, [r7, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	.loc 29 116 0
	str	r7, [r4]
.LVL747:
.LBB6352:
.LBB6353:
	.loc 29 99 0
	add	r2, sp, #4
.LBE6353:
.LBE6352:
	.loc 29 115 0
	str	r1, [r3]
.LBB6355:
.LBB6354:
	.loc 29 99 0
	.syntax divided
@ 99 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 1
	strex r10, r2, [r2]
@ 0 "" 2
.LVL748:
	.arm
	.syntax unified
.LBE6354:
.LBE6355:
.LBE6334:
.LBE6333:
.LBB6356:
.LBB6357:
	.loc 29 37 0
	lsr	r0, r5, #4
.LVL749:
	.loc 29 38 0
	bic	r1, r6, #3584
	.loc 29 39 0
	.syntax divided
@ 39 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 1
	add sp, r7, #60
	ldmdb sp, {r2-lr}^
	rfeia sp
	
@ 0 "" 2
.LVL750:
	.arm
	.syntax unified
.L983:
	b	.L983
.LVL751:
.L977:
.LBE6357:
.LBE6356:
	.loc 29 244 0
	mvn	r0, #0
	bl	slowpath
.LVL752:
.L1001:
.LBB6358:
.LBB6303:
	.loc 29 82 0
	cmp	ip, #10
	beq	.L979
	b	.L978
.LVL753:
.L1002:
.LBE6303:
.LBE6358:
.LBB6359:
.LBB6308:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL754:
.L1004:
	.align	2
.L1003:
	.word	.LANCHOR1+805306384
.LBE6308:
.LBE6359:
	.cfi_endproc
.LFE301:
	.size	fastpath_call, .-fastpath_call
	.section	.vectors.fastpath_reply_wait,"ax",%progbits
	.align	2
	.global	fastpath_reply_wait
	.syntax unified
	.arm
	.type	fastpath_reply_wait, %function
fastpath_reply_wait:
.LFB302:
	.loc 29 353 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL755:
	.loc 29 379 0
	movw	r4, #:lower16:ksCurThread
	.loc 29 383 0
	ubfx	r2, r1, #0, #9
	.loc 29 379 0
	movt	r4, #:upper16:ksCurThread
	.loc 29 353 0
	mov	r5, r1
.LVL756:
	.loc 29 379 0
	ldr	r1, [r4]
.LVL757:
	.loc 29 353 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 29 383 0
	ldr	r3, [r1, #88]
	ands	r3, r3, #7
	movne	r3, #1
	cmp	r2, #4
	orrhi	r3, r3, #1
	cmp	r3, #0
	bne	.L1007
	.loc 29 389 0
	bic	r3, r1, #508
	bic	r3, r3, #3
	ldr	ip, [r3]
	ldr	r2, [r3, #4]
.LVL758:
.LBB6447:
.LBB6448:
	.loc 29 69 0
	and	lr, ip, #15
	cmp	lr, #10
	bne	.L1007
.LVL759:
.LBB6449:
.LBB6450:
	.loc 4 1496 0
	ubfx	r6, r2, #23, #5
.LVL760:
.L1009:
.LBE6450:
.LBE6449:
.LBB6451:
.LBB6452:
	.loc 4 1522 0
	ubfx	r2, r2, #18, #5
.LVL761:
.LBE6452:
.LBE6451:
	.loc 29 78 0
	lsl	lr, r0, r6
.LVL762:
	rsb	r7, r2, #32
	lsr	lr, lr, r7
.LVL763:
	bic	ip, ip, #31
	.loc 29 81 0
	add	r6, r6, r2
.LVL764:
	.loc 29 78 0
	add	r2, ip, lr, lsl #4
.LVL765:
	.loc 29 80 0
	ldr	ip, [ip, lr, lsl #4]
	.loc 29 82 0
	cmp	r6, #31
	.loc 29 80 0
	ldr	r2, [r2, #4]
.LVL766:
	.loc 29 82 0
	and	lr, ip, #15
.LVL767:
	bls	.L1039
.L1008:
.LVL768:
.LBE6448:
.LBE6447:
	.loc 29 393 0
	cmp	lr, #4
	bne	.L1007
.LVL769:
	tst	r2, #2
	beq	.L1007
	.loc 29 399 0
	ldr	r0, [r1, #84]
.LVL770:
	cmp	r0, #0
	beq	.L1010
.LVL771:
	.loc 29 399 0 is_stmt 0 discriminator 1
	ldr	r0, [r0]
.LVL772:
	and	r0, r0, #3
	cmp	r0, #2
	beq	.L1007
.LVL773:
.L1010:
.LBB6454:
.LBB6455:
	.loc 4 1137 0 is_stmt 1
	bic	lr, r2, #15
.LVL774:
.LBE6455:
.LBE6454:
	.loc 29 406 0
	add	ip, r3, #48
.LVL775:
	.loc 29 410 0
	ldr	r6, [lr]
	.loc 29 407 0
	ldr	r0, [r3, #48]
.LVL776:
	.loc 29 410 0
	and	r6, r6, #3
	cmp	r6, #1
	beq	.L1007
	.loc 29 415 0
	cmp	r0, #0
	beq	.L1007
.LVL777:
.LBB6456:
.LBB6457:
	.loc 4 1453 0
	and	r6, r0, #15
	cmp	r6, #8
	beq	.L1011
	bl	cap_reply_cap_get_capTCBPtr.isra.69.part.70
.LVL778:
.L1007:
.LBE6457:
.LBE6456:
	.loc 29 385 0
	mvn	r0, #1
	bl	slowpath
.LVL779:
.L1039:
.LBB6458:
.LBB6453:
	.loc 29 82 0
	cmp	lr, #10
	beq	.L1009
	b	.L1008
.LVL780:
.L1011:
.LBE6453:
.LBE6458:
	.loc 29 420 0
	bic	r6, r0, #31
.LVL781:
	.loc 29 423 0
	bic	r0, r0, #508
.LVL782:
	.loc 29 434 0
	ldr	r8, [r6, #88]
	.loc 29 423 0
	bic	r0, r0, #3
.LVL783:
	.loc 29 426 0
	ldr	r7, [r0, #16]
.LVL784:
	.loc 29 434 0
	tst	r8, #7
.LBB6459:
.LBB6460:
	.loc 29 90 0
	bic	r9, r7, #31
.LVL785:
.LBE6460:
.LBE6459:
	.loc 29 434 0
	bne	.L1007
	.loc 29 439 0
	and	r7, r7, #15
.LVL786:
	cmp	r7, #5
	bne	.L1007
.LVL787:
	.loc 29 447 0
	ldr	r8, [r6, #108]
	ldr	r7, [r1, #108]
	cmp	r8, r7
	bcc	.L1007
	.loc 29 444 0
	add	r7, r9, #12288
	ldr	r8, [r7, #4032]
.LVL788:
.LBB6461:
.LBB6462:
	.loc 4 792 0
	tst	r8, #3
	bne	.L1040
.LVL789:
.LBE6462:
.LBE6461:
	.loc 29 452 0
	tst	r8, #8388608
	beq	.L1007
.LVL790:
	and	r2, r2, #1
.LVL791:
.LBB6464:
.LBB6465:
	.loc 29 131 0
	orr	r7, lr, #3
	eor	r2, r2, #1
	str	r7, [r1, #72]
.LVL792:
.LBE6465:
.LBE6464:
.LBB6466:
.LBB6467:
	.loc 29 137 0
	str	r2, [r1, #80]
.LVL793:
.LBE6467:
.LBE6466:
	.loc 29 490 0
	mov	r7, #0
.LBB6468:
.LBB6469:
	.loc 4 384 0
	ldr	r2, [lr]
.LVL794:
.LBE6469:
.LBE6468:
.LBB6470:
.LBB6471:
	.loc 29 144 0
	mov	r10, #1
.LBE6471:
.LBE6470:
	.loc 29 475 0
	bics	r2, r2, #15
.LVL795:
	.loc 29 482 0
	strne	r1, [r2, #132]
	.loc 29 476 0
	streq	r2, [r1, #136]
.LVL796:
	.loc 29 483 0
	strne	r2, [r1, #136]
.LBB6474:
.LBB6475:
	.loc 29 159 0
	orr	r2, r1, #2
.LVL797:
	str	r2, [lr]
.LVL798:
.LBE6475:
.LBE6474:
.LBB6476:
.LBB6472:
	.loc 29 145 0
	mov	r2, #8
.LBE6472:
.LBE6476:
.LBB6477:
.LBB6478:
	.loc 29 165 0
	streq	r1, [lr, #4]
.LBE6478:
.LBE6477:
	.loc 29 490 0
	str	r7, [r1, #132]
.LVL799:
.LBB6479:
.LBB6473:
	.loc 29 144 0
	str	r10, [r0, #36]
	.loc 29 145 0
	str	r2, [r0, #32]
.LVL800:
.LBE6473:
.LBE6479:
	.loc 29 501 0
	mov	r2, r6
	.loc 29 494 0
	str	r7, [r3, #48]
	.loc 29 501 0
	and	r0, r5, #127
.LVL801:
	.loc 29 494 0
	str	r7, [ip, #4]
.LVL802:
	.loc 29 501 0
	bl	fastpath_copy_mrs
.LVL803:
.LBB6480:
.LBB6481:
	.loc 29 123 0
	str	r10, [r6, #72]
.LVL804:
.LBE6481:
.LBE6480:
.LBB6482:
.LBB6483:
.LBB6484:
.LBB6485:
.LBB6486:
.LBB6487:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6487:
.LBE6486:
.LBB6488:
.LBB6489:
	.loc 14 135 0
	ldr	r2, .L1041
	mov	r3, #57344
	movt	r3, 65535
	and	r2, r2, r3
	orr	r2, r2, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6489:
.LBE6488:
.LBB6490:
.LBB6491:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL805:
	.arm
	.syntax unified
.LBE6491:
.LBE6490:
.LBB6492:
.LBB6493:
.LBB6494:
	.loc 14 123 0
	lsr	r8, r8, #24
.LVL806:
	.syntax divided
@ 123 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r8, c13, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB6495:
.LBB6496:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL807:
	.arm
	.syntax unified
.LBE6496:
.LBE6495:
.LBE6494:
.LBE6493:
.LBE6492:
.LBB6497:
.LBB6498:
	.loc 14 135 0
	add	r9, r9, #805306368
.LVL808:
	and	r3, r3, r9
	orr	r3, r3, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE6498:
.LBE6497:
.LBB6499:
.LBB6500:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL809:
	.arm
	.syntax unified
.LBE6500:
.LBE6499:
.LBE6485:
.LBE6484:
	.loc 29 115 0
	ldr	r0, [r6, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	.loc 29 116 0
	str	r6, [r4]
.LVL810:
.LBB6501:
.LBB6502:
	.loc 29 99 0
	add	r1, sp, #4
	mov	r2, r7
.LBE6502:
.LBE6501:
	.loc 29 115 0
	str	r0, [r3]
.LBB6504:
.LBB6503:
	.loc 29 99 0
	.syntax divided
@ 99 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 1
	strex r2, r1, [r1]
@ 0 "" 2
.LVL811:
	.arm
	.syntax unified
.LBE6503:
.LBE6504:
.LBE6483:
.LBE6482:
.LBB6505:
.LBB6506:
	.loc 29 37 0
	mov	r0, r7
	.loc 29 38 0
	bic	r1, r5, #3584
	.loc 29 39 0
	.syntax divided
@ 39 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/fastpath/fastpath.c" 1
	add sp, r6, #60
	ldmdb sp, {r2-lr}^
	rfeia sp
	
@ 0 "" 2
	.arm
	.syntax unified
.L1015:
	b	.L1015
.LVL812:
.L1040:
.LBE6506:
.LBE6505:
.LBB6507:
.LBB6463:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL813:
.L1042:
	.align	2
.L1041:
	.word	.LANCHOR1+805306384
.LBE6463:
.LBE6507:
	.cfi_endproc
.LFE302:
	.size	fastpath_reply_wait, .-fastpath_reply_wait
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_new.part.90, %function
cap_frame_cap_new.part.90:
.LFB804:
	.loc 4 1588 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL814:
	.loc 4 1595 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC39
	.loc 4 1588 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1595 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC39
	ldr	r3, .L1045
	movw	r2, #1595
	bl	_assert_fail
.LVL815:
.L1046:
	.align	2
.L1045:
	.word	.LANCHOR4+652
	.cfi_endproc
.LFE804:
	.size	cap_frame_cap_new.part.90, .-cap_frame_cap_new.part.90
	.align	2
	.syntax unified
	.arm
	.type	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92, %function
cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92:
.LFB806:
	.loc 4 1884 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1886 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC40
	.loc 4 1884 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1886 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC40
	ldr	r3, .L1049
	movw	r2, #1887
	bl	_assert_fail
.LVL816:
.L1050:
	.align	2
.L1049:
	.word	.LANCHOR4+672
	.cfi_endproc
.LFE806:
	.size	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92, .-cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_coarse_get_address.part.93, %function
pde_pde_coarse_get_address.part.93:
.LFB807:
	.loc 4 826 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 828 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC41
	.loc 4 826 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 828 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC41
	ldr	r3, .L1053
	movw	r2, #829
	bl	_assert_fail
.LVL817:
.L1054:
	.align	2
.L1053:
	.word	.LANCHOR4+712
	.cfi_endproc
.LFE807:
	.size	pde_pde_coarse_get_address.part.93, .-pde_pde_coarse_get_address.part.93
	.align	2
	.syntax unified
	.arm
	.type	cap_untyped_cap_get_capPtr.isra.94.part.95, %function
cap_untyped_cap_get_capPtr.isra.94.part.95:
.LFB809:
	.loc 4 1089 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1091 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC42
	.loc 4 1089 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1091 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC42
	ldr	r3, .L1057
	movw	r2, #1092
	bl	_assert_fail
.LVL818:
.L1058:
	.align	2
.L1057:
	.word	.LANCHOR4+740
	.cfi_endproc
.LFE809:
	.size	cap_untyped_cap_get_capPtr.isra.94.part.95, .-cap_untyped_cap_get_capPtr.isra.94.part.95
	.align	2
	.syntax unified
	.arm
	.type	cap_zombie_cap_get_capZombieType.isra.96.part.97, %function
cap_zombie_cap_get_capZombieType.isra.96.part.97:
.LFB811:
	.loc 4 1987 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1989 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC43
	.loc 4 1987 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1989 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC43
	ldr	r3, .L1061
	movw	r2, #1990
	bl	_assert_fail
.LVL819:
.L1062:
	.align	2
.L1061:
	.word	.LANCHOR4+768
	.cfi_endproc
.LFE811:
	.size	cap_zombie_cap_get_capZombieType.isra.96.part.97, .-cap_zombie_cap_get_capZombieType.isra.96.part.97
	.align	2
	.syntax unified
	.arm
	.type	cap_zombie_cap_get_capZombieID.part.99, %function
cap_zombie_cap_get_capZombieID.part.99:
.LFB813:
	.loc 4 1961 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1963 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC43
	.loc 4 1961 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1963 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC43
	ldr	r3, .L1065
	movw	r2, #1964
	bl	_assert_fail
.LVL820:
.L1066:
	.align	2
.L1065:
	.word	.LANCHOR4+804
	.cfi_endproc
.LFE813:
	.size	cap_zombie_cap_get_capZombieID.part.99, .-cap_zombie_cap_get_capZombieID.part.99
	.text
	.align	2
	.syntax unified
	.arm
	.type	cap_zombie_cap_get_capZombiePtr, %function
cap_zombie_cap_get_capZombiePtr:
.LFB189:
	.file 30 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/object/structures.h"
	.loc 30 121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 30 121 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
.LVL821:
.LBB6514:
.LBB6515:
.LBB6516:
.LBB6517:
	.loc 4 1989 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L1072
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL822:
.LBE6517:
.LBE6516:
	.loc 30 106 0
	cmp	r3, #32
	andne	r3, r3, #31
	mvnne	r0, #0
	addne	r3, r3, #1
	mvneq	r3, #31
	lslne	r3, r0, r3
.LBE6515:
.LBE6514:
	.loc 30 123 0
	ldr	r0, [sp, #4]
	.loc 30 124 0
	and	r0, r0, r3
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL823:
.L1072:
	.cfi_restore_state
.LBB6521:
.LBB6520:
.LBB6519:
.LBB6518:
	bl	cap_zombie_cap_get_capZombieType.isra.96.part.97
.LVL824:
.LBE6518:
.LBE6519:
.LBE6520:
.LBE6521:
	.cfi_endproc
.LFE189:
	.size	cap_zombie_cap_get_capZombiePtr, .-cap_zombie_cap_get_capZombiePtr
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFBasePtr.isra.101.part.102, %function
cap_frame_cap_get_capFBasePtr.isra.101.part.102:
.LFB816:
	.loc 4 1764 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1766 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	.loc 4 1764 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1766 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1075
	movw	r2, #1767
	bl	_assert_fail
.LVL825:
.L1076:
	.align	2
.L1075:
	.word	.LANCHOR4+836
	.cfi_endproc
.LFE816:
	.size	cap_frame_cap_get_capFBasePtr.isra.101.part.102, .-cap_frame_cap_get_capFBasePtr.isra.101.part.102
	.align	2
	.syntax unified
	.arm
	.type	cap_page_table_cap_get_capPTBasePtr.isra.103.part.104, %function
cap_page_table_cap_get_capPTBasePtr.isra.103.part.104:
.LFB818:
	.loc 4 1853 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1855 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC45
	.loc 4 1853 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1855 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC45
	ldr	r3, .L1079
	mov	r2, #1856
	bl	_assert_fail
.LVL826:
.L1080:
	.align	2
.L1079:
	.word	.LANCHOR4+868
	.cfi_endproc
.LFE818:
	.size	cap_page_table_cap_get_capPTBasePtr.isra.103.part.104, .-cap_page_table_cap_get_capPTBasePtr.isra.103.part.104
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capPtr, %function
cap_get_capPtr:
.LFB210:
	.loc 30 346 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6544:
.LBB6545:
	.loc 4 997 0
	and	r2, r0, #14
.LBE6545:
.LBE6544:
	.loc 30 346 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB6549:
.LBB6546:
	.loc 4 997 0
	cmp	r2, #14
.LBE6546:
.LBE6549:
	.loc 30 346 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 30 346 0
	stm	sp, {r0, r1}
.LVL827:
.LBB6550:
.LBB6547:
	.loc 4 997 0
	beq	.L1082
	.loc 4 998 0
	and	r2, r0, #15
.LBE6547:
.LBE6550:
	.loc 30 351 0
	sub	r3, r2, #2
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L1083
.L1085:
	.word	.L1087
	.word	.L1083
	.word	.L1086
	.word	.L1083
	.word	.L1087
	.word	.L1083
	.word	.L1111
	.word	.L1083
	.word	.L1089
	.word	.L1083
	.word	.L1090
	.word	.L1083
	.word	.L1111
.L1086:
.LVL828:
	ldr	r0, [sp, #4]
.LVL829:
.L1087:
	.loc 30 359 0
	bic	r0, r0, #15
.L1115:
	.loc 30 385 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1082:
	.cfi_restore_state
.LBB6551:
.LBB6548:
	.loc 4 999 0
	uxtb	r2, r0
.LBE6548:
.LBE6551:
	.loc 30 351 0
	sub	r1, r2, #2
	cmp	r1, #60
	ldrls	pc, [pc, r1, asl #2]
	b	.L1083
.L1092:
	.word	.L1091
	.word	.L1083
	.word	.L1093
	.word	.L1083
	.word	.L1094
	.word	.L1083
	.word	.L1111
	.word	.L1083
	.word	.L1095
	.word	.L1083
	.word	.L1096
	.word	.L1083
	.word	.L1111
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1111
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1097
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1083
	.word	.L1111
.L1111:
	.loc 30 371 0
	mov	r0, #0
	.loc 30 385 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1090:
	.cfi_restore_state
	.loc 30 365 0
	bic	r0, r0, #508
	bic	r0, r0, #3
	.loc 30 385 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1089:
	.cfi_restore_state
	.loc 30 362 0
	bic	r0, r0, #31
	.loc 30 385 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1083:
	.cfi_restore_state
.LBB6552:
.LBB6553:
	.file 31 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/structures.h"
	.loc 31 139 0
	cmp	r2, #3
	beq	.L1104
	cmp	r2, #5
	beq	.L1105
	cmp	r2, #1
	beq	.L1122
	.loc 31 153 0
	movw	r1, #:lower16:.LC46
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC46
	movt	r0, #:upper16:.LC47
	ldr	r3, .L1123
	mov	r2, #153
	bl	_assert_fail
.LVL830:
.L1097:
.LBE6553:
.LBE6552:
	.loc 30 368 0
	ldm	sp, {r0, r1}
	.loc 30 385 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 30 368 0
	b	cap_zombie_cap_get_capZombiePtr
.LVL831:
.L1091:
	.cfi_restore_state
.LBB6567:
.LBB6568:
	.loc 4 1091 0
	and	r3, r0, #15
	cmp	r3, #2
	beq	.L1087
	bl	cap_untyped_cap_get_capPtr.isra.94.part.95
.LVL832:
.L1093:
.LBE6568:
.LBE6567:
.LBB6569:
.LBB6570:
	.loc 4 1134 0
	and	r3, r0, #15
	ldr	r0, [sp, #4]
.LVL833:
	cmp	r3, #4
	beq	.L1087
	bl	cap_endpoint_cap_get_capEPPtr.part.82
.LVL834:
.L1094:
.LBE6570:
.LBE6569:
.LBB6571:
.LBB6572:
	.loc 4 1356 0
	and	r3, r0, #15
	cmp	r3, #6
	beq	.L1087
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL835:
.L1095:
.LBE6572:
.LBE6571:
.LBB6573:
.LBB6574:
	.loc 4 1545 0
	and	r3, r0, #15
	cmp	r3, #10
	beq	.L1089
	bl	cap_cnode_cap_get_capCNodePtr.isra.79.part.80
.LVL836:
.L1096:
.LBE6574:
.LBE6573:
.LBB6575:
.LBB6576:
	.loc 4 1576 0
	and	r3, r0, #15
	cmp	r3, #12
	beq	.L1090
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL837:
.L1122:
.LBE6576:
.LBE6575:
.LBB6577:
.LBB6566:
.LBB6554:
.LBB6555:
	.loc 4 1766 0
	and	r3, r0, #15
	cmp	r3, #1
.LBE6555:
.LBE6554:
	.loc 31 142 0
	biceq	r0, r0, #-16777216
	biceq	r0, r0, #15
	lsleq	r0, r0, #8
.LBB6557:
.LBB6556:
	.loc 4 1766 0
	beq	.L1115
	bl	cap_frame_cap_get_capFBasePtr.isra.101.part.102
.LVL838:
.L1104:
.LBE6556:
.LBE6557:
.LBB6558:
.LBB6559:
	.loc 4 1855 0
	and	r3, r0, #15
	cmp	r3, #3
.LBE6559:
.LBE6558:
	.loc 31 145 0
	biceq	r0, r0, #1020
	biceq	r0, r0, #3
.LBB6561:
.LBB6560:
	.loc 4 1855 0
	beq	.L1115
	bl	cap_page_table_cap_get_capPTBasePtr.isra.103.part.104
.LVL839:
.L1105:
.LBE6560:
.LBE6561:
.LBB6562:
.LBB6563:
	.loc 4 1886 0
	and	r3, r0, #15
	cmp	r3, #5
.LBE6563:
.LBE6562:
	.loc 31 148 0
	biceq	r0, r0, #16320
	biceq	r0, r0, #63
.LBB6565:
.LBB6564:
	.loc 4 1886 0
	beq	.L1115
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL840:
.L1124:
	.align	2
.L1123:
	.word	.LANCHOR4+904
.LBE6564:
.LBE6565:
.LBE6566:
.LBE6577:
	.cfi_endproc
.LFE210:
	.size	cap_get_capPtr, .-cap_get_capPtr
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_page_directory_cap_new.part.106, %function
cap_page_directory_cap_new.part.106:
.LFB820:
	.loc 4 1867 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL841:
	.loc 4 1874 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC48
	.loc 4 1867 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1874 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC48
	ldr	r3, .L1127
	movw	r2, #1874
	bl	_assert_fail
.LVL842:
.L1128:
	.align	2
.L1127:
	.word	.LANCHOR4+924
	.cfi_endproc
.LFE820:
	.size	cap_page_directory_cap_new.part.106, .-cap_page_directory_cap_new.part.106
	.align	2
	.syntax unified
	.arm
	.type	cap_page_table_cap_new.part.107, %function
cap_page_table_cap_new.part.107:
.LFB821:
	.loc 4 1778 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL843:
	.loc 4 1785 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC49
	.loc 4 1778 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1785 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC49
	ldr	r3, .L1131
	movw	r2, #1785
	bl	_assert_fail
.LVL844:
.L1132:
	.align	2
.L1131:
	.word	.LANCHOR4+952
	.cfi_endproc
.LFE821:
	.size	cap_page_table_cap_new.part.107, .-cap_page_table_cap_new.part.107
	.align	2
	.syntax unified
	.arm
	.type	cap_page_table_cap_get_capPTMappedObject.part.108, %function
cap_page_table_cap_get_capPTMappedObject.part.108:
.LFB822:
	.loc 4 1801 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1803 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC45
	.loc 4 1801 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1803 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC45
	ldr	r3, .L1135
	movw	r2, #1804
	bl	_assert_fail
.LVL845:
.L1136:
	.align	2
.L1135:
	.word	.LANCHOR4+976
	.cfi_endproc
.LFE822:
	.size	cap_page_table_cap_get_capPTMappedObject.part.108, .-cap_page_table_cap_get_capPTMappedObject.part.108
	.align	2
	.syntax unified
	.arm
	.type	cap_page_table_cap_get_capPTMappedIndex.part.109, %function
cap_page_table_cap_get_capPTMappedIndex.part.109:
.LFB823:
	.loc 4 1827 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1829 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC45
	.loc 4 1827 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1829 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC45
	ldr	r3, .L1139
	movw	r2, #1830
	bl	_assert_fail
.LVL846:
.L1140:
	.align	2
.L1139:
	.word	.LANCHOR4+1020
	.cfi_endproc
.LFE823:
	.size	cap_page_table_cap_get_capPTMappedIndex.part.109, .-cap_page_table_cap_get_capPTMappedIndex.part.109
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_coarse_new.part.110, %function
pde_pde_coarse_new.part.110:
.LFB824:
	.loc 4 804 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL847:
	.loc 4 810 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC50
	.loc 4 804 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 810 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC50
	ldr	r3, .L1143
	movw	r2, #810
	bl	_assert_fail
.LVL848:
.L1144:
	.align	2
.L1143:
	.word	.LANCHOR4+1060
	.cfi_endproc
.LFE824:
	.size	pde_pde_coarse_new.part.110, .-pde_pde_coarse_new.part.110
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFMappedObject.part.113, %function
cap_frame_cap_get_capFMappedObject.part.113:
.LFB827:
	.loc 31 87 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6578:
.LBB6579:
	.loc 4 1622 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
.LBE6579:
.LBE6578:
	.loc 31 87 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6581:
.LBB6580:
	.loc 4 1622 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1147
	movw	r2, #1623
	bl	_assert_fail
.LVL849:
.L1148:
	.align	2
.L1147:
	.word	.LANCHOR4+1080
.LBE6580:
.LBE6581:
	.cfi_endproc
.LFE827:
	.size	cap_frame_cap_get_capFMappedObject.part.113, .-cap_frame_cap_get_capFMappedObject.part.113
	.text
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFMappedObject, %function
cap_frame_cap_get_capFMappedObject:
.LFB194:
	.loc 31 88 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 31 88 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldm	sp, {r0, r3}
.LVL850:
.LBB6586:
.LBB6587:
	.loc 4 1622 0
	and	r2, r0, #15
	cmp	r2, #1
	bne	.L1152
.LBE6587:
.LBE6586:
	.loc 31 89 0
	bic	r3, r3, #4080
.LVL851:
	ubfx	r0, r0, #24, #2
	bic	r3, r3, #15
	.loc 31 90 0
	add	r0, r3, r0, lsl #10
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL852:
.L1152:
	.cfi_restore_state
	bl	cap_frame_cap_get_capFMappedObject.part.113
.LVL853:
	.cfi_endproc
.LFE194:
	.size	cap_frame_cap_get_capFMappedObject, .-cap_frame_cap_get_capFMappedObject
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFMappedIndex.part.114, %function
cap_frame_cap_get_capFMappedIndex.part.114:
.LFB828:
	.loc 4 1659 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1661 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	.loc 4 1659 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1661 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1155
	movw	r2, #1662
	bl	_assert_fail
.LVL854:
.L1156:
	.align	2
.L1155:
	.word	.LANCHOR4+1120
	.cfi_endproc
.LFE828:
	.size	cap_frame_cap_get_capFMappedIndex.part.114, .-cap_frame_cap_get_capFMappedIndex.part.114
	.align	2
	.syntax unified
	.arm
	.type	pte_pte_small_new.part.115, %function
pte_pte_small_new.part.115:
.LFB829:
	.loc 4 2149 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL855:
	.loc 4 2155 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC51
	.loc 4 2149 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2155 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC51
	ldr	r3, .L1159
	movw	r2, #2155
	bl	_assert_fail
.LVL856:
.L1160:
	.align	2
.L1159:
	.word	.LANCHOR4+1156
	.cfi_endproc
.LFE829:
	.size	pte_pte_small_new.part.115, .-pte_pte_small_new.part.115
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_section_new.part.117, %function
pde_pde_section_new.part.117:
.LFB831:
	.loc 4 854 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL857:
	.loc 4 860 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC52
	.loc 4 854 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 860 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC52
	ldr	r3, .L1163
	mov	r2, #860
	bl	_assert_fail
.LVL858:
.L1164:
	.align	2
.L1163:
	.word	.LANCHOR4+1176
	.cfi_endproc
.LFE831:
	.size	pde_pde_section_new.part.117, .-pde_pde_section_new.part.117
	.align	2
	.syntax unified
	.arm
	.type	vm_attributes_new.part.118, %function
vm_attributes_new.part.118:
.LFB832:
	.loc 4 306 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL859:
	.loc 4 312 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC53
	.loc 4 306 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 312 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC53
	ldr	r3, .L1167
	mov	r2, #312
	bl	_assert_fail
.LVL860:
.L1168:
	.align	2
.L1167:
	.word	.LANCHOR4+1196
	.cfi_endproc
.LFE832:
	.size	vm_attributes_new.part.118, .-vm_attributes_new.part.118
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFVMRights.isra.119.part.120, %function
cap_frame_cap_get_capFVMRights.isra.119.part.120:
.LFB834:
	.loc 4 1699 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1701 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	.loc 4 1699 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1701 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1171
	movw	r2, #1702
	bl	_assert_fail
.LVL861:
.L1172:
	.align	2
.L1171:
	.word	.LANCHOR4+1216
	.cfi_endproc
.LFE834:
	.size	cap_frame_cap_get_capFVMRights.isra.119.part.120, .-cap_frame_cap_get_capFVMRights.isra.119.part.120
	.text
	.align	2
	.global	Arch_hasRecycleRights
	.syntax unified
	.arm
	.type	Arch_hasRecycleRights, %function
Arch_hasRecycleRights:
.LFB446:
	.loc 23 175 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 23 175 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r0, [sp]
.LVL862:
.LBB6592:
.LBB6593:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r0
	.loc 4 998 0
	andne	r3, r0, #15
.LBE6593:
.LBE6592:
	.loc 23 176 0
	cmp	r3, #1
	bne	.L1180
.LVL863:
.LBB6594:
.LBB6595:
	.loc 4 1701 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L1182
.LBE6595:
.LBE6594:
	.loc 23 178 0
	ubfx	r0, r0, #27, #2
	sub	r0, r0, #3
	clz	r0, r0
	lsr	r0, r0, #5
	.loc 23 183 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1180:
	.cfi_restore_state
	.loc 23 181 0
	mov	r0, #1
	.loc 23 183 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1182:
	.cfi_restore_state
.LBB6597:
.LBB6596:
	bl	cap_frame_cap_get_capFVMRights.isra.119.part.120
.LVL864:
.LBE6596:
.LBE6597:
	.cfi_endproc
.LFE446:
	.size	Arch_hasRecycleRights, .-Arch_hasRecycleRights
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_get_capFSize.isra.121.part.122, %function
cap_frame_cap_get_capFSize.isra.121.part.122:
.LFB836:
	.loc 4 1685 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1687 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	.loc 4 1685 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1687 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1185
	movw	r2, #1688
	bl	_assert_fail
.LVL865:
.L1186:
	.align	2
.L1185:
	.word	.LANCHOR4+1248
	.cfi_endproc
.LFE836:
	.size	cap_frame_cap_get_capFSize.isra.121.part.122, .-cap_frame_cap_get_capFSize.isra.121.part.122
	.text
	.align	2
	.global	lookupIPCBuffer
	.syntax unified
	.arm
	.type	lookupIPCBuffer, %function
lookupIPCBuffer:
.LFB327:
	.loc 11 324 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL866:
	.loc 11 330 0
	bic	r2, r1, #508
	.loc 11 324 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 330 0
	bic	r2, r2, #3
	.loc 11 329 0
	ldr	r1, [r1, #120]
.LVL867:
	.loc 11 330 0
	ldr	r3, [r2, #64]
.LVL868:
.LBB6611:
.LBB6612:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL869:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE6612:
.LBE6611:
	.loc 11 332 0
	cmp	r2, #1
	bne	.L1199
.LVL870:
.LBB6613:
.LBB6614:
	.loc 4 1701 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L1206
	.loc 4 1704 0
	ubfx	r2, r3, #27, #2
.LVL871:
.LBE6614:
.LBE6613:
	.loc 11 337 0
	cmp	r2, #3
	bne	.L1207
.LVL872:
.L1192:
.LBB6616:
.LBB6617:
.LBB6618:
	.loc 4 1769 0
	bic	r2, r3, #-16777216
.LBE6618:
.LBE6617:
.LBB6620:
.LBB6621:
	.loc 28 113 0
	lsr	r3, r3, #29
.LVL873:
.LBE6621:
.LBE6620:
.LBB6626:
.LBB6619:
	.loc 4 1769 0
	bic	r2, r2, #15
	lsl	r0, r2, #8
.LVL874:
.LBE6619:
.LBE6626:
.LBB6627:
.LBB6624:
	.loc 28 113 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1193
.L1195:
	.word	.L1194
	.word	.L1201
	.word	.L1197
	.word	.L1198
.L1201:
	movw	r3, #65535
.L1196:
.LVL875:
.LBE6624:
.LBE6627:
	.loc 11 344 0
	and	r3, r3, r1
	add	r0, r3, r0
	pop	{r4, pc}
.LVL876:
.L1194:
.LBB6628:
.LBB6625:
	.loc 28 113 0
	movw	r3, #4095
	b	.L1196
.L1197:
	movw	r3, #65535
	movt	r3, 15
	b	.L1196
.L1198:
	mvn	r3, #-16777216
	b	.L1196
.L1193:
.LVL877:
.LBB6622:
.LBB6623:
	.loc 28 127 0
	movw	r1, #:lower16:.LC22
.LVL878:
	movw	r0, #:lower16:.LC23
	movt	r1, #:upper16:.LC22
	movt	r0, #:upper16:.LC23
	ldr	r3, .L1208
	mov	r2, #127
	bl	_fail
.LVL879:
.L1199:
.LBE6623:
.LBE6622:
.LBE6625:
.LBE6628:
.LBE6616:
	.loc 11 333 0
	mov	r0, #0
.LVL880:
	.loc 11 348 0
	pop	{r4, pc}
.LVL881:
.L1207:
	.loc 11 337 0 discriminator 1
	cmp	r0, #0
	cmpeq	r2, #2
	moveq	r0, #1
.LVL882:
	movne	r0, #0
	beq	.L1192
	pop	{r4, pc}
.LVL883:
.L1206:
.LBB6629:
.LBB6615:
	bl	cap_frame_cap_get_capFVMRights.isra.119.part.120
.LVL884:
.L1209:
	.align	2
.L1208:
	.word	.LANCHOR4+20
.LBE6615:
.LBE6629:
	.cfi_endproc
.LFE327:
	.size	lookupIPCBuffer, .-lookupIPCBuffer
	.align	2
	.global	handleFaultReply
	.syntax unified
	.arm
	.type	handleFaultReply, %function
handleFaultReply:
.LFB271:
	.file 32 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/api/faults.c"
	.loc 32 19 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL885:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 32 19 0
	mov	r6, r0
.LBB6630:
.LBB6631:
	.loc 10 27 0
	ldr	r0, [r1, #4]
.LVL886:
.LBE6631:
.LBE6630:
	.loc 32 19 0
	mov	r7, r1
.LVL887:
.LBB6632:
.LBB6633:
.LBB6634:
.LBB6635:
	.file 33 "./api/types_gen.h"
	.loc 33 89 0
	and	r3, r0, #127
.LBE6635:
.LBE6634:
	.file 34 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/types.h"
	.loc 34 83 0
	cmp	r3, #120
.LVL888:
	movls	r5, r3
.LBE6633:
.LBE6632:
	.loc 32 31 0
	ldr	r3, [r6, #88]
.LBB6639:
.LBB6638:
.LBB6636:
.LBB6637:
	.loc 33 101 0
	bichi	r0, r0, #127
.LVL889:
	movhi	r5, #120
	.loc 33 102 0
	orrhi	r0, r0, r5
.LVL890:
.LBE6637:
.LBE6636:
.LBE6638:
.LBE6639:
	.loc 32 31 0
	and	r3, r3, #7
.LBB6640:
.LBB6641:
	.loc 33 38 0
	lsr	r4, r0, #12
.LVL891:
.LBE6641:
.LBE6640:
	.loc 32 31 0
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1212
.LVL892:
.L1214:
	.word	.L1223
	.word	.L1223
	.word	.L1215
	.word	.L1216
.L1223:
	.loc 32 33 0
	mov	r0, #1
.LVL893:
	.loc 32 80 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL894:
.L1215:
.LBB6642:
	.loc 32 44 0
	mov	r0, #0
	bl	lookupIPCBuffer
.LVL895:
	.loc 32 47 0
	cmp	r5, #0
	beq	.L1219
.LVL896:
.LBB6643:
.LBB6644:
	.loc 10 21 0
	ldr	r3, [r7, #8]
.LBE6644:
.LBE6643:
	.loc 32 47 0
	cmp	r5, #1
.LBB6652:
.LBB6645:
	.loc 10 21 0
	str	r3, [r6]
.LVL897:
.LBE6645:
.LBE6652:
	.loc 32 47 0
	movls	r3, #1
	bls	.L1220
.LVL898:
.LBB6653:
.LBB6646:
	.loc 10 21 0
	ldr	r3, [r7, #12]
.LBE6646:
.LBE6653:
	.loc 32 47 0
	cmp	r5, #2
.LBB6654:
.LBB6647:
	.loc 10 21 0
	str	r3, [r6, #4]
.LVL899:
.LBE6647:
.LBE6654:
	.loc 32 47 0
	movls	r3, #2
	bls	.L1220
.LVL900:
.LBB6655:
.LBB6648:
	.loc 10 21 0
	ldr	r3, [r7, #16]
.LBE6648:
.LBE6655:
	.loc 32 47 0
	cmp	r5, #3
.LBB6656:
.LBB6649:
	.loc 10 21 0
	str	r3, [r6, #8]
.LVL901:
.LBE6649:
.LBE6656:
	.loc 32 47 0
	movls	r3, #3
.LVL902:
.LBB6657:
.LBB6650:
	.loc 10 21 0
	ldrhi	r2, [r7, #20]
.LBE6650:
.LBE6657:
	.loc 32 47 0
	movhi	r3, #4
.LBB6658:
.LBB6651:
	.loc 10 21 0
	strhi	r2, [r6, #12]
.LVL903:
.L1220:
.LBE6651:
.LBE6658:
	.loc 32 53 0
	cmp	r0, #0
	beq	.L1219
.LVL904:
	.loc 32 54 0 discriminator 1
	cmp	r5, r3
	bls	.L1219
.LVL905:
	.loc 32 55 0
	movw	r2, #:lower16:.LANCHOR4
	.loc 32 56 0
	add	lr, r3, #1
	.loc 32 55 0
	movt	r2, #:upper16:.LANCHOR4
	.loc 32 56 0
	ldr	r1, [r0, lr, lsl #2]
	.loc 32 55 0
	add	r7, r2, r3, lsl #2
.LVL906:
	.loc 32 56 0
	lsl	ip, lr, #2
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL907:
.LBB6659:
.LBB6660:
	.loc 10 21 0
	and	r8, r1, #-134217728
	cmp	r7, #16
	orreq	r1, r8, #80
.LBE6660:
.LBE6659:
	.loc 32 54 0
	cmp	lr, r5
.LBB6681:
.LBB6661:
	.loc 10 21 0
	str	r1, [r6, r7, lsl #2]
.LVL908:
.LBE6661:
.LBE6681:
	.loc 32 54 0
	bcs	.L1219
.LVL909:
	.loc 32 55 0
	add	r1, r2, ip
	.loc 32 56 0
	add	ip, r0, ip
	.loc 32 55 0
	ldr	r7, [r1, #1276]
	.loc 32 56 0
	add	r1, r3, #2
	ldr	lr, [ip, #4]
.LVL910:
.LBB6682:
.LBB6662:
	.loc 10 21 0
	cmp	r7, #16
	and	r8, lr, #-134217728
	orreq	lr, r8, #80
.LBE6662:
.LBE6682:
	.loc 32 54 0
	cmp	r5, r1
.LBB6683:
.LBB6663:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL911:
.LBE6663:
.LBE6683:
	.loc 32 54 0
	bls	.L1219
.LVL912:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #8]
	add	r1, r3, #3
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL913:
.LBB6684:
.LBB6664:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6664:
.LBE6684:
	.loc 32 54 0
	cmp	r5, r1
.LBB6685:
.LBB6665:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL914:
.LBE6665:
.LBE6685:
	.loc 32 54 0
	bls	.L1219
.LVL915:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #12]
	add	r1, r3, #4
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL916:
.LBB6686:
.LBB6666:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6666:
.LBE6686:
	.loc 32 54 0
	cmp	r5, r1
.LBB6687:
.LBB6667:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL917:
.LBE6667:
.LBE6687:
	.loc 32 54 0
	bls	.L1219
.LVL918:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #16]
	add	r1, r3, #5
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL919:
.LBB6688:
.LBB6668:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6668:
.LBE6688:
	.loc 32 54 0
	cmp	r5, r1
.LBB6689:
.LBB6669:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL920:
.LBE6669:
.LBE6689:
	.loc 32 54 0
	bls	.L1219
.LVL921:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #20]
	add	r1, r3, #6
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL922:
.LBB6690:
.LBB6670:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6670:
.LBE6690:
	.loc 32 54 0
	cmp	r5, r1
.LBB6691:
.LBB6671:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL923:
.LBE6671:
.LBE6691:
	.loc 32 54 0
	bls	.L1219
.LVL924:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #24]
	add	r1, r3, #7
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL925:
.LBB6692:
.LBB6672:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6672:
.LBE6692:
	.loc 32 54 0
	cmp	r5, r1
.LBB6693:
.LBB6673:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL926:
.LBE6673:
.LBE6693:
	.loc 32 54 0
	bls	.L1219
.LVL927:
	.loc 32 55 0
	add	r7, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #28]
	add	r1, r3, #8
	.loc 32 55 0
	ldr	r7, [r7, #1276]
.LVL928:
.LBB6694:
.LBB6674:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r7, #16
	orreq	lr, r8, #80
.LBE6674:
.LBE6694:
	.loc 32 54 0
	cmp	r5, r1
	movhi	r8, #1
	movls	r8, #0
	cmp	r1, #11
	movhi	r8, #0
.LBB6695:
.LBB6675:
	.loc 10 21 0
	str	lr, [r6, r7, lsl #2]
.LVL929:
.LBE6675:
.LBE6695:
	.loc 32 54 0
	cmp	r8, #0
	beq	.L1219
.LVL930:
	.loc 32 55 0
	add	r1, r2, r1, lsl #2
	.loc 32 56 0
	ldr	lr, [ip, #32]
	add	r7, r3, #9
	.loc 32 55 0
	ldr	r1, [r1, #1276]
.LVL931:
.LBB6696:
.LBB6676:
	.loc 10 21 0
	and	r8, lr, #-134217728
	cmp	r1, #16
	orreq	lr, r8, #80
.LBE6676:
.LBE6696:
	.loc 32 54 0
	cmp	r5, r7
	movhi	r8, #1
	movls	r8, #0
	cmp	r7, #11
	movhi	r8, #0
.LBB6697:
.LBB6677:
	.loc 10 21 0
	str	lr, [r6, r1, lsl #2]
.LVL932:
.LBE6677:
.LBE6697:
	.loc 32 54 0
	cmp	r8, #0
	beq	.L1219
.LVL933:
	.loc 32 55 0
	add	r1, r2, r7, lsl #2
	.loc 32 56 0
	ldr	ip, [ip, #36]
	add	r2, r3, #10
	.loc 32 55 0
	ldr	r1, [r1, #1276]
.LVL934:
.LBB6698:
.LBB6678:
	.loc 10 21 0
	and	r3, ip, #-134217728
	cmp	r1, #16
	orreq	ip, r3, #80
.LBE6678:
.LBE6698:
	.loc 32 54 0
	cmp	r5, r2
	movhi	r3, #1
	movls	r3, #0
	cmp	r2, #11
	movhi	r3, #0
.LBB6699:
.LBB6679:
	.loc 10 21 0
	str	ip, [r6, r1, lsl #2]
.LVL935:
.LBE6679:
.LBE6699:
	.loc 32 54 0
	cmp	r3, #0
.LVL936:
.LBB6700:
.LBB6701:
	.file 35 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine/registerset.h"
	.loc 35 121 0
	ldrne	r3, [r0, #48]
	andne	r3, r3, #-134217728
	orrne	r3, r3, #80
.LVL937:
.LBE6701:
.LBE6700:
.LBB6702:
.LBB6680:
	.loc 10 21 0
	strne	r3, [r6, #64]
.LVL938:
.L1219:
.LBE6680:
.LBE6702:
.LBE6642:
	.loc 32 61 0
	clz	r0, r4
	lsr	r0, r0, #5
	pop	{r4, r5, r6, r7, r8, pc}
.LVL939:
.L1216:
.LBB6703:
	.loc 32 69 0 discriminator 1
	cmp	r5, #0
	beq	.L1219
.LVL940:
.LBB6704:
.LBB6705:
	.loc 10 21 0
	ldr	r3, [r1, #8]
.LBE6705:
.LBE6704:
	.loc 32 69 0
	cmp	r5, #1
.LBB6710:
.LBB6706:
	.loc 10 21 0
	str	r3, [r6, #68]
.LVL941:
.LBE6706:
.LBE6710:
	.loc 32 69 0
	bls	.L1219
.LVL942:
.LBB6711:
.LBB6707:
	.loc 10 21 0
	ldr	r3, [r1, #12]
.LBE6707:
.LBE6711:
	.loc 32 69 0
	cmp	r5, #2
.LBB6712:
.LBB6708:
	.loc 10 21 0
	str	r3, [r6, #52]
.LVL943:
.LBE6708:
.LBE6712:
	.loc 32 69 0
.LVL944:
.LBB6713:
.LBB6709:
	.loc 10 21 0 discriminator 3
	ldrhi	r3, [r1, #16]
	andhi	r3, r3, #-134217728
	orrhi	r3, r3, #80
	strhi	r3, [r6, #64]
.LVL945:
.LBE6709:
.LBE6713:
	b	.L1219
.LVL946:
.L1212:
.LBE6703:
	.loc 32 78 0
	movw	r1, #:lower16:.LC54
.LVL947:
	movw	r0, #:lower16:.LC55
	movt	r1, #:upper16:.LC54
	movt	r0, #:upper16:.LC55
	ldr	r3, .L1243
	mov	r2, #78
	bl	_fail
.LVL948:
.L1244:
	.align	2
.L1243:
	.word	.LANCHOR4+1324
	.cfi_endproc
.LFE271:
	.size	handleFaultReply, .-handleFaultReply
	.align	2
	.global	Arch_sameRegionAs
	.syntax unified
	.arm
	.type	Arch_sameRegionAs, %function
Arch_sameRegionAs:
.LFB447:
	.loc 23 188 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 23 188 0
	add	ip, sp, #16
	stm	sp, {r2, r3}
	mov	r4, r2
	stmdb	ip, {r0, r1}
	ldr	r0, [sp, #8]
.LVL949:
.LBB6714:
.LBB6715:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r1, r0
	.loc 4 998 0
	andne	r1, r0, #15
.LBE6715:
.LBE6714:
	.loc 23 189 0
	cmp	r1, #3
	beq	.L1249
	cmp	r1, #5
	beq	.L1250
	cmp	r1, #1
	beq	.L1270
.L1267:
	.loc 23 216 0
	mov	r0, #0
.LVL950:
.L1248:
	.loc 23 217 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL951:
.L1270:
	.cfi_restore_state
.LBB6716:
.LBB6717:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r7, r2
.LVL952:
	.loc 4 998 0
	andne	r7, r2, #15
.LBE6717:
.LBE6716:
	.loc 23 191 0
	cmp	r7, #1
	bne	.L1267
.LVL953:
.LBB6718:
.LBB6719:
.LBB6720:
	.loc 4 1766 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L1255
	.loc 4 1769 0
	movw	r5, #65520
.LBE6720:
.LBE6719:
.LBB6724:
.LBB6725:
	.loc 4 1766 0
	and	r3, r2, #15
.LBE6725:
.LBE6724:
.LBB6729:
.LBB6721:
	.loc 4 1769 0
	movt	r5, 255
.LBE6721:
.LBE6729:
.LBB6730:
.LBB6726:
	.loc 4 1766 0
	cmp	r3, #1
.LBE6726:
.LBE6730:
.LBB6731:
.LBB6722:
	.loc 4 1769 0
	and	r6, r0, r5
	lsl	r6, r6, #8
.LVL954:
.LBE6722:
.LBE6731:
.LBB6732:
.LBB6727:
	.loc 4 1766 0
	bne	.L1255
	.loc 4 1769 0
	and	r5, r5, r2
.LBE6727:
.LBE6732:
	.loc 23 195 0
	lsr	r0, r0, #29
.LBB6733:
.LBB6728:
	.loc 4 1769 0
	lsl	r5, r5, #8
.LVL955:
.LBE6728:
.LBE6733:
	.loc 23 195 0
	sub	r8, r6, #1
	bl	pageBitsForSize
.LVL956:
	add	r8, r8, r7, lsl r0
.LVL957:
	.loc 23 196 0
	lsr	r0, r4, #29
	bl	pageBitsForSize
.LVL958:
	sub	r3, r5, #1
	add	r0, r3, r7, lsl r0
.LVL959:
	.loc 23 197 0
	cmp	r8, r0
	cmpcs	r0, r5
	movcs	r0, #1
.LVL960:
	movcc	r0, #0
	cmp	r5, r6
	movcc	r0, #0
	andcs	r0, r0, #1
	b	.L1248
.LVL961:
.L1250:
.LBE6718:
.LBB6735:
.LBB6736:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r2
.LVL962:
	.loc 4 998 0
	andne	r3, r2, #15
.LBE6736:
.LBE6735:
	.loc 23 209 0
	cmp	r3, #5
	bne	.L1267
.LVL963:
.LBB6737:
.LBB6738:
	.loc 4 1886 0
	and	r3, r0, #15
	cmp	r3, #5
	bne	.L1263
.LBE6738:
.LBE6737:
.LBB6742:
.LBB6743:
	and	r2, r2, #15
.LVL964:
.LBE6743:
.LBE6742:
.LBB6746:
.LBB6739:
	.loc 4 1889 0
	mov	r3, #49152
.LBE6739:
.LBE6746:
.LBB6747:
.LBB6744:
	.loc 4 1886 0
	cmp	r2, #5
.LBE6744:
.LBE6747:
.LBB6748:
.LBB6740:
	.loc 4 1889 0
	movt	r3, 65535
	and	r0, r0, r3
.LVL965:
.LBE6740:
.LBE6748:
.LBB6749:
.LBB6745:
	.loc 4 1886 0
	bne	.L1263
.LVL966:
.LBE6745:
.LBE6749:
	.loc 23 210 0
	and	r3, r3, r4
	sub	r0, r3, r0
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L1248
.LVL967:
.L1249:
.LBB6750:
.LBB6751:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r2
.LVL968:
	.loc 4 998 0
	andne	r3, r2, #15
.LBE6751:
.LBE6750:
	.loc 23 202 0
	cmp	r3, #3
	bne	.L1267
.LVL969:
.LBB6752:
.LBB6753:
	.loc 4 1855 0
	and	r3, r0, #15
	cmp	r3, #3
	bne	.L1259
.LBE6753:
.LBE6752:
.LBB6757:
.LBB6758:
	and	r3, r2, #15
.LBE6758:
.LBE6757:
.LBB6761:
.LBB6754:
	.loc 4 1858 0
	mov	r2, #64512
.LVL970:
.LBE6754:
.LBE6761:
.LBB6762:
.LBB6759:
	.loc 4 1855 0
	cmp	r3, #3
.LBE6759:
.LBE6762:
.LBB6763:
.LBB6755:
	.loc 4 1858 0
	movt	r2, 65535
	and	r3, r0, r2
.LVL971:
.LBE6755:
.LBE6763:
.LBB6764:
.LBB6760:
	.loc 4 1855 0
	bne	.L1259
.LVL972:
.LBE6760:
.LBE6764:
	.loc 23 203 0
	and	r0, r4, r2
	sub	r0, r0, r3
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L1248
.L1259:
.LBB6765:
.LBB6756:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.103.part.104
.LVL973:
.L1255:
.LBE6756:
.LBE6765:
.LBB6766:
.LBB6734:
.LBB6723:
	bl	cap_frame_cap_get_capFBasePtr.isra.101.part.102
.LVL974:
.L1263:
.LBE6723:
.LBE6734:
.LBE6766:
.LBB6767:
.LBB6741:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL975:
.LBE6741:
.LBE6767:
	.cfi_endproc
.LFE447:
	.size	Arch_sameRegionAs, .-Arch_sameRegionAs
	.align	2
	.global	Arch_sameObjectAs
	.syntax unified
	.arm
	.type	Arch_sameObjectAs, %function
Arch_sameObjectAs:
.LFB448:
	.loc 23 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 23 222 0
	stm	sp, {r2, r3}
.LBB6768:
.LBB6769:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
.LBE6769:
.LBE6768:
	.loc 23 222 0
	add	ip, sp, #8
.LBB6771:
.LBB6770:
	.loc 4 999 0
	uxtbeq	r3, r0
	.loc 4 998 0
	andne	r3, r0, #15
.LBE6770:
.LBE6771:
	.loc 23 222 0
	stm	ip, {r0, r1}
	mov	lr, sp
	.loc 23 223 0
	cmp	r3, #1
	mov	r1, r0
.LVL976:
	beq	.L1284
.L1274:
	.loc 23 230 0
	ldm	lr, {r2, r3}
.LVL977:
	ldm	ip, {r0, r1}
	.loc 23 231 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL978:
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL979:
	.loc 23 230 0
	b	Arch_sameRegionAs
.LVL980:
.L1284:
	.cfi_restore_state
.LBB6772:
.LBB6773:
	.loc 4 997 0 discriminator 1
	and	r3, r2, #14
	cmp	r3, #14
	.loc 4 999 0 discriminator 1
	uxtbeq	r3, r2
.LVL981:
	.loc 4 998 0 discriminator 1
	andne	r3, r2, #15
.LBE6773:
.LBE6772:
	.loc 23 223 0 discriminator 1
	cmp	r3, #1
	bne	.L1274
.LVL982:
.LBB6774:
.LBB6775:
	.loc 4 1766 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L1278
.LBE6775:
.LBE6774:
.LBB6779:
.LBB6780:
	and	r0, r2, #15
.LBE6780:
.LBE6779:
.LBB6783:
.LBB6776:
	.loc 4 1769 0
	movw	r3, #65520
	movt	r3, 255
.LBE6776:
.LBE6783:
.LBB6784:
.LBB6781:
	.loc 4 1766 0
	cmp	r0, #1
.LBE6781:
.LBE6784:
.LBB6785:
.LBB6777:
	.loc 4 1769 0
	and	r0, r1, r3
	lsl	r0, r0, #8
.LVL983:
.LBE6777:
.LBE6785:
.LBB6786:
.LBB6782:
	.loc 4 1766 0
	bne	.L1278
.LVL984:
.LBE6782:
.LBE6786:
	.loc 23 226 0
	and	r3, r3, r2
	cmp	r0, r3, lsl #8
	movne	r0, #0
	beq	.L1285
.L1282:
	.loc 23 231 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1285:
	.cfi_restore_state
	.loc 23 226 0
	lsr	r1, r1, #29
	cmp	r1, r2, lsr #29
	moveq	r0, #1
	movne	r0, #0
	b	.L1282
.L1278:
.LBB6787:
.LBB6778:
	bl	cap_frame_cap_get_capFBasePtr.isra.101.part.102
.LVL985:
.LBE6778:
.LBE6787:
	.cfi_endproc
.LFE448:
	.size	Arch_sameObjectAs, .-Arch_sameObjectAs
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capExtraComp, %function
cap_get_capExtraComp:
.LFB215:
	.file 36 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/object/capspace.h"
	.loc 36 133 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6818:
.LBB6819:
	.loc 4 997 0
	and	r2, r0, #14
.LBE6819:
.LBE6818:
	.loc 36 133 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB6822:
.LBB6820:
	.loc 4 997 0
	cmp	r2, #14
.LBE6820:
.LBE6822:
	.loc 36 133 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
.LBB6823:
.LBB6821:
	.loc 4 999 0
	uxtbeq	r2, r0
	.loc 4 998 0
	andne	r2, r0, #15
.LBE6821:
.LBE6823:
	.loc 36 133 0
	stm	sp, {r0, r1}
	mov	r4, r0
	.loc 36 134 0
	cmp	r2, #1
	mov	r5, r1
.LVL986:
	beq	.L1290
	cmp	r2, #3
	bne	.L1305
.LVL987:
.LBB6824:
.LBB6825:
	.loc 4 1803 0
	and	r4, r0, #15
	cmp	r4, #3
	bne	.L1306
	.loc 4 1806 0
	bic	r0, r1, #4080
.LVL988:
	bic	r0, r0, #15
.LBE6825:
.LBE6824:
	.loc 36 150 0
	cmp	r0, #0
	beq	.L1289
.LVL989:
.L1303:
	.loc 36 153 0
	ubfx	r5, r5, #0, #12
.LVL990:
	add	r0, r0, r5, lsl #2
	.loc 36 157 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL991:
	@ sp needed
	pop	{r4, r5, pc}
.LVL992:
.L1305:
	.cfi_restore_state
	.loc 36 155 0
	mov	r0, #0
.LVL993:
.L1289:
	.loc 36 157 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL994:
	@ sp needed
	pop	{r4, r5, pc}
.LVL995:
.L1290:
	.cfi_restore_state
	.loc 36 136 0
	ldm	sp, {r0, r1}
.LVL996:
	bl	cap_frame_cap_get_capFMappedObject
.LVL997:
	cmp	r0, #0
	beq	.L1289
.LVL998:
.LBB6827:
.LBB6828:
	.loc 4 1687 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L1307
.LVL999:
.LBE6828:
.LBE6827:
	.loc 36 139 0
	lsr	r4, r4, #29
.LVL1000:
	cmp	r4, #3
	ldrls	pc, [pc, r4, asl #2]
	b	.L1293
.L1295:
	.word	.L1303
	.word	.L1303
	.word	.L1303
	.word	.L1303
.L1293:
.LBB6830:
.LBB6831:
	.loc 36 147 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC57
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC57
	ldr	r3, .L1308
	mov	r2, #147
	bl	_fail
.LVL1001:
.L1307:
.LBE6831:
.LBE6830:
.LBB6832:
.LBB6829:
	bl	cap_frame_cap_get_capFSize.isra.121.part.122
.LVL1002:
.L1306:
.LBE6829:
.LBE6832:
.LBB6833:
.LBB6826:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL1003:
.L1309:
	.align	2
.L1308:
	.word	.LANCHOR4+1344
.LBE6826:
.LBE6833:
	.cfi_endproc
.LFE215:
	.size	cap_get_capExtraComp, .-cap_get_capExtraComp
	.align	2
	.syntax unified
	.arm
	.type	cap_extra_comp, %function
cap_extra_comp:
.LFB488:
	.loc 3 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1004:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 110 0
	mov	r4, r1
.LBB6834:
	.loc 3 111 0
	ldm	r0, {r0, r1}
.LVL1005:
	bl	cap_get_capExtraComp
.LVL1006:
	mov	r5, r0
.LVL1007:
	ldm	r4, {r0, r1}
.LVL1008:
	bl	cap_get_capExtraComp
.LVL1009:
	cmp	r5, r0
	beq	.L1312
	.loc 3 111 0 is_stmt 0 discriminator 1
	bls	.L1315
	.loc 3 111 0
	mov	r0, #1
.LVL1010:
.LBE6834:
	.loc 3 112 0 is_stmt 1
	pop	{r4, r5, r6, pc}
.LVL1011:
.L1312:
.LBB6835:
	.loc 3 111 0
	mov	r0, #0
.LVL1012:
	pop	{r4, r5, r6, pc}
.LVL1013:
.L1315:
	mvn	r0, #0
.LVL1014:
	pop	{r4, r5, r6, pc}
.LBE6835:
	.cfi_endproc
.LFE488:
	.size	cap_extra_comp, .-cap_extra_comp
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_coarse_ptr_get_address.part.124, %function
pde_pde_coarse_ptr_get_address.part.124:
.LFB838:
	.loc 4 840 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1015:
	.loc 4 842 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC58
	.loc 4 840 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 842 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC58
	ldr	r3, .L1318
	movw	r2, #843
	bl	_assert_fail
.LVL1016:
.L1319:
	.align	2
.L1318:
	.word	.LANCHOR4+1368
	.cfi_endproc
.LFE838:
	.size	pde_pde_coarse_ptr_get_address.part.124, .-pde_pde_coarse_ptr_get_address.part.124
	.text
	.align	2
	.global	lookupPTSlot
	.syntax unified
	.arm
	.type	lookupPTSlot, %function
lookupPTSlot:
.LFB329:
	.loc 11 358 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1017:
.LBB6858:
.LBB6859:
	.loc 4 753 0
	lsr	r3, r2, #20
	ldr	r3, [r1, r3, lsl #2]
.LVL1018:
.LBE6859:
.LBE6858:
	.loc 11 364 0
	and	r1, r3, #3
.LVL1019:
	cmp	r1, #1
	bne	.L1323
.LVL1020:
.LBB6860:
	.loc 11 381 0
	bic	r3, r3, #1020
.LVL1021:
	ubfx	r2, r2, #12, #8
.LVL1022:
	bic	r3, r3, #3
	mov	r1, #0
	add	r3, r3, #-805306368
	str	r2, [r0, #8]
.LVL1023:
	stm	r0, {r1, r3}
.LBE6860:
	.loc 11 383 0
	bx	lr
.LVL1024:
.L1323:
.LBB6861:
.LBB6862:
	.loc 11 365 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r2, #0
.LVL1025:
	movt	r3, #:upper16:current_lookup_fault
	mov	ip, #81
	.loc 11 370 0
	mov	r1, #2
	.loc 11 365 0
	str	ip, [r3]
	str	r2, [r3, #4]
.LVL1026:
	.loc 11 370 0
	str	r2, [r0, #4]
	str	r2, [r0, #8]
.LVL1027:
	str	r1, [r0]
	bx	lr
.LBE6862:
.LBE6861:
	.cfi_endproc
.LFE329:
	.size	lookupPTSlot, .-lookupPTSlot
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	fault_vm_fault_new.part.126, %function
fault_vm_fault_new.part.126:
.LFB840:
	.loc 4 596 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1028:
	.loc 4 604 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC59
	.loc 4 596 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 604 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC59
	ldr	r3, .L1326
	mov	r2, #604
	bl	_assert_fail
.LVL1029:
.L1327:
	.align	2
.L1326:
	.word	.LANCHOR4+1400
	.cfi_endproc
.LFE840:
	.size	fault_vm_fault_new.part.126, .-fault_vm_fault_new.part.126
	.align	2
	.syntax unified
	.arm
	.type	cap_page_table_cap_set_capPTMappedObject.part.132, %function
cap_page_table_cap_set_capPTMappedObject.part.132:
.LFB846:
	.loc 4 1815 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1030:
	.loc 4 1816 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC45
	.loc 4 1815 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1816 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC45
	ldr	r3, .L1330
	movw	r2, #1817
	bl	_assert_fail
.LVL1031:
.L1331:
	.align	2
.L1330:
	.word	.LANCHOR4+1420
	.cfi_endproc
.LFE846:
	.size	cap_page_table_cap_set_capPTMappedObject.part.132, .-cap_page_table_cap_set_capPTMappedObject.part.132
	.text
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_section_get_size.part.133, %function
pde_pde_section_get_size.part.133:
.LFB847:
	.loc 4 931 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 933 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC60
	.loc 4 931 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 933 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC60
	ldr	r3, .L1334
	movw	r2, #934
	bl	_assert_fail
.LVL1032:
.L1335:
	.align	2
.L1334:
	.word	.LANCHOR4+1464
	.cfi_endproc
.LFE847:
	.size	pde_pde_section_get_size.part.133, .-pde_pde_section_get_size.part.133
	.align	2
	.syntax unified
	.arm
	.type	pde_pde_section_get_address.part.134, %function
pde_pde_section_get_address.part.134:
.LFB848:
	.loc 4 903 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 905 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC60
	.loc 4 903 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 905 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC60
	ldr	r3, .L1338
	movw	r2, #906
	bl	_assert_fail
.LVL1033:
.L1339:
	.align	2
.L1338:
	.word	.LANCHOR4+1492
	.cfi_endproc
.LFE848:
	.size	pde_pde_section_get_address.part.134, .-pde_pde_section_get_address.part.134
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	pte_pte_small_get_address.part.135, %function
pte_pte_small_get_address.part.135:
.LFB849:
	.loc 4 2189 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 2191 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC61
	.loc 4 2189 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2191 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC61
	ldr	r3, .L1342
	mov	r2, #2192
	bl	_assert_fail
.LVL1034:
.L1343:
	.align	2
.L1342:
	.word	.LANCHOR4+1520
	.cfi_endproc
.LFE849:
	.size	pte_pte_small_get_address.part.135, .-pte_pte_small_get_address.part.135
	.text
	.align	2
	.syntax unified
	.arm
	.type	pte_get_pteType.part.136, %function
pte_get_pteType.part.136:
.LFB850:
	.loc 31 167 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB6867:
.LBB6868:
	.loc 4 2123 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC62
.LBE6868:
.LBE6867:
	.loc 31 167 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6870:
.LBB6869:
	.loc 4 2123 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC62
	ldr	r3, .L1346
	movw	r2, #2124
	bl	_assert_fail
.LVL1035:
.L1347:
	.align	2
.L1346:
	.word	.LANCHOR4+1548
.LBE6869:
.LBE6870:
	.cfi_endproc
.LFE850:
	.size	pte_get_pteType.part.136, .-pte_get_pteType.part.136
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	pte_pte_large_get_address.part.137, %function
pte_pte_large_get_address.part.137:
.LFB851:
	.loc 4 2079 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 2081 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC62
	.loc 4 2079 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2081 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC62
	ldr	r3, .L1350
	movw	r2, #2082
	bl	_assert_fail
.LVL1036:
.L1351:
	.align	2
.L1350:
	.word	.LANCHOR4+1576
	.cfi_endproc
.LFE851:
	.size	pte_pte_large_get_address.part.137, .-pte_pte_large_get_address.part.137
	.align	2
	.syntax unified
	.arm
	.type	getSyscallArg.part.141, %function
getSyscallArg.part.141:
.LFB855:
	.file 37 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/api/syscall.h"
	.loc 37 27 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1037:
	.loc 37 33 0
	movw	r1, #:lower16:.LC63
	movw	r0, #:lower16:.LC64
	.loc 37 27 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 37 33 0
	movt	r1, #:upper16:.LC63
	movt	r0, #:upper16:.LC64
	ldr	r3, .L1354
	mov	r2, #33
	bl	_assert_fail
.LVL1038:
.L1355:
	.align	2
.L1354:
	.word	.LANCHOR4+1604
	.cfi_endproc
.LFE855:
	.size	getSyscallArg.part.141, .-getSyscallArg.part.141
	.align	2
	.syntax unified
	.arm
	.type	message_info_new.part.143, %function
message_info_new.part.143:
.LFB857:
	.loc 33 14 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1039:
	.loc 33 20 0
	movw	r1, #:lower16:.LC65
	movw	r0, #:lower16:.LC66
	.loc 33 14 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 33 20 0
	movt	r1, #:upper16:.LC65
	movt	r0, #:upper16:.LC66
	ldr	r3, .L1358
	mov	r2, #20
	bl	_assert_fail
.LVL1040:
.L1359:
	.align	2
.L1358:
	.word	.LANCHOR4+1620
	.cfi_endproc
.LFE857:
	.size	message_info_new.part.143, .-message_info_new.part.143
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_set_capFMappedIndex.part.144, %function
cap_frame_cap_set_capFMappedIndex.part.144:
.LFB858:
	.loc 4 1673 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1041:
	.loc 4 1674 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	.loc 4 1673 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1674 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L1362
	movw	r2, #1675
	bl	_assert_fail
.LVL1042:
.L1363:
	.align	2
.L1362:
	.word	.LANCHOR4+1640
	.cfi_endproc
.LFE858:
	.size	cap_frame_cap_set_capFMappedIndex.part.144, .-cap_frame_cap_set_capFMappedIndex.part.144
	.text
	.align	2
	.global	ackInterrupt
	.syntax unified
	.arm
	.type	ackInterrupt, %function
ackInterrupt:
.LFB427:
	.loc 18 357 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1043:
	.loc 18 358 0
	movw	r1, #:lower16:.LANCHOR2
	.loc 18 357 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 18 358 0
	movt	r1, #:upper16:.LANCHOR2
	ldr	ip, [r1, #8]
	ubfx	r2, ip, #0, #10
	cmp	r2, #1020
	bcs	.L1365
	.loc 18 358 0 is_stmt 0 discriminator 2
	cmp	r2, r0
	bne	.L1365
.LVL1044:
.LBB6885:
.LBB6886:
	.loc 18 157 0 is_stmt 1
	lsr	r0, r2, #4
.LVL1045:
	.loc 18 159 0
	ldr	lr, [r1]
.LBE6886:
.LBE6885:
	.loc 18 359 0
	and	r3, ip, #15
.LBB6889:
.LBB6887:
	.loc 18 159 0
	add	r0, r0, #768
.LBE6887:
.LBE6889:
	.loc 18 359 0
	lsl	r3, r3, #1
.LBB6890:
.LBB6888:
	.loc 18 159 0
	ldr	r0, [lr, r0, lsl #2]
.LBE6888:
.LBE6890:
	.loc 18 359 0
	add	r3, r3, #1
	lsr	r3, r0, r3
	tst	r3, #1
	beq	.L1367
.LVL1046:
.LBB6891:
.LBB6892:
	.loc 18 179 0
	lsr	r2, r2, #5
.LVL1047:
	.loc 18 182 0
	and	r0, ip, #31
	mov	r3, #1
	lsl	r3, r3, r0
	add	r2, r2, #160
.LVL1048:
	str	r3, [lr, r2, lsl #2]
.LVL1049:
.L1367:
.LBE6892:
.LBE6891:
	.loc 18 362 0
	ldr	r3, [r1, #4]
	.loc 18 363 0
	movw	r2, #1023
	str	r2, [r1, #8]
	.loc 18 362 0
	str	ip, [r3, #16]
	pop	{r4, pc}
.LVL1050:
.L1365:
.LBB6893:
.LBB6894:
	.loc 18 358 0
	movw	r1, #:lower16:.LC67
	movw	r0, #:lower16:.LC68
.LVL1051:
	movt	r1, #:upper16:.LC67
	movt	r0, #:upper16:.LC68
	ldr	r3, .L1372
	movw	r2, #358
	bl	_assert_fail
.LVL1052:
.L1373:
	.align	2
.L1372:
	.word	.LANCHOR4+1676
.LBE6894:
.LBE6893:
	.cfi_endproc
.LFE427:
	.size	ackInterrupt, .-ackInterrupt
	.align	2
	.global	plat_cleanL2Range
	.syntax unified
	.arm
	.type	plat_cleanL2Range, %function
plat_cleanL2Range:
.LFB434:
	.loc 20 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1053:
	.loc 20 371 0
	movw	r2, #:lower16:.LANCHOR2
	movt	r2, #:upper16:.LANCHOR2
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1383
	.loc 20 374 0
	add	r1, r1, #32
.LVL1054:
	.loc 20 373 0
	bic	r0, r0, #31
.LVL1055:
	.loc 20 374 0
	bic	r1, r1, #31
.LVL1056:
	.loc 20 373 0
	cmp	r0, r1
	beq	.L1379
.L1378:
	.loc 20 376 0
	str	r0, [r3, #1968]
	.loc 20 375 0
	add	r0, r0, #32
.LVL1057:
	.loc 20 373 0
	cmp	r0, r1
	bne	.L1378
.L1379:
.LBB6909:
.LBB6910:
.LBB6911:
.LBB6912:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6912:
.LBE6911:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1377:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1377
	bx	lr
.LVL1058:
.L1383:
.LBE6910:
.LBE6909:
.LBB6913:
.LBB6914:
	.loc 20 371 0
	movw	r1, #:lower16:.LC69
.LVL1059:
	movw	r0, #:lower16:.LC70
.LVL1060:
.LBE6914:
.LBE6913:
	.loc 20 368 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6916:
.LBB6915:
	.loc 20 371 0
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L1384
	movw	r2, #371
	bl	_assert_fail
.LVL1061:
.L1385:
	.align	2
.L1384:
	.word	.LANCHOR4+1692
.LBE6915:
.LBE6916:
	.cfi_endproc
.LFE434:
	.size	plat_cleanL2Range, .-plat_cleanL2Range
	.align	2
	.global	plat_invalidateL2Range
	.syntax unified
	.arm
	.type	plat_invalidateL2Range, %function
plat_invalidateL2Range:
.LFB435:
	.loc 20 384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1062:
	.loc 20 387 0
	movw	r2, #:lower16:.LANCHOR2
	movt	r2, #:upper16:.LANCHOR2
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1395
	.loc 20 393 0
	add	r1, r1, #32
.LVL1063:
	.loc 20 392 0
	bic	r0, r0, #31
.LVL1064:
	.loc 20 393 0
	bic	r1, r1, #31
.LVL1065:
	.loc 20 392 0
	cmp	r0, r1
	beq	.L1391
.L1390:
	.loc 20 395 0
	str	r0, [r3, #1904]
	.loc 20 394 0
	add	r0, r0, #32
.LVL1066:
	.loc 20 392 0
	cmp	r0, r1
	bne	.L1390
.L1391:
.LBB6931:
.LBB6932:
.LBB6933:
.LBB6934:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6934:
.LBE6933:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1389:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1389
	bx	lr
.LVL1067:
.L1395:
.LBE6932:
.LBE6931:
.LBB6935:
.LBB6936:
	.loc 20 387 0
	movw	r1, #:lower16:.LC69
.LVL1068:
	movw	r0, #:lower16:.LC70
.LVL1069:
.LBE6936:
.LBE6935:
	.loc 20 384 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6938:
.LBB6937:
	.loc 20 387 0
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L1396
	movw	r2, #387
	bl	_assert_fail
.LVL1070:
.L1397:
	.align	2
.L1396:
	.word	.LANCHOR4+1712
.LBE6937:
.LBE6938:
	.cfi_endproc
.LFE435:
	.size	plat_invalidateL2Range, .-plat_invalidateL2Range
	.align	2
	.global	plat_cleanInvalidateL2Range
	.syntax unified
	.arm
	.type	plat_cleanInvalidateL2Range, %function
plat_cleanInvalidateL2Range:
.LFB436:
	.loc 20 403 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1071:
	.loc 20 406 0
	movw	r2, #:lower16:.LANCHOR2
	movt	r2, #:upper16:.LANCHOR2
	ldr	r3, [r2, #12]
	ldr	ip, [r3, #4]
	tst	ip, #12288
	bne	.L1407
	.loc 20 409 0
	add	r1, r1, #32
.LVL1072:
	.loc 20 408 0
	bic	r0, r0, #31
.LVL1073:
	.loc 20 409 0
	bic	r1, r1, #31
.LVL1074:
	.loc 20 408 0
	cmp	r0, r1
	beq	.L1403
.L1402:
	.loc 20 412 0
	str	r0, [r3, #1968]
.LBB6959:
.LBB6960:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6960:
.LBE6959:
	.loc 20 414 0
	ldr	r3, [r2, #12]
	str	r0, [r3, #1904]
	.loc 20 410 0
	add	r0, r0, #32
.LVL1075:
	.loc 20 408 0
	cmp	r0, r1
	bne	.L1402
.L1403:
.LBB6961:
.LBB6962:
.LBB6963:
.LBB6964:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE6964:
.LBE6963:
	.loc 20 353 0
	ldr	r2, [r2, #12]
	mov	r3, #0
	str	r3, [r2, #1840]
.L1401:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L1401
	bx	lr
.LVL1076:
.L1407:
.LBE6962:
.LBE6961:
.LBB6965:
.LBB6966:
	.loc 20 406 0
	movw	r1, #:lower16:.LC69
.LVL1077:
	movw	r0, #:lower16:.LC70
.LVL1078:
.LBE6966:
.LBE6965:
	.loc 20 403 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB6968:
.LBB6967:
	.loc 20 406 0
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L1408
	movw	r2, #406
	bl	_assert_fail
.LVL1079:
.L1409:
	.align	2
.L1408:
	.word	.LANCHOR4+1736
.LBE6967:
.LBE6968:
	.cfi_endproc
.LFE436:
	.size	plat_cleanInvalidateL2Range, .-plat_cleanInvalidateL2Range
	.align	2
	.global	Arch_maskCapRights
	.syntax unified
	.arm
	.type	Arch_maskCapRights, %function
Arch_maskCapRights:
.LFB442:
	.loc 23 55 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1080:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	.loc 23 55 0
	stm	sp, {r2, r3}
	mov	r3, r2
.LVL1081:
.LBB6984:
.LBB6985:
	.loc 4 997 0
	and	r2, r2, #14
.LBE6985:
.LBE6984:
	.loc 23 55 0
	mov	ip, sp
.LBB6988:
.LBB6986:
	.loc 4 997 0
	cmp	r2, #14
.LBE6986:
.LBE6988:
	.loc 23 55 0
	mov	lr, r0
.LBB6989:
.LBB6987:
	.loc 4 999 0
	uxtbeq	r2, r3
	.loc 4 998 0
	andne	r2, r3, #15
.LBE6987:
.LBE6989:
	.loc 23 56 0
	cmp	r2, #1
	beq	.L1428
	.loc 23 65 0
	ldm	sp, {r0, r1}
.LVL1082:
	stm	lr, {r0, r1}
	.loc 23 67 0
	mov	r0, lr
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1083:
.L1428:
	.cfi_restore_state
.LBB6990:
.LBB6991:
.LBB6992:
	.loc 4 1701 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L1429
	.loc 4 1704 0
	ubfx	r2, r3, #27, #2
.LVL1084:
.LBE6992:
.LBE6991:
.LBB6994:
.LBB6995:
	.loc 11 736 0
	cmp	r2, #0
	beq	.L1415
	.loc 11 739 0
	cmp	r2, #2
	beq	.L1430
	.loc 11 743 0
	cmp	r2, #3
	beq	.L1431
	ldm	ip, {r0, r1}
.LVL1085:
	add	ip, sp, #8
	mov	r2, #134217728
	stm	ip, {r0, r1}
.LVL1086:
	b	.L1418
.LVL1087:
.L1430:
	.loc 11 739 0
	tst	r1, #2
	moveq	r2, #134217728
	movne	r2, #268435456
.LVL1088:
.L1415:
	ldm	ip, {r0, r1}
.LVL1089:
	add	ip, sp, #8
	stm	ip, {r0, r1}
.L1418:
.LBE6995:
.LBE6994:
.LBB6997:
.LBB6998:
	.loc 4 1719 0
	bic	r3, r3, #402653184
.LVL1090:
	.loc 4 1721 0
	orr	r3, r2, r3
.LVL1091:
	str	r3, [sp, #8]
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
.LBE6998:
.LBE6997:
.LBE6990:
	.loc 23 67 0
	mov	r0, lr
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1092:
.L1431:
	.cfi_restore_state
.LBB7001:
.LBB6999:
.LBB6996:
	.loc 11 743 0
	tst	r1, #2
	moveq	r2, #134217728
	beq	.L1415
.LVL1093:
	.loc 11 745 0
	tst	r1, #1
	movne	r2, #402653184
	moveq	r2, #268435456
	b	.L1415
.LVL1094:
.L1429:
.LBE6996:
.LBE6999:
.LBB7000:
.LBB6993:
	bl	cap_frame_cap_get_capFVMRights.isra.119.part.120
.LVL1095:
.LBE6993:
.LBE7000:
.LBE7001:
	.cfi_endproc
.LFE442:
	.size	Arch_maskCapRights, .-Arch_maskCapRights
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_untyped_cap_get_capBlockSize.part.149, %function
cap_untyped_cap_get_capBlockSize.part.149:
.LFB863:
	.loc 4 1061 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1063 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC42
	.loc 4 1061 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1063 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC42
	ldr	r3, .L1434
	movw	r2, #1064
	bl	_assert_fail
.LVL1096:
.L1435:
	.align	2
.L1434:
	.word	.LANCHOR4+1764
	.cfi_endproc
.LFE863:
	.size	cap_untyped_cap_get_capBlockSize.part.149, .-cap_untyped_cap_get_capBlockSize.part.149
	.text
	.align	2
	.syntax unified
	.arm
	.type	untyped_comparator, %function
untyped_comparator:
.LFB485:
	.loc 3 68 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1097:
	ldr	r3, [r0]
.LVL1098:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 68 0
	mov	r4, r2
.LBB7019:
.LBB7020:
.LBB7021:
	.loc 4 1091 0
	and	r2, r3, #15
.LVL1099:
	cmp	r2, #2
	bne	.L1438
	ldr	r2, [r1]
	mov	lr, r1
	.loc 4 1094 0
	bic	r3, r3, #15
.LVL1100:
.LBE7021:
.LBE7020:
.LBB7023:
.LBB7024:
	.loc 4 1091 0
	and	r5, r2, #15
	cmp	r5, #2
	bne	.L1438
	.loc 4 1094 0
	bic	r2, r2, #15
.LVL1101:
.LBE7024:
.LBE7023:
	.loc 3 71 0
	cmp	r2, r3
	beq	.L1439
	.loc 3 71 0 is_stmt 0 discriminator 1
	bcs	.L1442
.L1440:
	.loc 3 71 0
	mov	r0, #1
.LVL1102:
	pop	{r4, r5, r6, pc}
.LVL1103:
.L1439:
.LBE7019:
.LBB7026:
.LBB7027:
.LBB7028:
	.loc 4 1066 0 is_stmt 1
	ldr	r3, [r0, #4]
.LBE7028:
.LBE7027:
.LBB7030:
.LBB7031:
	ldr	r2, [r1, #4]
.LBE7031:
.LBE7030:
.LBB7033:
.LBB7029:
	and	r3, r3, #31
.LVL1104:
.LBE7029:
.LBE7033:
.LBB7034:
.LBB7032:
	and	r2, r2, #31
.LBE7032:
.LBE7034:
	.loc 3 75 0
	cmp	r2, r3
	beq	.L1451
	.loc 3 75 0 is_stmt 0 discriminator 1
	bcs	.L1440
.LVL1105:
.L1442:
	.loc 3 75 0
	mvn	r0, #0
.LVL1106:
	pop	{r4, r5, r6, pc}
.LVL1107:
.L1451:
.LBE7026:
.LBB7035:
.LBB7036:
	.loc 3 106 0 is_stmt 1
	mov	r3, r4
	mov	r2, #0
.LBE7036:
.LBE7035:
	.loc 3 81 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1108:
.LBB7038:
.LBB7037:
	.loc 3 106 0
	bx	r3
.LVL1109:
.L1438:
	.cfi_restore_state
.LBE7037:
.LBE7038:
.LBB7039:
.LBB7025:
.LBB7022:
	bl	cap_untyped_cap_get_capPtr.isra.94.part.95
.LVL1110:
.LBE7022:
.LBE7025:
.LBE7039:
	.cfi_endproc
.LFE485:
	.size	untyped_comparator, .-untyped_comparator
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capSizeBits, %function
cap_get_capSizeBits:
.LFB209:
	.loc 30 293 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 30 293 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
	ldr	r0, [sp, #4]
.LVL1111:
.LBB7055:
.LBB7056:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L1453
	.loc 4 998 0
	and	r2, r3, #15
.LVL1112:
.LBE7056:
.LBE7055:
	.loc 30 299 0
	cmp	r2, #14
	ldrls	pc, [pc, r2, asl #2]
	b	.L1454
.L1456:
	.word	.L1474
	.word	.L1454
	.word	.L1457
	.word	.L1454
	.word	.L1458
	.word	.L1454
	.word	.L1458
	.word	.L1454
	.word	.L1474
	.word	.L1454
	.word	.L1459
	.word	.L1454
	.word	.L1476
	.word	.L1454
	.word	.L1474
.L1474:
	.loc 30 324 0
	mov	r0, #0
.LVL1113:
.L1480:
	.loc 30 342 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL1114:
	@ sp needed
	ldr	pc, [sp], #4
.LVL1115:
.L1453:
	.cfi_restore_state
.LBB7058:
.LBB7057:
	.loc 4 999 0
	uxtb	r2, r3
.LVL1116:
.LBE7057:
.LBE7058:
	.loc 30 299 0
	cmp	r2, #62
	ldrls	pc, [pc, r2, asl #2]
	b	.L1454
.L1461:
	.word	.L1474
	.word	.L1454
	.word	.L1462
	.word	.L1454
	.word	.L1458
	.word	.L1454
	.word	.L1458
	.word	.L1454
	.word	.L1474
	.word	.L1454
	.word	.L1464
	.word	.L1454
	.word	.L1476
	.word	.L1454
	.word	.L1474
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1474
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1466
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1454
	.word	.L1474
.L1466:
.LVL1117:
.LBB7059:
.LBB7060:
.LBB7061:
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL1118:
.LBE7061:
.LBE7060:
	.loc 30 317 0
	cmp	r3, #32
	.loc 30 320 0
	andne	r3, r3, #31
	addne	r0, r3, #4
.LVL1119:
	.loc 30 317 0
	bne	.L1480
.L1476:
	.loc 30 318 0
	mov	r0, #9
.LBE7059:
	.loc 30 342 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL1120:
	@ sp needed
	ldr	pc, [sp], #4
.LVL1121:
.L1457:
	.cfi_restore_state
.LBB7062:
.LBB7063:
	.loc 4 1066 0
	and	r0, r0, #31
.LVL1122:
.LBE7063:
.LBE7062:
	.loc 30 301 0
	b	.L1480
.LVL1123:
.L1458:
	.loc 30 304 0
	mov	r0, #4
.LVL1124:
	b	.L1480
.LVL1125:
.L1459:
	.loc 30 310 0
	ubfx	r0, r0, #18, #5
.LVL1126:
	add	r0, r0, #4
	b	.L1480
.LVL1127:
.L1454:
.LBB7065:
.LBB7066:
	.loc 31 113 0
	cmp	r2, #3
	beq	.L1469
	cmp	r2, #5
	beq	.L1475
	cmp	r2, #1
	beq	.L1486
	.loc 31 126 0
	movw	r1, #:lower16:.LC46
	movw	r0, #:lower16:.LC47
.LVL1128:
	movt	r1, #:upper16:.LC46
	movt	r0, #:upper16:.LC47
	ldr	r3, .L1488
.LVL1129:
	mov	r2, #126
	bl	_assert_fail
.LVL1130:
.L1462:
.LBE7066:
.LBE7065:
.LBB7073:
.LBB7064:
	.loc 4 1063 0
	and	r2, r3, #15
	cmp	r2, #2
	beq	.L1457
	bl	cap_untyped_cap_get_capBlockSize.part.149
.LVL1131:
.L1464:
.LBE7064:
.LBE7073:
.LBB7074:
.LBB7075:
	.loc 4 1519 0
	and	r2, r3, #15
	cmp	r2, #10
	beq	.L1459
	bl	cap_cnode_cap_get_capCNodeRadix.part.78
.LVL1132:
.L1475:
.LBE7075:
.LBE7074:
.LBB7076:
.LBB7071:
	.loc 31 121 0
	mov	r0, #14
.LVL1133:
	b	.L1480
.LVL1134:
.L1486:
.LBB7067:
.LBB7068:
	.loc 4 1687 0
	and	r2, r3, #15
	cmp	r2, #1
	bne	.L1487
.LVL1135:
.LBE7068:
.LBE7067:
	.loc 31 115 0
	lsr	r0, r3, #29
.LVL1136:
.LBE7071:
.LBE7076:
	.loc 30 342 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB7077:
.LBB7072:
	.loc 31 115 0
	b	pageBitsForSize
.LVL1137:
.L1469:
	.cfi_restore_state
	.loc 31 118 0
	mov	r0, #10
.LVL1138:
	b	.L1480
.LVL1139:
.L1487:
.LBB7070:
.LBB7069:
	bl	cap_frame_cap_get_capFSize.isra.121.part.122
.LVL1140:
.L1489:
	.align	2
.L1488:
	.word	.LANCHOR4+1800
.LBE7069:
.LBE7070:
.LBE7072:
.LBE7077:
	.cfi_endproc
.LFE209:
	.size	cap_get_capSizeBits, .-cap_get_capSizeBits
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	fault_cap_fault_get_address.part.152, %function
fault_cap_fault_get_address.part.152:
.LFB866:
	.loc 4 568 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 570 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC71
	.loc 4 568 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 570 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC71
	ldr	r3, .L1492
	movw	r2, #571
	bl	_assert_fail
.LVL1141:
.L1493:
	.align	2
.L1492:
	.word	.LANCHOR4+1824
	.cfi_endproc
.LFE866:
	.size	fault_cap_fault_get_address.part.152, .-fault_cap_fault_get_address.part.152
	.align	2
	.syntax unified
	.arm
	.type	fault_cap_fault_get_inReceivePhase.isra.153.part.154, %function
fault_cap_fault_get_inReceivePhase.isra.153.part.154:
.LFB868:
	.loc 4 582 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 584 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC71
	.loc 4 582 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 584 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC71
	ldr	r3, .L1496
	movw	r2, #585
	bl	_assert_fail
.LVL1142:
.L1497:
	.align	2
.L1496:
	.word	.LANCHOR4+1852
	.cfi_endproc
.LFE868:
	.size	fault_cap_fault_get_inReceivePhase.isra.153.part.154, .-fault_cap_fault_get_inReceivePhase.isra.153.part.154
	.text
	.align	2
	.syntax unified
	.arm
	.type	setMRs_lookup_failure, %function
setMRs_lookup_failure:
.LFB455:
	.loc 24 38 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1143:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 24 38 0
	ldr	r4, [sp, #24]
	mov	r5, r0
	add	r0, sp, #8
.LVL1144:
	stmdb	r0, {r2, r3}
	ldr	ip, [sp]
.LVL1145:
.LBB7192:
.LBB7193:
	.loc 24 22 0
	cmp	r4, #3
.LBE7193:
.LBE7192:
.LBB7203:
.LBB7204:
	.loc 4 2245 0
	and	r2, ip, #3
.LBE7204:
.LBE7203:
	.loc 24 42 0
	add	lr, r2, #1
.LVL1146:
.LBB7205:
.LBB7200:
	.loc 24 22 0
	bhi	.L1539
.LVL1147:
	.loc 24 30 0
	movw	r3, #:lower16:.LANCHOR4
	.loc 24 31 0
	add	r0, r4, #1
	.loc 24 30 0
	movt	r3, #:upper16:.LANCHOR4
	add	r3, r3, r4, lsl #2
.LBB7194:
.LBB7195:
	.loc 10 21 0
	ldr	r3, [r3, #1888]
	str	lr, [r5, r3, lsl #2]
.LVL1148:
.L1500:
.LBE7195:
.LBE7194:
.LBE7200:
.LBE7205:
	.loc 24 44 0
	cmp	r2, #2
	beq	.L1503
.L1541:
	cmp	r2, #3
	beq	.L1508
	cmp	r2, #1
	beq	.L1540
.LVL1149:
.L1533:
	.loc 24 69 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL1150:
.L1539:
	.cfi_restore_state
.LBB7206:
.LBB7201:
.LBB7196:
.LBB7197:
	.loc 24 23 0
	cmp	r1, #0
	.loc 24 27 0
	moveq	r0, #4
	.loc 24 23 0
	beq	.L1500
.LBE7197:
.LBE7196:
.LBE7201:
.LBE7206:
	.loc 24 44 0
	cmp	r2, #2
.LBB7207:
.LBB7202:
.LBB7199:
.LBB7198:
	.loc 24 24 0
	add	r0, r4, #1
	str	lr, [r1, r0, lsl #2]
.LVL1151:
.LBE7198:
.LBE7199:
.LBE7202:
.LBE7207:
	.loc 24 44 0
	bne	.L1541
.LVL1152:
.L1503:
	.loc 24 53 0
	add	r2, r4, #1
.LVL1153:
.LBB7208:
.LBB7209:
	.loc 4 2333 0
	ubfx	lr, ip, #2, #6
.LVL1154:
.LBE7209:
.LBE7208:
.LBB7210:
.LBB7211:
	.loc 24 22 0
	cmp	r2, #3
	bhi	.L1542
.LVL1155:
	.loc 24 30 0
	movw	r3, #:lower16:.LANCHOR4
.LBE7211:
.LBE7210:
	.loc 24 55 0
	add	r0, r4, #2
.LBB7223:
.LBB7218:
	.loc 24 30 0
	movt	r3, #:upper16:.LANCHOR4
.LBE7218:
.LBE7223:
.LBB7224:
.LBB7225:
	.loc 24 22 0
	cmp	r0, #4
.LBE7225:
.LBE7224:
.LBB7235:
.LBB7219:
	.loc 24 30 0
	add	r2, r3, r2, lsl #2
.LVL1156:
.LBE7219:
.LBE7235:
.LBB7236:
.LBB7237:
	.loc 4 2319 0
	ubfx	ip, ip, #8, #6
.LVL1157:
.LBE7237:
.LBE7236:
.LBB7240:
.LBB7220:
.LBB7212:
.LBB7213:
	.loc 10 21 0
	ldr	r2, [r2, #1888]
	str	lr, [r5, r2, lsl #2]
.LVL1158:
.LBE7213:
.LBE7212:
.LBE7220:
.LBE7240:
.LBB7241:
.LBB7230:
	.loc 24 22 0
	beq	.L1543
.LVL1159:
.L1507:
	.loc 24 30 0
	add	r3, r3, r0, lsl #2
	.loc 24 31 0
	add	r0, r4, #3
.LBB7226:
.LBB7227:
	.loc 10 21 0
	ldr	r3, [r3, #1888]
	str	ip, [r5, r3, lsl #2]
.LVL1160:
.LBE7227:
.LBE7226:
.LBE7230:
.LBE7241:
	.loc 24 69 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL1161:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL1162:
.L1508:
	.cfi_restore_state
	.loc 24 59 0
	add	r2, r4, #1
.LVL1163:
.LBB7242:
.LBB7243:
	.loc 4 2382 0
	ubfx	lr, ip, #8, #6
.LVL1164:
.LBE7243:
.LBE7242:
.LBB7244:
.LBB7245:
	.loc 24 22 0
	cmp	r2, #3
	bhi	.L1544
.LVL1165:
	.loc 24 30 0
	movw	r3, #:lower16:.LANCHOR4
.LBE7245:
.LBE7244:
	.loc 24 61 0
	add	r0, r4, #2
.LBB7256:
.LBB7252:
	.loc 24 30 0
	movt	r3, #:upper16:.LANCHOR4
.LBE7252:
.LBE7256:
.LBB7257:
.LBB7258:
	.loc 24 22 0
	cmp	r0, #4
.LBE7258:
.LBE7257:
.LBB7280:
.LBB7253:
	.loc 24 30 0
	add	r2, r3, r2, lsl #2
.LVL1166:
	ldr	r6, [sp, #4]
.LBB7246:
.LBB7247:
	.loc 10 21 0
	ldr	r2, [r2, #1888]
	str	lr, [r5, r2, lsl #2]
.LVL1167:
.LBE7247:
.LBE7246:
.LBE7253:
.LBE7280:
.LBB7281:
.LBB7271:
	.loc 24 22 0
	beq	.L1545
.LVL1168:
.L1513:
	.loc 24 30 0
	add	r0, r3, r0, lsl #2
.LBE7271:
.LBE7281:
	.loc 24 63 0
	add	r2, r4, #3
.LBB7282:
.LBB7283:
	.loc 24 22 0
	cmp	r2, #3
.LBE7283:
.LBE7282:
.LBB7295:
.LBB7272:
.LBB7259:
.LBB7260:
	.loc 10 21 0
	ldr	r0, [r0, #1888]
.LBE7260:
.LBE7259:
.LBE7272:
.LBE7295:
.LBB7296:
.LBB7297:
	.loc 4 2396 0
	ubfx	ip, ip, #2, #6
.LVL1169:
.LBE7297:
.LBE7296:
.LBB7301:
.LBB7273:
.LBB7263:
.LBB7261:
	.loc 10 21 0
	str	r6, [r5, r0, lsl #2]
.LVL1170:
.LBE7261:
.LBE7263:
.LBE7273:
.LBE7301:
.LBB7302:
.LBB7290:
	.loc 24 22 0
	bhi	.L1546
.LVL1171:
.L1516:
	.loc 24 30 0
	add	r3, r3, r2, lsl #2
	.loc 24 31 0
	add	r0, r4, #4
.LBB7284:
.LBB7285:
	.loc 10 21 0
	ldr	r3, [r3, #1888]
	str	ip, [r5, r3, lsl #2]
.LVL1172:
.LBE7285:
.LBE7284:
.LBE7290:
.LBE7302:
	.loc 24 69 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL1173:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL1174:
.L1540:
	.cfi_restore_state
	.loc 24 49 0
	add	r2, r4, #1
.LVL1175:
.LBB7303:
.LBB7304:
	.loc 4 2285 0
	ubfx	ip, ip, #2, #6
.LVL1176:
.LBE7304:
.LBE7303:
.LBB7305:
.LBB7306:
	.loc 24 22 0
	cmp	r2, #3
	bhi	.L1547
.LVL1177:
	.loc 24 30 0
	movw	r3, #:lower16:.LANCHOR4
	.loc 24 31 0
	add	r0, r4, #2
	.loc 24 30 0
	movt	r3, #:upper16:.LANCHOR4
	add	r3, r3, r2, lsl #2
.LBB7307:
.LBB7308:
	.loc 10 21 0
	ldr	r3, [r3, #1888]
	str	ip, [r5, r3, lsl #2]
.LVL1178:
.LBE7308:
.LBE7307:
.LBE7306:
.LBE7305:
	.loc 24 69 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL1179:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL1180:
.L1544:
	.cfi_restore_state
.LBB7315:
.LBB7254:
.LBB7248:
.LBB7249:
	.loc 24 23 0
	cmp	r1, #0
	.loc 24 24 0
	add	r3, r4, #2
	ldr	r6, [sp, #4]
	.loc 24 23 0
	beq	.L1510
.LBE7249:
.LBE7248:
.LBE7254:
.LBE7315:
.LBB7316:
.LBB7274:
	.loc 24 22 0
	cmp	r3, #3
.LBE7274:
.LBE7316:
.LBB7317:
.LBB7255:
.LBB7251:
.LBB7250:
	.loc 24 24 0
	str	lr, [r1, r3, lsl #2]
.LVL1181:
.LBE7250:
.LBE7251:
.LBE7255:
.LBE7317:
.LBB7318:
.LBB7275:
	.loc 24 22 0
	bhi	.L1511
.LVL1182:
	movw	r3, #:lower16:.LANCHOR4
.LVL1183:
.LBB7264:
.LBB7262:
	.loc 10 21 0
	str	r6, [r5, #8]
.LVL1184:
.LBE7262:
.LBE7264:
.LBE7275:
.LBE7318:
.LBB7319:
.LBB7298:
	.loc 4 2396 0
	ubfx	ip, ip, #2, #6
.LVL1185:
	movt	r3, #:upper16:.LANCHOR4
	mov	r2, #1
.LVL1186:
	b	.L1516
.LVL1187:
.L1542:
.LBE7298:
.LBE7319:
.LBB7320:
.LBB7221:
.LBB7214:
.LBB7215:
	.loc 24 23 0
	cmp	r1, #0
	.loc 24 24 0
	add	r3, r4, #2
	.loc 24 23 0
	beq	.L1505
.LBE7215:
.LBE7214:
.LBE7221:
.LBE7320:
.LBB7321:
.LBB7231:
	.loc 24 22 0
	cmp	r3, #3
.LBE7231:
.LBE7321:
.LBB7322:
.LBB7238:
	.loc 4 2319 0
	ubfx	ip, ip, #8, #6
.LVL1188:
.LBE7238:
.LBE7322:
.LBB7323:
.LBB7222:
.LBB7217:
.LBB7216:
	.loc 24 24 0
	str	lr, [r1, r3, lsl #2]
.LVL1189:
.LBE7216:
.LBE7217:
.LBE7222:
.LBE7323:
.LBB7324:
.LBB7232:
	.loc 24 22 0
	bhi	.L1506
	movw	r3, #:lower16:.LANCHOR4
.LVL1190:
	mov	r0, #0
	movt	r3, #:upper16:.LANCHOR4
	b	.L1507
.LVL1191:
.L1547:
.LBE7232:
.LBE7324:
.LBB7325:
.LBB7313:
.LBB7309:
.LBB7310:
	.loc 24 23 0
	cmp	r1, #0
	beq	.L1501
	.loc 24 24 0
	add	r0, r4, #2
	str	ip, [r1, r0, lsl #2]
.LVL1192:
	b	.L1533
.LVL1193:
.L1546:
.LBE7310:
.LBE7309:
.LBE7313:
.LBE7325:
.LBB7326:
.LBB7291:
.LBB7286:
.LBB7287:
	.loc 24 23 0
	cmp	r1, #0
	bne	.L1515
.LVL1194:
.L1501:
.LBE7287:
.LBE7286:
.LBE7291:
.LBE7326:
.LBB7327:
.LBB7314:
.LBB7312:
.LBB7311:
	.loc 24 27 0
	mov	r0, #4
	b	.L1533
.LVL1195:
.L1505:
.LBE7311:
.LBE7312:
.LBE7314:
.LBE7327:
.LBB7328:
.LBB7233:
	.loc 24 22 0
	cmp	r3, #3
	bhi	.L1501
	movw	r3, #:lower16:.LANCHOR4
.LBE7233:
.LBE7328:
.LBB7329:
.LBB7239:
	.loc 4 2319 0
	ubfx	ip, ip, #8, #6
.LVL1196:
	mov	r0, r1
	movt	r3, #:upper16:.LANCHOR4
	b	.L1507
.LVL1197:
.L1510:
.LBE7239:
.LBE7329:
.LBB7330:
.LBB7276:
	.loc 24 22 0
	cmp	r3, #3
	bhi	.L1514
	movw	r3, #:lower16:.LANCHOR4
	mov	r0, r1
	movt	r3, #:upper16:.LANCHOR4
	b	.L1513
.LVL1198:
.L1543:
.LBE7276:
.LBE7330:
.LBB7331:
.LBB7234:
.LBB7228:
.LBB7229:
	.loc 24 23 0
	cmp	r1, #0
	beq	.L1501
.LVL1199:
.L1506:
	.loc 24 24 0
	add	r0, r4, #3
	str	ip, [r1, r0, lsl #2]
.LVL1200:
	b	.L1533
.LVL1201:
.L1511:
.LBE7229:
.LBE7228:
.LBE7234:
.LBE7331:
.LBB7332:
.LBB7277:
.LBB7265:
.LBB7266:
	add	r3, r4, #3
.LBE7266:
.LBE7265:
.LBE7277:
.LBE7332:
.LBB7333:
.LBB7299:
	.loc 4 2396 0
	ubfx	ip, ip, #2, #6
.LVL1202:
.LBE7299:
.LBE7333:
.LBB7334:
.LBB7292:
	.loc 24 22 0
	cmp	r3, #3
.LBE7292:
.LBE7334:
.LBB7335:
.LBB7278:
.LBB7269:
.LBB7267:
	.loc 24 24 0
	str	r6, [r1, r3, lsl #2]
.LVL1203:
.LBE7267:
.LBE7269:
.LBE7278:
.LBE7335:
.LBB7336:
.LBB7293:
	.loc 24 22 0
	movwls	r3, #:lower16:.LANCHOR4
.LVL1204:
	movls	r2, #0
	movtls	r3, #:upper16:.LANCHOR4
	bls	.L1516
.LVL1205:
.L1515:
.LBB7289:
.LBB7288:
	.loc 24 24 0
	add	r0, r4, #4
	str	ip, [r1, r0, lsl #2]
.LVL1206:
	b	.L1533
.LVL1207:
.L1545:
.LBE7288:
.LBE7289:
.LBE7293:
.LBE7336:
.LBB7337:
.LBB7279:
.LBB7270:
.LBB7268:
	.loc 24 23 0
	cmp	r1, #0
	bne	.L1511
.LVL1208:
.L1514:
.LBE7268:
.LBE7270:
.LBE7279:
.LBE7337:
	.loc 24 63 0
	add	r2, r4, #3
.LVL1209:
.LBB7338:
.LBB7294:
	.loc 24 22 0
	cmp	r2, #3
	bhi	.L1501
	movw	r3, #:lower16:.LANCHOR4
.LBE7294:
.LBE7338:
.LBB7339:
.LBB7300:
	.loc 4 2396 0
	ubfx	ip, ip, #2, #6
.LVL1210:
	movt	r3, #:upper16:.LANCHOR4
	b	.L1516
.LBE7300:
.LBE7339:
	.cfi_endproc
.LFE455:
	.size	setMRs_lookup_failure, .-setMRs_lookup_failure
	.align	2
	.global	setMRs_syscall_error
	.syntax unified
	.arm
	.type	setMRs_syscall_error, %function
setMRs_syscall_error:
.LFB457:
	.loc 24 137 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1211:
	.loc 24 138 0
	movw	r2, #:lower16:current_syscall_error
	.loc 24 137 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 24 138 0
	movt	r2, #:upper16:current_syscall_error
	.loc 24 137 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 24 137 0
	mov	ip, r0
	.loc 24 138 0
	ldr	r3, [r2, #24]
	sub	r3, r3, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L1549
.L1551:
	.word	.L1550
	.word	.L1552
	.word	.L1557
	.word	.L1554
	.word	.L1557
	.word	.L1555
	.word	.L1557
	.word	.L1557
	.word	.L1557
	.word	.L1556
.L1557:
	.loc 24 148 0
	mov	r0, #0
.LVL1212:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1213:
.L1554:
	.cfi_restore_state
.LBB7381:
.LBB7382:
.LBB7383:
	.loc 10 21 0
	ldr	r3, [r2, #12]
.LBE7383:
.LBE7382:
.LBE7381:
	.loc 24 153 0
	mov	r0, #2
.LVL1214:
.LBB7386:
.LBB7387:
.LBB7388:
	.loc 10 21 0
	ldr	r1, [r2, #8]
.LVL1215:
.LBE7388:
.LBE7387:
.LBE7386:
.LBB7391:
.LBB7385:
.LBB7384:
	str	r3, [ip, #12]
.LBE7384:
.LBE7385:
.LBE7391:
.LBB7392:
.LBB7390:
.LBB7389:
	str	r1, [ip, #8]
.LVL1216:
.LBE7389:
.LBE7390:
.LBE7392:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1217:
.L1556:
	.cfi_restore_state
.LBB7393:
.LBB7394:
.LBB7395:
	.loc 10 21 0
	ldr	r3, [r2, #16]
.LBE7395:
.LBE7394:
.LBE7393:
	.loc 24 170 0
	mov	r0, #1
.LVL1218:
.LBB7398:
.LBB7397:
.LBB7396:
	.loc 10 21 0
	str	r3, [ip, #8]
.LVL1219:
.LBE7396:
.LBE7397:
.LBE7398:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1220:
.L1555:
	.cfi_restore_state
.LBB7399:
.LBB7400:
.LBB7401:
.LBB7402:
.LBB7403:
	.loc 10 21 0
	ldr	lr, [r2, #20]
.LBE7403:
.LBE7402:
.LBE7401:
	.loc 24 162 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r4, #1
	movt	r3, #:upper16:current_lookup_fault
	ldm	r3, {r2, r3}
.LBB7406:
.LBB7405:
.LBB7404:
	.loc 10 21 0
	adds	lr, lr, #0
	movne	lr, #1
	str	lr, [r0, #8]
.LVL1221:
.LBE7404:
.LBE7405:
.LBE7406:
	.loc 24 162 0
	str	r4, [sp]
	bl	setMRs_lookup_failure
.LVL1222:
.LBE7400:
.LBE7399:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1223:
.L1550:
	.cfi_restore_state
.LBB7407:
.LBB7408:
.LBB7409:
	.loc 10 21 0
	ldr	r3, [r2]
.LBE7409:
.LBE7408:
.LBE7407:
	.loc 24 140 0
	mov	r0, #1
.LVL1224:
.LBB7412:
.LBB7411:
.LBB7410:
	.loc 10 21 0
	str	r3, [ip, #8]
.LVL1225:
.LBE7410:
.LBE7411:
.LBE7412:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1226:
.L1552:
	.cfi_restore_state
.LBB7413:
.LBB7414:
.LBB7415:
	.loc 10 21 0
	ldr	r3, [r2, #4]
.LBE7415:
.LBE7414:
.LBE7413:
	.loc 24 144 0
	mov	r0, #1
.LVL1227:
.LBB7418:
.LBB7417:
.LBB7416:
	.loc 10 21 0
	str	r3, [ip, #8]
.LVL1228:
.LBE7416:
.LBE7417:
.LBE7418:
	.loc 24 175 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1229:
.L1549:
	.loc 24 173 0
	movw	r1, #:lower16:.LC72
.LVL1230:
	movw	r0, #:lower16:.LC73
.LVL1231:
	movt	r1, #:upper16:.LC72
	movt	r0, #:upper16:.LC73
	ldr	r3, .L1559
	mov	r2, #173
	bl	_fail
.LVL1232:
.L1560:
	.align	2
.L1559:
	.word	.LANCHOR4+1904
	.cfi_endproc
.LFE457:
	.size	setMRs_syscall_error, .-setMRs_syscall_error
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	fault_vm_fault_get_address.part.162, %function
fault_vm_fault_get_address.part.162:
.LFB876:
	.loc 4 617 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 619 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC74
	.loc 4 617 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 619 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC74
	ldr	r3, .L1563
	mov	r2, #620
	bl	_assert_fail
.LVL1233:
.L1564:
	.align	2
.L1563:
	.word	.LANCHOR4+1928
	.cfi_endproc
.LFE876:
	.size	fault_vm_fault_get_address.part.162, .-fault_vm_fault_get_address.part.162
	.align	2
	.syntax unified
	.arm
	.type	fault_vm_fault_get_instructionFault.isra.163.part.164, %function
fault_vm_fault_get_instructionFault.isra.163.part.164:
.LFB878:
	.loc 4 645 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 647 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC74
	.loc 4 645 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 647 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC74
	ldr	r3, .L1567
	mov	r2, #648
	bl	_assert_fail
.LVL1234:
.L1568:
	.align	2
.L1567:
	.word	.LANCHOR4+1956
	.cfi_endproc
.LFE878:
	.size	fault_vm_fault_get_instructionFault.isra.163.part.164, .-fault_vm_fault_get_instructionFault.isra.163.part.164
	.align	2
	.syntax unified
	.arm
	.type	fault_vm_fault_get_FSR.isra.165.part.166, %function
fault_vm_fault_get_FSR.isra.165.part.166:
.LFB880:
	.loc 4 631 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 633 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC74
	.loc 4 631 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 633 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC74
	ldr	r3, .L1571
	movw	r2, #634
	bl	_assert_fail
.LVL1235:
.L1572:
	.align	2
.L1571:
	.word	.LANCHOR4+1992
	.cfi_endproc
.LFE880:
	.size	fault_vm_fault_get_FSR.isra.165.part.166, .-fault_vm_fault_get_FSR.isra.165.part.166
	.align	2
	.syntax unified
	.arm
	.type	fault_unknown_syscall_get_syscallNumber.part.167, %function
fault_unknown_syscall_get_syscallNumber.part.167:
.LFB881:
	.loc 4 674 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 676 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC75
	.loc 4 674 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 676 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC75
	ldr	r3, .L1575
	movw	r2, #677
	bl	_assert_fail
.LVL1236:
.L1576:
	.align	2
.L1575:
	.word	.LANCHOR4+2016
	.cfi_endproc
.LFE881:
	.size	fault_unknown_syscall_get_syscallNumber.part.167, .-fault_unknown_syscall_get_syscallNumber.part.167
	.align	2
	.syntax unified
	.arm
	.type	fault_user_exception_get_number.part.168, %function
fault_user_exception_get_number.part.168:
.LFB882:
	.loc 4 706 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 708 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC76
	.loc 4 706 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 708 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC76
	ldr	r3, .L1579
	movw	r2, #709
	bl	_assert_fail
.LVL1237:
.L1580:
	.align	2
.L1579:
	.word	.LANCHOR4+2056
	.cfi_endproc
.LFE882:
	.size	fault_user_exception_get_number.part.168, .-fault_user_exception_get_number.part.168
	.align	2
	.syntax unified
	.arm
	.type	fault_user_exception_get_code.isra.169.part.170, %function
fault_user_exception_get_code.isra.169.part.170:
.LFB884:
	.loc 4 720 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 722 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC76
	.loc 4 720 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 722 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC76
	ldr	r3, .L1583
	movw	r2, #723
	bl	_assert_fail
.LVL1238:
.L1584:
	.align	2
.L1583:
	.word	.LANCHOR4+2088
	.cfi_endproc
.LFE884:
	.size	fault_user_exception_get_code.isra.169.part.170, .-fault_user_exception_get_code.isra.169.part.170
	.text
	.align	2
	.global	setMRs_fault
	.syntax unified
	.arm
	.type	setMRs_fault, %function
setMRs_fault:
.LFB456:
	.loc 24 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1239:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	ip, r1
	.loc 24 74 0
	ldr	r3, [r0, #88]
	.loc 24 73 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 24 73 0
	mov	r1, r2
.LVL1240:
	.loc 24 74 0
	and	r3, r3, #7
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1586
.L1588:
	.word	.L1587
	.word	.L1589
	.word	.L1590
	.word	.L1591
.L1591:
.LVL1241:
.LBB7485:
.LBB7486:
.LBB7487:
	.loc 10 21 0 discriminator 1
	ldr	r3, [r0, #68]
	str	r3, [ip, #8]
.LVL1242:
	ldr	r3, [r0, #52]
	str	r3, [ip, #12]
.LVL1243:
	ldr	r3, [r0, #64]
	str	r3, [ip, #16]
.LVL1244:
.LBE7487:
.LBE7486:
.LBB7488:
.LBB7489:
	.loc 4 708 0 discriminator 1
	ldr	r3, [r0, #88]
	ldr	r2, [r0, #92]
.LVL1245:
	and	r3, r3, #7
	cmp	r3, #4
	bne	.L1610
.LVL1246:
.LBE7489:
.LBE7488:
.LBB7491:
.LBB7492:
.LBB7493:
	.loc 10 21 0
	str	r2, [ip, #20]
.LVL1247:
	ldr	r3, [r0, #88]
.LVL1248:
.LBE7493:
.LBE7492:
.LBE7491:
.LBB7494:
.LBB7495:
	.loc 4 722 0
	and	r2, r3, #7
.LVL1249:
	cmp	r2, #4
	bne	.L1611
.LVL1250:
.LBE7495:
.LBE7494:
.LBB7497:
.LBB7498:
.LBB7499:
	.loc 24 23 0
	cmp	r1, #0
	beq	.L1595
	.loc 24 24 0
	lsr	r3, r3, #3
.LVL1251:
	.loc 24 25 0
	mov	r0, #5
.LVL1252:
	.loc 24 24 0
	str	r3, [r1, #20]
.LVL1253:
.LBE7499:
.LBE7498:
.LBE7497:
.LBE7485:
	.loc 24 133 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1254:
.L1590:
	.cfi_restore_state
.LBB7502:
.LBB7503:
.LBB7504:
	.loc 10 21 0 discriminator 1
	ldr	r3, [r0]
.LBE7504:
.LBE7503:
	.loc 24 101 0 discriminator 1
	cmp	r2, #0
.LBB7506:
.LBB7505:
	.loc 10 21 0 discriminator 1
	str	r3, [ip, #8]
.LVL1255:
	ldr	r3, [r0, #4]
	str	r3, [ip, #12]
.LVL1256:
	ldr	r3, [r0, #8]
	str	r3, [ip, #16]
.LVL1257:
	ldr	r3, [r0, #12]
	str	r3, [ip, #20]
.LVL1258:
.LBE7505:
.LBE7506:
	.loc 24 101 0 discriminator 1
	beq	.L1595
.LVL1259:
.LBB7507:
.LBB7508:
	.loc 10 27 0
	ldr	r3, [r0, #16]
.LVL1260:
.LBE7508:
.LBE7507:
	.loc 24 103 0
	str	r3, [r2, #20]
.LVL1261:
.LBB7516:
.LBB7509:
	.loc 10 27 0
	ldr	r3, [r0, #20]
.LVL1262:
.LBE7509:
.LBE7516:
	.loc 24 103 0
	str	r3, [r2, #24]
.LVL1263:
.LBB7517:
.LBB7510:
	.loc 10 27 0
	ldr	r3, [r0, #24]
.LVL1264:
.LBE7510:
.LBE7517:
	.loc 24 103 0
	str	r3, [r2, #28]
.LVL1265:
.LBB7518:
.LBB7511:
	.loc 10 27 0
	ldr	r3, [r0, #28]
.LVL1266:
.LBE7511:
.LBE7518:
	.loc 24 103 0
	str	r3, [r2, #32]
.LVL1267:
.LBB7519:
.LBB7512:
	.loc 10 27 0
	ldr	r3, [r0, #68]
.LVL1268:
.LBE7512:
.LBE7519:
	.loc 24 103 0
	str	r3, [r2, #36]
.LVL1269:
.LBB7520:
.LBB7513:
	.loc 10 27 0
	ldr	r3, [r0, #52]
.LVL1270:
.LBE7513:
.LBE7520:
	.loc 24 103 0
	str	r3, [r2, #40]
.LVL1271:
.LBB7521:
.LBB7514:
	.loc 10 27 0
	ldr	r3, [r0, #56]
.LVL1272:
.LBE7514:
.LBE7521:
	.loc 24 103 0
	str	r3, [r2, #44]
.LVL1273:
.LBB7522:
.LBB7515:
	.loc 10 27 0
	ldr	r3, [r0, #64]
.LVL1274:
.LBE7515:
.LBE7522:
	.loc 24 103 0
	str	r3, [r2, #48]
.LVL1275:
.LBB7523:
.LBB7524:
	.loc 4 676 0
	ldr	r3, [r0, #88]
	ldr	r2, [r0, #92]
.LVL1276:
	and	r3, r3, #7
	cmp	r3, #3
.LBE7524:
.LBE7523:
	.loc 24 107 0
	streq	r2, [r1, #52]
.LVL1277:
	.loc 24 109 0
	moveq	r0, #13
.LVL1278:
.LBB7526:
.LBB7525:
	.loc 4 676 0
	beq	.L1598
	bl	fault_unknown_syscall_get_syscallNumber.part.167
.LVL1279:
.L1589:
.LBE7525:
.LBE7526:
.LBE7502:
.LBB7527:
.LBB7528:
.LBB7529:
	.loc 10 21 0
	ldr	r3, [r0, #68]
	str	r3, [ip, #8]
.LVL1280:
.LBE7529:
.LBE7528:
.LBE7527:
.LBB7530:
.LBB7531:
	.loc 4 619 0
	ldr	r3, [r0, #88]
	ldr	r2, [r0, #92]
.LVL1281:
	and	r3, r3, #7
	cmp	r3, #2
	bne	.L1612
.LVL1282:
.LBE7531:
.LBE7530:
.LBB7533:
.LBB7534:
.LBB7535:
	.loc 10 21 0
	str	r2, [ip, #12]
.LVL1283:
	ldr	r3, [r0, #88]
.LVL1284:
.LBE7535:
.LBE7534:
.LBE7533:
.LBB7536:
.LBB7537:
	.loc 4 647 0
	and	r2, r3, #7
.LVL1285:
	cmp	r2, #2
	bne	.L1613
.LVL1286:
.LBE7537:
.LBE7536:
.LBB7539:
.LBB7540:
.LBB7541:
	.loc 10 21 0
	ubfx	r3, r3, #17, #1
	str	r3, [ip, #16]
.LVL1287:
	ldr	r3, [r0, #88]
.LVL1288:
.LBE7541:
.LBE7540:
.LBE7539:
.LBB7542:
.LBB7543:
	.loc 4 633 0
	and	r2, r3, #7
	cmp	r2, #2
.LBE7543:
.LBE7542:
.LBB7545:
.LBB7546:
.LBB7547:
	.loc 10 21 0
	lsreq	r3, r3, #18
.LBE7547:
.LBE7546:
.LBE7545:
	.loc 24 90 0
	moveq	r0, #4
.LVL1289:
.LBB7550:
.LBB7549:
.LBB7548:
	.loc 10 21 0
	streq	r3, [ip, #20]
.LVL1290:
.LBE7548:
.LBE7549:
.LBE7550:
.LBB7551:
.LBB7544:
	.loc 4 633 0
	beq	.L1598
	bl	fault_vm_fault_get_FSR.isra.165.part.166
.LVL1291:
.L1587:
.LBE7544:
.LBE7551:
.LBB7552:
.LBB7553:
.LBB7554:
	.loc 10 21 0
	ldr	r3, [r0, #68]
	str	r3, [ip, #8]
.LVL1292:
.LBE7554:
.LBE7553:
.LBE7552:
.LBB7555:
.LBB7556:
	.loc 4 570 0
	ldr	r3, [r0, #88]
	ldr	r2, [r0, #92]
.LVL1293:
	and	r3, r3, #7
	cmp	r3, #1
	bne	.L1614
.LVL1294:
.LBE7556:
.LBE7555:
.LBB7558:
.LBB7559:
.LBB7560:
	.loc 10 21 0
	str	r2, [ip, #12]
.LVL1295:
	ldr	r3, [r0, #88]
.LVL1296:
.LBE7560:
.LBE7559:
.LBE7558:
.LBB7561:
.LBB7562:
	.loc 4 584 0
	and	r2, r3, #7
.LVL1297:
	cmp	r2, #1
	bne	.L1615
.LVL1298:
.LBE7562:
.LBE7561:
.LBB7564:
.LBB7565:
.LBB7566:
	.loc 10 21 0
	lsr	lr, r3, #31
.LBE7566:
.LBE7565:
.LBE7564:
	.loc 24 81 0
	add	r0, r0, #96
.LVL1299:
	mov	r4, #3
	ldm	r0, {r2, r3}
.LBB7569:
.LBB7568:
.LBB7567:
	.loc 10 21 0
	str	lr, [ip, #16]
.LVL1300:
.LBE7567:
.LBE7568:
.LBE7569:
	.loc 24 81 0
	mov	r0, ip
.LVL1301:
	str	r4, [sp]
.LVL1302:
	bl	setMRs_lookup_failure
.LVL1303:
.L1598:
	.loc 24 133 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1304:
.L1586:
	.loc 24 131 0
	movw	r1, #:lower16:.LC72
.LVL1305:
	movw	r0, #:lower16:.LC55
.LVL1306:
	movt	r1, #:upper16:.LC72
	movt	r0, #:upper16:.LC55
	ldr	r3, .L1616
	mov	r2, #131
.LVL1307:
	bl	_fail
.LVL1308:
.L1595:
	.cfi_restore_state
.LBB7570:
	.loc 24 111 0
	mov	r0, #4
.LVL1309:
.LBE7570:
	.loc 24 133 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL1310:
.L1612:
	.cfi_restore_state
.LBB7571:
.LBB7532:
	bl	fault_vm_fault_get_address.part.162
.LVL1311:
.L1614:
.LBE7532:
.LBE7571:
.LBB7572:
.LBB7557:
	bl	fault_cap_fault_get_address.part.152
.LVL1312:
.L1610:
.LBE7557:
.LBE7572:
.LBB7573:
.LBB7500:
.LBB7490:
	bl	fault_user_exception_get_number.part.168
.LVL1313:
.L1613:
.LBE7490:
.LBE7500:
.LBE7573:
.LBB7574:
.LBB7538:
	bl	fault_vm_fault_get_instructionFault.isra.163.part.164
.LVL1314:
.L1615:
.LBE7538:
.LBE7574:
.LBB7575:
.LBB7563:
	bl	fault_cap_fault_get_inReceivePhase.isra.153.part.154
.LVL1315:
.L1611:
.LBE7563:
.LBE7575:
.LBB7576:
.LBB7501:
.LBB7496:
	bl	fault_user_exception_get_code.isra.169.part.170
.LVL1316:
.L1617:
	.align	2
.L1616:
	.word	.LANCHOR4+2120
.LBE7496:
.LBE7501:
.LBE7576:
	.cfi_endproc
.LFE456:
	.size	setMRs_fault, .-setMRs_fault
	.section	.boot.text
	.align	2
	.syntax unified
	.arm
	.type	insert_region.part.171, %function
insert_region.part.171:
.LFB885:
	.loc 25 29 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 25 33 0
	movw	r1, #:lower16:.LC77
	movw	r0, #:lower16:.LC78
	.loc 25 29 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 33 0
	movt	r1, #:upper16:.LC77
	movt	r0, #:upper16:.LC78
	ldr	r3, .L1620
	mov	r2, #33
	bl	_assert_fail
.LVL1317:
.L1621:
	.align	2
.L1620:
	.word	.LANCHOR4+2136
	.cfi_endproc
.LFE885:
	.size	insert_region.part.171, .-insert_region.part.171
	.align	2
	.global	insert_region
	.syntax unified
	.arm
	.type	insert_region, %function
insert_region:
.LFB463:
	.loc 25 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 25 30 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldm	sp, {r1, r2}
.LVL1318:
	.loc 25 33 0
	cmp	r2, r1
	bcc	.L1630
.LVL1319:
	.loc 25 35 0
	moveq	r0, #1
	.loc 25 34 0
	beq	.L1624
.LVL1320:
	movw	r3, #:lower16:.LANCHOR3
	movt	r3, #:upper16:.LANCHOR3
	.loc 25 38 0 discriminator 1
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	cmp	ip, r0
	beq	.L1625
.LVL1321:
	.loc 25 38 0 is_stmt 0
	ldr	r0, [r3, #12]
	ldr	ip, [r3, #8]
	cmp	ip, r0
	.loc 25 43 0 is_stmt 1
	movne	r0, #0
	.loc 25 38 0
	beq	.L1631
.LVL1322:
.L1624:
	.loc 25 44 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1323:
.L1631:
	.cfi_restore_state
	.loc 25 38 0
	add	r3, r3, #8
.LVL1324:
.L1625:
	.loc 25 39 0
	str	r1, [r3]
	.loc 25 40 0
	mov	r0, #1
	.loc 25 39 0
	str	r2, [r3, #4]
	.loc 25 40 0
	b	.L1624
.LVL1325:
.L1630:
	bl	insert_region.part.171
.LVL1326:
	.cfi_endproc
.LFE463:
	.size	insert_region, .-insert_region
	.align	2
	.syntax unified
	.arm
	.type	insert_region_excluded.part.172, %function
insert_region_excluded.part.172:
.LFB886:
	.file 38 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/arch/arm/kernel/boot.c"
	.loc 38 37 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 38 62 0
	movw	r1, #:lower16:.LC79
	movw	r0, #:lower16:.LC80
	.loc 38 37 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 38 62 0
	movt	r1, #:upper16:.LC79
	movt	r0, #:upper16:.LC80
	ldr	r3, .L1634
	mov	r2, #62
	bl	_assert_fail
.LVL1327:
.L1635:
	.align	2
.L1634:
	.word	.LANCHOR4+2152
	.cfi_endproc
.LFE886:
	.size	insert_region_excluded.part.172, .-insert_region_excluded.part.172
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_cnode_cap_new.part.173, %function
cap_cnode_cap_new.part.173:
.LFB887:
	.loc 4 1465 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1328:
	.loc 4 1472 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC81
	.loc 4 1465 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1472 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC81
	ldr	r3, .L1638
	mov	r2, #1472
	bl	_assert_fail
.LVL1329:
.L1639:
	.align	2
.L1638:
	.word	.LANCHOR4+2176
	.cfi_endproc
.LFE887:
	.size	cap_cnode_cap_new.part.173, .-cap_cnode_cap_new.part.173
	.align	2
	.syntax unified
	.arm
	.type	cap_thread_cap_new.part.174, %function
cap_thread_cap_new.part.174:
.LFB888:
	.loc 4 1557 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1330:
	.loc 4 1564 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC82
	.loc 4 1557 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1564 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC82
	ldr	r3, .L1642
	movw	r2, #1564
	bl	_assert_fail
.LVL1331:
.L1643:
	.align	2
.L1642:
	.word	.LANCHOR4+2196
	.cfi_endproc
.LFE888:
	.size	cap_thread_cap_new.part.174, .-cap_thread_cap_new.part.174
	.align	2
	.syntax unified
	.arm
	.type	cap_untyped_cap_new.part.175, %function
cap_untyped_cap_new.part.175:
.LFB889:
	.loc 4 1024 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1332:
	.loc 4 1031 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC83
	.loc 4 1024 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1031 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC83
	ldr	r3, .L1646
	movw	r2, #1031
	bl	_assert_fail
.LVL1333:
.L1647:
	.align	2
.L1646:
	.word	.LANCHOR4+2216
	.cfi_endproc
.LFE889:
	.size	cap_untyped_cap_new.part.175, .-cap_untyped_cap_new.part.175
	.text
	.align	2
	.syntax unified
	.arm
	.type	has_extra_comparator, %function
has_extra_comparator:
.LFB504:
	.loc 3 335 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1334:
.LBB7589:
.LBB7590:
.LBB7591:
	.loc 4 469 0
	ldr	r3, [r0, #12]
.LBE7591:
.LBE7590:
.LBB7593:
.LBB7594:
	ldr	ip, [r1, #12]
.LBE7594:
.LBE7593:
.LBB7596:
.LBB7592:
	and	r3, r3, #31
.LBE7592:
.LBE7596:
.LBB7597:
.LBB7595:
	and	ip, ip, #31
.LBE7595:
.LBE7597:
	.loc 3 338 0
	cmp	ip, r3
	beq	.L1649
	.loc 3 338 0 is_stmt 0 discriminator 1
	bcs	.L1660
	.loc 3 338 0
	mov	r0, #1
.LVL1335:
	bx	lr
.LVL1336:
.L1649:
.LBE7589:
	.loc 3 342 0 is_stmt 1
	cmp	r2, #0
	.loc 3 335 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 3 342 0
	beq	.L1661
	.loc 3 343 0
	blx	r2
.LVL1337:
	.loc 3 346 0
	clz	r0, r0
.LVL1338:
	lsr	r0, r0, #5
	rsb	r0, r0, #0
	pop	{r4, pc}
.LVL1339:
.L1660:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
.LBB7598:
	.loc 3 338 0
	mvn	r0, #0
.LVL1340:
.LBE7598:
	.loc 3 350 0
	bx	lr
.LVL1341:
.L1661:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7599:
.LBB7600:
	.loc 3 342 0
	movw	r1, #:lower16:.LC84
.LVL1342:
	movw	r0, #:lower16:.LC85
.LVL1343:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC85
	ldr	r3, .L1662
	movw	r2, #342
.LVL1344:
	bl	_assert_fail
.LVL1345:
.L1663:
	.align	2
.L1662:
	.word	.LANCHOR4+2236
.LBE7600:
.LBE7599:
	.cfi_endproc
.LFE504:
	.size	has_extra_comparator, .-has_extra_comparator
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	mdb_node_new.part.177, %function
mdb_node_new.part.177:
.LFB891:
	.loc 4 425 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1346:
	.loc 4 432 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC86
	.loc 4 425 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 432 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC86
	ldr	r3, .L1666
	mov	r2, #432
	bl	_assert_fail
.LVL1347:
.L1667:
	.align	2
.L1666:
	.word	.LANCHOR4+2260
	.cfi_endproc
.LFE891:
	.size	mdb_node_new.part.177, .-mdb_node_new.part.177
	.text
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capSpaceType.isra.178, %function
cap_get_capSpaceType.isra.178:
.LFB892:
	.loc 36 24 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1348:
.LBB7609:
.LBB7610:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r0, r0
.LVL1349:
	.loc 4 998 0
	andne	r0, r0, #15
.LBE7610:
.LBE7609:
	.loc 36 30 0
	sub	r0, r0, #1
	cmp	r0, #61
	ldrls	pc, [pc, r0, asl #2]
	b	.L1671
.L1673:
	.word	.L1672
	.word	.L1674
	.word	.L1672
	.word	.L1672
	.word	.L1672
	.word	.L1672
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1672
	.word	.L1671
	.word	.L1672
	.word	.L1671
	.word	.L1677
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1677
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1672
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1671
	.word	.L1676
.L1677:
	.loc 36 45 0
	mov	r0, #2
	.loc 36 57 0
	bx	lr
.L1674:
	.loc 36 42 0
	mov	r0, #0
	bx	lr
.L1676:
	.loc 36 50 0
	mov	r0, #3
	bx	lr
.L1672:
	.loc 36 39 0
	mov	r0, #1
	bx	lr
.L1671:
.LBB7611:
.LBB7612:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
.LBE7612:
.LBE7611:
	.loc 36 24 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7614:
.LBB7613:
	.loc 36 53 0
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L1679
	mov	r2, #53
	bl	_assert_fail
.LVL1350:
.L1680:
	.align	2
.L1679:
	.word	.LANCHOR4+2276
.LBE7613:
.LBE7614:
	.cfi_endproc
.LFE892:
	.size	cap_get_capSpaceType.isra.178, .-cap_get_capSpaceType.isra.178
	.align	2
	.syntax unified
	.arm
	.type	compSlotWith, %function
compSlotWith:
.LFB502:
	.loc 3 315 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1351:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 3 315 0
	mov	r6, r1
	mov	r5, r0
	.loc 3 317 0
	ldr	r0, [r0]
.LVL1352:
	.loc 3 315 0
	mov	r7, r2
	.loc 3 317 0
	bl	cap_get_capSpaceType.isra.178
.LVL1353:
	mov	r4, r0
.LVL1354:
	.loc 3 318 0
	ldr	r0, [r6]
.LVL1355:
	bl	cap_get_capSpaceType.isra.178
.LVL1356:
.LBB7619:
	.loc 3 319 0
	cmp	r4, r0
	beq	.L1682
	.loc 3 319 0 is_stmt 0 discriminator 1
	ble	.L1688
	.loc 3 319 0
	mov	r0, #1
.LVL1357:
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1358:
.L1688:
	mvn	r0, #0
.LVL1359:
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1360:
.L1682:
.LBE7619:
.LBB7620:
.LBB7621:
	.loc 3 307 0 is_stmt 1
	cmp	r4, #3
	bhi	.L1693
	.loc 3 308 0
	movw	r3, #:lower16:.LANCHOR4
	movt	r3, #:upper16:.LANCHOR4
	add	r4, r3, r4, lsl #2
.LVL1361:
	ldr	r3, [r4, #2316]
.LVL1362:
	.loc 3 309 0
	cmp	r3, #0
	beq	.L1694
	.loc 3 310 0
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
.LVL1363:
.LBE7621:
.LBE7620:
	.loc 3 325 0
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1364:
.LBB7623:
.LBB7622:
	.loc 3 310 0
	bx	r3
.LVL1365:
.L1693:
	.cfi_restore_state
	.loc 3 307 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC87
.LVL1366:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC87
	ldr	r3, .L1695
	movw	r2, #307
	bl	_assert_fail
.LVL1367:
.L1694:
	.loc 3 309 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC88
.LVL1368:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC88
	ldr	r3, .L1695
.LVL1369:
	movw	r2, #309
	bl	_assert_fail
.LVL1370:
.L1696:
	.align	2
.L1695:
	.word	.LANCHOR4+2300
.LBE7622:
.LBE7623:
	.cfi_endproc
.LFE502:
	.size	compSlotWith, .-compSlotWith
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_irq_handler_cap_get_capIRQ.part.180, %function
cap_irq_handler_cap_get_capIRQ.part.180:
.LFB894:
	.loc 4 1929 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1931 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC89
	.loc 4 1929 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1931 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC89
	ldr	r3, .L1699
	movw	r2, #1932
	bl	_assert_fail
.LVL1371:
.L1700:
	.align	2
.L1699:
	.word	.LANCHOR4+2332
	.cfi_endproc
.LFE894:
	.size	cap_irq_handler_cap_get_capIRQ.part.180, .-cap_irq_handler_cap_get_capIRQ.part.180
	.text
	.align	2
	.syntax unified
	.arm
	.type	irq_comparator, %function
irq_comparator:
.LFB500:
	.loc 3 219 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1372:
	ldr	ip, [r0]
.LVL1373:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 3 219 0
	mov	r4, r2
.LBB7644:
.LBB7645:
	.loc 4 997 0
	and	r3, ip, #14
	cmp	r3, #14
	ldr	r3, [r1]
	.loc 4 998 0
	andne	r2, ip, #15
.LVL1374:
	.loc 4 999 0
	uxtbeq	r2, ip
.LVL1375:
.LBE7645:
.LBE7644:
.LBB7646:
.LBB7647:
	.loc 4 997 0
	and	lr, r3, #14
	cmp	lr, #14
	.loc 4 999 0
	uxtbeq	lr, r3
.LVL1376:
	.loc 4 998 0
	andne	lr, r3, #15
.LBE7647:
.LBE7646:
	.loc 3 228 0
	cmp	lr, r2
	beq	.L1719
	.loc 3 241 0
	cmp	r2, #14
	beq	.L1715
	.loc 3 244 0
	cmp	r2, #30
	bne	.L1720
.L1714:
.LBB7648:
	.loc 3 235 0
	mov	r0, #1
.LVL1377:
.LBE7648:
	.loc 3 247 0
	pop	{r4, pc}
.LVL1378:
.L1719:
	.loc 3 229 0
	cmp	lr, #14
	beq	.L1711
	.loc 3 234 0
	cmp	lr, #30
	bne	.L1721
.LVL1379:
.LBB7659:
.LBB7649:
.LBB7650:
	.loc 4 1931 0
	uxtb	ip, ip
.LVL1380:
	ldr	r2, [r0, #4]
.LVL1381:
	cmp	ip, #30
	bne	.L1710
.LBE7650:
.LBE7649:
.LBB7653:
.LBB7654:
	uxtb	r3, r3
.LBE7654:
.LBE7653:
.LBB7656:
.LBB7651:
	.loc 4 1934 0
	uxtb	r2, r2
.LVL1382:
	ldr	ip, [r1, #4]
.LVL1383:
.LBE7651:
.LBE7656:
.LBB7657:
.LBB7655:
	.loc 4 1931 0
	cmp	r3, #30
	bne	.L1710
	.loc 4 1934 0
	uxtb	ip, ip
.LVL1384:
.LBE7655:
.LBE7657:
	.loc 3 235 0
	cmp	ip, r2
	beq	.L1711
	.loc 3 235 0 is_stmt 0 discriminator 1
	bcc	.L1714
.LVL1385:
.L1715:
.LBE7659:
	.loc 3 242 0 is_stmt 1
	mvn	r0, #0
.LVL1386:
	pop	{r4, pc}
.LVL1387:
.L1711:
	.loc 3 231 0
	mov	r3, r4
	mov	r2, #0
	.loc 3 247 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1388:
	.loc 3 231 0
	bx	r3
.LVL1389:
.L1720:
	.cfi_restore_state
	.loc 3 244 0 discriminator 1
	movw	r1, #:lower16:.LC84
.LVL1390:
	movw	r0, #:lower16:.LC90
.LVL1391:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC90
	ldr	r3, .L1722
	mov	r2, #244
	bl	_assert_fail
.LVL1392:
.L1710:
.LBB7660:
.LBB7658:
.LBB7652:
	bl	cap_irq_handler_cap_get_capIRQ.part.180
.LVL1393:
.L1721:
.LBE7652:
.LBE7658:
.LBE7660:
.LBB7661:
.LBB7662:
	.loc 3 234 0
	movw	r1, #:lower16:.LC84
.LVL1394:
	movw	r0, #:lower16:.LC90
.LVL1395:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC90
	ldr	r3, .L1722
	mov	r2, #234
	bl	_assert_fail
.LVL1396:
.L1723:
	.align	2
.L1722:
	.word	.LANCHOR4+2364
.LBE7662:
.LBE7661:
	.cfi_endproc
.LFE500:
	.size	irq_comparator, .-irq_comparator
	.align	2
	.syntax unified
	.arm
	.type	typed_comparator, %function
typed_comparator:
.LFB499:
	.loc 3 176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1397:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 3 176 0
	mov	r5, r1
	mov	r4, r0
.LBB7671:
	.loc 3 204 0
	ldm	r0, {r0, r1}
.LVL1398:
.LBE7671:
	.loc 3 176 0
	mov	r7, r2
.LBB7672:
	.loc 3 204 0
	bl	cap_get_capPtr
.LVL1399:
	mov	r6, r0
.LVL1400:
	ldm	r5, {r0, r1}
.LVL1401:
	bl	cap_get_capPtr
.LVL1402:
	cmp	r6, r0
	beq	.L1725
	.loc 3 204 0 is_stmt 0 discriminator 1
	bls	.L1737
	.loc 3 204 0
	mov	r0, #1
.LVL1403:
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1404:
.L1725:
	ldr	r3, [r4]
.LVL1405:
.LBE7672:
.LBB7673:
.LBB7674:
	.loc 4 997 0 is_stmt 1
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 998 0
	andne	r1, r3, #15
	.loc 4 997 0
	beq	.L1738
.LVL1406:
.L1727:
.LBE7674:
.LBE7673:
	.loc 3 212 0
	movw	r3, #:lower16:.LANCHOR4
	movt	r3, #:upper16:.LANCHOR4
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #2400]
.LVL1407:
	.loc 3 213 0
	cmp	r3, #0
	beq	.L1739
	.loc 3 214 0
	mov	r2, r7
	mov	r1, r5
	mov	r0, r4
.LVL1408:
	.loc 3 215 0
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1409:
	.loc 3 214 0
	bx	r3
.LVL1410:
.L1737:
	.cfi_restore_state
.LBB7676:
	.loc 3 204 0
	mvn	r0, #0
.LVL1411:
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1412:
.L1738:
.LBE7676:
.LBB7677:
.LBB7675:
	.loc 4 999 0
	uxtb	r1, r3
.LVL1413:
.LBE7675:
.LBE7677:
	.loc 3 211 0
	cmp	r1, #46
	bls	.L1727
.LVL1414:
.LBB7678:
.LBB7679:
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC91
.LVL1415:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC91
	ldr	r3, .L1740
	mov	r2, #211
	bl	_assert_fail
.LVL1416:
.L1739:
.LBE7679:
.LBE7678:
	.loc 3 213 0 discriminator 1
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC88
.LVL1417:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC88
	ldr	r3, .L1740
.LVL1418:
	mov	r2, #213
	bl	_assert_fail
.LVL1419:
.L1741:
	.align	2
.L1740:
	.word	.LANCHOR4+2380
	.cfi_endproc
.LFE499:
	.size	typed_comparator, .-typed_comparator
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_async_endpoint_cap_get_capAEPBadge.part.185, %function
cap_async_endpoint_cap_get_capAEPBadge.part.185:
.LFB899:
	.loc 4 1276 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1278 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC33
	.loc 4 1276 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1278 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC33
	ldr	r3, .L1744
	movw	r2, #1279
	bl	_assert_fail
.LVL1420:
.L1745:
	.align	2
.L1744:
	.word	.LANCHOR4+2588
	.cfi_endproc
.LFE899:
	.size	cap_async_endpoint_cap_get_capAEPBadge.part.185, .-cap_async_endpoint_cap_get_capAEPBadge.part.185
	.text
	.align	2
	.syntax unified
	.arm
	.type	async_endpoint_cap_comparator, %function
async_endpoint_cap_comparator:
.LFB487:
	.loc 3 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1421:
.LBB7692:
.LBB7693:
.LBB7694:
	.loc 4 1278 0
	ldr	r3, [r0]
.LBE7694:
.LBE7693:
.LBE7692:
	.loc 3 98 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 3 98 0
	mov	lr, r2
	ldr	r2, [r0, #4]
.LVL1422:
.LBB7705:
.LBB7698:
.LBB7695:
	.loc 4 1278 0
	and	r3, r3, #15
	cmp	r3, #6
	bne	.L1748
.LBE7695:
.LBE7698:
.LBB7699:
.LBB7700:
	ldr	ip, [r1]
	mov	r4, r1
.LBE7700:
.LBE7699:
.LBB7702:
.LBB7696:
	.loc 4 1281 0
	lsr	r2, r2, #4
.LVL1423:
	ldr	r3, [r1, #4]
.LVL1424:
.LBE7696:
.LBE7702:
.LBB7703:
.LBB7701:
	.loc 4 1278 0
	and	ip, ip, #15
.LVL1425:
	cmp	ip, #6
	bne	.L1748
	.loc 4 1281 0
	lsr	r3, r3, #4
.LVL1426:
.LBE7701:
.LBE7703:
	.loc 3 101 0
	cmp	r3, r2
	beq	.L1749
	.loc 3 101 0 is_stmt 0 discriminator 1
	bcs	.L1755
	.loc 3 101 0
	mov	r0, #1
.LVL1427:
.LBE7705:
	.loc 3 107 0 is_stmt 1
	pop	{r4, pc}
.LVL1428:
.L1755:
.LBB7706:
	.loc 3 101 0
	mvn	r0, #0
.LVL1429:
	pop	{r4, pc}
.LVL1430:
.L1749:
.LBE7706:
.LBB7707:
.LBB7708:
	.loc 3 106 0
	mov	r3, lr
	mov	r2, #0
.LBE7708:
.LBE7707:
	.loc 3 107 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1431:
.LBB7710:
.LBB7709:
	.loc 3 106 0
	bx	r3
.LVL1432:
.L1748:
	.cfi_restore_state
.LBE7709:
.LBE7710:
.LBB7711:
.LBB7704:
.LBB7697:
	bl	cap_async_endpoint_cap_get_capAEPBadge.part.185
.LVL1433:
.LBE7697:
.LBE7704:
.LBE7711:
	.cfi_endproc
.LFE487:
	.size	async_endpoint_cap_comparator, .-async_endpoint_cap_comparator
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capBadge, %function
cap_get_capBadge:
.LFB211:
	.loc 30 389 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 30 389 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r0, [sp]
.LVL1434:
.LBB7718:
.LBB7719:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r0
	.loc 4 998 0
	andne	r3, r0, #15
.LBE7719:
.LBE7718:
	.loc 30 390 0
	cmp	r3, #4
	beq	.L1760
	cmp	r3, #6
	beq	.L1761
	.loc 30 396 0
	mov	r0, #0
.L1759:
	.loc 30 397 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1761:
	.cfi_restore_state
.LVL1435:
	ldr	r3, [sp, #4]
.LVL1436:
.LBB7720:
.LBB7721:
	.loc 4 1278 0
	and	r0, r0, #15
	cmp	r0, #6
	.loc 4 1281 0
	lsreq	r0, r3, #4
	.loc 4 1278 0
	beq	.L1759
	bl	cap_async_endpoint_cap_get_capAEPBadge.part.185
.LVL1437:
.L1760:
.LBE7721:
.LBE7720:
.LBB7722:
.LBB7723:
	.loc 4 1226 0
	and	r3, r0, #15
	cmp	r3, #4
	.loc 4 1229 0
	lsreq	r0, r0, #4
	.loc 4 1226 0
	beq	.L1759
	bl	cap_endpoint_cap_get_capEPBadge.isra.85.part.86
.LVL1438:
.LBE7723:
.LBE7722:
	.cfi_endproc
.LFE211:
	.size	cap_get_capBadge, .-cap_get_capBadge
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_endpoint_cap_new.part.187, %function
cap_endpoint_cap_new.part.187:
.LFB901:
	.loc 4 1103 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1439:
	.loc 4 1110 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC92
	.loc 4 1103 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1110 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC92
	ldr	r3, .L1770
	movw	r2, #1110
	bl	_assert_fail
.LVL1440:
.L1771:
	.align	2
.L1770:
	.word	.LANCHOR4+2628
	.cfi_endproc
.LFE901:
	.size	cap_endpoint_cap_new.part.187, .-cap_endpoint_cap_new.part.187
	.align	2
	.syntax unified
	.arm
	.type	cap_async_endpoint_cap_new.part.189, %function
cap_async_endpoint_cap_new.part.189:
.LFB903:
	.loc 4 1250 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1441:
	.loc 4 1257 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC93
	.loc 4 1250 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1257 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC93
	ldr	r3, .L1774
	movw	r2, #1257
	bl	_assert_fail
.LVL1442:
.L1775:
	.align	2
.L1774:
	.word	.LANCHOR4+2652
	.cfi_endproc
.LFE903:
	.size	cap_async_endpoint_cap_new.part.189, .-cap_async_endpoint_cap_new.part.189
	.align	2
	.syntax unified
	.arm
	.type	mdb_node_ptr_set_cdtLevel.isra.190.part.191, %function
mdb_node_ptr_set_cdtLevel.isra.190.part.191:
.LFB905:
	.loc 4 508 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1443:
	.loc 4 510 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC94
	.loc 4 508 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 510 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC94
	ldr	r3, .L1778
	movw	r2, #510
	bl	_assert_fail
.LVL1444:
.L1779:
	.align	2
.L1778:
	.word	.LANCHOR4+2680
	.cfi_endproc
.LFE905:
	.size	mdb_node_ptr_set_cdtLevel.isra.190.part.191, .-mdb_node_ptr_set_cdtLevel.isra.190.part.191
	.align	2
	.syntax unified
	.arm
	.type	mdb_node_ptr_set_cdtRight.part.192, %function
mdb_node_ptr_set_cdtRight.part.192:
.LFB906:
	.loc 30 227 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1445:
	.loc 30 229 0
	movw	r1, #:lower16:.LC95
	movw	r0, #:lower16:.LC96
	.loc 30 227 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 30 229 0
	movt	r1, #:upper16:.LC95
	movt	r0, #:upper16:.LC96
	ldr	r3, .L1782
	mov	r2, #229
	bl	_assert_fail
.LVL1446:
.L1783:
	.align	2
.L1782:
	.word	.LANCHOR4+2708
	.cfi_endproc
.LFE906:
	.size	mdb_node_ptr_set_cdtRight.part.192, .-mdb_node_ptr_set_cdtRight.part.192
	.align	2
	.syntax unified
	.arm
	.type	mdb_node_ptr_set_cdtLeft.part.193, %function
mdb_node_ptr_set_cdtLeft.part.193:
.LFB907:
	.loc 30 221 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1447:
	.loc 30 223 0
	movw	r1, #:lower16:.LC95
	movw	r0, #:lower16:.LC96
	.loc 30 221 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 30 223 0
	movt	r1, #:upper16:.LC95
	movt	r0, #:upper16:.LC96
	ldr	r3, .L1786
	mov	r2, #223
	bl	_assert_fail
.LVL1448:
.L1787:
	.align	2
.L1786:
	.word	.LANCHOR4+2736
	.cfi_endproc
.LFE907:
	.size	mdb_node_ptr_set_cdtLeft.part.193, .-mdb_node_ptr_set_cdtLeft.part.193
	.text
	.align	2
	.syntax unified
	.arm
	.type	aaSkew, %function
aaSkew:
.LFB536:
	.loc 3 1048 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1449:
	.loc 3 1058 0
	cmp	r0, #0
	bxeq	lr
	ldr	r2, [r0, #8]
.LBB7744:
.LBB7745:
	.loc 30 211 0
	lsr	r3, r2, #5
.LVL1450:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL1451:
	bxeq	lr
.LVL1452:
.LBE7745:
.LBE7744:
	.loc 3 1062 0
	orr	r3, r3, #-536870912
.LVL1453:
.LBB7746:
.LBB7747:
	.loc 4 499 0
	and	r2, r2, #31
.LBE7747:
.LBE7746:
	.loc 3 1063 0
	ldr	r1, [r3, #8]
	and	r1, r1, #31
	cmp	r2, r1
	bxne	lr
.LBB7748:
.LBB7749:
	.loc 30 217 0
	ldr	r1, [r3, #12]
	lsr	r1, r1, #5
.LVL1454:
	.loc 30 218 0
	lsls	r1, r1, #2
	lslne	r1, r1, #3
.LBE7749:
.LBE7748:
.LBB7750:
.LBB7751:
	.loc 30 229 0
	tst	r0, #3
.LBE7751:
.LBE7750:
.LBB7756:
.LBB7757:
.LBB7758:
.LBB7759:
	.loc 4 493 0
	orr	r2, r1, r2
	str	r2, [r0, #8]
.LVL1455:
.LBE7759:
.LBE7758:
.LBE7757:
.LBE7756:
.LBB7760:
.LBB7754:
	.loc 30 229 0
	bne	.L1797
.LVL1456:
.LBB7752:
.LBB7753:
	.loc 4 463 0
	ldr	r2, [r3, #12]
	ubfx	r1, r0, #2, #27
	mov	r0, r3
.LVL1457:
	and	r2, r2, #31
	orr	r2, r2, r1, lsl #5
	str	r2, [r3, #12]
.LVL1458:
.LBE7753:
.LBE7752:
.LBE7754:
.LBE7760:
	.loc 3 1074 0
	bx	lr
.LVL1459:
.L1797:
	.loc 3 1048 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB7761:
.LBB7755:
	bl	mdb_node_ptr_set_cdtRight.part.192
.LVL1460:
.LBE7755:
.LBE7761:
	.cfi_endproc
.LFE536:
	.size	aaSkew, .-aaSkew
	.align	2
	.syntax unified
	.arm
	.type	aaSplit, %function
aaSplit:
.LFB535:
	.loc 3 1005 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1461:
	.loc 3 1018 0
	cmp	r0, #0
	.loc 3 1005 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 3 1018 0
	popeq	{r4, pc}
	ldr	ip, [r0, #12]
.LBB7792:
.LBB7793:
	.loc 30 217 0
	lsr	r3, ip, #5
.LVL1462:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL1463:
	popeq	{r4, pc}
.LVL1464:
.LBE7793:
.LBE7792:
	.loc 3 1022 0
	orr	r3, r3, #-536870912
.LVL1465:
.LBB7794:
.LBB7795:
	.loc 30 217 0
	ldr	r2, [r3, #12]
	lsr	r2, r2, #5
.LVL1466:
	.loc 30 218 0
	lsls	r2, r2, #2
.LVL1467:
	popeq	{r4, pc}
.LVL1468:
	orr	r2, r2, #-536870912
.LVL1469:
.LBE7795:
.LBE7794:
	.loc 3 1026 0
	ldr	r1, [r0, #8]
	ldr	r2, [r2, #8]
.LVL1470:
	and	r1, r1, #31
	and	r2, r2, #31
	cmp	r2, r1
	popne	{r4, pc}
.LBB7796:
.LBB7797:
	.loc 30 211 0
	ldr	r2, [r3, #8]
.LBE7797:
.LBE7796:
.LBB7799:
.LBB7800:
.LBB7801:
.LBB7802:
	.loc 4 463 0
	and	ip, ip, #31
.LBE7802:
.LBE7801:
.LBE7800:
.LBE7799:
.LBB7806:
.LBB7798:
	.loc 30 211 0
	lsr	r2, r2, #5
.LVL1471:
	.loc 30 212 0
	lsls	r2, r2, #2
	lslne	r2, r2, #3
.LBE7798:
.LBE7806:
.LBB7807:
.LBB7805:
.LBB7804:
.LBB7803:
	.loc 4 463 0
	orr	r2, ip, r2
	str	r2, [r0, #12]
.LVL1472:
	ldr	r1, [r3, #8]
.LBE7803:
.LBE7804:
.LBE7805:
.LBE7807:
	.loc 3 1032 0
	and	r2, r1, #31
	add	r2, r2, #1
.LVL1473:
.LBB7808:
.LBB7809:
	.loc 4 510 0
	bics	ip, r2, #31
	bne	.L1810
	.loc 4 512 0
	bic	r1, r1, #31
	orr	r1, r1, r2
.LBE7809:
.LBE7808:
	.loc 3 1036 0
	and	ip, r1, #31
.LBB7812:
.LBB7810:
	.loc 4 512 0
	str	r1, [r3, #8]
.LVL1474:
.LBE7810:
.LBE7812:
	.loc 3 1036 0
	cmp	r2, ip
	bne	.L1811
.LVL1475:
.LBB7813:
.LBB7814:
	.loc 30 223 0
	tst	r0, #3
	bne	.L1812
.LVL1476:
.LBB7815:
.LBB7816:
	.loc 4 493 0
	ubfx	r1, r0, #2, #27
	mov	r0, r3
.LVL1477:
	orr	r2, r2, r1, lsl #5
.LVL1478:
	str	r2, [r3, #8]
.LVL1479:
.LBE7816:
.LBE7815:
.LBE7814:
.LBE7813:
	.loc 3 1045 0
	pop	{r4, pc}
.LVL1480:
.L1810:
.LBB7818:
.LBB7811:
	bl	mdb_node_ptr_set_cdtLevel.isra.190.part.191
.LVL1481:
.L1811:
.LBE7811:
.LBE7818:
	.loc 3 1036 0 discriminator 1
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC97
.LVL1482:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC97
	ldr	r3, .L1813
.LVL1483:
	movw	r2, #1036
.LVL1484:
	bl	_assert_fail
.LVL1485:
.L1812:
.LBB7819:
.LBB7817:
	bl	mdb_node_ptr_set_cdtLeft.part.193
.LVL1486:
.L1814:
	.align	2
.L1813:
	.word	.LANCHOR4+2764
.LBE7817:
.LBE7819:
	.cfi_endproc
.LFE535:
	.size	aaSplit, .-aaSplit
	.align	2
	.syntax unified
	.arm
	.type	aaRemove, %function
aaRemove:
.LFB531:
	.loc 3 888 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1487:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 3 891 0
	subs	r6, r2, #0
	beq	.L1884
	.loc 3 894 0
	cmp	r1, #0
	mov	r4, r1
	beq	.L1885
.LBB7948:
.LBB7949:
	.loc 3 331 0
	movw	r2, #:lower16:tie_break_comparator
.LVL1488:
	mov	r5, r0
.LVL1489:
	movt	r2, #:upper16:tie_break_comparator
	mov	r0, r6
.LVL1490:
	bl	compSlotWith
.LVL1491:
.LBE7949:
.LBE7948:
	.loc 3 898 0
	cmn	r0, #1
	beq	.L1819
	cmp	r0, #1
	bne	.L1876
.LBB7950:
.LBB7951:
	.loc 30 217 0
	ldr	r1, [r4, #12]
.LBE7951:
.LBE7950:
	.loc 3 901 0
	mov	r2, r6
	mov	r0, r5
.LBB7953:
.LBB7952:
	.loc 30 217 0
	lsr	r1, r1, #5
.LVL1492:
	.loc 30 218 0
	lsls	r1, r1, #2
	orrne	r1, r1, #-536870912
.LBE7952:
.LBE7953:
	.loc 3 901 0
	bl	aaRemove
.LVL1493:
.LBB7954:
.LBB7955:
	.loc 30 229 0
	tst	r0, #3
	bne	.L1837
.LVL1494:
.LBB7956:
.LBB7957:
	.loc 4 463 0
	ldr	r2, [r4, #12]
	ubfx	r0, r0, #2, #27
.LVL1495:
	ldr	r3, [r4, #8]
	and	r2, r2, #31
	orr	r2, r2, r0, lsl #5
	str	r2, [r4, #12]
.LVL1496:
.L1823:
.LBE7957:
.LBE7956:
.LBE7955:
.LBE7954:
.LBB7959:
.LBB7960:
.LBB7961:
.LBB7962:
.LBB7963:
.LBB7964:
	.loc 30 211 0
	lsr	r1, r3, #5
.LVL1497:
	.loc 30 212 0
	lsls	r1, r1, #2
.LVL1498:
	beq	.L1838
.LVL1499:
.L1847:
.LBE7964:
.LBE7963:
.LBB7967:
.LBB7968:
	.loc 30 217 0
	lsr	r2, r2, #5
.LBE7968:
.LBE7967:
	.loc 3 988 0
	orr	r1, r1, #-536870912
.LVL1500:
.LBB7971:
.LBB7972:
	.loc 3 839 0
	ldr	r1, [r1, #8]
.LVL1501:
.LBE7972:
.LBE7971:
.LBB7975:
.LBB7969:
	.loc 30 218 0
	lsls	r2, r2, #2
.LVL1502:
.LBE7969:
.LBE7975:
.LBB7976:
.LBB7973:
	.loc 3 839 0
	and	r0, r1, #31
.LBE7973:
.LBE7976:
	.loc 3 989 0
	orrne	r2, r2, #-536870912
.LVL1503:
.L1853:
.LBB7977:
.LBB7978:
	.loc 3 836 0
	cmp	r2, #0
	beq	.L1840
.LVL1504:
.LBE7978:
.LBE7977:
	.loc 3 993 0
	ldr	r1, [r2, #8]
	and	ip, r3, #31
	and	r1, r1, #31
	cmp	r1, r0
	movge	r1, r0
	add	r1, r1, #1
	cmp	ip, r1
	bls	.L1842
.LVL1505:
.LBB7979:
.LBB7980:
	.loc 4 512 0
	bic	r3, r3, #31
	orr	r3, r3, r1
	str	r3, [r4, #8]
.LVL1506:
	ldr	r3, [r2, #8]
.LBE7980:
.LBE7979:
	.loc 3 996 0
	and	r0, r3, #31
	cmp	r0, r1
.LVL1507:
.LBB7982:
.LBB7983:
	.loc 4 512 0
	bichi	r3, r3, #31
	orrhi	r1, r3, r1
.LVL1508:
	strhi	r1, [r2, #8]
.LVL1509:
.L1842:
.LBE7983:
.LBE7982:
.LBE7962:
.LBE7961:
	.loc 3 961 0
	mov	r0, r4
	bl	aaSkew
.LVL1510:
	mov	r6, r0
.LVL1511:
.LBB7992:
.LBB7993:
	.loc 30 217 0
	ldr	r0, [r0, #12]
.LVL1512:
	lsr	r0, r0, #5
.LVL1513:
	.loc 30 218 0
	lsls	r0, r0, #2
	orrne	r0, r0, #-536870912
.LBE7993:
.LBE7992:
	.loc 3 963 0
	bl	aaSkew
.LVL1514:
.LBB7994:
.LBB7995:
	.loc 30 229 0
	ands	r5, r0, #3
.LBE7995:
.LBE7994:
	.loc 3 963 0
	mov	r4, r0
.LVL1515:
.LBB8002:
.LBB8000:
	.loc 30 229 0
	bne	.L1837
.LVL1516:
.LBB7996:
.LBB7997:
	.loc 4 463 0
	ldr	r2, [r6, #12]
	ubfx	r3, r0, #2, #27
.LBE7997:
.LBE7996:
.LBE8000:
.LBE8002:
	.loc 3 966 0
	cmp	r0, #0
.LBB8003:
.LBB8001:
.LBB7999:
.LBB7998:
	.loc 4 463 0
	and	r2, r2, #31
	orr	r3, r2, r3, lsl #5
	str	r3, [r6, #12]
.LVL1517:
.LBE7998:
.LBE7999:
.LBE8001:
.LBE8003:
	.loc 3 966 0
	beq	.L1844
.LBB8004:
.LBB8005:
	.loc 30 217 0
	ldr	r0, [r0, #12]
.LVL1518:
	lsr	r0, r0, #5
.LVL1519:
	.loc 30 218 0
	lsls	r0, r0, #2
	orrne	r0, r0, #-536870912
	moveq	r0, r5
.LBE8005:
.LBE8004:
	.loc 3 967 0
	bl	aaSkew
.LVL1520:
.LBB8006:
.LBB8007:
	.loc 30 229 0
	tst	r0, #3
	bne	.L1837
.LVL1521:
.LBB8008:
.LBB8009:
	.loc 4 463 0
	ldr	r3, [r4, #12]
	ubfx	r2, r0, #2, #27
	and	r0, r3, #31
.LVL1522:
	orr	r0, r0, r2, lsl #5
	str	r0, [r4, #12]
.LVL1523:
.L1844:
.LBE8009:
.LBE8008:
.LBE8007:
.LBE8006:
	.loc 3 971 0
	mov	r0, r6
	bl	aaSplit
.LVL1524:
.LBB8010:
.LBB8011:
	.loc 30 217 0
	ldr	r3, [r0, #12]
.LBE8011:
.LBE8010:
	.loc 3 971 0
	mov	r4, r0
.LVL1525:
.LBB8013:
.LBB8012:
	.loc 30 217 0
	lsr	r3, r3, #5
.LVL1526:
	.loc 30 218 0
	lsls	r3, r3, #2
	orrne	r5, r3, #-536870912
.LBE8012:
.LBE8013:
	.loc 3 973 0
	mov	r0, r5
.LVL1527:
	bl	aaSplit
.LVL1528:
.LBB8014:
.LBB8015:
	.loc 30 229 0
	tst	r0, #3
	bne	.L1837
.LVL1529:
.LBB8016:
.LBB8017:
	.loc 4 463 0
	ldr	r3, [r4, #12]
	ubfx	r2, r0, #2, #27
	mov	r0, r4
.LVL1530:
	and	r3, r3, #31
	orr	r3, r3, r2, lsl #5
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1531:
.L1876:
.LBE8017:
.LBE8016:
.LBE8015:
.LBE8014:
.LBE7960:
.LBE7959:
.LBB8025:
.LBB8026:
	.loc 3 923 0
	ldr	r5, [r4, #8]
.LVL1532:
	ldr	r2, [r4, #12]
.LVL1533:
.LBB8027:
.LBB8028:
	.loc 30 211 0
	lsr	r7, r5, #5
.LVL1534:
.LBE8028:
.LBE8027:
.LBB8030:
.LBB8031:
	.loc 30 217 0
	lsr	r2, r2, #5
.LVL1535:
.LBE8031:
.LBE8030:
.LBB8035:
.LBB8029:
	.loc 30 212 0
	lsls	r7, r7, #2
.LVL1536:
	beq	.L1826
	orr	r7, r7, #-536870912
.LVL1537:
.LBE8029:
.LBE8035:
.LBB8036:
.LBB8032:
	.loc 30 218 0
	lsls	r6, r2, #2
.LVL1538:
.LBE8032:
.LBE8036:
.LBB8037:
.LBB8038:
.LBB8039:
.LBB8040:
	.loc 30 217 0
	ldr	r2, [r7, #12]
	lsr	r2, r2, #5
.LBE8040:
.LBE8039:
.LBE8038:
.LBE8037:
.LBB8051:
.LBB8033:
	.loc 30 218 0
	beq	.L1827
.LVL1539:
.LBE8033:
.LBE8051:
.LBB8052:
.LBB8047:
.LBB8043:
.LBB8041:
	lsls	r8, r2, #2
.LVL1540:
	bne	.L1856
.LVL1541:
.LBE8041:
.LBE8043:
.LBE8047:
.LBE8052:
	.loc 3 929 0
	mov	r2, r7
	mov	r1, r7
	mov	r0, #1
.LBB8053:
.LBB8054:
	.loc 4 512 0
	and	r5, r5, #31
.LVL1542:
.LBE8054:
.LBE8053:
	.loc 3 929 0
	bl	aaRemove
.LVL1543:
.LBB8061:
.LBB8055:
	.loc 4 512 0
	ldr	r3, [r7, #8]
	mov	r4, r7
.LVL1544:
	bic	r3, r3, #31
	orr	r5, r3, r5
	str	r5, [r7, #8]
.LVL1545:
.L1831:
	lsl	r2, r6, #3
.LVL1546:
.L1832:
.LBE8055:
.LBE8061:
.LBB8062:
.LBB8063:
.LBB8064:
.LBB8065:
	.loc 4 463 0
	ldr	r3, [r4, #12]
.LBE8065:
.LBE8064:
.LBE8063:
.LBE8062:
.LBB8069:
.LBB8070:
	.loc 30 223 0
	tst	r0, #3
.LBE8070:
.LBE8069:
.LBB8077:
.LBB8068:
.LBB8067:
.LBB8066:
	.loc 4 463 0
	and	r3, r3, #31
	orr	r2, r3, r2
	str	r2, [r4, #12]
.LVL1547:
.LBE8066:
.LBE8067:
.LBE8068:
.LBE8077:
.LBB8078:
.LBB8075:
	.loc 30 223 0
	bne	.L1834
.LVL1548:
.LBB8071:
.LBB8072:
	.loc 4 493 0
	ubfx	r0, r0, #2, #27
.LVL1549:
	and	r5, r5, #31
	orr	r3, r5, r0, lsl #5
.LBE8072:
.LBE8071:
.LBE8075:
.LBE8078:
.LBE8026:
.LBE8025:
.LBB8123:
.LBB8021:
.LBB8018:
.LBB7989:
.LBB7984:
.LBB7965:
	.loc 30 211 0
	lsr	r1, r3, #5
.LBE7965:
.LBE7984:
.LBE7989:
.LBE8018:
.LBE8021:
.LBE8123:
.LBB8124:
.LBB8119:
.LBB8079:
.LBB8076:
.LBB8074:
.LBB8073:
	.loc 4 493 0
	str	r3, [r4, #8]
.LVL1550:
.LBE8073:
.LBE8074:
.LBE8076:
.LBE8079:
.LBE8119:
.LBE8124:
.LBB8125:
.LBB8022:
.LBB8019:
.LBB7990:
.LBB7985:
.LBB7966:
	.loc 30 212 0
	lsls	r1, r1, #2
.LVL1551:
	bne	.L1847
.LVL1552:
.L1838:
.LBE7966:
.LBE7985:
.LBB7986:
.LBB7970:
	.loc 30 217 0
	lsr	r2, r2, #5
.LVL1553:
	.loc 30 218 0
	lsls	r2, r2, #2
.LVL1554:
	bne	.L1886
.LVL1555:
.L1840:
.LBE7970:
.LBE7986:
	.loc 3 993 0
	and	r2, r3, #31
	cmp	r2, #1
.LVL1556:
.LBB7987:
.LBB7981:
	.loc 4 512 0
	bichi	r3, r3, #31
	orrhi	r3, r3, #1
	strhi	r3, [r4, #8]
	b	.L1842
.LVL1557:
.L1819:
.LBE7981:
.LBE7987:
.LBE7990:
.LBE8019:
.LBE8022:
.LBE8125:
.LBB8126:
.LBB8127:
	.loc 30 211 0
	ldr	r1, [r4, #8]
.LBE8127:
.LBE8126:
	.loc 3 906 0
	mov	r2, r6
	mov	r0, r5
.LBB8129:
.LBB8128:
	.loc 30 211 0
	lsr	r1, r1, #5
.LVL1558:
	.loc 30 212 0
	lsls	r1, r1, #2
	orrne	r1, r1, #-536870912
.LBE8128:
.LBE8129:
	.loc 3 906 0
	bl	aaRemove
.LVL1559:
.LBB8130:
.LBB8131:
	.loc 30 223 0
	tst	r0, #3
	bne	.L1834
.LVL1560:
.LBB8132:
.LBB8133:
	.loc 4 493 0
	ldr	r3, [r4, #8]
	ubfx	r0, r0, #2, #27
.LVL1561:
	ldr	r2, [r4, #12]
	and	r3, r3, #31
	orr	r3, r3, r0, lsl #5
	str	r3, [r4, #8]
	b	.L1823
.LVL1562:
.L1826:
.LBE8133:
.LBE8132:
.LBE8131:
.LBE8130:
.LBB8135:
.LBB8120:
.LBB8080:
.LBB8034:
	.loc 30 218 0
	lsls	r6, r2, #2
.LVL1563:
	bne	.L1829
.LBE8034:
.LBE8080:
.LBE8120:
.LBE8135:
.LBB8136:
.LBB8023:
	.loc 3 957 0
	mov	r0, r6
.LVL1564:
.LBE8023:
.LBE8136:
	.loc 3 913 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1565:
.L1856:
.LBB8137:
.LBB8121:
.LBB8081:
.LBB8048:
	.loc 3 758 0
	orr	r4, r8, #-536870912
.LVL1566:
.L1833:
.LBB8044:
.LBB8045:
	.loc 30 217 0
	ldr	r3, [r4, #12]
	lsr	r3, r3, #5
.LVL1567:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL1568:
	bne	.L1830
.LVL1569:
.LBE8045:
.LBE8044:
.LBE8048:
.LBE8081:
	.loc 3 929 0
	mov	r2, r4
	mov	r1, r7
	mov	r0, #1
.LBB8082:
.LBB8056:
	.loc 4 512 0
	and	r5, r5, #31
.LVL1570:
.LBE8056:
.LBE8082:
	.loc 3 929 0
	bl	aaRemove
.LVL1571:
.LBB8083:
.LBB8057:
	.loc 4 512 0
	ldr	r3, [r4, #8]
.LBE8057:
.LBE8083:
.LBB8084:
.LBB8085:
	.loc 30 218 0
	cmp	r6, #0
	moveq	r2, r6
.LBE8085:
.LBE8084:
.LBB8087:
.LBB8058:
	.loc 4 512 0
	bic	r3, r3, #31
	orr	r5, r3, r5
	str	r5, [r4, #8]
.LVL1572:
.LBE8058:
.LBE8087:
.LBB8088:
.LBB8086:
	.loc 30 218 0
	beq	.L1832
	b	.L1831
.LVL1573:
.L1830:
.LBE8086:
.LBE8088:
.LBB8089:
.LBB8049:
	.loc 3 761 0
	orr	r4, r3, #-536870912
.LVL1574:
	b	.L1833
.LVL1575:
.L1886:
.LBE8049:
.LBE8089:
.LBE8121:
.LBE8137:
.LBB8138:
.LBB8024:
.LBB8020:
.LBB7991:
	.loc 3 989 0
	orr	r2, r2, #-536870912
.LVL1576:
.LBB7988:
.LBB7974:
	.loc 3 837 0
	mov	r0, #0
	b	.L1853
.LVL1577:
.L1829:
.LBE7974:
.LBE7988:
.LBE7991:
.LBE8020:
.LBE8024:
.LBE8138:
.LBB8139:
.LBB8122:
	.loc 3 926 0
	orr	r1, r6, #-536870912
.LVL1578:
.LBB8090:
.LBB8091:
.LBB8092:
.LBB8093:
	.loc 30 211 0
	ldr	r3, [r1, #8]
	lsr	r3, r3, #5
.LVL1579:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL1580:
	moveq	r4, r1
.LVL1581:
	bne	.L1881
.LVL1582:
.L1835:
.LBE8093:
.LBE8092:
.LBE8091:
.LBE8090:
	.loc 3 939 0
	mov	r2, r4
	mov	r0, #1
	bl	aaRemove
.LVL1583:
.LBB8097:
.LBB8098:
	.loc 4 512 0
	ldr	r2, [r4, #8]
	and	r3, r5, #31
.LBE8098:
.LBE8097:
.LBB8100:
.LBB8101:
	.loc 30 229 0
	tst	r0, #3
.LBE8101:
.LBE8100:
.LBB8108:
.LBB8099:
	.loc 4 512 0
	bic	r2, r2, #31
	orr	r3, r2, r3
	str	r3, [r4, #8]
.LVL1584:
.LBE8099:
.LBE8108:
.LBB8109:
.LBB8106:
	.loc 30 229 0
	bne	.L1837
.LVL1585:
.LBB8102:
.LBB8103:
	.loc 4 463 0
	ldr	r2, [r4, #12]
	ubfx	r0, r0, #2, #27
.LVL1586:
.LBE8103:
.LBE8102:
.LBE8106:
.LBE8109:
.LBB8110:
.LBB8111:
.LBB8112:
.LBB8113:
	.loc 4 492 0
	and	r3, r3, #31
	str	r3, [r4, #8]
.LBE8113:
.LBE8112:
.LBE8111:
.LBE8110:
.LBB8114:
.LBB8107:
.LBB8105:
.LBB8104:
	.loc 4 463 0
	and	r2, r2, #31
	orr	r2, r2, r0, lsl #5
	str	r2, [r4, #12]
.LVL1587:
	b	.L1838
.LVL1588:
.L1881:
.LBE8104:
.LBE8105:
.LBE8107:
.LBE8114:
.LBB8115:
.LBB8096:
	.loc 3 746 0
	orr	r4, r3, #-536870912
.LVL1589:
.LBB8094:
.LBB8095:
	.loc 30 211 0
	ldr	r3, [r4, #8]
	lsr	r3, r3, #5
.LVL1590:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL1591:
	beq	.L1835
	b	.L1881
.LVL1592:
.L1827:
.LBE8095:
.LBE8094:
.LBE8096:
.LBE8115:
.LBB8116:
.LBB8050:
.LBB8046:
.LBB8042:
	.loc 30 218 0
	lsls	r8, r2, #2
.LVL1593:
	bne	.L1856
.LVL1594:
.LBE8042:
.LBE8046:
.LBE8050:
.LBE8116:
	.loc 3 929 0
	mov	r2, r7
	mov	r1, r7
	mov	r0, #1
.LBB8117:
.LBB8059:
	.loc 4 512 0
	and	r5, r5, #31
.LVL1595:
.LBE8059:
.LBE8117:
	.loc 3 929 0
	bl	aaRemove
.LVL1596:
.LBB8118:
.LBB8060:
	.loc 4 512 0
	ldr	r3, [r7, #8]
	mov	r4, r7
.LVL1597:
	mov	r2, r8
	bic	r3, r3, #31
	orr	r5, r3, r5
	str	r5, [r7, #8]
.LVL1598:
	b	.L1832
.LVL1599:
.L1837:
.LBE8060:
.LBE8118:
.LBE8122:
.LBE8139:
.LBB8140:
.LBB7958:
	bl	mdb_node_ptr_set_cdtRight.part.192
.LVL1600:
.L1885:
.LBE7958:
.LBE8140:
	.loc 3 895 0
	movw	r1, #:lower16:.LC84
.LVL1601:
	movw	r0, #:lower16:.LC99
.LVL1602:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC99
	ldr	r3, .L1887
	movw	r2, #895
.LVL1603:
	bl	_fail
.LVL1604:
.L1884:
	.loc 3 892 0
	movw	r1, #:lower16:.LC84
.LVL1605:
	movw	r0, #:lower16:.LC98
.LVL1606:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC98
	ldr	r3, .L1887
	mov	r2, #892
.LVL1607:
	bl	_fail
.LVL1608:
.L1834:
.LBB8141:
.LBB8134:
	bl	mdb_node_ptr_set_cdtLeft.part.193
.LVL1609:
.L1888:
	.align	2
.L1887:
	.word	.LANCHOR4+2772
.LBE8134:
.LBE8141:
	.cfi_endproc
.LFE531:
	.size	aaRemove, .-aaRemove
	.align	2
	.syntax unified
	.arm
	.type	aaInsert, %function
aaInsert:
.LFB530:
	.loc 3 848 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1610:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 851 0
	subs	r5, r1, #0
	beq	.L1908
	.loc 3 854 0
	cmp	r5, r0
	mov	r4, r0
	beq	.L1909
	.loc 3 856 0
	cmp	r0, #0
	beq	.L1906
.LVL1611:
.LBB8162:
.LBB8163:
	.loc 3 331 0
	movw	r2, #:lower16:tie_break_comparator
	mov	r1, r0
.LVL1612:
	movt	r2, #:upper16:tie_break_comparator
	mov	r0, r5
.LVL1613:
	bl	compSlotWith
.LVL1614:
.LBE8163:
.LBE8162:
	.loc 3 863 0
	cmn	r0, #1
	beq	.L1895
	cmp	r0, #1
	bne	.L1905
.LBB8164:
.LBB8165:
	.loc 30 217 0
	ldr	r0, [r4, #12]
.LBE8165:
.LBE8164:
	.loc 3 866 0
	mov	r1, r5
.LBB8167:
.LBB8166:
	.loc 30 217 0
	lsr	r0, r0, #5
.LVL1615:
	.loc 30 218 0
	lsls	r0, r0, #2
	orrne	r0, r0, #-536870912
.LBE8166:
.LBE8167:
	.loc 3 866 0
	bl	aaInsert
.LVL1616:
.LBB8168:
.LBB8169:
	.loc 30 229 0
	tst	r0, #3
	bne	.L1910
.LVL1617:
.LBB8170:
.LBB8171:
	.loc 4 463 0
	ldr	r3, [r4, #12]
	ubfx	r2, r0, #2, #27
	and	r0, r3, #31
.LVL1618:
	orr	r0, r0, r2, lsl #5
	str	r0, [r4, #12]
.LBE8171:
.LBE8170:
.LBE8169:
.LBE8168:
	.loc 3 880 0
	mov	r0, r4
	bl	aaSkew
.LVL1619:
	.loc 3 885 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1620:
	.loc 3 881 0
	b	aaSplit
.LVL1621:
.L1905:
	.cfi_restore_state
	.loc 3 877 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC102
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC102
	ldr	r3, .L1912
	movw	r2, #877
	bl	_fail
.LVL1622:
.L1895:
.LBB8173:
.LBB8174:
	.loc 30 211 0
	ldr	r0, [r4, #8]
.LBE8174:
.LBE8173:
	.loc 3 872 0
	mov	r1, r5
.LBB8176:
.LBB8175:
	.loc 30 211 0
	lsr	r0, r0, #5
.LVL1623:
	.loc 30 212 0
	lsls	r0, r0, #2
	orrne	r0, r0, #-536870912
.LBE8175:
.LBE8176:
	.loc 3 872 0
	bl	aaInsert
.LVL1624:
.LBB8177:
.LBB8178:
	.loc 30 223 0
	tst	r0, #3
	bne	.L1911
.LVL1625:
.LBB8179:
.LBB8180:
	.loc 4 493 0
	ldr	r3, [r4, #8]
	ubfx	r2, r0, #2, #27
	and	r0, r3, #31
.LVL1626:
	orr	r0, r0, r2, lsl #5
	str	r0, [r4, #8]
.LBE8180:
.LBE8179:
.LBE8178:
.LBE8177:
	.loc 3 880 0
	mov	r0, r4
	bl	aaSkew
.LVL1627:
	.loc 3 885 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL1628:
	.loc 3 881 0
	b	aaSplit
.LVL1629:
.L1906:
	.cfi_restore_state
.LBB8182:
.LBB8183:
	.loc 4 512 0
	ldr	r3, [r5, #8]
.LBE8183:
.LBE8182:
	.loc 3 885 0
	mov	r0, r5
.LVL1630:
.LBB8185:
.LBB8184:
	.loc 4 512 0
	bic	r3, r3, #31
	orr	r3, r3, #1
	str	r3, [r5, #8]
.LVL1631:
.LBE8184:
.LBE8185:
	.loc 3 885 0
	pop	{r4, r5, r6, pc}
.LVL1632:
.L1909:
	.loc 3 854 0 discriminator 1
	movw	r1, #:lower16:.LC84
.LVL1633:
	movw	r0, #:lower16:.LC101
.LVL1634:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC101
	ldr	r3, .L1912+4
	movw	r2, #854
	bl	_assert_fail
.LVL1635:
.L1908:
	.loc 3 852 0
	movw	r1, #:lower16:.LC84
.LVL1636:
	movw	r0, #:lower16:.LC100
.LVL1637:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC100
	ldr	r3, .L1912
	mov	r2, #852
	bl	_fail
.LVL1638:
.L1910:
.LBB8186:
.LBB8172:
	bl	mdb_node_ptr_set_cdtRight.part.192
.LVL1639:
.L1911:
.LBE8172:
.LBE8186:
.LBB8187:
.LBB8181:
	bl	mdb_node_ptr_set_cdtLeft.part.193
.LVL1640:
.L1913:
	.align	2
.L1912:
	.word	.LANCHOR4+2784
	.word	.LANCHOR4+2796
.LBE8181:
.LBE8187:
	.cfi_endproc
.LFE530:
	.size	aaInsert, .-aaInsert
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capSpacePtr, %function
cap_get_capSpacePtr:
.LFB213:
	.loc 36 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB8202:
.LBB8203:
	.loc 4 997 0
	and	r3, r0, #14
.LBE8203:
.LBE8202:
	.loc 36 61 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB8206:
.LBB8204:
	.loc 4 997 0
	cmp	r3, #14
.LBE8204:
.LBE8206:
	.loc 36 61 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB8207:
.LBB8205:
	.loc 4 999 0
	uxtbeq	r3, r0
	.loc 4 998 0
	andne	r3, r0, #15
.LBE8205:
.LBE8207:
	.loc 36 61 0
	stm	sp, {r0, r1}
.LVL1641:
	.loc 36 66 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L1917
.L1919:
	.word	.L1918
	.word	.L1918
	.word	.L1918
	.word	.L1918
	.word	.L1918
	.word	.L1918
	.word	.L1917
	.word	.L1920
	.word	.L1917
	.word	.L1918
	.word	.L1917
	.word	.L1918
	.word	.L1917
	.word	.L1925
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1922
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1918
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1917
	.word	.L1925
.L1925:
	.loc 36 81 0
	mov	r0, #0
.L1921:
	.loc 36 93 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1920:
	.cfi_restore_state
.LVL1642:
.LBB8208:
.LBB8209:
	.loc 4 1453 0
	and	r3, r0, #15
	cmp	r3, #8
.LBE8209:
.LBE8208:
	.loc 36 79 0
	biceq	r0, r0, #31
.LBB8211:
.LBB8210:
	.loc 4 1453 0
	beq	.L1921
	bl	cap_reply_cap_get_capTCBPtr.isra.69.part.70
.LVL1643:
.L1918:
.LBE8210:
.LBE8211:
	.loc 36 76 0
	ldm	sp, {r0, r1}
	.loc 36 93 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 36 76 0
	b	cap_get_capPtr
.LVL1644:
.L1922:
	.cfi_restore_state
.LBB8212:
.LBB8213:
	.loc 4 1931 0
	uxtb	r0, r0
	ldr	r3, [sp, #4]
.LVL1645:
	cmp	r0, #30
.LBE8213:
.LBE8212:
	.loc 36 83 0
	uxtbeq	r0, r3
.LBB8215:
.LBB8214:
	.loc 4 1931 0
	beq	.L1921
	bl	cap_irq_handler_cap_get_capIRQ.part.180
.LVL1646:
.L1917:
.LBE8214:
.LBE8215:
.LBB8216:
.LBB8217:
	.loc 36 89 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L1927
	mov	r2, #89
	bl	_assert_fail
.LVL1647:
.L1928:
	.align	2
.L1927:
	.word	.LANCHOR4+2808
.LBE8217:
.LBE8216:
	.cfi_endproc
.LFE213:
	.size	cap_get_capSpacePtr, .-cap_get_capSpacePtr
	.align	2
	.syntax unified
	.arm
	.type	cap_get_capSpaceSize, %function
cap_get_capSpaceSize:
.LFB214:
	.loc 36 97 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 36 97 0
	stm	sp, {r0, r1}
.LBB8226:
.LBB8227:
	.loc 4 997 0
	and	r1, r0, #14
	mov	r3, r0
.LVL1648:
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL1649:
	.loc 4 998 0
	andne	r3, r0, #15
.LBE8227:
.LBE8226:
	.loc 36 102 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L1932
.L1934:
	.word	.L1933
	.word	.L1933
	.word	.L1933
	.word	.L1933
	.word	.L1933
	.word	.L1933
	.word	.L1932
	.word	.L1937
	.word	.L1932
	.word	.L1933
	.word	.L1932
	.word	.L1933
	.word	.L1932
	.word	.L1936
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1937
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1933
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1932
	.word	.L1937
.L1937:
	.loc 36 115 0
	mov	r0, #1
	.loc 36 129 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1933:
	.cfi_restore_state
	.loc 36 112 0
	ldm	sp, {r0, r1}
	bl	cap_get_capSizeBits
.LVL1650:
	mov	r3, #1
	lsl	r0, r3, r0
	.loc 36 129 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1936:
	.cfi_restore_state
	.loc 36 117 0
	mov	r0, #255
	.loc 36 129 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L1932:
	.cfi_restore_state
.LBB8228:
.LBB8229:
	.loc 36 125 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L1939
	mov	r2, #125
	bl	_assert_fail
.LVL1651:
.L1940:
	.align	2
.L1939:
	.word	.LANCHOR4+2828
.LBE8229:
.LBE8228:
	.cfi_endproc
.LFE214:
	.size	cap_get_capSpaceSize, .-cap_get_capSpaceSize
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	lookup_fault_depth_mismatch_new.part.201, %function
lookup_fault_depth_mismatch_new.part.201:
.LFB915:
	.loc 4 2294 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1652:
	.loc 4 2301 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC103
	.loc 4 2294 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2301 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC103
	ldr	r3, .L1943
	movw	r2, #2301
	bl	_assert_fail
.LVL1653:
.L1944:
	.align	2
.L1943:
	.word	.LANCHOR4+2852
	.cfi_endproc
.LFE915:
	.size	lookup_fault_depth_mismatch_new.part.201, .-lookup_fault_depth_mismatch_new.part.201
	.align	2
	.syntax unified
	.arm
	.type	ready_queues_index.part.203, %function
ready_queues_index.part.203:
.LFB917:
	.file 39 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/kernel/thread.h"
	.loc 39 19 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1654:
	.loc 39 24 0
	movw	r1, #:lower16:.LC104
	movw	r0, #:lower16:.LC105
	.loc 39 19 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 39 24 0
	movt	r1, #:upper16:.LC104
	movt	r0, #:upper16:.LC105
	ldr	r3, .L1947
	mov	r2, #24
	bl	_assert_fail
.LVL1655:
.L1948:
	.align	2
.L1947:
	.word	.LANCHOR4+2884
	.cfi_endproc
.LFE917:
	.size	ready_queues_index.part.203, .-ready_queues_index.part.203
	.text
	.align	2
	.syntax unified
	.arm
	.type	tcbSchedEnqueue.part.235, %function
tcbSchedEnqueue.part.235:
.LFB949:
	.file 40 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/tcb.c"
	.loc 40 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1656:
.LBB8230:
.LBB8231:
.LBB8232:
	.loc 39 24 0
	ldr	r3, [r0, #104]
.LBE8232:
.LBE8231:
.LBE8230:
	.loc 40 51 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB8247:
	.loc 40 60 0
	ldr	r2, [r0, #108]
.LVL1657:
.LBB8235:
.LBB8233:
	.loc 39 24 0
	cmp	r3, #0
	bne	.L1954
.LVL1658:
.LBE8233:
.LBE8235:
	.loc 40 62 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	add	lr, r3, r2, lsl #3
	ldr	r4, [r3, r2, lsl #3]
.LVL1659:
	ldr	ip, [lr, #4]
.LVL1660:
	.loc 40 64 0
	cmp	ip, #0
	.loc 40 68 0
	strne	r0, [r4, #128]
.LVL1661:
	.loc 40 64 0
	beq	.L1955
.L1952:
.LBB8236:
.LBB8237:
	.loc 4 221 0
	ldr	r1, [r0, #76]
.LBE8237:
.LBE8236:
	.loc 40 70 0
	mov	r5, #0
	.loc 40 71 0
	str	r4, [r0, #124]
.LVL1662:
	.loc 40 70 0
	str	r5, [r0, #128]
.LBB8240:
.LBB8238:
	.loc 4 221 0
	orr	r1, r1, #1
.LBE8238:
.LBE8240:
	.loc 40 74 0
	str	r0, [r3, r2, lsl #3]
	str	ip, [lr, #4]
.LVL1663:
.LBB8241:
.LBB8239:
	.loc 4 221 0
	str	r1, [r0, #76]
.LVL1664:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL1665:
.L1955:
.LBE8239:
.LBE8241:
.LBB8242:
.LBB8243:
.LBB8244:
.LBB8245:
	.loc 39 33 0
	lsr	r6, r2, #5
.LVL1666:
.LBE8245:
.LBE8244:
	.loc 40 33 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 40 34 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 40 33 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 40 34 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	ip, [r1, r6, lsl #2]
	.loc 40 33 0
	mov	r9, #1
	ldr	r8, [r5]
	.loc 40 34 0
	and	r7, r2, #31
	orr	r7, ip, r9, lsl r7
	mov	ip, r0
	.loc 40 33 0
	orr	r8, r8, r9, lsl r6
	.loc 40 34 0
	str	r7, [r1, r6, lsl #2]
	.loc 40 33 0
	str	r8, [r5]
	b	.L1952
.LVL1667:
.L1954:
.LBE8243:
.LBE8242:
.LBB8246:
.LBB8234:
	bl	ready_queues_index.part.203
.LVL1668:
.LBE8234:
.LBE8246:
.LBE8247:
	.cfi_endproc
.LFE949:
	.size	tcbSchedEnqueue.part.235, .-tcbSchedEnqueue.part.235
	.align	2
	.global	rescheduleRequired
	.syntax unified
	.arm
	.type	rescheduleRequired, %function
rescheduleRequired:
.LFB576:
	.loc 26 465 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 467 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	ldr	r0, [r4]
	.loc 26 466 0
	sub	r3, r0, #1
	cmn	r3, #3
	bhi	.L1957
.LVL1669:
.LBB8248:
.LBB8249:
	.loc 40 53 0
	ldr	r3, [r0, #76]
	tst	r3, #1
	beq	.L1959
.LVL1670:
.L1957:
.LBE8249:
.LBE8248:
	.loc 26 470 0
	mvn	r3, #0
	str	r3, [r4]
	pop	{r4, pc}
.LVL1671:
.L1959:
.LBB8251:
.LBB8250:
	bl	tcbSchedEnqueue.part.235
.LVL1672:
	b	.L1957
.LBE8250:
.LBE8251:
	.cfi_endproc
.LFE576:
	.size	rescheduleRequired, .-rescheduleRequired
	.align	2
	.syntax unified
	.arm
	.type	scheduleTCB.part.236, %function
scheduleTCB.part.236:
.LFB950:
	.loc 26 433 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1673:
.LBB8252:
.LBB8253:
	.loc 26 49 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	beq	.L1961
	cmp	r3, #2
	bxls	lr
	cmp	r3, #7
	bxeq	lr
.L1961:
.LVL1674:
.LBE8253:
.LBE8252:
	.loc 26 438 0
	b	rescheduleRequired
.LVL1675:
	.cfi_endproc
.LFE950:
	.size	scheduleTCB.part.236, .-scheduleTCB.part.236
	.align	2
	.global	scheduleTCB
	.syntax unified
	.arm
	.type	scheduleTCB, %function
scheduleTCB:
.LFB574:
	.loc 26 434 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1676:
	.loc 26 435 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r3, r0
	bxne	lr
	.loc 26 436 0 discriminator 1
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0 discriminator 1
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.236
.LVL1677:
	.cfi_endproc
.LFE574:
	.size	scheduleTCB, .-scheduleTCB
	.align	2
	.syntax unified
	.arm
	.type	possibleSwitchTo, %function
possibleSwitchTo:
.LFB570:
	.loc 26 384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1678:
	.loc 26 388 0
	movw	r3, #:lower16:ksCurThread
	.loc 26 389 0
	ldr	r2, [r0, #108]
	.loc 26 388 0
	movt	r3, #:upper16:ksCurThread
	.loc 26 384 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 388 0
	ldr	ip, [r3]
	.loc 26 390 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	ldr	r4, [r3]
	.loc 26 388 0
	ldr	ip, [ip, #108]
.LVL1679:
	.loc 26 400 0
	cmp	ip, r2
	bcc	.L1969
	.loc 26 400 0 is_stmt 0 discriminator 1
	moveq	r2, #1
.LVL1680:
	movne	r2, #0
	cmp	r1, #0
	moveq	r1, #0
	andne	r1, r2, #1
.LVL1681:
	cmp	r1, #0
	bne	.L1969
.L1970:
.LVL1682:
.LBB8254:
.LBB8255:
	.loc 40 53 0 is_stmt 1
	ldr	r3, [r0, #76]
	tst	r3, #1
	beq	.L1977
.LVL1683:
.L1972:
.LBE8255:
.LBE8254:
	.loc 26 406 0
	sub	r4, r4, #1
.LVL1684:
	cmn	r4, #3
	pophi	{r4, pc}
	.loc 26 411 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL1685:
	.loc 26 408 0
	b	rescheduleRequired
.LVL1686:
.L1969:
	.cfi_restore_state
	.loc 26 401 0
	cmp	r4, #0
	bne	.L1970
	.loc 26 402 0
	str	r0, [r3]
	pop	{r4, pc}
.LVL1687:
.L1977:
.LBB8257:
.LBB8256:
	bl	tcbSchedEnqueue.part.235
.LVL1688:
	b	.L1972
.LBE8256:
.LBE8257:
	.cfi_endproc
.LFE570:
	.size	possibleSwitchTo, .-possibleSwitchTo
	.align	2
	.global	attemptSwitchTo
	.syntax unified
	.arm
	.type	attemptSwitchTo, %function
attemptSwitchTo:
.LFB571:
	.loc 26 415 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1689:
	.loc 26 416 0
	mov	r1, #1
	b	possibleSwitchTo
.LVL1690:
	.cfi_endproc
.LFE571:
	.size	attemptSwitchTo, .-attemptSwitchTo
	.align	2
	.global	switchIfRequiredTo
	.syntax unified
	.arm
	.type	switchIfRequiredTo, %function
switchIfRequiredTo:
.LFB572:
	.loc 26 421 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1691:
	.loc 26 422 0
	mov	r1, #0
	b	possibleSwitchTo
.LVL1692:
	.cfi_endproc
.LFE572:
	.size	switchIfRequiredTo, .-switchIfRequiredTo
	.align	2
	.syntax unified
	.arm
	.type	tcbSchedAppend.part.244, %function
tcbSchedAppend.part.244:
.LFB958:
	.loc 40 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1693:
.LBB8258:
.LBB8259:
.LBB8260:
	.loc 39 24 0
	ldr	r3, [r0, #104]
.LBE8260:
.LBE8259:
.LBE8258:
	.loc 40 82 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB8275:
	.loc 40 91 0
	ldr	r2, [r0, #108]
.LVL1694:
.LBB8263:
.LBB8261:
	.loc 39 24 0
	cmp	r3, #0
	bne	.L1985
.LVL1695:
.LBE8261:
.LBE8263:
	.loc 40 93 0
	movw	r3, #:lower16:ksReadyQueues
	movt	r3, #:upper16:ksReadyQueues
	ldr	ip, [r3, r2, lsl #3]
.LVL1696:
	add	lr, r3, r2, lsl #3
	ldr	r4, [lr, #4]
.LVL1697:
	.loc 40 95 0
	cmp	ip, #0
	.loc 40 99 0
	strne	r0, [r4, #124]
.LVL1698:
	.loc 40 95 0
	beq	.L1986
.L1983:
.LBB8264:
.LBB8265:
	.loc 4 221 0
	ldr	r1, [r0, #76]
.LBE8265:
.LBE8264:
	.loc 40 102 0
	mov	r5, #0
	.loc 40 101 0
	str	r4, [r0, #128]
	.loc 40 102 0
	str	r5, [r0, #124]
.LVL1699:
.LBB8268:
.LBB8266:
	.loc 4 221 0
	orr	r1, r1, #1
.LBE8266:
.LBE8268:
	.loc 40 105 0
	str	ip, [r3, r2, lsl #3]
	str	r0, [lr, #4]
.LVL1700:
.LBB8269:
.LBB8267:
	.loc 4 221 0
	str	r1, [r0, #76]
.LVL1701:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL1702:
.L1986:
.LBE8267:
.LBE8269:
.LBB8270:
.LBB8271:
.LBB8272:
.LBB8273:
	.loc 39 33 0
	lsr	r6, r2, #5
.LVL1703:
.LBE8273:
.LBE8272:
	.loc 40 33 0
	movw	r5, #:lower16:ksReadyQueuesL1Bitmap
	.loc 40 34 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	.loc 40 33 0
	movt	r5, #:upper16:ksReadyQueuesL1Bitmap
	.loc 40 34 0
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	ip, [r1, r6, lsl #2]
	.loc 40 33 0
	mov	r9, #1
	ldr	r8, [r5]
	.loc 40 34 0
	and	r7, r2, #31
	orr	r7, ip, r9, lsl r7
	mov	ip, r0
	.loc 40 33 0
	orr	r8, r8, r9, lsl r6
	.loc 40 34 0
	str	r7, [r1, r6, lsl #2]
	.loc 40 33 0
	str	r8, [r5]
	b	.L1983
.LVL1704:
.L1985:
.LBE8271:
.LBE8270:
.LBB8274:
.LBB8262:
	bl	ready_queues_index.part.203
.LVL1705:
.LBE8262:
.LBE8274:
.LBE8275:
	.cfi_endproc
.LFE958:
	.size	tcbSchedAppend.part.244, .-tcbSchedAppend.part.244
	.align	2
	.global	timerTick
	.syntax unified
	.arm
	.type	timerTick, %function
timerTick:
.LFB575:
	.loc 26 444 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 26 445 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL1706:
.LBB8276:
.LBB8277:
	.loc 26 49 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	bxeq	lr
	cmp	r3, #2
	bls	.L1989
	cmp	r3, #7
	bne	.L2000
.L1989:
.LVL1707:
.LBE8277:
.LBE8276:
	.loc 26 446 0
	ldr	r3, [r0, #112]
	cmp	r3, #1
	bls	.L2001
	.loc 26 447 0
	sub	r3, r3, #1
	str	r3, [r0, #112]
	bx	lr
.LVL1708:
.L2000:
	bx	lr
.LVL1709:
.L2001:
.LBB8278:
.LBB8279:
	.loc 40 84 0
	ldr	r3, [r0, #76]
.LBE8279:
.LBE8278:
	.loc 26 449 0
	mov	r2, #5
	str	r2, [r0, #112]
.LVL1710:
.LBB8282:
.LBB8280:
	.loc 40 84 0
	tst	r3, #1
	beq	.L2002
.LVL1711:
.LBE8280:
.LBE8282:
	.loc 26 451 0
	b	rescheduleRequired
.LVL1712:
.L2002:
	.loc 26 444 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8283:
.LBB8281:
	bl	tcbSchedAppend.part.244
.LVL1713:
.LBE8281:
.LBE8283:
	.loc 26 461 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 26 451 0
	b	rescheduleRequired
.LVL1714:
	.cfi_endproc
.LFE575:
	.size	timerTick, .-timerTick
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	thread_state_ptr_set_tsType.isra.204.part.205, %function
thread_state_ptr_set_tsType.isra.204.part.205:
.LFB919:
	.loc 4 266 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1715:
	.loc 4 268 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC106
	.loc 4 266 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 268 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC106
	ldr	r3, .L2005
	mov	r2, #268
	bl	_assert_fail
.LVL1716:
.L2006:
	.align	2
.L2005:
	.word	.LANCHOR4+2904
	.cfi_endproc
.LFE919:
	.size	thread_state_ptr_set_tsType.isra.204.part.205, .-thread_state_ptr_set_tsType.isra.204.part.205
	.text
	.align	2
	.global	setThreadState
	.syntax unified
	.arm
	.type	setThreadState, %function
setThreadState:
.LFB573:
	.loc 26 427 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1717:
.LBB8298:
.LBB8299:
	.loc 4 268 0
	bics	r2, r1, #15
	bne	.L2011
.LBE8299:
.LBE8298:
.LBB8304:
.LBB8305:
	.loc 26 435 0
	movw	ip, #:lower16:ksCurThread
.LBE8305:
.LBE8304:
.LBB8309:
.LBB8300:
	.loc 4 270 0
	ldr	r2, [r0, #72]
.LBE8300:
.LBE8309:
.LBB8310:
.LBB8306:
	.loc 26 435 0
	movt	ip, #:upper16:ksCurThread
	ldr	ip, [ip]
.LBE8306:
.LBE8310:
.LBB8311:
.LBB8301:
	.loc 4 270 0
	bic	r2, r2, #15
	orr	r1, r2, r1
.LVL1718:
.LBE8301:
.LBE8311:
.LBB8312:
.LBB8307:
	.loc 26 435 0
	cmp	r0, ip
.LBE8307:
.LBE8312:
.LBB8313:
.LBB8302:
	.loc 4 270 0
	str	r1, [r0, #72]
.LVL1719:
.LBE8302:
.LBE8313:
.LBB8314:
.LBB8308:
	.loc 26 435 0
	bxne	lr
.LVL1720:
.LBE8308:
.LBE8314:
.LBB8315:
.LBB8316:
.LBB8317:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.236
.LVL1721:
.L2011:
.LBE8317:
.LBE8316:
.LBE8315:
	.loc 26 427 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8318:
.LBB8303:
	bl	thread_state_ptr_set_tsType.isra.204.part.205
.LVL1722:
.LBE8303:
.LBE8318:
	.cfi_endproc
.LFE573:
	.size	setThreadState, .-setThreadState
	.align	2
	.syntax unified
	.arm
	.type	setThreadState.constprop.305, %function
setThreadState.constprop.305:
.LFB992:
	.loc 26 426 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1723:
.LBB8329:
.LBB8330:
	.loc 26 435 0
	movw	r1, #:lower16:ksCurThread
.LVL1724:
.LBE8330:
.LBE8329:
.LBB8334:
.LBB8335:
	.loc 4 270 0
	ldr	r3, [r0, #72]
.LBE8335:
.LBE8334:
.LBB8338:
.LBB8331:
	.loc 26 435 0
	movt	r1, #:upper16:ksCurThread
	ldr	r1, [r1]
.LBE8331:
.LBE8338:
.LBB8339:
.LBB8336:
	.loc 4 270 0
	bic	r3, r3, #15
	orr	r3, r3, #2
.LBE8336:
.LBE8339:
.LBB8340:
.LBB8332:
	.loc 26 435 0
	cmp	r0, r1
.LBE8332:
.LBE8340:
.LBB8341:
.LBB8337:
	.loc 4 270 0
	str	r3, [r0, #72]
.LVL1725:
.LBE8337:
.LBE8341:
.LBB8342:
.LBB8333:
	.loc 26 435 0
	bxne	lr
.LVL1726:
.LBE8333:
.LBE8342:
.LBB8343:
.LBB8344:
.LBB8345:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.236
.LVL1727:
.LBE8345:
.LBE8344:
.LBE8343:
	.cfi_endproc
.LFE992:
	.size	setThreadState.constprop.305, .-setThreadState.constprop.305
	.align	2
	.syntax unified
	.arm
	.type	setThreadState.constprop.306, %function
setThreadState.constprop.306:
.LFB991:
	.loc 26 426 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1728:
.LBB8360:
.LBB8361:
	.loc 26 435 0
	movw	r1, #:lower16:ksCurThread
.LVL1729:
.LBE8361:
.LBE8360:
.LBB8364:
.LBB8365:
	.loc 4 269 0
	ldr	r2, [r0, #72]
.LBE8365:
.LBE8364:
.LBB8367:
.LBB8362:
	.loc 26 435 0
	movt	r1, #:upper16:ksCurThread
	ldr	r1, [r1]
.LBE8362:
.LBE8367:
.LBB8368:
.LBB8366:
	.loc 4 269 0
	bic	r2, r2, #15
	str	r2, [r0, #72]
.LBE8366:
.LBE8368:
.LBB8369:
.LBB8363:
	.loc 26 435 0
	cmp	r0, r1
.LVL1730:
	bxne	lr
.LVL1731:
.LBE8363:
.LBE8369:
.LBB8370:
.LBB8371:
.LBB8372:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.236
.LVL1732:
.LBE8372:
.LBE8371:
.LBE8370:
	.cfi_endproc
.LFE991:
	.size	setThreadState.constprop.306, .-setThreadState.constprop.306
	.align	2
	.syntax unified
	.arm
	.type	setThreadState.constprop.307, %function
setThreadState.constprop.307:
.LFB990:
	.loc 26 426 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1733:
.LBB8383:
.LBB8384:
	.loc 26 435 0
	movw	r1, #:lower16:ksCurThread
.LVL1734:
.LBE8384:
.LBE8383:
.LBB8388:
.LBB8389:
	.loc 4 270 0
	ldr	r3, [r0, #72]
.LBE8389:
.LBE8388:
.LBB8392:
.LBB8385:
	.loc 26 435 0
	movt	r1, #:upper16:ksCurThread
	ldr	r1, [r1]
.LBE8385:
.LBE8392:
.LBB8393:
.LBB8390:
	.loc 4 270 0
	bic	r3, r3, #15
	orr	r3, r3, #1
.LBE8390:
.LBE8393:
.LBB8394:
.LBB8386:
	.loc 26 435 0
	cmp	r0, r1
.LBE8386:
.LBE8394:
.LBB8395:
.LBB8391:
	.loc 4 270 0
	str	r3, [r0, #72]
.LVL1735:
.LBE8391:
.LBE8395:
.LBB8396:
.LBB8387:
	.loc 26 435 0
	bxne	lr
.LVL1736:
.LBE8387:
.LBE8396:
.LBB8397:
.LBB8398:
.LBB8399:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	scheduleTCB.part.236
.LVL1737:
.LBE8399:
.LBE8398:
.LBE8397:
	.cfi_endproc
.LFE990:
	.size	setThreadState.constprop.307, .-setThreadState.constprop.307
	.align	2
	.global	activateThread
	.syntax unified
	.arm
	.type	activateThread, %function
activateThread:
.LFB554:
	.loc 26 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 26 70 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r2, [r3]
	ldr	r3, [r2, #72]
	and	r3, r3, #15
	sub	r3, r3, #1
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L2019
.L2021:
	.word	.L2018
	.word	.L2022
	.word	.L2019
	.word	.L2019
	.word	.L2019
	.word	.L2019
	.word	.L2018
	.word	.L2018
.L2018:
	bx	lr
.L2022:
.LVL1738:
.LBB8420:
.LBB8421:
.LBB8422:
.LBB8423:
	.loc 10 21 0
	ldr	r3, [r2, #68]
.LBE8423:
.LBE8422:
.LBE8421:
	.loc 26 80 0
	mov	r0, r2
.LBB8426:
.LBB8425:
.LBB8424:
	.loc 10 21 0
	str	r3, [r2, #60]
.LVL1739:
.LBE8424:
.LBE8425:
.LBE8426:
	.loc 26 80 0
	b	setThreadState.constprop.307
.LVL1740:
.L2019:
.LBE8420:
.LBB8427:
.LBB8428:
	.loc 26 89 0
	movw	r1, #:lower16:.LC107
	movw	r0, #:lower16:.LC108
.LBE8428:
.LBE8427:
	.loc 26 69 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8430:
.LBB8429:
	.loc 26 89 0
	movt	r1, #:upper16:.LC107
	movt	r0, #:upper16:.LC108
	ldr	r3, .L2024
	mov	r2, #89
	bl	_fail
.LVL1741:
.L2025:
	.align	2
.L2024:
	.word	.LANCHOR4+2932
.LBE8429:
.LBE8430:
	.cfi_endproc
.LFE554:
	.size	activateThread, .-activateThread
	.section	.boot.text
	.align	2
	.global	configureIdleThread
	.syntax unified
	.arm
	.type	configureIdleThread, %function
configureIdleThread:
.LFB553:
	.loc 26 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1742:
.LBB8449:
.LBB8450:
.LBB8451:
	.loc 26 435 0
	movw	r1, #:lower16:ksCurThread
.LVL1743:
.LBE8451:
.LBE8450:
.LBB8456:
.LBB8457:
	.loc 4 270 0
	ldr	r2, [r0, #72]
.LBE8457:
.LBE8456:
.LBB8461:
.LBB8452:
	.loc 26 435 0
	movt	r1, #:upper16:ksCurThread
.LBE8452:
.LBE8461:
.LBE8449:
	.loc 26 62 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB8474:
.LBB8462:
.LBB8453:
	.loc 26 435 0
	ldr	ip, [r1]
.LBE8453:
.LBE8462:
.LBE8474:
.LBB8475:
.LBB8476:
.LBB8477:
.LBB8478:
	.loc 10 21 0
	movw	r1, #:lower16:idle_thread
.LBE8478:
.LBE8477:
.LBE8476:
.LBE8475:
.LBB8489:
.LBB8463:
.LBB8458:
	.loc 4 270 0
	bic	r2, r2, #15
.LBE8458:
.LBE8463:
.LBE8489:
.LBB8490:
.LBB8487:
.LBB8481:
.LBB8482:
	.loc 10 21 0
	mov	lr, #83
.LBE8482:
.LBE8481:
.LBB8484:
.LBB8479:
	movt	r1, #:upper16:idle_thread
.LBE8479:
.LBE8484:
.LBE8487:
.LBE8490:
.LBB8491:
.LBB8464:
.LBB8459:
	.loc 4 270 0
	orr	r2, r2, #8
.LBE8459:
.LBE8464:
.LBB8465:
.LBB8454:
	.loc 26 435 0
	cmp	r0, ip
.LBE8454:
.LBE8465:
.LBE8491:
.LBB8492:
.LBB8488:
.LBB8485:
.LBB8483:
	.loc 10 21 0
	str	lr, [r0, #64]
.LVL1744:
.LBE8483:
.LBE8485:
.LBB8486:
.LBB8480:
	str	r1, [r0, #60]
.LVL1745:
.LBE8480:
.LBE8486:
.LBE8488:
.LBE8492:
.LBB8493:
.LBB8466:
.LBB8460:
	.loc 4 270 0
	str	r2, [r0, #72]
.LVL1746:
.LBE8460:
.LBE8466:
.LBB8467:
.LBB8455:
	.loc 26 435 0
	ldrne	pc, [sp], #4
.LVL1747:
.LBE8455:
.LBE8467:
.LBB8468:
.LBB8469:
.LBB8470:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	ldrne	pc, [sp], #4
.LBE8470:
.LBE8469:
.LBE8468:
.LBE8493:
	.loc 26 65 0
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB8494:
.LBB8473:
.LBB8472:
.LBB8471:
	b	scheduleTCB.part.236
.LVL1748:
.LBE8471:
.LBE8472:
.LBE8473:
.LBE8494:
	.cfi_endproc
.LFE553:
	.size	configureIdleThread, .-configureIdleThread
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	async_endpoint_ptr_set_aepQueue_head.isra.206.part.207, %function
async_endpoint_ptr_set_aepQueue_head.isra.206.part.207:
.LFB921:
	.loc 4 68 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1749:
	.loc 4 70 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
	.loc 4 68 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 70 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L2031
	mov	r2, #70
	bl	_assert_fail
.LVL1750:
.L2032:
	.align	2
.L2031:
	.word	.LANCHOR4+2948
	.cfi_endproc
.LFE921:
	.size	async_endpoint_ptr_set_aepQueue_head.isra.206.part.207, .-async_endpoint_ptr_set_aepQueue_head.isra.206.part.207
	.align	2
	.syntax unified
	.arm
	.type	async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209, %function
async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209:
.LFB923:
	.loc 4 87 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1751:
	.loc 4 89 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
	.loc 4 87 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 89 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L2035
	mov	r2, #89
	bl	_assert_fail
.LVL1752:
.L2036:
	.align	2
.L2035:
	.word	.LANCHOR4+2988
	.cfi_endproc
.LFE923:
	.size	async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209, .-async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209
	.align	2
	.syntax unified
	.arm
	.type	async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216, %function
async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216:
.LFB930:
	.loc 4 30 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1753:
	.loc 4 32 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
	.loc 4 30 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 32 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L2039
	mov	r2, #32
	bl	_assert_fail
.LVL1754:
.L2040:
	.align	2
.L2039:
	.word	.LANCHOR4+3028
	.cfi_endproc
.LFE930:
	.size	async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216, .-async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216
	.align	2
	.syntax unified
	.arm
	.type	cteInsert.part.218, %function
cteInsert.part.218:
.LFB932:
	.file 41 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/cnode.c"
	.loc 41 386 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1755:
	.loc 41 389 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC111
	.loc 41 386 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 41 389 0
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC111
	ldr	r3, .L2043
	movw	r2, #389
	bl	_assert_fail
.LVL1756:
.L2044:
	.align	2
.L2043:
	.word	.LANCHOR4+3064
	.cfi_endproc
.LFE932:
	.size	cteInsert.part.218, .-cteInsert.part.218
	.align	2
	.syntax unified
	.arm
	.type	cap_reply_cap_ptr_set_capCallerSlot.part.219, %function
cap_reply_cap_ptr_set_capCallerSlot.part.219:
.LFB933:
	.loc 4 1424 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1757:
	.loc 4 1426 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC112
	.loc 4 1424 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1426 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC112
	ldr	r3, .L2047
	movw	r2, #1427
	bl	_assert_fail
.LVL1758:
.L2048:
	.align	2
.L2047:
	.word	.LANCHOR4+3076
	.cfi_endproc
.LFE933:
	.size	cap_reply_cap_ptr_set_capCallerSlot.part.219, .-cap_reply_cap_ptr_set_capCallerSlot.part.219
	.align	2
	.syntax unified
	.arm
	.type	cap_zombie_cap_set_capZombieNumber, %function
cap_zombie_cap_set_capZombieNumber:
.LFB190:
	.loc 30 128 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1759:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 30 128 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	mov	ip, r0
	ldr	r0, [sp]
.LVL1760:
.LBB8495:
.LBB8496:
.LBB8497:
.LBB8498:
	.loc 4 1989 0
	uxtb	r2, r0
	cmp	r2, #46
	beq	.L2050
	bl	cap_zombie_cap_get_capZombieType.isra.96.part.97
.LVL1761:
.L2050:
	.loc 4 1992 0
	ubfx	r2, r0, #8, #6
.LBE8498:
.LBE8497:
.LBE8496:
.LBE8495:
	.loc 30 130 0
	mov	r1, #1
.LBB8501:
.LBB8499:
	.loc 30 106 0
	cmp	r2, #32
.LBE8499:
.LBE8501:
.LBB8502:
.LBB8503:
	.loc 4 1983 0
	str	r0, [ip]
.LBE8503:
.LBE8502:
.LBB8505:
.LBB8500:
	.loc 30 109 0
	andne	r2, r2, #31
	.loc 30 107 0
	moveq	r2, #4
.LVL1762:
.LBE8500:
.LBE8505:
	.loc 30 130 0
	add	r2, r2, #1
	.loc 30 132 0
	mov	r0, ip
	.loc 30 130 0
	lsl	r2, r1, r2
.LVL1763:
	.loc 30 131 0
	ldr	r1, [sp, #4]
	rsb	lr, r2, #0
	sub	r2, r2, #1
.LVL1764:
	and	r2, r2, r3
.LVL1765:
	and	r3, lr, r1
.LVL1766:
	orr	r2, r3, r2
.LVL1767:
.LBB8506:
.LBB8504:
	.loc 4 1983 0
	str	r2, [ip, #4]
.LVL1768:
.LBE8504:
.LBE8506:
	.loc 30 132 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE190:
	.size	cap_zombie_cap_set_capZombieNumber, .-cap_zombie_cap_set_capZombieNumber
	.align	2
	.syntax unified
	.arm
	.type	cap_reply_cap_new.part.221, %function
cap_reply_cap_new.part.221:
.LFB935:
	.loc 4 1368 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1769:
	.loc 4 1375 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC113
	.loc 4 1368 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1375 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC113
	ldr	r3, .L2056
	movw	r2, #1375
	bl	_assert_fail
.LVL1770:
.L2057:
	.align	2
.L2056:
	.word	.LANCHOR4+3112
	.cfi_endproc
.LFE935:
	.size	cap_reply_cap_new.part.221, .-cap_reply_cap_new.part.221
	.align	2
	.syntax unified
	.arm
	.type	endpoint_ptr_set_epQueue_head.isra.224.part.225, %function
endpoint_ptr_set_epQueue_head.isra.224.part.225:
.LFB939:
	.loc 4 374 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1771:
	.loc 4 376 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
	.loc 4 374 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 376 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L2060
	mov	r2, #376
	bl	_assert_fail
.LVL1772:
.L2061:
	.align	2
.L2060:
	.word	.LANCHOR4+3132
	.cfi_endproc
.LFE939:
	.size	endpoint_ptr_set_epQueue_head.isra.224.part.225, .-endpoint_ptr_set_epQueue_head.isra.224.part.225
	.align	2
	.syntax unified
	.arm
	.type	endpoint_ptr_set_epQueue_tail.isra.226.part.227, %function
endpoint_ptr_set_epQueue_tail.isra.226.part.227:
.LFB941:
	.loc 4 393 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1773:
	.loc 4 395 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
	.loc 4 393 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 395 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L2064
	movw	r2, #395
	bl	_assert_fail
.LVL1774:
.L2065:
	.align	2
.L2064:
	.word	.LANCHOR4+3164
	.cfi_endproc
.LFE941:
	.size	endpoint_ptr_set_epQueue_tail.isra.226.part.227, .-endpoint_ptr_set_epQueue_tail.isra.226.part.227
	.text
	.align	2
	.syntax unified
	.arm
	.type	ep_ptr_set_queue, %function
ep_ptr_set_queue:
.LFB623:
	.file 42 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/endpoint.c"
	.loc 42 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1775:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 42 34 0
	add	r3, sp, #8
	stmdb	r3, {r1, r2}
	.loc 42 35 0
	ldr	r3, [sp]
.LVL1776:
.LBB8511:
.LBB8512:
	.loc 4 376 0
	tst	r3, #15
	bne	.L2070
	.loc 4 378 0
	ldr	r1, [r0, #4]
	bic	r3, r3, #15
.LBE8512:
.LBE8511:
	.loc 42 36 0
	ldr	r2, [sp, #4]
.LBB8516:
.LBB8513:
	.loc 4 378 0
	and	r1, r1, #15
.LBE8513:
.LBE8516:
.LBB8517:
.LBB8518:
	.loc 4 395 0
	tst	r2, #15
.LBE8518:
.LBE8517:
.LBB8521:
.LBB8514:
	.loc 4 378 0
	orr	r3, r1, r3
	str	r3, [r0, #4]
.LVL1777:
.LBE8514:
.LBE8521:
.LBB8522:
.LBB8519:
	.loc 4 395 0
	bne	.L2071
	.loc 4 397 0
	ldr	r3, [r0]
	bic	r2, r2, #15
.LVL1778:
	and	r3, r3, #15
	orr	r2, r3, r2
	str	r2, [r0]
.LVL1779:
.LBE8519:
.LBE8522:
	.loc 42 37 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL1780:
.L2070:
	.cfi_restore_state
.LBB8523:
.LBB8515:
	bl	endpoint_ptr_set_epQueue_head.isra.224.part.225
.LVL1781:
.L2071:
.LBE8515:
.LBE8523:
.LBB8524:
.LBB8520:
	bl	endpoint_ptr_set_epQueue_tail.isra.226.part.227
.LVL1782:
.LBE8520:
.LBE8524:
	.cfi_endproc
.LFE623:
	.size	ep_ptr_set_queue, .-ep_ptr_set_queue
	.section	.text.unlikely
	.align	2
	.syntax unified
	.arm
	.type	cap_async_endpoint_cap_get_capAEPCanSend.part.231, %function
cap_async_endpoint_cap_get_capAEPCanSend.part.231:
.LFB945:
	.loc 4 1328 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1330 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC33
	.loc 4 1328 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1330 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC33
	ldr	r3, .L2074
	movw	r2, #1331
	bl	_assert_fail
.LVL1783:
.L2075:
	.align	2
.L2074:
	.word	.LANCHOR4+3196
	.cfi_endproc
.LFE945:
	.size	cap_async_endpoint_cap_get_capAEPCanSend.part.231, .-cap_async_endpoint_cap_get_capAEPCanSend.part.231
	.align	2
	.syntax unified
	.arm
	.type	cap_untyped_cap_get_capDeviceMemory.part.247, %function
cap_untyped_cap_get_capDeviceMemory.part.247:
.LFB961:
	.loc 4 1047 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 1049 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC42
	.loc 4 1047 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1049 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC42
	ldr	r3, .L2078
	movw	r2, #1050
	bl	_assert_fail
.LVL1784:
.L2079:
	.align	2
.L2078:
	.word	.LANCHOR4+3240
	.cfi_endproc
.LFE961:
	.size	cap_untyped_cap_get_capDeviceMemory.part.247, .-cap_untyped_cap_get_capDeviceMemory.part.247
	.align	2
	.syntax unified
	.arm
	.type	invokeUntyped_Retype.part.259, %function
invokeUntyped_Retype.part.259:
.LFB973:
	.file 43 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/untyped.c"
	.loc 43 226 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1785:
.LBB8525:
.LBB8526:
	.loc 4 1077 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC114
.LBE8526:
.LBE8525:
	.loc 43 226 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8528:
.LBB8527:
	.loc 4 1077 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC114
	ldr	r3, .L2082
	movw	r2, #1078
	bl	_assert_fail
.LVL1786:
.L2083:
	.align	2
.L2082:
	.word	.LANCHOR4+3276
.LBE8527:
.LBE8528:
	.cfi_endproc
.LFE973:
	.size	invokeUntyped_Retype.part.259, .-invokeUntyped_Retype.part.259
	.text
	.align	2
	.global	resolveAddressBits
	.syntax unified
	.arm
	.type	resolveAddressBits, %function
resolveAddressBits:
.LFB546:
	.file 44 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/cspace.c"
	.loc 44 140 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1787:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 44 140 0
	add	ip, sp, #8
	ldr	r4, [sp, #32]
	stmdb	ip, {r1, r2}
	ldr	ip, [sp]
.LVL1788:
	ldr	r2, [sp, #4]
.LVL1789:
.LBB8543:
.LBB8544:
	.loc 4 997 0
	and	r1, ip, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, ip
.LVL1790:
	.loc 4 998 0
	andne	r1, ip, #15
.LBE8544:
.LBE8543:
	.loc 44 148 0
	cmp	r1, #10
	bne	.L2100
.LBB8545:
.LBB8546:
	.loc 4 1493 0
	and	r1, ip, #15
	mov	lr, r0
.LVL1791:
	cmp	r1, #10
	bne	.L2101
	.loc 4 1496 0
	ubfx	r1, r2, #23, #5
.LBE8546:
.LBE8545:
	.loc 44 155 0
	cmp	r4, r1
	.loc 44 161 0
	subcs	r1, r4, r1
.LVL1792:
	.loc 44 178 0
	movcs	r6, #1
	.loc 44 155 0
	bcc	.L2102
.LVL1793:
.L2091:
.LBB8548:
.LBB8549:
	.loc 4 1522 0
	ubfx	r2, r2, #18, #5
.LVL1794:
.LBE8549:
.LBE8548:
	.loc 44 168 0
	cmp	r2, #0
	beq	.L2103
	.loc 44 170 0
	cmp	r1, r2
	bcc	.L2104
	.loc 44 178 0
	lsl	r5, r6, r2
	.loc 44 177 0
	sub	r1, r1, r2
.LVL1795:
	.loc 44 178 0
	bic	ip, ip, #31
.LVL1796:
	sub	r2, r5, #1
.LVL1797:
	and	r2, r2, r3, lsr r1
	add	r5, ip, r2, lsl #4
.LVL1798:
	.loc 44 180 0
	bhi	.L2094
.LVL1799:
	.loc 44 184 0
	mov	r3, #0
.LVL1800:
	stm	lr, {r3, r5}
	str	r3, [lr, #8]
.LVL1801:
.L2084:
	.loc 44 202 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
.LVL1802:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL1803:
.L2100:
	.cfi_restore_state
	.loc 44 149 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1804:
	mov	r2, #0
.LVL1805:
	movt	r3, #:upper16:current_lookup_fault
	.loc 44 151 0
	mov	r1, #2
	str	r4, [r0, #8]
	.loc 44 149 0
	str	r2, [r3]
	str	r2, [r3, #4]
.LVL1806:
	.loc 44 151 0
	stm	r0, {r1, r2}
	.loc 44 202 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL1807:
.L2102:
	.cfi_restore_state
	.loc 44 156 0
	lsl	r1, r1, #2
.LVL1808:
	movw	r3, #:lower16:current_lookup_fault
.LVL1809:
	mov	r2, #0
.LVL1810:
	.loc 44 159 0
	str	r4, [r0, #8]
	.loc 44 156 0
	orr	r1, r1, #3
	movt	r3, #:upper16:current_lookup_fault
	orr	r1, r1, r4, lsl #8
	.loc 44 159 0
	mov	ip, #2
.LVL1811:
	str	r2, [r0, #4]
	.loc 44 156 0
	stm	r3, {r1, r2}
	.loc 44 159 0
	str	ip, [r0]
	b	.L2084
.LVL1812:
.L2104:
	.loc 44 171 0
	lsl	r1, r1, #2
.LVL1813:
	.loc 44 174 0
	mov	ip, #2
.LVL1814:
	.loc 44 171 0
	movw	r3, #:lower16:current_lookup_fault
.LVL1815:
	.loc 44 174 0
	str	r4, [lr, #8]
	.loc 44 171 0
	orr	r2, r1, r2, lsl #8
.LVL1816:
	movt	r3, #:upper16:current_lookup_fault
	mov	r1, #0
	.loc 44 174 0
	str	ip, [lr]
	.loc 44 171 0
	orr	r2, r2, ip
	str	r1, [r3, #4]
.LVL1817:
	.loc 44 174 0
	str	r1, [lr, #4]
	.loc 44 171 0
	str	r2, [r3]
	.loc 44 174 0
	b	.L2084
.LVL1818:
.L2094:
	.loc 44 190 0
	ldr	ip, [ip, r2, lsl #4]
.LVL1819:
	ldr	r2, [r5, #4]
.LVL1820:
.LBB8551:
.LBB8552:
	.loc 4 997 0
	and	r7, ip, #14
	cmp	r7, #14
	.loc 4 999 0
	uxtbeq	r7, ip
.LVL1821:
	.loc 4 998 0
	andne	r7, ip, #15
.LBE8552:
.LBE8551:
	.loc 44 192 0
	cmp	r7, #10
	bne	.L2105
.LVL1822:
.LBB8553:
.LBB8550:
	.loc 4 1519 0
	and	r5, ip, #15
.LVL1823:
	cmp	r5, #10
	beq	.L2091
	bl	cap_cnode_cap_get_capCNodeRadix.part.78
.LVL1824:
.L2105:
.LBE8550:
.LBE8553:
	.loc 44 196 0
	mov	r3, #0
.LVL1825:
	str	r5, [lr, #4]
	str	r1, [lr, #8]
.LVL1826:
	str	r3, [lr]
	b	.L2084
.LVL1827:
.L2103:
	.loc 44 168 0 discriminator 1
	movw	r1, #:lower16:.LC115
.LVL1828:
	movw	r0, #:lower16:.LC116
.LVL1829:
	movt	r1, #:upper16:.LC115
	movt	r0, #:upper16:.LC116
	ldr	r3, .L2106
.LVL1830:
	mov	r2, #168
.LVL1831:
	bl	_assert_fail
.LVL1832:
.L2101:
.LBB8554:
.LBB8547:
	bl	cap_cnode_cap_get_capCNodeGuardSize.part.77
.LVL1833:
.L2107:
	.align	2
.L2106:
	.word	.LANCHOR4+3316
.LBE8547:
.LBE8554:
	.cfi_endproc
.LFE546:
	.size	resolveAddressBits, .-resolveAddressBits
	.align	2
	.global	lookupSlot
	.syntax unified
	.arm
	.type	lookupSlot, %function
lookupSlot:
.LFB541:
	.loc 44 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1834:
	.loc 44 64 0
	bic	r1, r1, #508
.LVL1835:
	.loc 44 59 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 44 64 0
	bic	r1, r1, #3
	.loc 44 59 0
	mov	r4, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	.loc 44 65 0
	mov	lr, #32
	.loc 44 64 0
	ldm	r1, {r0, r1}
.LVL1836:
	add	ip, sp, #12
	.loc 44 65 0
	str	lr, [sp]
	mov	r3, r2
	.loc 44 64 0
	stm	ip, {r0, r1}
	.loc 44 65 0
	add	r0, sp, #20
	ldm	ip, {r1, r2}
.LVL1837:
	bl	resolveAddressBits
.LVL1838:
	.loc 44 69 0
	ldr	r2, [sp, #20]
	.loc 44 70 0
	mov	r0, r4
	.loc 44 68 0
	ldr	r3, [sp, #24]
.LVL1839:
	.loc 44 69 0
	stm	r4, {r2, r3}
.LVL1840:
	.loc 44 70 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE541:
	.size	lookupSlot, .-lookupSlot
	.align	2
	.global	lookupCap
	.syntax unified
	.arm
	.type	lookupCap, %function
lookupCap:
.LFB539:
	.loc 44 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1841:
.LBB8557:
.LBB8558:
	.loc 44 64 0
	bic	r1, r1, #508
.LVL1842:
.LBE8558:
.LBE8557:
	.loc 44 21 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8562:
.LBB8559:
	.loc 44 64 0
	bic	r1, r1, #3
.LBE8559:
.LBE8562:
	.loc 44 21 0
	mov	r4, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
.LBB8563:
.LBB8560:
	.loc 44 65 0
	mov	lr, #32
	.loc 44 64 0
	ldm	r1, {r0, r1}
.LVL1843:
	add	ip, sp, #12
	.loc 44 65 0
	str	lr, [sp]
	mov	r3, r2
	.loc 44 64 0
	stm	ip, {r0, r1}
	.loc 44 65 0
	add	r0, sp, #20
	ldm	ip, {r1, r2}
.LVL1844:
	bl	resolveAddressBits
.LVL1845:
	.loc 44 67 0
	ldr	r3, [sp, #20]
.LVL1846:
.LBE8560:
.LBE8563:
	.loc 44 35 0
	mov	r0, r4
.LBB8564:
.LBB8561:
	.loc 44 68 0
	ldr	r2, [sp, #24]
.LVL1847:
.LBE8561:
.LBE8564:
	.loc 44 26 0
	cmp	r3, #0
.LVL1848:
	.loc 44 33 0
	ldmeq	r2, {r1, r2}
	.loc 44 29 0
	movne	r2, #0
	strne	r3, [r4]
	strne	r2, [r4, #4]
	strne	r2, [r4, #8]
.LVL1849:
	.loc 44 34 0
	streq	r3, [r4]
	stmibeq	r4, {r1, r2}
.LVL1850:
	.loc 44 35 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE539:
	.size	lookupCap, .-lookupCap
	.align	2
	.global	lookupCapAndSlot
	.syntax unified
	.arm
	.type	lookupCapAndSlot, %function
lookupCapAndSlot:
.LFB540:
	.loc 44 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1851:
.LBB8567:
.LBB8568:
	.loc 44 64 0
	bic	r1, r1, #508
.LVL1852:
.LBE8568:
.LBE8567:
	.loc 44 39 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8571:
.LBB8569:
	.loc 44 64 0
	bic	r1, r1, #3
.LBE8569:
.LBE8571:
	.loc 44 39 0
	mov	r4, r0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
.LBB8572:
.LBB8570:
	.loc 44 65 0
	mov	lr, #32
	.loc 44 64 0
	ldm	r1, {r0, r1}
.LVL1853:
	add	ip, sp, #12
	.loc 44 65 0
	str	lr, [sp]
	mov	r3, r2
	.loc 44 64 0
	stm	ip, {r0, r1}
	.loc 44 65 0
	add	r0, sp, #20
	ldm	ip, {r1, r2}
.LVL1854:
	bl	resolveAddressBits
.LVL1855:
	.loc 44 67 0
	ldr	r2, [sp, #20]
.LVL1856:
	.loc 44 68 0
	ldr	r3, [sp, #24]
.LVL1857:
.LBE8570:
.LBE8572:
	.loc 44 44 0
	cmp	r2, #0
.LVL1858:
	.loc 44 53 0
	ldmeq	r3, {r0, r1}
	.loc 44 48 0
	movne	r3, #0
.LVL1859:
	stmne	r4, {r2, r3}
	strne	r3, [r4, #8]
	.loc 44 54 0
	stmibeq	r4, {r0, r1, r3}
	.loc 44 55 0
	mov	r0, r4
	.loc 44 48 0
	strne	r3, [r4, #12]
.LVL1860:
	.loc 44 54 0
	streq	r2, [r4]
	.loc 44 55 0
	add	sp, sp, #32
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE540:
	.size	lookupCapAndSlot, .-lookupCapAndSlot
	.align	2
	.syntax unified
	.arm
	.type	cap_frame_cap_new.constprop.281, %function
cap_frame_cap_new.constprop.281:
.LFB1016:
	.loc 4 1588 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1861:
	.loc 4 1601 0
	bics	r3, r1, #7
	.loc 4 1588 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 1601 0
	bne	.L2122
	.loc 4 1610 0
	ubfx	ip, r2, #0, #12
	.loc 4 1602 0
	lsl	r1, r1, #29
.LVL1862:
	.loc 4 1610 0
	cmp	ip, #0
	bne	.L2123
.LVL1863:
	.loc 4 1616 0
	bic	r2, r2, #4080
.LVL1864:
	str	ip, [r0, #4]
.LVL1865:
	bic	r2, r2, #15
	orr	r1, r1, r2, lsr #8
	orr	r1, r1, #402653185
	str	r1, [r0]
	.loc 4 1617 0
	pop	{r4, pc}
.LVL1866:
.L2122:
	.loc 4 1601 0
	movw	r1, #:lower16:.LC29
.LVL1867:
	movw	r0, #:lower16:.LC117
.LVL1868:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC117
	ldr	r3, .L2124
	movw	r2, #1601
.LVL1869:
	bl	_assert_fail
.LVL1870:
.L2123:
	.loc 4 1610 0
	movw	r1, #:lower16:.LC29
.LVL1871:
	movw	r0, #:lower16:.LC118
.LVL1872:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC118
	ldr	r3, .L2124
	movw	r2, #1610
.LVL1873:
	bl	_assert_fail
.LVL1874:
.L2125:
	.align	2
.L2124:
	.word	.LANCHOR4+652
	.cfi_endproc
.LFE1016:
	.size	cap_frame_cap_new.constprop.281, .-cap_frame_cap_new.constprop.281
	.align	2
	.syntax unified
	.arm
	.type	pte_pte_small_new.constprop.290, %function
pte_pte_small_new.constprop.290:
.LFB1007:
	.loc 4 2149 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1875:
	.loc 4 2155 0
	ubfx	ip, r0, #0, #12
	.loc 4 2149 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 4 2155 0
	cmp	ip, #0
	.loc 4 2149 0
	ldr	lr, [sp, #28]
	ldr	ip, [sp, #24]
	ldr	r6, [sp, #32]
.LVL1876:
	ldr	r5, [sp, #36]
	.loc 4 2155 0
	bne	.L2136
	.loc 4 2158 0
	bics	r4, r1, #1
	.loc 4 2156 0
	bic	r0, r0, #4080
.LVL1877:
	bic	r0, r0, #15
.LVL1878:
	.loc 4 2158 0
	bne	.L2137
	.loc 4 2161 0
	bics	r4, r2, #1
	.loc 4 2159 0
	lsl	r1, r1, #11
.LVL1879:
	orr	r4, r5, #2
.LVL1880:
	.loc 4 2161 0
	bne	.L2138
	.loc 4 2167 0
	bics	r7, r3, #7
	.loc 4 2162 0
	lsl	r2, r2, #10
.LVL1881:
	.loc 4 2167 0
	bne	.L2139
	.loc 4 2170 0
	bics	r7, ip, #3
	.loc 4 2168 0
	lsl	r3, r3, #6
.LVL1882:
	.loc 4 2170 0
	bne	.L2140
	.loc 4 2173 0
	bics	r7, lr, #1
	.loc 4 2171 0
	lsl	ip, ip, #4
.LVL1883:
	.loc 4 2173 0
	bne	.L2141
	.loc 4 2176 0
	bics	r7, r6, #1
	.loc 4 2174 0
	lsl	lr, lr, #3
.LVL1884:
	.loc 4 2176 0
	bne	.L2142
.LVL1885:
	orr	r4, r4, r6, lsl #2
	.loc 4 2182 0
	bics	r5, r5, #1
	orr	lr, r4, lr
.LVL1886:
	orr	ip, lr, ip
.LVL1887:
	orr	r3, ip, r3
.LVL1888:
	orr	r3, r3, r2
	orr	r1, r3, r1
.LVL1889:
	bne	.L2143
.LVL1890:
	.loc 4 2186 0
	orr	r0, r0, r1
	pop	{r4, r5, r6, r7, r8, pc}
.LVL1891:
.L2136:
	bl	pte_pte_small_new.part.115
.LVL1892:
.L2143:
	.loc 4 2182 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC125
.LVL1893:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC125
	ldr	r3, .L2144
	movw	r2, #2182
.LVL1894:
	bl	_assert_fail
.LVL1895:
.L2142:
	.loc 4 2176 0
	movw	r1, #:lower16:.LC29
.LVL1896:
	movw	r0, #:lower16:.LC124
.LVL1897:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC124
	ldr	r3, .L2144
.LVL1898:
	mov	r2, #2176
.LVL1899:
	bl	_assert_fail
.LVL1900:
.L2141:
	.loc 4 2173 0
	movw	r1, #:lower16:.LC29
.LVL1901:
	movw	r0, #:lower16:.LC123
.LVL1902:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC123
	ldr	r3, .L2144
.LVL1903:
	movw	r2, #2173
.LVL1904:
	bl	_assert_fail
.LVL1905:
.L2140:
	.loc 4 2170 0
	movw	r1, #:lower16:.LC29
.LVL1906:
	movw	r0, #:lower16:.LC122
.LVL1907:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC122
	ldr	r3, .L2144
.LVL1908:
	movw	r2, #2170
.LVL1909:
	bl	_assert_fail
.LVL1910:
.L2139:
	.loc 4 2167 0
	movw	r1, #:lower16:.LC29
.LVL1911:
	movw	r0, #:lower16:.LC121
.LVL1912:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC121
	ldr	r3, .L2144
.LVL1913:
	movw	r2, #2167
.LVL1914:
	bl	_assert_fail
.LVL1915:
.L2138:
	.loc 4 2161 0
	movw	r1, #:lower16:.LC29
.LVL1916:
	movw	r0, #:lower16:.LC120
.LVL1917:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC120
	ldr	r3, .L2144
.LVL1918:
	movw	r2, #2161
.LVL1919:
	bl	_assert_fail
.LVL1920:
.L2137:
	.loc 4 2158 0
	movw	r1, #:lower16:.LC29
.LVL1921:
	movw	r0, #:lower16:.LC119
.LVL1922:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC119
	ldr	r3, .L2144
.LVL1923:
	movw	r2, #2158
.LVL1924:
	bl	_assert_fail
.LVL1925:
.L2145:
	.align	2
.L2144:
	.word	.LANCHOR4+1156
	.cfi_endproc
.LFE1007:
	.size	pte_pte_small_new.constprop.290, .-pte_pte_small_new.constprop.290
	.section	.boot.text
	.align	2
	.global	map_kernel_frame
	.syntax unified
	.arm
	.type	map_kernel_frame, %function
map_kernel_frame:
.LFB323:
	.loc 11 131 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1926:
	.loc 11 134 0
	cmn	r1, #1048576
	.loc 11 131 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 11 132 0
	ubfx	r1, r1, #12, #8
.LVL1927:
	.loc 11 131 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 11 134 0
	bcc	.L2156
.LVL1928:
.LBB8585:
.LBB8586:
	.loc 11 72 0
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L2148
.L2150:
	.word	.L2149
	.word	.L2151
	.word	.L2154
	.word	.L2153
.L2154:
	.loc 11 80 0
	mov	lr, #2
.L2152:
.LVL1929:
.LBE8586:
.LBE8585:
	.loc 11 136 0
	movw	r2, #:lower16:.LANCHOR5
.LVL1930:
	and	ip, r3, #1
	movt	r2, #:upper16:.LANCHOR5
	mov	r3, #0
.LVL1931:
	add	r4, r2, r1, lsl #2
	mov	r5, #1
	str	ip, [sp, #4]
	mov	r2, r3
	str	lr, [sp]
	mov	r1, r3
.LVL1932:
	str	r3, [sp, #12]
	str	r5, [sp, #8]
	bl	pte_pte_small_new.constprop.290
.LVL1933:
	str	r0, [r4, #32]
	.loc 11 148 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL1934:
.L2151:
	.cfi_restore_state
.LBB8590:
.LBB8589:
	.loc 11 77 0
	mov	lr, #1
	b	.L2152
.L2153:
	.loc 11 83 0
	mov	lr, #3
	b	.L2152
.L2149:
	.loc 11 74 0
	mov	lr, #0
	b	.L2152
.L2148:
.LVL1935:
.LBB8587:
.LBB8588:
	.loc 11 86 0
	movw	r1, #:lower16:.LC26
.LVL1936:
	movw	r0, #:lower16:.LC27
.LVL1937:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC27
	ldr	r3, .L2157
.LVL1938:
	mov	r2, #86
.LVL1939:
	bl	_fail
.LVL1940:
.L2156:
.LBE8588:
.LBE8587:
.LBE8589:
.LBE8590:
.LBB8591:
.LBB8592:
	.loc 11 134 0
	movw	r1, #:lower16:.LC26
.LVL1941:
	movw	r0, #:lower16:.LC126
.LVL1942:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC126
	ldr	r3, .L2157+4
.LVL1943:
	mov	r2, #134
.LVL1944:
	bl	_assert_fail
.LVL1945:
.L2158:
	.align	2
.L2157:
	.word	.LANCHOR4+56
	.word	.LANCHOR4+3336
.LBE8592:
.LBE8591:
	.cfi_endproc
.LFE323:
	.size	map_kernel_frame, .-map_kernel_frame
	.text
	.align	2
	.syntax unified
	.arm
	.type	pte_pte_large_new.constprop.291, %function
pte_pte_large_new.constprop.291:
.LFB1006:
	.loc 4 2036 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1946:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 2042 0
	uxth	lr, r0
	.loc 4 2036 0
	ldr	ip, [sp, #8]
.LVL1947:
	.loc 4 2042 0
	cmp	lr, #0
	.loc 4 2036 0
	ldr	r4, [sp, #12]
	.loc 4 2042 0
	bne	.L2167
	.loc 4 2043 0
	lsr	r0, r0, #16
.LVL1948:
	.loc 4 2045 0
	bics	lr, r1, #1
	.loc 4 2043 0
	lsl	r0, r0, #16
.LVL1949:
	.loc 4 2045 0
	bne	.L2168
	.loc 4 2048 0
	bics	lr, r2, #7
	.loc 4 2046 0
	lsl	r1, r1, #15
.LVL1950:
	.loc 4 2048 0
	bne	.L2169
	.loc 4 2054 0
	bics	lr, r3, #1
	.loc 4 2049 0
	lsl	r2, r2, #12
.LVL1951:
	.loc 4 2054 0
	bne	.L2170
	.loc 4 2060 0
	bics	lr, ip, #3
	.loc 4 2055 0
	lsl	r3, r3, #10
.LVL1952:
	.loc 4 2060 0
	bne	.L2171
	.loc 4 2066 0
	bics	lr, r4, #1
	.loc 4 2061 0
	lsl	ip, ip, #4
.LVL1953:
	.loc 4 2066 0
	bne	.L2172
.LVL1954:
	.loc 4 2075 0
	movw	lr, #2049
	orr	lr, lr, r4, lsl #2
	orr	ip, lr, ip
	orr	r3, ip, r3
	orr	r2, r3, r2
	orr	r1, r2, r1
	.loc 4 2076 0
	orr	r0, r1, r0
	pop	{r4, pc}
.LVL1955:
.L2167:
.LBB8595:
.LBB8596:
	.loc 4 2042 0
	movw	r1, #:lower16:.LC29
.LVL1956:
	movw	r0, #:lower16:.LC127
.LVL1957:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC127
	ldr	r3, .L2173
.LVL1958:
	movw	r2, #2042
.LVL1959:
	bl	_assert_fail
.LVL1960:
.L2172:
.LBE8596:
.LBE8595:
	.loc 4 2066 0
	movw	r1, #:lower16:.LC29
.LVL1961:
	movw	r0, #:lower16:.LC124
.LVL1962:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC124
	ldr	r3, .L2173
.LVL1963:
	movw	r2, #2066
.LVL1964:
	bl	_assert_fail
.LVL1965:
.L2171:
	.loc 4 2060 0
	movw	r1, #:lower16:.LC29
.LVL1966:
	movw	r0, #:lower16:.LC122
.LVL1967:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC122
	ldr	r3, .L2173
.LVL1968:
	movw	r2, #2060
.LVL1969:
	bl	_assert_fail
.LVL1970:
.L2170:
	.loc 4 2054 0
	movw	r1, #:lower16:.LC29
.LVL1971:
	movw	r0, #:lower16:.LC120
.LVL1972:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC120
	ldr	r3, .L2173
.LVL1973:
	movw	r2, #2054
.LVL1974:
	bl	_assert_fail
.LVL1975:
.L2169:
	.loc 4 2048 0
	movw	r1, #:lower16:.LC29
.LVL1976:
	movw	r0, #:lower16:.LC121
.LVL1977:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC121
	ldr	r3, .L2173
.LVL1978:
	mov	r2, #2048
.LVL1979:
	bl	_assert_fail
.LVL1980:
.L2168:
	.loc 4 2045 0
	movw	r1, #:lower16:.LC29
.LVL1981:
	movw	r0, #:lower16:.LC125
.LVL1982:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC125
	ldr	r3, .L2173
.LVL1983:
	movw	r2, #2045
.LVL1984:
	bl	_assert_fail
.LVL1985:
.L2174:
	.align	2
.L2173:
	.word	.LANCHOR4+3356
	.cfi_endproc
.LFE1006:
	.size	pte_pte_large_new.constprop.291, .-pte_pte_large_new.constprop.291
	.align	2
	.syntax unified
	.arm
	.type	mdb_node_new.constprop.303, %function
mdb_node_new.constprop.303:
.LFB994:
	.loc 4 425 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1986:
	.loc 4 435 0
	bics	r2, r1, #31
	bne	.L2178
.LVL1987:
	.loc 4 444 0
	str	r2, [r0]
	str	r1, [r0, #4]
.LVL1988:
	.loc 4 445 0
	bx	lr
.LVL1989:
.L2178:
	.loc 4 435 0
	movw	r1, #:lower16:.LC29
.LVL1990:
	movw	r0, #:lower16:.LC128
.LVL1991:
	.loc 4 425 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 4 435 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC128
	ldr	r3, .L2179
	movw	r2, #435
	bl	_assert_fail
.LVL1992:
.L2180:
	.align	2
.L2179:
	.word	.LANCHOR4+2260
	.cfi_endproc
.LFE994:
	.size	mdb_node_new.constprop.303, .-mdb_node_new.constprop.303
	.align	2
	.global	cdtSwap
	.syntax unified
	.arm
	.type	cdtSwap, %function
cdtSwap:
.LFB522:
	.loc 3 706 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1993:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 3 706 0
	ldr	r4, [sp, #44]
	str	r3, [sp, #36]
	.loc 3 708 0
	cmp	r2, r4
	.loc 3 706 0
	stm	sp, {r0, r1}
	.loc 3 708 0
	beq	.L2208
	ldr	r3, [r2]
	mov	r5, r2
.LVL1994:
	mov	r6, sp
.LBB8597:
.LBB8598:
	.loc 4 997 0
	and	r2, r3, #14
.LVL1995:
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL1996:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE8598:
.LBE8597:
	.loc 3 709 0
	cmp	r3, #0
	bne	.L2209
.L2185:
	ldr	r3, [r4]
.LVL1997:
.LBB8599:
.LBB8600:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL1998:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE8600:
.LBE8599:
	.loc 3 712 0
	cmp	r3, #0
	bne	.L2210
.L2188:
.LBB8601:
.LBB8602:
	.loc 4 469 0
	ldr	r7, [r5, #12]
.LBE8602:
.LBE8601:
	.loc 3 717 0
	add	r0, r5, #8
	ldr	r1, [r4, #12]
.LBB8604:
.LBB8603:
	.loc 4 469 0
	and	r7, r7, #31
.LBE8603:
.LBE8604:
	.loc 3 717 0
	and	r1, r1, #31
	bl	mdb_node_new.constprop.303
.LVL1999:
	.loc 3 718 0
	mov	r1, r7
	add	r0, r4, #8
	bl	mdb_node_new.constprop.303
.LVL2000:
	.loc 3 720 0
	add	r3, sp, #36
	ldm	r3, {r0, r1}
	stm	r5, {r0, r1}
	.loc 3 721 0
	ldm	r6, {r0, r1}
	stm	r4, {r0, r1}
	ldr	r3, [r5]
.LVL2001:
.LBB8605:
.LBB8606:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2002:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE8606:
.LBE8605:
	.loc 3 723 0
	cmp	r3, #0
	bne	.L2211
.L2191:
	ldr	r3, [r4]
.LVL2003:
.LBB8607:
.LBB8608:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2004:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE8608:
.LBE8607:
	.loc 3 726 0
	cmp	r3, #0
	beq	.L2181
	.loc 3 727 0
	movw	r5, #:lower16:ksRootCTE
.LVL2005:
	mov	r1, r4
	movt	r5, #:upper16:ksRootCTE
	ldr	r0, [r5]
	bl	aaInsert
.LVL2006:
	str	r0, [r5]
.L2181:
	.loc 3 729 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL2007:
.L2211:
	.cfi_restore_state
	.loc 3 724 0
	movw	r6, #:lower16:ksRootCTE
	mov	r1, r5
	movt	r6, #:upper16:ksRootCTE
	ldr	r0, [r6]
	bl	aaInsert
.LVL2008:
	str	r0, [r6]
	b	.L2191
.L2210:
	.loc 3 713 0
	movw	r7, #:lower16:ksRootCTE
	mov	r2, r4
	movt	r7, #:upper16:ksRootCTE
	mov	r0, #0
	ldr	r1, [r7]
	bl	aaRemove
.LVL2009:
	str	r0, [r7]
	b	.L2188
.L2209:
	.loc 3 710 0
	movw	r7, #:lower16:ksRootCTE
	mov	r2, r5
	movt	r7, #:upper16:ksRootCTE
	mov	r0, #0
	ldr	r1, [r7]
	bl	aaRemove
.LVL2010:
	str	r0, [r7]
	b	.L2185
.LVL2011:
.L2208:
	.loc 3 708 0 discriminator 1
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC129
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC129
	ldr	r3, .L2212
	mov	r2, #708
.LVL2012:
	bl	_assert_fail
.LVL2013:
.L2213:
	.align	2
.L2212:
	.word	.LANCHOR4+3376
	.cfi_endproc
.LFE522:
	.size	cdtSwap, .-cdtSwap
	.align	2
	.global	cdtUpdate
	.syntax unified
	.arm
	.type	cdtUpdate, %function
cdtUpdate:
.LFB521:
	.loc 3 693 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2014:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 56
	.loc 3 693 0
	stm	sp, {r1, r2}
	mov	r4, r0
	add	r7, sp, #8
	add	r6, sp, #16
	ldm	r0, {r0, r1}
.LVL2015:
	mov	r5, sp
	ldr	r8, [sp]
	stm	r7, {r0, r1}
	mov	r9, r0
.LVL2016:
	ldm	sp, {r0, r1}
.LVL2017:
	stm	r6, {r0, r2}
.LBB8613:
.LBB8614:
	.loc 3 40 0
	mov	r0, r9
	bl	cap_get_capSpaceType.isra.178
.LVL2018:
	mov	r10, r0
	mov	r0, r8
	bl	cap_get_capSpaceType.isra.178
.LVL2019:
	.loc 3 43 0
	cmp	r10, r0
	beq	.L2219
.LVL2020:
.L2215:
.LBE8614:
.LBE8613:
	.loc 3 697 0
	movw	r6, #:lower16:ksRootCTE
	mov	r2, r4
	movt	r6, #:upper16:ksRootCTE
	mov	r0, #0
	ldr	r1, [r6]
	bl	aaRemove
.LVL2021:
	.loc 3 698 0
	ldr	r1, [r4, #12]
	.loc 3 697 0
	mov	r7, r0
	.loc 3 698 0
	add	r0, r4, #8
	.loc 3 697 0
	str	r7, [r6]
	.loc 3 698 0
	and	r1, r1, #31
	bl	mdb_node_new.constprop.303
.LVL2022:
	.loc 3 699 0
	ldm	r5, {r0, r1}
	stm	r4, {r0, r1}
	.loc 3 700 0
	mov	r0, r7
	mov	r1, r4
	bl	aaInsert
.LVL2023:
	str	r0, [r6]
	.loc 3 702 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL2024:
.L2219:
	.cfi_restore_state
.LBB8616:
.LBB8615:
	.loc 3 41 0
	str	r9, [sp, #8]
	ldm	r7, {r0, r1}
	bl	cap_get_capSpacePtr
.LVL2025:
	str	r8, [sp, #16]
	mov	r9, r0
.LVL2026:
	ldm	r6, {r0, r1}
	bl	cap_get_capSpacePtr
.LVL2027:
	.loc 3 40 0
	cmp	r9, r0
	bne	.L2215
	.loc 3 42 0
	ldm	r7, {r0, r1}
	bl	cap_get_capSpaceSize
.LVL2028:
	mov	r8, r0
.LVL2029:
	ldm	r6, {r0, r1}
	bl	cap_get_capSpaceSize
.LVL2030:
	.loc 3 41 0
	cmp	r8, r0
	bne	.L2215
	.loc 3 43 0
	ldm	r7, {r0, r1}
	bl	cap_get_capBadge
.LVL2031:
	mov	r8, r0
	ldm	r6, {r0, r1}
	bl	cap_get_capBadge
.LVL2032:
	.loc 3 42 0
	cmp	r8, r0
	bne	.L2215
	.loc 3 44 0
	ldm	r7, {r0, r1}
	bl	cap_get_capExtraComp
.LVL2033:
	mov	r7, r0
.LVL2034:
	ldm	r6, {r0, r1}
	bl	cap_get_capExtraComp
.LVL2035:
	.loc 3 43 0
	cmp	r7, r0
	bne	.L2215
.LBE8615:
.LBE8616:
	.loc 3 695 0
	ldm	sp, {r0, r1}
	stm	r4, {r0, r1}
	.loc 3 702 0
	add	sp, sp, #24
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.cfi_endproc
.LFE521:
	.size	cdtUpdate, .-cdtUpdate
	.align	2
	.global	performPageTableInvocationMap
	.syntax unified
	.arm
	.type	performPageTableInvocationMap, %function
performPageTableInvocationMap:
.LFB361:
	.loc 11 1609 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2036:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 11 1609 0
	ldr	r4, [sp, #24]
	mov	r5, r3
	stm	sp, {r0, r1}
	.loc 11 1610 0
	mov	r0, r2
	ldm	sp, {r1, r2}
.LVL2037:
	bl	cdtUpdate
.LVL2038:
	.loc 11 1611 0
	str	r5, [r4]
.LVL2039:
.LBB8617:
.LBB8618:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8619:
.LBB8620:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2040:
	.arm
	.syntax unified
.LBE8620:
.LBE8619:
.LBE8618:
.LBE8617:
	.loc 11 1615 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE361:
	.size	performPageTableInvocationMap, .-performPageTableInvocationMap
	.align	2
	.global	getHWASID
	.syntax unified
	.arm
	.type	getHWASID, %function
getHWASID:
.LFB347:
	.loc 11 805 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2041:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB8662:
.LBB8663:
	.loc 11 769 0
	add	r5, r0, #12288
	ldr	r3, [r5, #4032]
.LVL2042:
.LBE8663:
.LBE8662:
.LBB8664:
.LBB8665:
	.loc 4 792 0
	tst	r3, #3
	bne	.L2233
.LVL2043:
.LBE8665:
.LBE8664:
	.loc 11 809 0
	ubfx	r2, r3, #23, #1
	cmp	r2, #0
	.loc 11 810 0
	lsrne	r3, r3, #24
.LVL2044:
	.loc 11 809 0
	beq	.L2234
.LVL2045:
	.loc 11 818 0
	mov	r0, r3
.LVL2046:
	pop	{r4, r5, r6, pc}
.LVL2047:
.L2234:
	movw	r6, #:lower16:armKSNextASID
	movw	lr, #:lower16:armKSHWASIDTable
	movt	r6, #:upper16:armKSNextASID
	movt	lr, #:upper16:armKSHWASIDTable
	ldrb	ip, [r6]	@ zero_extendqisi2
	b	.L2227
.LVL2048:
.L2236:
.LBB8667:
.LBB8668:
.LBB8669:
.LBB8670:
.LBB8671:
	.loc 11 781 0
	add	r2, r2, #1
.LVL2049:
	.loc 11 779 0
	cmp	r2, #256
	beq	.L2235
.LVL2050:
.L2227:
	add	r3, ip, r2
	uxtb	r3, r3
.LVL2051:
	.loc 11 783 0
	ldr	r1, [lr, r3, lsl #2]
	mov	r4, r3
	cmp	r1, #0
	bne	.L2236
.LVL2052:
.L2226:
.LBE8671:
.LBE8670:
.LBB8687:
.LBB8688:
	.loc 11 761 0
	lsl	r2, r3, #24
	.loc 11 763 0
	str	r0, [lr, r4, lsl #2]
.LVL2053:
.LBE8688:
.LBE8687:
.LBE8669:
.LBE8668:
.LBE8667:
	.loc 11 818 0
	mov	r0, r3
.LVL2054:
.LBB8696:
.LBB8694:
.LBB8692:
.LBB8690:
.LBB8689:
	.loc 11 761 0
	orr	r2, r2, #8388608
	str	r2, [r5, #4032]
.LBE8689:
.LBE8690:
.LBE8692:
.LBE8694:
.LBE8696:
	.loc 11 818 0
	pop	{r4, r5, r6, pc}
.LVL2055:
.L2235:
.LBB8697:
.LBB8695:
.LBB8693:
.LBB8691:
.LBB8686:
.LBB8672:
.LBB8673:
.LBB8674:
.LBB8675:
	.loc 11 425 0
	ldr	r3, [lr, ip, lsl #2]
.LVL2056:
	mov	r1, #0
.LBE8675:
.LBE8674:
	.loc 11 791 0
	mov	r4, ip
.LVL2057:
.LBB8677:
.LBB8676:
	.loc 11 425 0
	add	r3, r3, #12288
	str	r1, [r3, #4032]
.LVL2058:
.LBE8676:
.LBE8677:
.LBB8678:
.LBB8679:
.LBB8680:
.LBB8681:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8681:
.LBE8680:
	.loc 14 165 0
	.syntax divided
@ 165 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, ip, c8, c7, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBB8682:
.LBB8683:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8683:
.LBE8682:
.LBB8684:
.LBB8685:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2059:
	.arm
	.syntax unified
.LBE8685:
.LBE8684:
.LBE8679:
.LBE8678:
	.loc 11 798 0
	ldrb	r2, [r6]	@ zero_extendqisi2
.LVL2060:
	mov	r3, ip
	.loc 11 795 0
	str	r1, [lr, ip, lsl #2]
	.loc 11 798 0
	add	r2, r2, #1
	strb	r2, [r6]
.LVL2061:
	b	.L2226
.LVL2062:
.L2233:
.LBE8673:
.LBE8672:
.LBE8686:
.LBE8691:
.LBE8693:
.LBE8695:
.LBE8697:
.LBB8698:
.LBB8666:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL2063:
.LBE8666:
.LBE8698:
	.cfi_endproc
.LFE347:
	.size	getHWASID, .-getHWASID
	.align	2
	.global	setVMRoot
	.syntax unified
	.arm
	.type	setVMRoot, %function
setVMRoot:
.LFB339:
	.loc 11 675 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2064:
	.loc 11 679 0
	bic	r0, r0, #508
.LVL2065:
	bic	r0, r0, #3
	ldr	r0, [r0, #16]
.LVL2066:
.LBB8742:
.LBB8743:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r0
.LVL2067:
	.loc 4 998 0
	andne	r3, r0, #15
.LBE8743:
.LBE8742:
	.loc 11 681 0
	cmp	r3, #5
	beq	.L2240
.LVL2068:
.LBB8744:
.LBB8745:
.LBB8746:
.LBB8747:
.LBB8748:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8748:
.LBE8747:
.LBB8749:
.LBB8750:
	.loc 14 135 0
	ldr	r3, .L2245
	bic	r3, r3, #8128
	bic	r3, r3, #63
	orr	r3, r3, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8750:
.LBE8749:
.LBB8751:
.LBB8752:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2069:
	.arm
	.syntax unified
	bx	lr
.LVL2070:
.L2240:
.LBE8752:
.LBE8751:
.LBE8746:
.LBE8745:
.LBE8744:
.LBB8753:
.LBB8754:
	.loc 4 1886 0
	and	r3, r0, #15
.LBE8754:
.LBE8753:
	.loc 11 675 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB8757:
.LBB8755:
	.loc 4 1886 0
	cmp	r3, #5
	bne	.L2244
	.loc 4 1889 0
	bic	r4, r0, #16320
	bic	r4, r4, #63
.LVL2071:
.LBE8755:
.LBE8757:
.LBB8758:
.LBB8759:
	.file 45 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/context_switch.h"
	.loc 45 50 0
	mov	r0, r4
.LVL2072:
	bl	getHWASID
.LVL2073:
.LBB8760:
.LBB8761:
.LBB8762:
.LBB8763:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE8763:
.LBE8762:
.LBB8764:
.LBB8765:
	.loc 14 135 0
	ldr	r2, .L2245
	mov	r3, #57344
	movt	r3, 65535
	and	r3, r3, r2
	orr	r3, r3, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8765:
.LBE8764:
.LBB8766:
.LBB8767:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2074:
	.arm
	.syntax unified
.LBE8767:
.LBE8766:
.LBB8768:
.LBB8769:
.LBB8770:
.LBB8771:
	.loc 14 123 0
	.syntax divided
@ 123 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c13, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8772:
.LBB8773:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2075:
	.arm
	.syntax unified
.LBE8773:
.LBE8772:
.LBE8771:
.LBE8770:
.LBE8769:
.LBE8768:
.LBB8774:
.LBB8775:
	.loc 14 135 0
	add	r0, r4, #805306368
.LVL2076:
	orr	r0, r0, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE8775:
.LBE8774:
.LBB8776:
.LBB8777:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2077:
	.arm
	.syntax unified
	pop	{r4, pc}
.LVL2078:
.L2244:
.LBE8777:
.LBE8776:
.LBE8761:
.LBE8760:
.LBE8759:
.LBE8758:
.LBB8778:
.LBB8756:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL2079:
.L2246:
	.align	2
.L2245:
	.word	.LANCHOR1+805306384
.LBE8756:
.LBE8778:
	.cfi_endproc
.LFE339:
	.size	setVMRoot, .-setVMRoot
	.align	2
	.global	Arch_switchToThread
	.syntax unified
	.arm
	.type	Arch_switchToThread, %function
Arch_switchToThread:
.LFB316:
	.loc 9 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2080:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 9 21 0
	bl	setVMRoot
.LVL2081:
	.loc 9 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
.LBB8779:
.LBB8780:
	.loc 14 109 0
	add	r2, sp, #4
.LBE8780:
.LBE8779:
	.loc 9 22 0
	str	r1, [r3]
.LBB8782:
.LBB8781:
	.loc 14 109 0
	.syntax divided
@ 109 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
	.arm
	.syntax unified
.LBE8781:
.LBE8782:
	.loc 9 24 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE316:
	.size	Arch_switchToThread, .-Arch_switchToThread
	.align	2
	.global	handleVMFault
	.syntax unified
	.arm
	.type	handleVMFault, %function
handleVMFault:
.LFB331:
	.loc 11 396 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2082:
	.loc 11 397 0
	cmp	r1, #0
	.loc 11 396 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 397 0
	beq	.L2251
	cmp	r1, #1
	bne	.L2259
.LVL2083:
.LBB8812:
.LBB8813:
.LBB8814:
.LBB8815:
	.loc 10 27 0
	ldr	r0, [r0, #68]
.LVL2084:
.LBE8815:
.LBE8814:
.LBE8813:
.LBB8816:
.LBB8817:
	.loc 14 308 0
	.syntax divided
@ 308 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r1, c5, c0, 1
@ 0 "" 2
.LVL2085:
	.arm
	.syntax unified
.LBE8817:
.LBE8816:
.LBB8818:
.LBB8819:
	.loc 4 604 0
	bic	r3, r1, #16320
	bic	r3, r3, #63
	cmp	r3, #0
	bne	.L2255
.LVL2086:
.LBE8819:
.LBE8818:
	.loc 11 413 0
	mov	r2, #2
	movw	r3, #:lower16:current_fault
	movt	r2, 2
	movt	r3, #:upper16:current_fault
	orr	r2, r2, r1, lsl #18
	str	r0, [r3, #4]
.LBE8812:
	.loc 11 420 0
	mov	r0, #1
.LBB8820:
	.loc 11 413 0
	str	r2, [r3]
.LBE8820:
	.loc 11 420 0
	pop	{r4, pc}
.LVL2087:
.L2259:
	.loc 11 418 0
	movw	r1, #:lower16:.LC26
.LVL2088:
	movw	r0, #:lower16:.LC130
.LVL2089:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC130
	ldr	r3, .L2260
	movw	r2, #418
	bl	_fail
.LVL2090:
.L2251:
.LBB8821:
.LBB8822:
.LBB8823:
.LBB8824:
.LBB8825:
	.loc 14 324 0
	.syntax divided
@ 324 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r1, c6, c0, 0
@ 0 "" 2
.LVL2091:
	.arm
	.syntax unified
.LBE8825:
.LBE8824:
.LBB8826:
.LBB8827:
	.loc 14 316 0
	.syntax divided
@ 316 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r3, c5, c0, 0
@ 0 "" 2
.LVL2092:
	.arm
	.syntax unified
.LBE8827:
.LBE8826:
.LBB8828:
.LBB8829:
	.loc 4 604 0
	bic	r2, r3, #16320
	bic	r2, r2, #63
	cmp	r2, #0
	bne	.L2255
.LVL2093:
.LBE8829:
.LBE8828:
	.loc 11 403 0
	lsl	r3, r3, #18
	movw	r2, #:lower16:current_fault
	movt	r2, #:upper16:current_fault
	orr	r3, r3, #2
	str	r1, [r2, #4]
	str	r3, [r2]
.LBE8823:
.LBE8822:
.LBE8821:
	.loc 11 420 0
	mov	r0, #1
.LVL2094:
	pop	{r4, pc}
.LVL2095:
.L2255:
.LBB8834:
.LBB8833:
.LBB8832:
.LBB8831:
.LBB8830:
	bl	fault_vm_fault_new.part.126
.LVL2096:
.L2261:
	.align	2
.L2260:
	.word	.LANCHOR4+3384
.LBE8830:
.LBE8831:
.LBE8832:
.LBE8833:
.LBE8834:
	.cfi_endproc
.LFE331:
	.size	handleVMFault, .-handleVMFault
	.align	2
	.global	lookupSlotForCNodeOp
	.syntax unified
	.arm
	.type	lookupSlotForCNodeOp, %function
lookupSlotForCNodeOp:
.LFB542:
	.loc 44 75 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2097:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	.loc 44 75 0
	add	ip, sp, #8
	mov	r5, r1
	mov	r4, r0
	stm	ip, {r2, r3}
	mov	r3, r2
.LVL2098:
.LBB8839:
.LBB8840:
	.loc 4 997 0
	and	r1, r3, #14
.LVL2099:
.LBE8840:
.LBE8839:
	.loc 44 75 0
	ldr	r2, [sp, #52]
.LVL2100:
.LBB8842:
.LBB8841:
	.loc 4 997 0
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2101:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE8841:
.LBE8842:
	.loc 44 81 0
	cmp	r3, #10
	bne	.L2272
	.loc 44 89 0
	sub	r3, r2, #1
	cmp	r3, #31
	bhi	.L2273
	.loc 44 97 0
	str	r2, [sp]
	add	r0, sp, #20
.LVL2102:
	ldr	r3, [sp, #48]
	ldm	ip, {r1, r2}
	bl	resolveAddressBits
.LVL2103:
	.loc 44 98 0
	ldr	r2, [sp, #20]
	.loc 44 97 0
	ldr	r3, [sp, #28]
.LVL2104:
	.loc 44 98 0
	cmp	r2, #0
	bne	.L2274
	.loc 44 106 0
	cmp	r3, #0
	bne	.L2275
	.loc 44 115 0
	ldr	r2, [sp, #24]
.LVL2105:
	.loc 44 117 0
	str	r3, [r4]
	str	r2, [r4, #4]
.LVL2106:
.L2262:
	.loc 44 118 0
	mov	r0, r4
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL2107:
.L2272:
	.cfi_restore_state
	.loc 44 82 0
	movw	r2, #:lower16:current_syscall_error
	.loc 44 84 0
	movw	r3, #:lower16:current_lookup_fault
	mov	r1, #0
	.loc 44 82 0
	movt	r2, #:upper16:current_syscall_error
	.loc 44 84 0
	movt	r3, #:upper16:current_lookup_fault
	.loc 44 82 0
	mov	ip, #6
	.loc 44 86 0
	mov	r0, #3
.LVL2108:
	.loc 44 83 0
	str	r5, [r2, #20]
.LVL2109:
	.loc 44 86 0
	stm	r4, {r0, r1}
	.loc 44 118 0
	mov	r0, r4
	.loc 44 82 0
	str	ip, [r2, #24]
	.loc 44 84 0
	str	r1, [r3]
	str	r1, [r3, #4]
.LVL2110:
	.loc 44 118 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL2111:
.L2273:
	.cfi_restore_state
	.loc 44 90 0
	movw	r3, #:lower16:current_syscall_error
	mov	lr, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 44 91 0
	mov	ip, #1
	.loc 44 92 0
	mov	r0, #32
.LVL2112:
	.loc 44 94 0
	mov	r1, #3
	mov	r2, #0
	.loc 44 90 0
	str	lr, [r3, #24]
	.loc 44 91 0
	str	ip, [r3, #8]
	.loc 44 92 0
	str	r0, [r3, #12]
.LVL2113:
	.loc 44 94 0
	stm	r4, {r1, r2}
	b	.L2262
.LVL2114:
.L2274:
	.loc 44 99 0
	movw	r3, #:lower16:current_syscall_error
.LVL2115:
	mov	r0, #6
	movt	r3, #:upper16:current_syscall_error
	.loc 44 103 0
	mov	r1, #3
	mov	r2, #0
	.loc 44 100 0
	str	r5, [r3, #20]
.LVL2116:
	.loc 44 99 0
	str	r0, [r3, #24]
	.loc 44 103 0
	stm	r4, {r1, r2}
	b	.L2262
.LVL2117:
.L2275:
	.loc 44 107 0
	movw	r2, #:lower16:current_syscall_error
.LBB8843:
.LBB8844:
	.loc 4 2304 0
	bics	r1, r3, #63
.LBE8844:
.LBE8843:
	.loc 44 107 0
	movt	r2, #:upper16:current_syscall_error
	mov	r0, #6
	.loc 44 108 0
	str	r5, [r2, #20]
.LVL2118:
	.loc 44 107 0
	str	r0, [r2, #24]
.LBB8847:
.LBB8845:
	.loc 4 2304 0
	bne	.L2276
.LVL2119:
.LBE8845:
.LBE8847:
	.loc 44 109 0
	lsl	r3, r3, #2
.LVL2120:
	movw	r2, #:lower16:current_lookup_fault
	movt	r2, #:upper16:current_lookup_fault
	.loc 44 112 0
	str	r1, [r4, #4]
	.loc 44 109 0
	orr	r3, r3, #2
	.loc 44 112 0
	mov	r0, #3
	.loc 44 109 0
	str	r3, [r2]
	str	r1, [r2, #4]
.LVL2121:
	.loc 44 112 0
	str	r0, [r4]
	b	.L2262
.LVL2122:
.L2276:
.LBB8848:
.LBB8846:
	.loc 4 2304 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC34
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC34
	ldr	r3, .L2277
.LVL2123:
	mov	r2, #2304
	bl	_assert_fail
.LVL2124:
.L2278:
	.align	2
.L2277:
	.word	.LANCHOR4+2852
.LBE8846:
.LBE8848:
	.cfi_endproc
.LFE542:
	.size	lookupSlotForCNodeOp, .-lookupSlotForCNodeOp
	.align	2
	.global	lookupTargetSlot
	.syntax unified
	.arm
	.type	lookupTargetSlot, %function
lookupTargetSlot:
.LFB544:
	.loc 44 128 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2125:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 44 128 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	mov	r4, r0
	.loc 44 129 0
	str	r3, [sp]
	.loc 44 128 0
	stm	ip, {r1, r2}
	.loc 44 129 0
	mov	r1, #0
	ldm	ip, {r2, r3}
.LVL2126:
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL2127:
	.loc 44 130 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE544:
	.size	lookupTargetSlot, .-lookupTargetSlot
	.align	2
	.global	lookupPivotSlot
	.syntax unified
	.arm
	.type	lookupPivotSlot, %function
lookupPivotSlot:
.LFB545:
	.loc 44 134 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2128:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 44 134 0
	ldr	lr, [sp, #24]
	add	ip, sp, #8
	mov	r4, r0
	.loc 44 135 0
	str	r3, [sp]
	.loc 44 134 0
	stm	ip, {r1, r2}
	.loc 44 135 0
	mov	r1, #1
	ldm	ip, {r2, r3}
.LVL2129:
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
.LVL2130:
	.loc 44 136 0
	mov	r0, r4
	add	sp, sp, #16
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE545:
	.size	lookupPivotSlot, .-lookupPivotSlot
	.align	2
	.global	lookupSourceSlot
	.syntax unified
	.arm
	.type	lookupSourceSlot, %function
lookupSourceSlot:
.LFB978:
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	lr, sp, #8
	mov	r4, r0
	add	ip, sp, #16
	stm	lr, {r1, r2}
	ldm	lr, {r0, r1}
	mov	r1, #1
	ldr	lr, [sp, #32]
	str	r3, [sp]
	stm	ip, {r0, r2}
	mov	r0, r4
	ldm	ip, {r2, r3}
	str	lr, [sp, #4]
	bl	lookupSlotForCNodeOp
	mov	r0, r4
	add	sp, sp, #24
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE978:
	.size	lookupSourceSlot, .-lookupSourceSlot
	.align	2
	.global	performPageInvocationMapPDE
	.syntax unified
	.arm
	.type	performPageInvocationMapPDE, %function
performPageInvocationMapPDE:
.LFB365:
	.loc 11 1676 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2131:
	.loc 11 1676 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB8863:
.LBB8864:
.LBB8865:
.LBB8866:
	.loc 4 1635 0
	and	lr, r0, #15
	cmp	lr, #1
.LBE8866:
.LBE8865:
.LBE8864:
.LBE8863:
	.loc 11 1676 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	ldr	r6, [sp, #32]
	.loc 11 1676 0
	stm	sp, {r0, r1}
.LVL2132:
	ldr	r4, [sp, #36]
.LVL2133:
	ldr	r7, [sp, #40]
.LVL2134:
.LBB8877:
.LBB8875:
.LBB8870:
.LBB8867:
	.loc 4 1635 0
	bne	.L2303
.LBE8867:
.LBE8870:
.LBB8871:
.LBB8872:
	.loc 4 1746 0
	bic	r0, r0, #50331648
.LVL2135:
	ubfx	lr, r6, #10, #2
	mov	r5, r3
	orr	r0, r0, lr, lsl #24
	mov	r3, r1
.LVL2136:
	lsr	r1, r6, #12
.LVL2137:
.LBE8872:
.LBE8871:
.LBB8873:
.LBB8868:
	.loc 4 1641 0
	ubfx	r3, r3, #0, #12
.LVL2138:
	orr	r1, r3, r1, lsl #12
.LVL2139:
.LBE8868:
.LBE8873:
.LBE8875:
.LBE8877:
.LBB8878:
.LBB8879:
	.loc 4 1674 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L2304
	.loc 4 1677 0
	mov	r3, #61440
	movt	r3, 65535
	ands	r8, r4, r3
	bne	.L2305
.LVL2140:
.LBE8879:
.LBE8878:
	.loc 11 1681 0
	and	r3, r3, r1
	str	r0, [sp]
.LVL2141:
	orr	r3, r3, r4
	mov	r0, r2
.LVL2142:
	str	r3, [sp, #4]
	ldm	sp, {r1, r2}
.LVL2143:
	bl	cdtUpdate
.LVL2144:
	.loc 11 1683 0
	cmp	r7, #0
	beq	.L2295
	cmp	r7, #8
	bls	.L2296
	sub	r3, r7, #9
	add	r2, r4, #25
	bic	r1, r3, #7
	add	r2, r6, r2, lsl #2
	add	r3, r1, #8
.LVL2145:
.L2293:
	.loc 11 1683 0 is_stmt 0 discriminator 3
	add	r8, r8, #8
.LVL2146:
	pld	[r2]
	cmp	r8, r3
	.loc 11 1684 0 is_stmt 1 discriminator 3
	str	r5, [r2, #-100]
.LVL2147:
	str	r5, [r2, #-96]
	add	r2, r2, #32
	str	r5, [r2, #-124]
	str	r5, [r2, #-120]
	str	r5, [r2, #-116]
	str	r5, [r2, #-112]
	str	r5, [r2, #-108]
.LVL2148:
	str	r5, [r2, #-104]
	bne	.L2293
.LVL2149:
.L2292:
	add	r2, r4, r3
	add	r2, r6, r2, lsl #2
.L2294:
.LVL2150:
	.loc 11 1683 0
	add	r3, r3, #1
.LVL2151:
	.loc 11 1684 0
	str	r5, [r2], #4
	.loc 11 1683 0
	cmp	r7, r3
	bhi	.L2294
.LVL2152:
.L2295:
.LBB8881:
.LBB8882:
	.loc 13 95 0
	add	r2, r4, r7
	add	r3, r6, r4, lsl #2
	sub	r2, r2, #-1073741823
	add	r2, r6, r2, lsl #2
	lsr	r3, r3, #5
.LVL2153:
	add	r2, r2, #3
	lsr	r2, r2, #5
	add	r2, r2, #1
	cmp	r2, r3
	bls	.L2301
.L2297:
.LVL2154:
.LBB8883:
.LBB8884:
	.loc 14 212 0
	lsl	r1, r3, #5
.LVL2155:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8885:
.LBB8886:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2156:
	.arm
	.syntax unified
.LBE8886:
.LBE8885:
.LBE8884:
.LBE8883:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2157:
	cmp	r2, r3
	bne	.L2297
.LVL2158:
.L2301:
.LBE8882:
.LBE8881:
	.loc 11 1691 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL2159:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL2160:
.L2296:
	.cfi_restore_state
	.loc 11 1683 0
	mov	r3, r8
	b	.L2292
.LVL2161:
.L2303:
.LBB8887:
.LBB8876:
.LBB8874:
.LBB8869:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
.LVL2162:
	movw	r0, #:lower16:.LC44
.LVL2163:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L2306
.LVL2164:
	movw	r2, #1636
.LVL2165:
	bl	_assert_fail
.LVL2166:
.L2305:
.LBE8869:
.LBE8874:
.LBE8876:
.LBE8887:
.LBB8888:
.LBB8880:
	.loc 4 1677 0
	movw	r1, #:lower16:.LC29
.LVL2167:
	movw	r0, #:lower16:.LC131
.LVL2168:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC131
	ldr	r3, .L2306+4
	movw	r2, #1677
.LVL2169:
	bl	_assert_fail
.LVL2170:
.L2304:
	bl	cap_frame_cap_set_capFMappedIndex.part.144
.LVL2171:
.L2307:
	.align	2
.L2306:
	.word	.LANCHOR4+3400
	.word	.LANCHOR4+1640
.LBE8880:
.LBE8888:
	.cfi_endproc
.LFE365:
	.size	performPageInvocationMapPDE, .-performPageInvocationMapPDE
	.align	2
	.global	Arch_deriveCap
	.syntax unified
	.arm
	.type	Arch_deriveCap, %function
Arch_deriveCap:
.LFB440:
	.loc 23 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2172:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 23 21 0
	add	r1, sp, #8
.LVL2173:
	stmdb	r1, {r2, r3}
	ldr	r3, [sp]
.LVL2174:
.LBB8899:
.LBB8900:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL2175:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE8900:
.LBE8899:
	.loc 23 24 0
	cmp	r2, #3
	beq	.L2312
	cmp	r2, #5
	beq	.L2313
	cmp	r2, #1
	beq	.L2321
	.loc 23 43 0
	movw	r1, #:lower16:.LC24
	movw	r0, #:lower16:.LC132
.LVL2176:
	movt	r1, #:upper16:.LC24
	movt	r0, #:upper16:.LC132
	ldr	r3, .L2324
.LVL2177:
	mov	r2, #43
	bl	_fail
.LVL2178:
.L2321:
.LBB8901:
.LBB8902:
.LBB8903:
	.loc 4 1635 0
	and	r2, r3, #15
	ldr	r1, [sp, #4]
.LVL2179:
	cmp	r2, #1
	bne	.L2322
.LVL2180:
.LBE8903:
.LBE8902:
.LBE8901:
	.loc 23 38 0
	bic	r3, r3, #50331648
.LVL2181:
	ubfx	r1, r1, #0, #12
.LVL2182:
	mov	r2, #0
	str	r3, [r0, #4]
	str	r1, [r0, #8]
	str	r2, [r0]
	.loc 23 45 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2183:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2184:
.L2313:
	.cfi_restore_state
	.loc 23 31 0
	ldr	r2, [sp, #4]
.LVL2185:
	.loc 23 33 0
	mov	r1, #0
	stm	r0, {r1, r3}
	str	r2, [r0, #8]
	.loc 23 45 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL2186:
.L2312:
	.cfi_restore_state
.LBB8906:
.LBB8907:
	.loc 4 1816 0
	and	r2, r3, #15
	ldr	r1, [sp, #4]
.LVL2187:
	cmp	r2, #3
	bne	.L2323
.LVL2188:
.LBE8907:
.LBE8906:
	.loc 23 28 0
	ubfx	r1, r1, #0, #12
.LVL2189:
	mov	r2, #0
	str	r1, [r0, #8]
	stm	r0, {r2, r3}
	.loc 23 45 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL2190:
.L2322:
	.cfi_restore_state
.LBB8909:
.LBB8905:
.LBB8904:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
.LVL2191:
	movw	r0, #:lower16:.LC44
.LVL2192:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L2324+4
.LVL2193:
	movw	r2, #1636
	bl	_assert_fail
.LVL2194:
.L2323:
.LBE8904:
.LBE8905:
.LBE8909:
.LBB8910:
.LBB8908:
	bl	cap_page_table_cap_set_capPTMappedObject.part.132
.LVL2195:
.L2325:
	.align	2
.L2324:
	.word	.LANCHOR4+3440
	.word	.LANCHOR4+3400
.LBE8908:
.LBE8910:
	.cfi_endproc
.LFE440:
	.size	Arch_deriveCap, .-Arch_deriveCap
	.align	2
	.global	performPageInvocationMapPTE
	.syntax unified
	.arm
	.type	performPageInvocationMapPTE, %function
performPageInvocationMapPTE:
.LFB364:
	.loc 11 1650 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2196:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB8925:
.LBB8926:
.LBB8927:
.LBB8928:
	.loc 4 1635 0
	and	lr, r0, #15
	cmp	lr, #1
.LBE8928:
.LBE8927:
.LBE8926:
.LBE8925:
	.loc 11 1650 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	ldr	r6, [sp, #32]
	.loc 11 1650 0
	stm	sp, {r0, r1}
.LVL2197:
	ldr	r4, [sp, #36]
.LVL2198:
	ldr	r7, [sp, #40]
.LVL2199:
.LBB8939:
.LBB8937:
.LBB8932:
.LBB8929:
	.loc 4 1635 0
	bne	.L2344
.LBE8929:
.LBE8932:
.LBB8933:
.LBB8934:
	.loc 4 1746 0
	bic	r0, r0, #50331648
.LVL2200:
	ubfx	lr, r6, #10, #2
	mov	r5, r3
	orr	r0, r0, lr, lsl #24
	mov	r3, r1
.LVL2201:
	lsr	r1, r6, #12
.LVL2202:
.LBE8934:
.LBE8933:
.LBB8935:
.LBB8930:
	.loc 4 1641 0
	ubfx	r3, r3, #0, #12
.LVL2203:
	orr	r1, r3, r1, lsl #12
.LVL2204:
.LBE8930:
.LBE8935:
.LBE8937:
.LBE8939:
.LBB8940:
.LBB8941:
	.loc 4 1674 0
	and	r3, r0, #15
	cmp	r3, #1
	bne	.L2345
	.loc 4 1677 0
	mov	r3, #61440
	movt	r3, 65535
	ands	r8, r4, r3
	bne	.L2346
.LVL2205:
.LBE8941:
.LBE8940:
	.loc 11 1655 0
	and	r3, r3, r1
	str	r0, [sp]
.LVL2206:
	orr	r3, r3, r4
	mov	r0, r2
.LVL2207:
	str	r3, [sp, #4]
	ldm	sp, {r1, r2}
.LVL2208:
	bl	cdtUpdate
.LVL2209:
	.loc 11 1663 0
	cmp	r7, #0
	beq	.L2336
	cmp	r7, #8
	bls	.L2337
	sub	r3, r7, #9
	add	r2, r4, #25
	bic	r1, r3, #7
	add	r2, r6, r2, lsl #2
	add	r3, r1, #8
.LVL2210:
.L2334:
	.loc 11 1663 0 is_stmt 0 discriminator 3
	add	r8, r8, #8
.LVL2211:
	pld	[r2]
	cmp	r8, r3
	.loc 11 1664 0 is_stmt 1 discriminator 3
	str	r5, [r2, #-100]
.LVL2212:
	str	r5, [r2, #-96]
	add	r2, r2, #32
	str	r5, [r2, #-124]
	str	r5, [r2, #-120]
	str	r5, [r2, #-116]
	str	r5, [r2, #-112]
	str	r5, [r2, #-108]
.LVL2213:
	str	r5, [r2, #-104]
	bne	.L2334
.LVL2214:
.L2333:
	add	r2, r4, r3
	add	r2, r6, r2, lsl #2
.L2335:
.LVL2215:
	.loc 11 1663 0
	add	r3, r3, #1
.LVL2216:
	.loc 11 1664 0
	str	r5, [r2], #4
	.loc 11 1663 0
	cmp	r7, r3
	bhi	.L2335
.LVL2217:
.L2336:
.LBB8943:
.LBB8944:
	.loc 13 95 0
	add	r2, r4, r7
	add	r3, r6, r4, lsl #2
	sub	r2, r2, #-1073741823
	add	r2, r6, r2, lsl #2
	lsr	r3, r3, #5
.LVL2218:
	add	r2, r2, #3
	lsr	r2, r2, #5
	add	r2, r2, #1
	cmp	r2, r3
	bls	.L2342
.L2338:
.LVL2219:
.LBB8945:
.LBB8946:
	.loc 14 212 0
	lsl	r1, r3, #5
.LVL2220:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB8947:
.LBB8948:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2221:
	.arm
	.syntax unified
.LBE8948:
.LBE8947:
.LBE8946:
.LBE8945:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2222:
	cmp	r2, r3
	bne	.L2338
.LVL2223:
.L2342:
.LBE8944:
.LBE8943:
	.loc 11 1671 0
	mov	r0, #0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL2224:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL2225:
.L2337:
	.cfi_restore_state
	.loc 11 1663 0
	mov	r3, r8
	b	.L2333
.LVL2226:
.L2344:
.LBB8949:
.LBB8938:
.LBB8936:
.LBB8931:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
.LVL2227:
	movw	r0, #:lower16:.LC44
.LVL2228:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L2347
.LVL2229:
	movw	r2, #1636
.LVL2230:
	bl	_assert_fail
.LVL2231:
.L2346:
.LBE8931:
.LBE8936:
.LBE8938:
.LBE8949:
.LBB8950:
.LBB8942:
	.loc 4 1677 0
	movw	r1, #:lower16:.LC29
.LVL2232:
	movw	r0, #:lower16:.LC131
.LVL2233:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC131
	ldr	r3, .L2347+4
	movw	r2, #1677
.LVL2234:
	bl	_assert_fail
.LVL2235:
.L2345:
	bl	cap_frame_cap_set_capFMappedIndex.part.144
.LVL2236:
.L2348:
	.align	2
.L2347:
	.word	.LANCHOR4+3400
	.word	.LANCHOR4+1640
.LBE8942:
.LBE8950:
	.cfi_endproc
.LFE364:
	.size	performPageInvocationMapPTE, .-performPageInvocationMapPTE
	.align	2
	.global	doFaultTransfer
	.syntax unified
	.arm
	.type	doFaultTransfer, %function
doFaultTransfer:
.LFB560:
	.loc 26 198 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2237:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 198 0
	mov	r5, r1
	mov	r4, r2
	mov	r6, r0
	.loc 26 202 0
	mov	r2, r3
.LVL2238:
	mov	r1, r4
.LVL2239:
	mov	r0, r5
.LVL2240:
	bl	setMRs_fault
.LVL2241:
.LBB8965:
.LBB8966:
	.loc 33 29 0
	bics	r2, r0, #127
	.loc 33 21 0
	ldr	r3, [r5, #88]
.LVL2242:
	.loc 33 29 0
	bne	.L2352
	and	r3, r3, #7
.LVL2243:
.LBE8966:
.LBE8965:
.LBB8968:
.LBB8969:
	.loc 10 21 0
	str	r6, [r4]
	lsl	r3, r3, #12
.LVL2244:
.LBE8969:
.LBE8968:
.LBB8970:
.LBB8971:
	orr	r3, r0, r3
.LVL2245:
	str	r3, [r4, #4]
.LVL2246:
	pop	{r4, r5, r6, pc}
.LVL2247:
.L2352:
.LBE8971:
.LBE8970:
.LBB8972:
.LBB8967:
	.loc 33 29 0
	movw	r1, #:lower16:.LC65
	movw	r0, #:lower16:.LC133
.LVL2248:
	movt	r1, #:upper16:.LC65
	movt	r0, #:upper16:.LC133
	ldr	r3, .L2353
.LVL2249:
	mov	r2, #29
	bl	_assert_fail
.LVL2250:
.L2354:
	.align	2
.L2353:
	.word	.LANCHOR4+1620
.LBE8967:
.LBE8972:
	.cfi_endproc
.LFE560:
	.size	doFaultTransfer, .-doFaultTransfer
	.section	.boot.text
	.align	2
	.global	map_it_pt_cap
	.syntax unified
	.arm
	.type	map_it_pt_cap, %function
map_it_pt_cap:
.LFB321:
	.loc 11 92 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 11 92 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
.LVL2251:
	ldr	r2, [sp, #4]
.LVL2252:
.LBB8983:
.LBB8984:
	.loc 4 1803 0
	and	r1, r3, #15
	cmp	r1, #3
	bne	.L2358
.LVL2253:
.LBE8984:
.LBE8983:
	.loc 11 98 0
	bic	r3, r3, #1020
.LVL2254:
	bic	r1, r2, #4080
	bic	r3, r3, #3
	bic	r1, r1, #15
	add	r3, r3, #805306368
	ubfx	r2, r2, #0, #12
.LVL2255:
	orr	r3, r3, #512
	orr	r3, r3, #1
	str	r3, [r1, r2, lsl #2]
	.loc 11 103 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2256:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2257:
.L2358:
	.cfi_restore_state
.LBB8986:
.LBB8985:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL2258:
.LBE8985:
.LBE8986:
	.cfi_endproc
.LFE321:
	.size	map_it_pt_cap, .-map_it_pt_cap
	.text
	.align	2
	.global	cdtFind
	.syntax unified
	.arm
	.type	cdtFind, %function
cdtFind:
.LFB508:
	.loc 3 439 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB9025:
.LBB9026:
.LBB9027:
	.loc 4 997 0
	and	r3, r0, #14
.LBE9027:
.LBE9026:
.LBE9025:
	.loc 3 439 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB9038:
.LBB9030:
.LBB9028:
	.loc 4 997 0
	cmp	r3, #14
.LBE9028:
.LBE9030:
.LBE9038:
	.loc 3 439 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
.LBB9039:
.LBB9031:
.LBB9029:
	.loc 4 999 0
	uxtbeq	r3, r0
	.loc 4 998 0
	andne	r3, r0, #15
.LBE9029:
.LBE9031:
.LBE9039:
	.loc 3 439 0
	add	r7, sp, #16
.LBB9040:
.LBB9032:
.LBB9033:
	.loc 36 162 0
	cmp	r3, #1
.LBE9033:
.LBE9032:
.LBE9040:
	.loc 3 439 0
	stm	r7, {r0, r1}
	mov	r6, r0
.LVL2259:
.LBB9041:
.LBB9036:
.LBB9034:
	.loc 36 162 0
	beq	.L2362
	cmp	r3, #3
.LBE9034:
.LBE9036:
.LBE9041:
	.loc 3 443 0
	movne	r3, #32
	strne	r3, [sp, #4]
.LBB9042:
.LBB9037:
.LBB9035:
	.loc 36 162 0
	beq	.L2362
.L2363:
.LVL2260:
	movw	r9, #:lower16:ksRootCTE
.LBE9035:
.LBE9037:
.LBE9042:
.LBB9043:
.LBB9044:
.LBB9045:
.LBB9046:
.LBB9047:
.LBB9048:
	.loc 36 30 0
	movw	fp, #:lower16:untyped_comparator
	movw	r3, #:lower16:typed_comparator
	movw	r2, #:lower16:just_tie_break
	movt	r9, #:upper16:ksRootCTE
	movt	fp, #:upper16:untyped_comparator
.LBE9048:
.LBE9047:
.LBE9046:
.LBE9045:
.LBE9044:
.LBE9043:
	.loc 3 443 0
	mov	r10, #0
	add	r5, sp, #24
	add	r8, sp, #32
.LBB9094:
.LBB9091:
.LBB9077:
.LBB9073:
.LBB9055:
.LBB9051:
	.loc 36 30 0
	movt	r3, #:upper16:typed_comparator
	movt	r2, #:upper16:just_tie_break
	str	r3, [sp, #8]
	str	r2, [sp, #12]
.LVL2261:
.L2388:
	str	r6, [sp, #16]
.LBE9051:
.LBE9055:
.LBE9073:
.LBE9077:
.LBB9078:
.LBB9079:
	.loc 4 444 0
	mov	r3, #0
	ldm	r7, {r0, r1}
.LBE9079:
.LBE9078:
	.loc 3 417 0
	ldr	r4, [r9]
.LBB9082:
.LBB9080:
	.loc 4 444 0
	str	r3, [sp, #40]
	stm	r5, {r0, r1}
.LVL2262:
.LBE9080:
.LBE9082:
	.loc 3 412 0
	str	r6, [sp, #24]
	ldm	r5, {r0, r1}
.LBB9083:
.LBB9081:
	.loc 4 444 0
	str	r10, [sp, #44]
.LBE9081:
.LBE9083:
	.loc 3 412 0
	stm	r8, {r0, r1}
.LVL2263:
.L2364:
	ldr	r3, [r4]
.LVL2264:
.LBB9084:
.LBB9074:
.LBB9056:
.LBB9052:
.LBB9049:
.LBB9050:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2265:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9050:
.LBE9049:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2376
.L2370:
	.word	.L2369
	.word	.L2391
	.word	.L2369
	.word	.L2369
	.word	.L2369
	.word	.L2369
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2369
	.word	.L2376
	.word	.L2369
	.word	.L2376
	.word	.L2372
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2372
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2369
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2373
.L2372:
	movw	r3, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r0, #2
	.loc 36 30 0
	movt	r3, #:upper16:irq_comparator
.L2371:
	ldr	r2, [sp, #32]
.LVL2266:
.LBE9052:
.LBE9056:
.LBB9057:
.LBB9058:
.LBB9059:
.LBB9060:
	.loc 4 997 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r2, r2
.LVL2267:
	.loc 4 998 0
	andne	r2, r2, #15
.LBE9060:
.LBE9059:
	.loc 36 30 0
	sub	r2, r2, #1
	cmp	r2, #61
	ldrls	pc, [pc, r2, asl #2]
	b	.L2376
.L2378:
	.word	.L2377
	.word	.L2392
	.word	.L2377
	.word	.L2377
	.word	.L2377
	.word	.L2377
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2377
	.word	.L2376
	.word	.L2377
	.word	.L2376
	.word	.L2380
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2380
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2377
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2376
	.word	.L2381
.L2380:
	.loc 36 45 0
	mov	r2, #2
.L2379:
.LBE9058:
.LBE9057:
.LBB9065:
	.loc 3 319 0
	cmp	r0, r2
	beq	.L2387
	ble	.L2383
.LVL2268:
.L2382:
.LBE9065:
.LBE9074:
.LBE9084:
.LBB9085:
.LBB9086:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL2269:
	lsr	r4, r4, #5
.LVL2270:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL2271:
	beq	.L2385
	orr	r4, r4, #-536870912
.LVL2272:
.LBE9086:
.LBE9085:
	.loc 3 433 0
	cmp	r4, #0
	bne	.L2364
.LVL2273:
.L2385:
.LBE9091:
.LBE9094:
	.loc 3 443 0
	ldr	r3, [sp, #4]
	add	r10, r10, #1
.LVL2274:
	cmp	r10, r3
	bne	.L2388
	.loc 3 449 0
	mov	r0, #0
	b	.L2413
.LVL2275:
.L2391:
.LBB9095:
.LBB9092:
.LBB9087:
.LBB9075:
.LBB9066:
.LBB9053:
	.loc 36 30 0
	mov	r3, fp
	.loc 36 42 0
	mov	r0, #0
	b	.L2371
.L2376:
.LBE9053:
.LBE9066:
.LBB9067:
.LBB9063:
.LBB9061:
.LBB9062:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L2419
	mov	r2, #53
	bl	_assert_fail
.LVL2276:
.L2381:
.LBE9062:
.LBE9061:
.LBE9063:
.LBE9067:
.LBB9068:
	.loc 3 319 0
	cmp	r0, #3
	bne	.L2383
.L2387:
.LVL2277:
.LBE9068:
.LBB9069:
.LBB9070:
	.loc 3 310 0
	movw	r2, #:lower16:slot_eq_comparator
	mov	r1, r8
	movt	r2, #:upper16:slot_eq_comparator
	mov	r0, r4
	blx	r3
.LVL2278:
.LBE9070:
.LBE9069:
.LBE9075:
.LBE9087:
	.loc 3 423 0
	cmp	r0, #0
	beq	.L2384
	cmp	r0, #1
	beq	.L2382
	cmn	r0, #1
	bne	.L2364
.LVL2279:
.L2383:
.LBB9088:
.LBB9089:
	.loc 30 217 0
	ldr	r4, [r4, #12]
.LVL2280:
	lsr	r4, r4, #5
.LVL2281:
	.loc 30 218 0
	lsls	r4, r4, #2
.LVL2282:
	beq	.L2385
	orr	r4, r4, #-536870912
.LVL2283:
.LBE9089:
.LBE9088:
	.loc 3 433 0
	cmp	r4, #0
	bne	.L2364
	b	.L2385
.LVL2284:
.L2384:
	mov	r0, r4
.LVL2285:
.L2413:
.LBE9092:
.LBE9095:
	.loc 3 450 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2286:
.L2362:
	.cfi_restore_state
	.loc 3 443 0
	mov	r3, #2
	str	r3, [sp, #4]
	b	.L2363
.LVL2287:
.L2373:
.LBB9096:
.LBB9093:
.LBB9090:
.LBB9076:
.LBB9071:
.LBB9054:
	ldr	r3, [sp, #12]
	.loc 36 50 0
	mov	r0, #3
	b	.L2371
.L2369:
	.loc 36 30 0
	ldr	r3, [sp, #8]
	.loc 36 39 0
	mov	r0, #1
	b	.L2371
.L2392:
.LBE9054:
.LBE9071:
.LBB9072:
.LBB9064:
	.loc 36 42 0
	mov	r2, #0
	b	.L2379
.L2377:
	.loc 36 39 0
	mov	r2, #1
	b	.L2379
.L2420:
	.align	2
.L2419:
	.word	.LANCHOR4+2276
.LBE9064:
.LBE9072:
.LBE9076:
.LBE9090:
.LBE9093:
.LBE9096:
	.cfi_endproc
.LFE508:
	.size	cdtFind, .-cdtFind
	.align	2
	.global	cleanCacheRange_RAM
	.syntax unified
	.arm
	.type	cleanCacheRange_RAM, %function
cleanCacheRange_RAM:
.LFB374:
	.loc 13 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2288:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB9117:
.LBB9118:
	.loc 13 25 0
	lsr	lr, r1, #5
	lsr	r3, r0, #5
.LVL2289:
	add	lr, lr, #1
	cmp	r3, lr
	bcs	.L2425
.L2430:
.LVL2290:
.LBB9119:
.LBB9120:
	.loc 14 192 0
	lsl	ip, r3, #5
.LVL2291:
	.syntax divided
@ 192 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, ip, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9121:
.LBB9122:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2292:
	.arm
	.syntax unified
.LBE9122:
.LBE9121:
.LBE9120:
.LBE9119:
	.loc 13 25 0
	add	r3, r3, #1
.LVL2293:
	cmp	r3, lr
	bne	.L2430
.LVL2294:
.L2425:
.LBE9118:
.LBE9117:
.LBB9123:
.LBB9124:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9124:
.LBE9123:
.LBB9125:
.LBB9126:
	.loc 20 371 0
	movw	ip, #:lower16:.LANCHOR2
	add	r3, r2, #32
	movt	ip, #:upper16:.LANCHOR2
	add	r1, r3, r1
.LVL2295:
	ldr	r3, [ip, #12]
	ldr	lr, [r3, #4]
	tst	lr, #12288
	bne	.L2437
	.loc 20 374 0
	sub	r0, r1, r0
.LVL2296:
	.loc 20 373 0
	bic	r2, r2, #31
.LVL2297:
	.loc 20 374 0
	bic	r0, r0, #31
	.loc 20 373 0
	cmp	r2, r0
	beq	.L2429
.L2428:
	.loc 20 376 0
	str	r2, [r3, #1968]
	.loc 20 375 0
	add	r2, r2, #32
.LVL2298:
	.loc 20 373 0
	cmp	r2, r0
	bne	.L2428
.L2429:
.LBB9127:
.LBB9128:
.LBB9129:
.LBB9130:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9130:
.LBE9129:
	.loc 20 353 0
	ldr	r2, [ip, #12]
.LVL2299:
	mov	r3, #0
	str	r3, [r2, #1840]
.L2427:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L2427
.LBE9128:
.LBE9127:
.LBE9126:
.LBE9125:
	.loc 13 82 0
	pop	{r4, pc}
.LVL2300:
.L2437:
.LBB9134:
.LBB9133:
.LBB9131:
.LBB9132:
	.loc 20 371 0
	movw	r1, #:lower16:.LC69
	movw	r0, #:lower16:.LC70
.LVL2301:
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L2438
	movw	r2, #371
.LVL2302:
	bl	_assert_fail
.LVL2303:
.L2439:
	.align	2
.L2438:
	.word	.LANCHOR4+1692
.LBE9132:
.LBE9131:
.LBE9133:
.LBE9134:
	.cfi_endproc
.LFE374:
	.size	cleanCacheRange_RAM, .-cleanCacheRange_RAM
	.align	2
	.global	cdtRemove
	.syntax unified
	.arm
	.type	cdtRemove, %function
cdtRemove:
.LFB519:
	.loc 3 672 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2304:
	ldr	r3, [r0]
.LVL2305:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 672 0
	mov	r4, r0
.LBB9143:
.LBB9144:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2306:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9144:
.LBE9143:
	.loc 3 673 0
	cmp	r3, #0
	beq	.L2445
	.loc 3 674 0
	movw	r5, #:lower16:ksRootCTE
	mov	r2, r0
	movt	r5, #:upper16:ksRootCTE
	mov	r0, #0
.LVL2307:
	ldr	r1, [r5]
	bl	aaRemove
.LVL2308:
	.loc 3 675 0
	mov	r3, #0
	.loc 3 674 0
	str	r0, [r5]
.LVL2309:
	.loc 3 675 0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, pc}
.LVL2310:
.L2445:
.LBB9145:
.LBB9146:
	.loc 3 673 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC134
.LVL2311:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC134
	ldr	r3, .L2446
	movw	r2, #673
	bl	_assert_fail
.LVL2312:
.L2447:
	.align	2
.L2446:
	.word	.LANCHOR4+3456
.LBE9146:
.LBE9145:
	.cfi_endproc
.LFE519:
	.size	cdtRemove, .-cdtRemove
	.align	2
	.global	invalidateCacheRange_RAM
	.syntax unified
	.arm
	.type	invalidateCacheRange_RAM, %function
invalidateCacheRange_RAM:
.LFB376:
	.loc 13 103 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2313:
	.loc 13 112 0
	tst	r0, #31
	.loc 13 103 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 13 103 0
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	.loc 13 112 0
	beq	.L2449
	.loc 13 113 0
	mov	r1, r0
.LVL2314:
	bl	cleanCacheRange_RAM
.LVL2315:
.L2449:
	.loc 13 115 0
	add	r3, r6, #1
	tst	r3, #31
	beq	.L2450
	.loc 13 116 0
	bic	r1, r6, #31
.LVL2316:
	.loc 13 117 0
	add	r2, r5, r1
	mov	r0, r1
	sub	r2, r2, r4
	bl	cleanCacheRange_RAM
.LVL2317:
.L2450:
.LBB9165:
.LBB9166:
	.loc 20 387 0
	movw	r0, #:lower16:.LANCHOR2
	add	r3, r6, #32
	movt	r0, #:upper16:.LANCHOR2
	add	r3, r3, r5
.LVL2318:
	ldr	r1, [r0, #12]
	ldr	r2, [r1, #4]
	tst	r2, #12288
	bne	.L2464
	.loc 20 393 0
	sub	r3, r3, r4
	.loc 20 392 0
	bic	r2, r5, #31
.LVL2319:
	.loc 20 393 0
	bic	r3, r3, #31
	.loc 20 392 0
	cmp	r2, r3
	beq	.L2455
.L2454:
	.loc 20 395 0
	str	r2, [r1, #1904]
	.loc 20 394 0
	add	r2, r2, #32
.LVL2320:
	.loc 20 392 0
	cmp	r2, r3
	bne	.L2454
.L2455:
.LBB9167:
.LBB9168:
.LBB9169:
.LBB9170:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9170:
.LBE9169:
	.loc 20 353 0
	ldr	r2, [r0, #12]
.LVL2321:
	mov	r3, #0
	str	r3, [r2, #1840]
.L2453:
	.loc 20 354 0
	ldr	r3, [r2, #1840]
	tst	r3, #1
	bne	.L2453
.LVL2322:
.LBE9168:
.LBE9167:
.LBE9166:
.LBE9165:
	.loc 13 136 0
	lsr	r6, r6, #5
.LVL2323:
	lsr	r0, r4, #5
.LVL2324:
	add	r6, r6, #1
	cmp	r0, r6
	bcs	.L2457
.L2458:
.LVL2325:
.LBB9174:
.LBB9175:
	.loc 14 227 0 discriminator 3
	lsl	r3, r0, #5
.LVL2326:
	.syntax divided
@ 227 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c6, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9176:
.LBB9177:
	.loc 12 23 0 discriminator 3
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2327:
	.arm
	.syntax unified
.LBE9177:
.LBE9176:
.LBE9175:
.LBE9174:
	.loc 13 136 0 discriminator 3
	add	r0, r0, #1
.LVL2328:
	cmp	r0, r6
	bne	.L2458
.LVL2329:
.L2457:
.LBB9178:
.LBB9179:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9179:
.LBE9178:
	.loc 13 142 0
	pop	{r4, r5, r6, pc}
.LVL2330:
.L2464:
.LBB9180:
.LBB9173:
.LBB9171:
.LBB9172:
	.loc 20 387 0
	movw	r1, #:lower16:.LC69
	movw	r0, #:lower16:.LC70
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L2465
	movw	r2, #387
	bl	_assert_fail
.LVL2331:
.L2466:
	.align	2
.L2465:
	.word	.LANCHOR4+1712
.LBE9172:
.LBE9171:
.LBE9173:
.LBE9180:
	.cfi_endproc
.LFE376:
	.size	invalidateCacheRange_RAM, .-invalidateCacheRange_RAM
	.align	2
	.syntax unified
	.arm
	.type	resetMemMapping, %function
resetMemMapping:
.LFB444:
	.loc 23 123 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2332:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 23 123 0
	stm	sp, {r1, r2}
.LBB9191:
.LBB9192:
	.loc 4 997 0
	and	r2, r1, #14
	cmp	r2, #14
.LBE9192:
.LBE9191:
	.loc 23 123 0
	mov	lr, sp
.LBB9194:
.LBB9193:
	.loc 4 999 0
	uxtbeq	r2, r1
	.loc 4 998 0
	andne	r2, r1, #15
.LBE9193:
.LBE9194:
	.loc 23 123 0
	mov	ip, r0
	.loc 23 124 0
	cmp	r2, #1
	mov	r3, r1
.LVL2333:
	beq	.L2471
	cmp	r2, #3
	beq	.L2472
	.loc 23 131 0
	ldm	sp, {r0, r1}
.LVL2334:
	stm	ip, {r0, r1}
.L2467:
	.loc 23 132 0
	mov	r0, ip
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL2335:
.L2472:
	.cfi_restore_state
	ldr	r2, [sp, #4]
.LVL2336:
.LBB9195:
.LBB9196:
	.loc 4 1816 0
	and	r1, r1, #15
.LVL2337:
	cmp	r1, #3
	.loc 4 1823 0
	streq	r3, [r0]
	ubfxeq	r2, r2, #0, #12
.LVL2338:
	streq	r2, [r0, #4]
	.loc 4 1816 0
	beq	.L2467
	bl	cap_page_table_cap_set_capPTMappedObject.part.132
.LVL2339:
.L2471:
.LBE9196:
.LBE9195:
.LBB9197:
.LBB9198:
.LBB9199:
	.loc 4 1635 0
	and	r1, r1, #15
.LVL2340:
	ldr	r2, [sp, #4]
.LVL2341:
	cmp	r1, #1
	bne	.L2479
.LVL2342:
.LBE9199:
.LBE9198:
.LBB9201:
.LBB9202:
	.loc 4 1747 0
	bic	r3, r3, #50331648
.LVL2343:
	ubfx	r2, r2, #0, #12
.LVL2344:
	str	r3, [r0]
	str	r2, [r0, #4]
.LBE9202:
.LBE9201:
.LBE9197:
	.loc 23 132 0
	mov	r0, ip
.LVL2345:
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2346:
	@ sp needed
	ldr	pc, [sp], #4
.LVL2347:
.L2479:
	.cfi_restore_state
.LBB9204:
.LBB9203:
.LBB9200:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
.LVL2348:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L2480
.LVL2349:
	movw	r2, #1636
.LVL2350:
	bl	_assert_fail
.LVL2351:
.L2481:
	.align	2
.L2480:
	.word	.LANCHOR4+3400
.LBE9200:
.LBE9203:
.LBE9204:
	.cfi_endproc
.LFE444:
	.size	resetMemMapping, .-resetMemMapping
	.section	.boot.text
	.align	2
	.global	map_it_frame_cap
	.syntax unified
	.arm
	.type	map_it_frame_cap, %function
map_it_frame_cap:
.LFB322:
	.loc 11 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 11 107 0
	add	r3, sp, #24
	stmdb	r3, {r0, r1}
	ldr	r4, [sp, #16]
.LVL2352:
	ldr	r5, [sp, #20]
.LVL2353:
.LBB9223:
.LBB9224:
	.loc 4 1766 0
	and	r1, r4, #15
	cmp	r1, #1
	bne	.L2485
.LVL2354:
.LBE9224:
.LBE9223:
	.loc 11 116 0
	bic	r0, r4, #-16777216
	mov	r3, #0
	bic	r0, r0, #15
	mov	ip, #3
	lsl	r0, r0, #8
	str	r3, [sp, #12]
	mov	r2, r3
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	add	r0, r0, #805306368
	str	ip, [sp]
	ubfx	r4, r4, #24, #2
	bl	pte_pte_small_new.constprop.290
.LVL2355:
	ubfx	r3, r5, #0, #12
	lsr	r5, r5, #12
.LVL2356:
	lsl	r3, r3, #2
	add	r4, r3, r4, lsl #10
	str	r0, [r4, r5, lsl #12]
	.loc 11 127 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL2357:
.L2485:
	.cfi_restore_state
.LBB9226:
.LBB9225:
	bl	cap_frame_cap_get_capFBasePtr.isra.101.part.102
.LVL2358:
.LBE9225:
.LBE9226:
	.cfi_endproc
.LFE322:
	.size	map_it_frame_cap, .-map_it_frame_cap
	.align	2
	.syntax unified
	.arm
	.type	create_mapped_it_frame_cap.constprop.265, %function
create_mapped_it_frame_cap.constprop.265:
.LFB1032:
	.loc 38 158 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2359:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	mov	r0, r1
.LVL2360:
	.loc 38 158 0
	stm	sp, {r1, r2}
.LVL2361:
.LBB9243:
.LBB9244:
	.loc 4 1886 0
	and	r2, r0, #15
	cmp	r2, #5
.LBE9244:
.LBE9243:
	.loc 38 158 0
	ldr	r1, [sp, #32]
.LBB9247:
.LBB9245:
	.loc 4 1886 0
	bne	.L2491
.LVL2362:
	lsr	r2, r1, #20
.LVL2363:
	bic	r0, r0, #16320
	bic	r0, r0, #63
	ldr	r2, [r0, r2, lsl #2]
.LVL2364:
.LBE9245:
.LBE9247:
.LBB9248:
	.loc 38 174 0
	ubfx	r1, r1, #12, #8
.LVL2365:
.LBB9249:
.LBB9250:
	.loc 4 828 0
	and	r0, r2, #3
	cmp	r0, #1
	bne	.L2492
.LVL2366:
.LBE9250:
.LBE9249:
.LBB9252:
.LBB9253:
	.file 46 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/plat/imx6/plat/machine/hardware.h"
	.loc 46 46 0
	bic	r2, r2, #1020
.LVL2367:
.LBE9253:
.LBE9252:
.LBB9256:
.LBB9257:
	.loc 4 1610 0
	ubfx	r0, r3, #0, #12
.LBE9257:
.LBE9256:
.LBB9263:
.LBB9254:
	.loc 46 46 0
	bic	r2, r2, #3
.LBE9254:
.LBE9263:
.LBB9264:
.LBB9258:
	.loc 4 1610 0
	cmp	r0, #0
.LBE9258:
.LBE9264:
.LBB9265:
.LBB9255:
	.loc 46 46 0
	add	r2, r2, #-805306368
.LVL2368:
.LBE9255:
.LBE9265:
.LBB9266:
.LBB9259:
	.loc 4 1599 0
	bic	r6, r2, #4080
	.loc 4 1608 0
	ubfx	r2, r2, #10, #2
.LVL2369:
	.loc 4 1599 0
	bic	r6, r6, #15
	.loc 4 1608 0
	lsl	r2, r2, #24
	.loc 4 1599 0
	orr	r6, r6, r1
.LVL2370:
	.loc 4 1610 0
	bne	.L2493
.LVL2371:
	.loc 4 1614 0
	bic	r4, r3, #4080
.LBE9259:
.LBE9266:
.LBE9248:
	.loc 38 186 0
	add	r3, sp, #16
.LVL2372:
.LBB9271:
.LBB9267:
.LBB9260:
	.loc 4 1614 0
	bic	r4, r4, #15
.LBE9260:
.LBE9267:
.LBE9271:
	.loc 38 186 0
	str	r6, [sp, #12]
.LBB9272:
.LBB9268:
.LBB9261:
	.loc 4 1614 0
	orr	r2, r2, r4, lsr #8
.LVL2373:
	orr	r4, r2, #402653185
.LVL2374:
.LBE9261:
.LBE9268:
.LBE9272:
	.loc 38 186 0
	str	r4, [sp, #8]
	ldmdb	r3, {r0, r1}
.LVL2375:
	bl	map_it_frame_cap
.LVL2376:
	.loc 38 188 0
	mov	r0, r5
	.loc 38 187 0
	str	r4, [r5]
	str	r6, [r5, #4]
.LVL2377:
	.loc 38 188 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL2378:
.L2491:
	.cfi_restore_state
.LBB9273:
.LBB9246:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL2379:
.L2493:
.LBE9246:
.LBE9273:
.LBB9274:
.LBB9269:
.LBB9262:
	.loc 4 1610 0
	movw	r1, #:lower16:.LC29
.LVL2380:
	movw	r0, #:lower16:.LC118
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC118
	ldr	r3, .L2494
.LVL2381:
	movw	r2, #1610
.LVL2382:
	bl	_assert_fail
.LVL2383:
.L2492:
.LBE9262:
.LBE9269:
.LBB9270:
.LBB9251:
	bl	pde_pde_coarse_get_address.part.93
.LVL2384:
.L2495:
	.align	2
.L2494:
	.word	.LANCHOR4+652
.LBE9251:
.LBE9270:
.LBE9274:
	.cfi_endproc
.LFE1032:
	.size	create_mapped_it_frame_cap.constprop.265, .-create_mapped_it_frame_cap.constprop.265
	.text
	.align	2
	.global	cleanInvalidateCacheRange_RAM
	.syntax unified
	.arm
	.type	cleanInvalidateCacheRange_RAM, %function
cleanInvalidateCacheRange_RAM:
.LFB373:
	.loc 13 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2385:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB9305:
.LBB9306:
	.loc 13 25 0
	lsr	lr, r1, #5
	lsr	r3, r0, #5
.LVL2386:
	add	lr, lr, #1
	cmp	r3, lr
	movcc	ip, r3
	bcs	.L2500
.LVL2387:
.L2497:
.LBB9307:
.LBB9308:
	.loc 14 192 0
	lsl	r4, ip, #5
.LVL2388:
	.syntax divided
@ 192 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c7, c10, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9309:
.LBB9310:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2389:
	.arm
	.syntax unified
.LBE9310:
.LBE9309:
.LBE9308:
.LBE9307:
	.loc 13 25 0
	add	ip, ip, #1
.LVL2390:
	cmp	ip, lr
	bne	.L2497
.LVL2391:
.L2500:
.LBE9306:
.LBE9305:
.LBB9311:
.LBB9312:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9312:
.LBE9311:
.LBB9313:
.LBB9314:
	.loc 20 406 0
	movw	r4, #:lower16:.LANCHOR2
	add	ip, r2, #32
	movt	r4, #:upper16:.LANCHOR2
	add	r1, ip, r1
.LVL2392:
	ldr	ip, [r4, #12]
	ldr	r5, [ip, #4]
	tst	r5, #12288
	bne	.L2517
	.loc 20 409 0
	sub	r0, r1, r0
.LVL2393:
	.loc 20 408 0
	bic	r2, r2, #31
.LVL2394:
	.loc 20 409 0
	bic	r0, r0, #31
	.loc 20 408 0
	cmp	r2, r0
	beq	.L2504
.L2503:
	.loc 20 412 0
	str	r2, [ip, #1968]
.LBB9315:
.LBB9316:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9316:
.LBE9315:
	.loc 20 414 0
	ldr	ip, [r4, #12]
	str	r2, [ip, #1904]
	.loc 20 410 0
	add	r2, r2, #32
.LVL2395:
	.loc 20 408 0
	cmp	r2, r0
	bne	.L2503
.L2504:
.LBB9317:
.LBB9318:
.LBB9319:
.LBB9320:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9320:
.LBE9319:
	.loc 20 353 0
	ldr	r1, [r4, #12]
	mov	r2, #0
.LVL2396:
	str	r2, [r1, #1840]
.L2502:
	.loc 20 354 0
	ldr	r2, [r1, #1840]
	tst	r2, #1
	bne	.L2502
.LVL2397:
.LBE9318:
.LBE9317:
.LBE9314:
.LBE9313:
	.loc 13 53 0 discriminator 1
	cmp	r3, lr
	bcs	.L2506
.L2508:
.LVL2398:
.LBB9324:
.LBB9325:
	.loc 14 268 0 discriminator 3
	lsl	r2, r3, #5
.LVL2399:
	.syntax divided
@ 268 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c14, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9326:
.LBB9327:
	.loc 12 17 0 discriminator 3
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL2400:
	.arm
	.syntax unified
.LBE9327:
.LBE9326:
.LBE9325:
.LBE9324:
	.loc 13 53 0 discriminator 3
	add	r3, r3, #1
.LVL2401:
	cmp	r3, lr
	bne	.L2508
.LVL2402:
.L2506:
.LBB9328:
.LBB9329:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9329:
.LBE9328:
	.loc 13 59 0
	pop	{r4, r5, r6, pc}
.LVL2403:
.L2517:
.LBB9330:
.LBB9323:
.LBB9321:
.LBB9322:
	.loc 20 406 0
	movw	r1, #:lower16:.LC69
	movw	r0, #:lower16:.LC70
.LVL2404:
	movt	r1, #:upper16:.LC69
	movt	r0, #:upper16:.LC70
	ldr	r3, .L2518
	movw	r2, #406
.LVL2405:
	bl	_assert_fail
.LVL2406:
.L2519:
	.align	2
.L2518:
	.word	.LANCHOR4+1736
.LBE9322:
.LBE9321:
.LBE9323:
.LBE9330:
	.cfi_endproc
.LFE373:
	.size	cleanInvalidateCacheRange_RAM, .-cleanInvalidateCacheRange_RAM
	.align	2
	.global	doFlush
	.syntax unified
	.arm
	.type	doFlush, %function
doFlush:
.LFB367:
	.loc 11 1725 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2407:
	.loc 11 1730 0
	sub	ip, r0, #30
	.loc 11 1725 0
	mov	r0, r1
.LVL2408:
	mov	r1, r2
.LVL2409:
	.loc 11 1730 0
	cmp	ip, #11
	ldrls	pc, [pc, ip, asl #2]
	b	.L2521
.L2523:
	.word	.L2522
	.word	.L2524
	.word	.L2525
	.word	.L2526
	.word	.L2521
	.word	.L2521
	.word	.L2521
	.word	.L2521
	.word	.L2522
	.word	.L2524
	.word	.L2525
	.word	.L2526
.L2526:
.LVL2410:
.LBB9331:
.LBB9332:
	.loc 13 95 0
	lsr	r1, r2, #5
	lsr	r0, r0, #5
.LVL2411:
	add	r1, r1, #1
	cmp	r0, r1
	movcc	r3, r0
.LVL2412:
	bcs	.L2530
.LVL2413:
.L2527:
.LBB9333:
.LBB9334:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL2414:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9335:
.LBB9336:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2415:
	.arm
	.syntax unified
.LBE9336:
.LBE9335:
.LBE9334:
.LBE9333:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2416:
	cmp	r3, r1
	bne	.L2527
.LVL2417:
.L2530:
.LBE9332:
.LBE9331:
.LBB9337:
.LBB9338:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
.LVL2418:
	.arm
	.syntax unified
.LBE9338:
.LBE9337:
.LBB9339:
.LBB9340:
	.loc 13 150 0
	cmp	r0, r1
	movcc	r3, r0
	bcs	.L2529
.LVL2419:
.L2528:
.LBB9341:
.LBB9342:
	.loc 14 240 0
	lsl	r2, r3, #5
.LVL2420:
	.syntax divided
@ 240 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c5, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9343:
.LBB9344:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2421:
	.arm
	.syntax unified
.LBE9344:
.LBE9343:
.LBE9342:
.LBE9341:
	.loc 13 150 0
	add	r3, r3, #1
.LVL2422:
	cmp	r3, r1
	bne	.L2528
.LVL2423:
.L2535:
.LBE9340:
.LBE9339:
.LBB9345:
.LBB9346:
.LBB9347:
.LBB9348:
	.loc 14 277 0
	lsl	r3, r0, #5
.LVL2424:
	.syntax divided
@ 277 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c7, c5, 7
@ 0 "" 2
.LVL2425:
	.arm
	.syntax unified
.LBE9348:
.LBE9347:
	.loc 13 162 0
	add	r0, r0, #1
.LVL2426:
	cmp	r0, r1
	bne	.L2535
.LVL2427:
.L2529:
.LBE9346:
.LBE9345:
.LBB9349:
.LBB9350:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
	bx	lr
.LVL2428:
.L2525:
.LBE9350:
.LBE9349:
	.loc 11 1741 0
	mov	r2, r3
	b	cleanInvalidateCacheRange_RAM
.LVL2429:
.L2524:
	.loc 11 1737 0
	mov	r2, r3
	b	invalidateCacheRange_RAM
.LVL2430:
.L2522:
	.loc 11 1733 0
	mov	r2, r3
	b	cleanCacheRange_RAM
.LVL2431:
.L2521:
	.loc 11 1759 0
	movw	r1, #:lower16:.LC26
.LVL2432:
	movw	r0, #:lower16:.LC135
.LVL2433:
	.loc 11 1725 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 1759 0
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC135
	ldr	r3, .L2541
.LVL2434:
	movw	r2, #1759
.LVL2435:
	bl	_fail
.LVL2436:
.L2542:
	.align	2
.L2541:
	.word	.LANCHOR4+3468
	.cfi_endproc
.LFE367:
	.size	doFlush, .-doFlush
	.align	2
	.syntax unified
	.arm
	.type	aaParent, %function
aaParent:
.LFB525:
	.loc 3 767 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2437:
	.loc 3 771 0
	movw	r3, #:lower16:ksRootCTE
	.loc 3 767 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 3 771 0
	movt	r3, #:upper16:ksRootCTE
	ldr	r4, [r3]
.LVL2438:
	.loc 3 772 0
	cmp	r4, r0
	beq	.L2568
.LBB9382:
.LBB9383:
.LBB9384:
.LBB9385:
.LBB9386:
.LBB9387:
	.loc 36 30 0
	movw	r6, #:lower16:untyped_comparator
	movw	r8, #:lower16:typed_comparator
	movw	r7, #:lower16:just_tie_break
	mov	r5, r0
	movt	r6, #:upper16:untyped_comparator
	movt	r8, #:upper16:typed_comparator
	movt	r7, #:upper16:just_tie_break
.LVL2439:
.L2545:
	ldr	r3, [r4]
.LVL2440:
.LBB9388:
.LBB9389:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2441:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9389:
.LBE9388:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2556
.L2550:
	.word	.L2549
	.word	.L2569
	.word	.L2549
	.word	.L2549
	.word	.L2549
	.word	.L2549
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2549
	.word	.L2556
	.word	.L2549
	.word	.L2556
	.word	.L2552
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2552
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2549
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2553
.L2552:
	movw	r9, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r1, #2
	.loc 36 30 0
	movt	r9, #:upper16:irq_comparator
.L2551:
	ldr	r3, [r5]
.LVL2442:
.LBE9387:
.LBE9386:
.LBB9391:
.LBB9392:
.LBB9393:
.LBB9394:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2443:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9394:
.LBE9393:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2556
.L2558:
	.word	.L2557
	.word	.L2570
	.word	.L2557
	.word	.L2557
	.word	.L2557
	.word	.L2557
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2557
	.word	.L2556
	.word	.L2557
	.word	.L2556
	.word	.L2560
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2560
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2557
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2556
	.word	.L2561
.L2560:
	.loc 36 45 0
	mov	r3, #2
.L2559:
.LBE9392:
.LBE9391:
.LBB9399:
	.loc 3 319 0
	cmp	r3, r1
	beq	.L2566
	bge	.L2563
.LVL2444:
.L2562:
.LBE9399:
.LBE9385:
.LBE9384:
.LBE9383:
.LBE9382:
.LBB9412:
.LBB9413:
	.loc 30 211 0
	ldr	r3, [r4, #8]
	lsr	r3, r3, #5
.LVL2445:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL2446:
	beq	.L2565
	orr	r3, r3, #-536870912
.LVL2447:
.LBE9413:
.LBE9412:
	.loc 3 780 0
	b	.L2564
.LVL2448:
.L2556:
.LBB9414:
.LBB9410:
.LBB9408:
.LBB9406:
.LBB9400:
.LBB9397:
.LBB9395:
.LBB9396:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L2587
	mov	r2, #53
	bl	_assert_fail
.LVL2449:
.L2561:
.LBE9396:
.LBE9395:
.LBE9397:
.LBE9400:
.LBB9401:
	.loc 3 319 0
	cmp	r1, #3
	bne	.L2563
.L2566:
.LVL2450:
.LBE9401:
.LBB9402:
.LBB9403:
	.loc 3 310 0
	movw	r2, #:lower16:tie_break_comparator
	mov	r1, r5
	movt	r2, #:upper16:tie_break_comparator
	mov	r0, r4
	blx	r9
.LVL2451:
.LBE9403:
.LBE9402:
.LBE9406:
.LBE9408:
.LBE9410:
.LBE9414:
	.loc 3 774 0
	cmp	r0, #0
	beq	.L2577
	cmp	r0, #1
	beq	.L2562
	cmn	r0, #1
	movne	r3, r4
	beq	.L2563
.LVL2452:
.L2564:
	.loc 3 772 0
	cmp	r5, r3
	beq	.L2577
.LVL2453:
.L2565:
.LBB9415:
.LBB9416:
	.loc 30 218 0
	mov	r4, r3
	b	.L2545
.LVL2454:
.L2568:
.LBE9416:
.LBE9415:
	.loc 3 768 0
	mov	r4, #0
.LVL2455:
.L2577:
	.loc 3 786 0
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL2456:
.L2569:
.LBB9418:
.LBB9411:
.LBB9409:
.LBB9407:
.LBB9404:
.LBB9390:
	.loc 36 30 0
	mov	r9, r6
	.loc 36 42 0
	mov	r1, #0
	b	.L2551
.L2553:
	mov	r9, r7
	.loc 36 50 0
	mov	r1, #3
	b	.L2551
.L2549:
	.loc 36 30 0
	mov	r9, r8
	.loc 36 39 0
	mov	r1, #1
	b	.L2551
.L2570:
.LBE9390:
.LBE9404:
.LBB9405:
.LBB9398:
	.loc 36 42 0
	mov	r3, #0
	b	.L2559
.L2557:
	.loc 36 39 0
	mov	r3, #1
	b	.L2559
.LVL2457:
.L2563:
.LBE9398:
.LBE9405:
.LBE9407:
.LBE9409:
.LBE9411:
.LBE9418:
.LBB9419:
.LBB9417:
	.loc 30 217 0
	ldr	r3, [r4, #12]
	lsr	r3, r3, #5
.LVL2458:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL2459:
	beq	.L2565
	orr	r3, r3, #-536870912
.LVL2460:
	b	.L2564
.L2588:
	.align	2
.L2587:
	.word	.LANCHOR4+2276
.LBE9417:
.LBE9419:
	.cfi_endproc
.LFE525:
	.size	aaParent, .-aaParent
	.align	2
	.syntax unified
	.arm
	.type	setVMRootForFlush, %function
setVMRootForFlush:
.LFB340:
	.loc 11 693 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2461:
	.loc 11 696 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 693 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 696 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	bic	r3, r3, #508
	bic	r3, r3, #3
	ldr	r3, [r3, #16]
.LVL2462:
.LBB9485:
.LBB9486:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL2463:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE9486:
.LBE9485:
	.loc 11 698 0
	cmp	r2, #5
	beq	.L2606
.LVL2464:
.L2592:
.LBB9487:
.LBB9488:
.LBB9489:
.LBB9490:
.LBB9491:
	.loc 11 769 0
	add	r5, r0, #12288
	ldr	r3, [r5, #4032]
.LVL2465:
.LBE9491:
.LBE9490:
.LBB9492:
.LBB9493:
	.loc 4 792 0
	tst	r3, #3
	bne	.L2607
.LVL2466:
.LBE9493:
.LBE9492:
	.loc 11 809 0
	ubfx	r2, r3, #23, #1
	cmp	r2, #0
.LBB9495:
.LBB9496:
	.loc 4 781 0
	lsrne	r3, r3, #24
.LVL2467:
.LBE9496:
.LBE9495:
	.loc 11 809 0
	beq	.L2608
.LVL2468:
.L2597:
.LBE9489:
.LBE9488:
.LBB9522:
.LBB9523:
.LBB9524:
.LBB9525:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9525:
.LBE9524:
.LBB9526:
.LBB9527:
	.loc 14 135 0
	ldr	r1, .L2612
	mov	r2, #57344
	movt	r2, 65535
	and	r1, r1, r2
	orr	r1, r1, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE9527:
.LBE9526:
.LBB9528:
.LBB9529:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9529:
.LBE9528:
.LBB9530:
.LBB9531:
.LBB9532:
	.loc 14 123 0
	.syntax divided
@ 123 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c13, c0, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9533:
.LBB9534:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9534:
.LBE9533:
.LBE9532:
.LBE9531:
.LBE9530:
.LBB9535:
.LBB9536:
	.loc 14 135 0
	add	r0, r0, #805306368
.LVL2469:
	and	r2, r2, r0
	orr	r2, r2, #24
	.syntax divided
@ 135 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c2, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE9536:
.LBE9535:
.LBB9537:
.LBB9538:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2470:
	.arm
	.syntax unified
.LBE9538:
.LBE9537:
.LBE9523:
.LBE9522:
.LBE9487:
	.loc 11 705 0
	mov	r0, #1
	pop	{r4, r5, r6, pc}
.LVL2471:
.L2606:
.LBB9540:
.LBB9541:
	.loc 4 1886 0 discriminator 1
	and	r2, r3, #15
	cmp	r2, #5
	bne	.L2609
.LVL2472:
.LBE9541:
.LBE9540:
	.loc 11 698 0
	bic	r3, r3, #16320
.LVL2473:
	bic	r3, r3, #63
	cmp	r0, r3
	bne	.L2592
	.loc 11 700 0
	mov	r0, #0
.LVL2474:
	.loc 11 706 0
	pop	{r4, r5, r6, pc}
.LVL2475:
.L2608:
	movw	r6, #:lower16:armKSNextASID
	movw	ip, #:lower16:armKSHWASIDTable
	movt	r6, #:upper16:armKSNextASID
	movt	ip, #:upper16:armKSHWASIDTable
	ldrb	r4, [r6]	@ zero_extendqisi2
	b	.L2599
.LVL2476:
.L2611:
.LBB9543:
.LBB9539:
.LBB9521:
.LBB9497:
.LBB9498:
.LBB9499:
.LBB9500:
.LBB9501:
	.loc 11 781 0
	add	r2, r2, #1
.LVL2477:
	.loc 11 779 0
	cmp	r2, #256
	beq	.L2610
.LVL2478:
.L2599:
	add	r3, r4, r2
	uxtb	r3, r3
.LVL2479:
	.loc 11 783 0
	ldr	r1, [ip, r3, lsl #2]
	mov	lr, r3
	cmp	r1, #0
	bne	.L2611
.LVL2480:
.L2598:
.LBE9501:
.LBE9500:
.LBB9517:
.LBB9518:
	.loc 11 761 0
	lsl	r2, r3, #24
	.loc 11 763 0
	str	r0, [ip, lr, lsl #2]
.LVL2481:
	.loc 11 761 0
	orr	r2, r2, #8388608
	str	r2, [r5, #4032]
	b	.L2597
.LVL2482:
.L2610:
.LBE9518:
.LBE9517:
.LBB9519:
.LBB9516:
.LBB9502:
.LBB9503:
.LBB9504:
.LBB9505:
	.loc 11 425 0
	ldr	r3, [ip, r4, lsl #2]
.LVL2483:
	mov	r1, #0
.LBE9505:
.LBE9504:
	.loc 11 791 0
	mov	lr, r4
.LVL2484:
.LBB9507:
.LBB9506:
	.loc 11 425 0
	add	r3, r3, #12288
	str	r1, [r3, #4032]
.LVL2485:
.LBE9506:
.LBE9507:
.LBB9508:
.LBB9509:
.LBB9510:
.LBB9511:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9511:
.LBE9510:
	.loc 14 165 0
	.syntax divided
@ 165 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c8, c7, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBB9512:
.LBB9513:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9513:
.LBE9512:
.LBB9514:
.LBB9515:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2486:
	.arm
	.syntax unified
.LBE9515:
.LBE9514:
.LBE9509:
.LBE9508:
	.loc 11 798 0
	ldrb	r2, [r6]	@ zero_extendqisi2
.LVL2487:
	mov	r3, r4
	.loc 11 795 0
	str	r1, [ip, r4, lsl #2]
	.loc 11 798 0
	add	r2, r2, #1
	strb	r2, [r6]
.LVL2488:
	b	.L2598
.LVL2489:
.L2607:
.LBE9503:
.LBE9502:
.LBE9516:
.LBE9519:
.LBE9499:
.LBE9498:
.LBE9497:
.LBB9520:
.LBB9494:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL2490:
.L2609:
.LBE9494:
.LBE9520:
.LBE9521:
.LBE9539:
.LBE9543:
.LBB9544:
.LBB9542:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL2491:
.L2613:
	.align	2
.L2612:
	.word	.LANCHOR1+805306384
.LBE9542:
.LBE9544:
	.cfi_endproc
.LFE340:
	.size	setVMRootForFlush, .-setVMRootForFlush
	.align	2
	.global	flushPage
	.syntax unified
	.arm
	.type	flushPage, %function
flushPage:
.LFB348:
	.loc 11 824 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2492:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 824 0
	mov	r5, r1
	mov	r4, r2
.LBB9563:
.LBB9564:
	.loc 28 113 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L2615
.L2617:
	.word	.L2616
	.word	.L2626
	.word	.L2619
	.word	.L2620
.L2626:
	movw	r3, #65535
.L2618:
.LVL2493:
.LBE9564:
.LBE9563:
	.loc 11 829 0
	tst	r3, r4
	bne	.L2631
	.loc 11 832 0
	mov	r0, r5
.LVL2494:
.LBB9568:
.LBB9569:
	.loc 11 769 0
	add	r5, r5, #12288
.LBE9569:
.LBE9568:
	.loc 11 832 0
	bl	setVMRootForFlush
.LVL2495:
.LBB9571:
.LBB9570:
	.loc 11 769 0
	ldr	r2, [r5, #4032]
.LVL2496:
.LBE9570:
.LBE9571:
.LBB9572:
.LBB9573:
	.loc 4 792 0
	tst	r2, #3
	bne	.L2632
.LVL2497:
.LBE9573:
.LBE9572:
	.loc 11 835 0
	tst	r2, #8388608
	popeq	{r4, r5, r6, pc}
.LVL2498:
.LBB9575:
.LBB9576:
.LBB9577:
.LBB9578:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9578:
.LBE9577:
	.loc 14 174 0
	bic	r4, r4, #4080
.LVL2499:
	bic	r4, r4, #15
	orr	r4, r4, r2, lsr #24
	.syntax divided
@ 174 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c8, c7, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9579:
.LBB9580:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9580:
.LBE9579:
.LBB9581:
.LBB9582:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2500:
	.arm
	.syntax unified
.LBE9582:
.LBE9581:
.LBE9576:
.LBE9575:
	.loc 11 841 0
	cmp	r0, #0
	popeq	{r4, r5, r6, pc}
	.loc 11 842 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 845 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2501:
	.loc 11 842 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2502:
	b	setVMRoot
.LVL2503:
.L2616:
	.cfi_restore_state
.LBB9583:
.LBB9567:
	.loc 28 113 0
	movw	r3, #4095
	b	.L2618
.L2620:
	mvn	r3, #-16777216
	b	.L2618
.L2619:
	movw	r3, #65535
	movt	r3, 15
	b	.L2618
.L2615:
.LVL2504:
.LBB9565:
.LBB9566:
	.loc 28 127 0
	movw	r1, #:lower16:.LC22
.LVL2505:
	movw	r0, #:lower16:.LC23
.LVL2506:
	movt	r1, #:upper16:.LC22
	movt	r0, #:upper16:.LC23
	ldr	r3, .L2633
	mov	r2, #127
.LVL2507:
	bl	_fail
.LVL2508:
.L2632:
.LBE9566:
.LBE9565:
.LBE9567:
.LBE9583:
.LBB9584:
.LBB9574:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL2509:
.L2631:
.LBE9574:
.LBE9584:
	.loc 11 829 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2510:
	movw	r0, #:lower16:.LC136
.LVL2511:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC136
	ldr	r3, .L2633+4
	movw	r2, #829
.LVL2512:
	bl	_assert_fail
.LVL2513:
.L2634:
	.align	2
.L2633:
	.word	.LANCHOR4+20
	.word	.LANCHOR4+3476
	.cfi_endproc
.LFE348:
	.size	flushPage, .-flushPage
	.align	2
	.global	unmapPagePDE
	.syntax unified
	.arm
	.type	unmapPagePDE, %function
unmapPagePDE:
.LFB337:
	.loc 11 580 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2514:
	.loc 11 585 0
	cmp	r0, #2
	.loc 11 580 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB9585:
.LBB9586:
	.loc 46 52 0
	add	r3, r3, #805306368
.LVL2515:
.LBE9586:
.LBE9585:
	.loc 11 585 0
	beq	.L2637
	cmp	r0, #3
	bne	.L2660
.LBB9587:
	.loc 11 613 0
	ldr	lr, [r1, r2, lsl #2]
.LVL2516:
	lsl	ip, r2, #2
	add	r4, r1, ip
	cmp	lr, #0
	popeq	{r4, r5, r6, pc}
.LVL2517:
	.loc 11 617 0
	and	r5, lr, #3
	cmp	r5, #2
	bne	.L2661
.LVL2518:
	.loc 11 618 0
	tst	lr, #262144
	beq	.L2662
.LVL2519:
	.loc 11 619 0
	lsr	lr, lr, #20
.LVL2520:
	lsl	lr, lr, #20
	cmp	r3, lr
	bne	.L2663
.LVL2521:
	.loc 11 622 0
	mov	lr, #0
.LBB9588:
.LBB9589:
	.loc 13 95 0
	lsr	r3, r4, #5
.LVL2522:
.LBE9589:
.LBE9588:
	.loc 11 622 0
	add	r4, r2, #1
	str	lr, [r1, r2, lsl #2]
.LVL2523:
	add	r5, r2, #2
	str	lr, [r1, r4, lsl #2]
.LBB9600:
.LBB9594:
	.loc 13 95 0
	add	ip, r1, ip
.LVL2524:
.LBE9594:
.LBE9600:
	.loc 11 622 0
	add	r4, r2, #3
	str	lr, [r1, r5, lsl #2]
.LVL2525:
.LBB9601:
.LBB9595:
	.loc 13 95 0
	add	ip, ip, #63
.LBE9595:
.LBE9601:
	.loc 11 622 0
	str	lr, [r1, r4, lsl #2]
.LVL2526:
	add	r5, r2, #4
	add	r4, r2, #5
	str	lr, [r1, r5, lsl #2]
.LVL2527:
.LBB9602:
.LBB9596:
	.loc 13 95 0
	lsr	ip, ip, #5
.LBE9596:
.LBE9602:
	.loc 11 622 0
	str	lr, [r1, r4, lsl #2]
.LVL2528:
	add	r5, r2, #6
	add	r4, r2, #7
	str	lr, [r1, r5, lsl #2]
.LVL2529:
	str	lr, [r1, r4, lsl #2]
.LVL2530:
	add	r5, r2, #8
	add	r4, r2, #9
	str	lr, [r1, r5, lsl #2]
.LVL2531:
.LBB9603:
.LBB9597:
	.loc 13 95 0
	add	ip, ip, #1
.LBE9597:
.LBE9603:
	.loc 11 622 0
	str	lr, [r1, r4, lsl #2]
.LVL2532:
	add	r5, r2, #10
	add	r4, r2, #11
	str	lr, [r1, r5, lsl #2]
.LVL2533:
.LBB9604:
.LBB9598:
	.loc 13 95 0
	cmp	r3, ip
.LBE9598:
.LBE9604:
	.loc 11 622 0
	str	lr, [r1, r4, lsl #2]
.LVL2534:
	add	r5, r2, #12
	add	r4, r2, #13
	str	lr, [r1, r5, lsl #2]
.LVL2535:
	str	lr, [r1, r4, lsl #2]
.LVL2536:
	add	r5, r2, #14
	add	r4, r2, #15
	str	lr, [r1, r5, lsl #2]
.LVL2537:
	str	lr, [r1, r4, lsl #2]
.LVL2538:
.LBB9605:
.LBB9599:
	.loc 13 95 0
	bcs	.L2643
.L2653:
.LVL2539:
.LBB9590:
.LBB9591:
	.loc 14 212 0
	lsl	lr, r3, #5
.LVL2540:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, lr, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9592:
.LBB9593:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2541:
	.arm
	.syntax unified
.LBE9593:
.LBE9592:
.LBE9591:
.LBE9590:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2542:
	cmp	r3, ip
	bne	.L2653
.LVL2543:
.L2643:
.LBE9599:
.LBE9605:
.LBE9587:
	.loc 11 636 0
	lsl	r2, r2, #20
.LVL2544:
	.loc 11 637 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2545:
	.loc 11 636 0
	b	flushPage
.LVL2546:
.L2660:
	.cfi_restore_state
	.loc 11 631 0
	movw	r1, #:lower16:.LC26
.LVL2547:
	movw	r0, #:lower16:.LC141
.LVL2548:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC141
	ldr	r3, .L2667
	movw	r2, #631
.LVL2549:
	bl	_fail
.LVL2550:
.L2637:
	.loc 11 592 0
	ldr	ip, [r1, r2, lsl #2]
	add	r4, r1, r2, lsl #2
	cmp	ip, #0
	popeq	{r4, r5, r6, pc}
.LVL2551:
	.loc 11 596 0
	and	lr, ip, #3
	cmp	lr, #2
	bne	.L2664
.LVL2552:
	.loc 11 597 0
	ubfx	lr, ip, #18, #1
	cmp	lr, #0
	bne	.L2665
.LVL2553:
	.loc 11 598 0
	lsr	ip, ip, #20
.LVL2554:
	lsl	ip, ip, #20
	cmp	r3, ip
	bne	.L2666
	.loc 11 600 0
	str	lr, [r1, r2, lsl #2]
.LVL2555:
.LBB9606:
.LBB9607:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9608:
.LBB9609:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9609:
.LBE9608:
.LBE9607:
.LBE9606:
	.loc 11 636 0
	lsl	r2, r2, #20
.LVL2556:
	.loc 11 637 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL2557:
	.loc 11 636 0
	b	flushPage
.LVL2558:
.L2661:
	.cfi_restore_state
.LBB9610:
	.loc 11 617 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2559:
	movw	r0, #:lower16:.LC137
.LVL2560:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC137
	ldr	r3, .L2667+4
	movw	r2, #617
.LVL2561:
	bl	_assert_fail
.LVL2562:
.L2662:
	.loc 11 618 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2563:
	movw	r0, #:lower16:.LC140
.LVL2564:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC140
	ldr	r3, .L2667+4
	movw	r2, #618
.LVL2565:
	bl	_assert_fail
.LVL2566:
.L2663:
	.loc 11 619 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2567:
	movw	r0, #:lower16:.LC139
.LVL2568:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC139
	ldr	r3, .L2667+4
	movw	r2, #619
.LVL2569:
	bl	_assert_fail
.LVL2570:
.L2664:
.LBE9610:
	.loc 11 596 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2571:
	movw	r0, #:lower16:.LC137
.LVL2572:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC137
	ldr	r3, .L2667+4
	mov	r2, #596
.LVL2573:
	bl	_assert_fail
.LVL2574:
.L2665:
	.loc 11 597 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2575:
	movw	r0, #:lower16:.LC138
.LVL2576:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC138
	ldr	r3, .L2667+4
	movw	r2, #597
.LVL2577:
	bl	_assert_fail
.LVL2578:
.L2666:
	.loc 11 598 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2579:
	movw	r0, #:lower16:.LC139
.LVL2580:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC139
	ldr	r3, .L2667+4
	movw	r2, #598
.LVL2581:
	bl	_assert_fail
.LVL2582:
.L2668:
	.align	2
.L2667:
	.word	.LANCHOR4+3504
	.word	.LANCHOR4+3488
	.cfi_endproc
.LFE337:
	.size	unmapPagePDE, .-unmapPagePDE
	.align	2
	.global	flushTable
	.syntax unified
	.arm
	.type	flushTable, %function
flushTable:
.LFB349:
	.loc 11 849 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2583:
	.loc 11 853 0
	ubfx	r1, r1, #0, #20
.LVL2584:
	.loc 11 849 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 853 0
	cmp	r1, #0
	bne	.L2679
	mov	r4, r0
.LBB9641:
.LBB9642:
	.loc 11 769 0
	add	r4, r4, #12288
.LBE9642:
.LBE9641:
	.loc 11 856 0
	bl	setVMRootForFlush
.LVL2585:
.LBB9644:
.LBB9643:
	.loc 11 769 0
	ldr	r3, [r4, #4032]
.LVL2586:
.LBE9643:
.LBE9644:
.LBB9645:
.LBB9646:
	.loc 4 792 0
	tst	r3, #3
	bne	.L2680
.LVL2587:
.LBE9646:
.LBE9645:
	.loc 11 859 0
	tst	r3, #8388608
	popeq	{r4, pc}
.LVL2588:
.LBB9648:
.LBB9649:
.LBB9650:
.LBB9651:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9651:
.LBE9650:
	.loc 14 165 0
	lsr	r3, r3, #24
.LVL2589:
	.syntax divided
@ 165 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r3, c8, c7, 2
@ 0 "" 2
	.arm
	.syntax unified
.LBB9652:
.LBB9653:
	.loc 12 17 0
	.syntax divided
@ 17 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dsb
@ 0 "" 2
	.arm
	.syntax unified
.LBE9653:
.LBE9652:
.LBB9654:
.LBB9655:
	.loc 12 29 0
	.syntax divided
@ 29 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	isb
@ 0 "" 2
.LVL2590:
	.arm
	.syntax unified
.LBE9655:
.LBE9654:
.LBE9649:
.LBE9648:
	.loc 11 861 0
	cmp	r0, #0
	popeq	{r4, pc}
	.loc 11 862 0
	movw	r3, #:lower16:ksCurThread
	.loc 11 865 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2591:
	.loc 11 862 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL2592:
	b	setVMRoot
.LVL2593:
.L2680:
	.cfi_restore_state
.LBB9656:
.LBB9647:
	bl	pde_pde_invalid_get_stored_asid_valid.part.84
.LVL2594:
.L2679:
.LBE9647:
.LBE9656:
.LBB9657:
.LBB9658:
	.loc 11 853 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC142
.LVL2595:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC142
	ldr	r3, .L2681
	movw	r2, #853
.LVL2596:
	bl	_assert_fail
.LVL2597:
.L2682:
	.align	2
.L2681:
	.word	.LANCHOR4+3520
.LBE9658:
.LBE9657:
	.cfi_endproc
.LFE349:
	.size	flushTable, .-flushTable
	.align	2
	.global	unmapPageTable
	.syntax unified
	.arm
	.type	unmapPageTable, %function
unmapPageTable:
.LFB333:
	.loc 11 447 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2598:
	.loc 11 448 0
	subs	ip, r0, #0
	.loc 11 447 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 11 448 0
	beq	.L2689
	.loc 11 449 0
	cmp	r2, #0
	beq	.L2690
	ldr	r3, [ip, r1, lsl #2]
.LVL2599:
	.loc 11 450 0
	add	r5, ip, r1, lsl #2
	and	r4, r3, #3
	cmp	r4, #1
	bne	.L2691
.LVL2600:
	.loc 11 451 0
	bic	r3, r3, #1020
.LVL2601:
	bic	r3, r3, #3
	add	r3, r3, #-805306368
	cmp	r2, r3
	bne	.L2692
.LVL2602:
	.loc 11 453 0
	mov	r3, #0
	str	r3, [ip, r1, lsl #2]
.LVL2603:
.LBB9659:
.LBB9660:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r5, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9661:
.LBB9662:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2604:
	.arm
	.syntax unified
.LBE9662:
.LBE9661:
.LBE9660:
.LBE9659:
	.loc 11 455 0
	lsl	r1, r1, #20
.LVL2605:
	.loc 11 456 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 11 455 0
	b	flushTable
.LVL2606:
.L2689:
	.cfi_restore_state
	.loc 11 448 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2607:
	movw	r0, #:lower16:.LC143
.LVL2608:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC143
	ldr	r3, .L2693
	mov	r2, #448
.LVL2609:
	bl	_assert_fail
.LVL2610:
.L2692:
	.loc 11 451 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2611:
	movw	r0, #:lower16:.LC146
.LVL2612:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC146
	ldr	r3, .L2693
	movw	r2, #451
.LVL2613:
	bl	_assert_fail
.LVL2614:
.L2691:
	.loc 11 450 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2615:
	movw	r0, #:lower16:.LC145
.LVL2616:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC145
	ldr	r3, .L2693
.LVL2617:
	movw	r2, #450
.LVL2618:
	bl	_assert_fail
.LVL2619:
.L2690:
	.loc 11 449 0 discriminator 1
	movw	r1, #:lower16:.LC26
.LVL2620:
	movw	r0, #:lower16:.LC144
.LVL2621:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC144
	ldr	r3, .L2693
	movw	r2, #449
.LVL2622:
	bl	_assert_fail
.LVL2623:
.L2694:
	.align	2
.L2693:
	.word	.LANCHOR4+3532
	.cfi_endproc
.LFE333:
	.size	unmapPageTable, .-unmapPageTable
	.align	2
	.global	performPageTableInvocationUnmap
	.syntax unified
	.arm
	.type	performPageTableInvocationUnmap, %function
performPageTableInvocationUnmap:
.LFB362:
	.loc 11 1619 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2624:
.LBB9673:
.LBB9674:
	.loc 4 1803 0
	and	r3, r0, #15
.LBE9674:
.LBE9673:
	.loc 11 1619 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB9678:
.LBB9675:
	.loc 4 1803 0
	cmp	r3, #3
.LBE9675:
.LBE9678:
	.loc 11 1619 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 11 1619 0
	stm	sp, {r0, r1}
.LVL2625:
.LBB9679:
.LBB9676:
	.loc 4 1803 0
	bne	.L2700
	mov	r5, r0
	.loc 4 1806 0
	bic	r0, r1, #4080
.LVL2626:
	bic	r0, r0, #15
	mov	r6, r2
.LBE9676:
.LBE9679:
	.loc 11 1620 0
	cmp	r0, #0
	beq	.L2698
.LVL2627:
.LBB9680:
.LBB9681:
	.loc 4 1832 0
	ubfx	r4, r1, #0, #12
.LBE9681:
.LBE9680:
	.loc 11 1621 0
	bic	r2, r5, #1020
.LVL2628:
	mov	r1, r4
	bic	r2, r2, #3
	bl	unmapPageTable
.LVL2629:
	mov	r1, r4
.LVL2630:
.L2698:
	.loc 11 1626 0
	add	r3, sp, #16
.LBB9682:
.LBB9683:
	.loc 4 1823 0
	str	r5, [sp, #8]
.LBE9683:
.LBE9682:
	.loc 11 1626 0
	mov	r0, r6
.LBB9685:
.LBB9684:
	.loc 4 1823 0
	str	r1, [sp, #12]
.LVL2631:
.LBE9684:
.LBE9685:
	.loc 11 1626 0
	ldmdb	r3, {r1, r2}
	bl	cdtUpdate
.LVL2632:
	.loc 11 1629 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL2633:
.L2700:
	.cfi_restore_state
.LBB9686:
.LBB9677:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL2634:
.LBE9677:
.LBE9686:
	.cfi_endproc
.LFE362:
	.size	performPageTableInvocationUnmap, .-performPageTableInvocationUnmap
	.align	2
	.global	cdtFindAtDepth
	.syntax unified
	.arm
	.type	cdtFindAtDepth, %function
cdtFindAtDepth:
.LFB507:
	.loc 3 408 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2635:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 3 408 0
	stm	sp, {r0, r1}
.LBB9718:
.LBB9719:
	.loc 4 435 0
	bics	ip, r2, #31
.LBE9719:
.LBE9718:
	.loc 3 412 0
	add	r5, sp, #8
	ldm	sp, {r0, r1}
	stm	r5, {r0, r1}
.LVL2636:
.LBB9723:
.LBB9720:
	.loc 4 435 0
	bne	.L2741
.LVL2637:
.LBE9720:
.LBE9723:
	.loc 3 417 0
	movw	r3, #:lower16:ksRootCTE
.LBB9724:
.LBB9725:
.LBB9726:
.LBB9727:
	.loc 36 30 0
	movw	r6, #:lower16:untyped_comparator
.LBE9727:
.LBE9726:
.LBE9725:
.LBE9724:
	.loc 3 417 0
	movt	r3, #:upper16:ksRootCTE
.LBB9757:
.LBB9752:
.LBB9734:
.LBB9730:
	.loc 36 30 0
	movw	r8, #:lower16:typed_comparator
.LBE9730:
.LBE9734:
.LBE9752:
.LBE9757:
	.loc 3 417 0
	ldr	r4, [r3]
.LBB9758:
.LBB9753:
.LBB9735:
.LBB9731:
	movw	r7, #:lower16:just_tie_break
	.loc 36 30 0
	movt	r6, #:upper16:untyped_comparator
	movt	r8, #:upper16:typed_comparator
	movt	r7, #:upper16:just_tie_break
.LBE9731:
.LBE9735:
.LBE9753:
.LBE9758:
.LBB9759:
.LBB9721:
	.loc 4 444 0
	str	ip, [sp, #16]
	str	r2, [sp, #20]
.LVL2638:
.L2703:
	ldr	r3, [r4]
.LVL2639:
.LBE9721:
.LBE9759:
.LBB9760:
.LBB9754:
.LBB9736:
.LBB9732:
.LBB9728:
.LBB9729:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2640:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9729:
.LBE9728:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2715
.L2709:
	.word	.L2708
	.word	.L2727
	.word	.L2708
	.word	.L2708
	.word	.L2708
	.word	.L2708
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2708
	.word	.L2715
	.word	.L2708
	.word	.L2715
	.word	.L2711
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2711
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2708
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2712
.L2711:
	movw	r9, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r1, #2
	.loc 36 30 0
	movt	r9, #:upper16:irq_comparator
.L2710:
	ldr	r3, [sp, #8]
.LVL2641:
.LBE9732:
.LBE9736:
.LBB9737:
.LBB9738:
.LBB9739:
.LBB9740:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2642:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9740:
.LBE9739:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2715
.L2717:
	.word	.L2716
	.word	.L2728
	.word	.L2716
	.word	.L2716
	.word	.L2716
	.word	.L2716
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2716
	.word	.L2715
	.word	.L2716
	.word	.L2715
	.word	.L2719
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2719
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2716
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2715
	.word	.L2720
.L2719:
	.loc 36 45 0
	mov	r3, #2
.L2718:
.LBE9738:
.LBE9737:
.LBB9745:
	.loc 3 319 0
	cmp	r3, r1
	beq	.L2725
	bge	.L2722
.LVL2643:
.L2721:
.LBE9745:
.LBE9754:
.LBE9760:
.LBB9761:
.LBB9762:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL2644:
	lsr	r4, r4, #5
.LVL2645:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL2646:
	beq	.L2731
	orr	r4, r4, #-536870912
.LVL2647:
.LBE9762:
.LBE9761:
	.loc 3 433 0
	cmp	r4, #0
	bne	.L2703
.LVL2648:
.L2731:
	.loc 3 434 0
	mov	r0, r4
	.loc 3 435 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL2649:
.L2715:
	.cfi_restore_state
.LBB9763:
.LBB9755:
.LBB9746:
.LBB9743:
.LBB9741:
.LBB9742:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L2742
	mov	r2, #53
	bl	_assert_fail
.LVL2650:
.L2720:
.LBE9742:
.LBE9741:
.LBE9743:
.LBE9746:
.LBB9747:
	.loc 3 319 0
	cmp	r1, #3
	bne	.L2722
.L2725:
.LVL2651:
.LBE9747:
.LBB9748:
.LBB9749:
	.loc 3 310 0
	movw	r2, #:lower16:slot_eq_comparator
	mov	r1, r5
	movt	r2, #:upper16:slot_eq_comparator
	mov	r0, r4
	blx	r9
.LVL2652:
.LBE9749:
.LBE9748:
.LBE9755:
.LBE9763:
	.loc 3 423 0
	cmp	r0, #0
	beq	.L2731
	cmp	r0, #1
	beq	.L2721
	cmn	r0, #1
	bne	.L2703
.LVL2653:
.L2722:
.LBB9764:
.LBB9765:
	.loc 30 217 0
	ldr	r4, [r4, #12]
.LVL2654:
	lsr	r4, r4, #5
.LVL2655:
	.loc 30 218 0
	lsls	r4, r4, #2
.LVL2656:
	beq	.L2731
	orr	r4, r4, #-536870912
.LVL2657:
.LBE9765:
.LBE9764:
	.loc 3 433 0
	cmp	r4, #0
	bne	.L2703
	b	.L2731
.LVL2658:
.L2727:
.LBB9766:
.LBB9756:
.LBB9750:
.LBB9733:
	.loc 36 30 0
	mov	r9, r6
	.loc 36 42 0
	mov	r1, #0
	b	.L2710
.L2708:
	.loc 36 30 0
	mov	r9, r8
	.loc 36 39 0
	mov	r1, #1
	b	.L2710
.L2712:
	mov	r9, r7
	.loc 36 50 0
	mov	r1, #3
	b	.L2710
.L2728:
.LBE9733:
.LBE9750:
.LBB9751:
.LBB9744:
	.loc 36 42 0
	mov	r3, #0
	b	.L2718
.L2716:
	.loc 36 39 0
	mov	r3, #1
	b	.L2718
.LVL2659:
.L2741:
.LBE9744:
.LBE9751:
.LBE9756:
.LBE9766:
.LBB9767:
.LBB9722:
	.loc 4 435 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC128
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC128
	ldr	r3, .L2742+4
	movw	r2, #435
.LVL2660:
	bl	_assert_fail
.LVL2661:
.L2743:
	.align	2
.L2742:
	.word	.LANCHOR4+2276
	.word	.LANCHOR4+2260
.LBE9722:
.LBE9767:
	.cfi_endproc
.LFE507:
	.size	cdtFindAtDepth, .-cdtFindAtDepth
	.align	2
	.syntax unified
	.arm
	.type	makeUserPDE.constprop.292, %function
makeUserPDE.constprop.292:
.LFB1005:
	.loc 11 935 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2662:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 11 935 0
	ldr	ip, [sp, #12]
	ldr	lr, [sp, #8]
.LVL2663:
.LBB9776:
.LBB9777:
	.loc 11 72 0
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L2745
.L2747:
	.word	.L2746
	.word	.L2762
	.word	.L2749
	.word	.L2750
.L2762:
	mov	ip, #1024
.LVL2664:
.L2748:
.LBE9777:
.LBE9776:
	.loc 11 943 0
	cmp	r0, #2
	beq	.L2752
.L2766:
	cmp	r0, #3
	beq	.L2763
	.loc 11 953 0
	movw	r1, #:lower16:.LC26
.LVL2665:
	movw	r0, #:lower16:.LC147
.LVL2666:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC147
	ldr	r3, .L2768
.LVL2667:
	movw	r2, #953
.LVL2668:
	bl	_fail
.LVL2669:
.L2746:
	.loc 11 943 0
	cmp	r0, #2
.LBB9783:
.LBB9780:
	.loc 11 72 0
	mov	ip, #0
.LVL2670:
.LBE9780:
.LBE9783:
	.loc 11 943 0
	bne	.L2766
.L2752:
	.loc 11 956 0
	cmp	r3, #0
	.loc 11 943 0
	mov	r0, #0
.LVL2671:
.LBB9784:
.LBB9785:
	.loc 4 860 0
	ubfx	r3, r1, #0, #20
.LVL2672:
.LBE9785:
.LBE9784:
	.loc 11 956 0
	beq	.L2754
.L2767:
.LVL2673:
.LBB9789:
.LBB9786:
	.loc 4 860 0
	cmp	r3, #0
	bne	.L2759
	.loc 4 861 0
	lsr	r1, r1, #20
.LVL2674:
	.loc 4 881 0
	bics	r3, r2, #1
	.loc 4 861 0
	lsl	r1, r1, #20
.LVL2675:
	.loc 4 881 0
	bne	.L2760
	.loc 4 887 0
	bics	r3, lr, #1
	.loc 4 882 0
	lsl	r2, r2, #9
.LVL2676:
	movweq	r3, #20486
	movteq	r3, 2
	.loc 4 887 0
	beq	.L2765
.LVL2677:
.L2761:
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC125
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC125
	ldr	r3, .L2768+4
	movw	r2, #887
	bl	_assert_fail
.LVL2678:
.L2750:
.LBE9786:
.LBE9789:
.LBB9790:
.LBB9781:
	mov	ip, #3072
.LVL2679:
	b	.L2748
.LVL2680:
.L2749:
	.loc 11 72 0
	mov	ip, #2048
.LVL2681:
	b	.L2748
.LVL2682:
.L2763:
.LBE9781:
.LBE9790:
	.loc 11 956 0
	cmp	r3, #0
	.loc 11 943 0
	mov	r0, #262144
.LVL2683:
.LBB9791:
.LBB9787:
	.loc 4 860 0
	ubfx	r3, r1, #0, #20
.LVL2684:
.LBE9787:
.LBE9791:
	.loc 11 956 0
	bne	.L2767
.L2754:
.LVL2685:
.LBB9792:
.LBB9793:
	.loc 4 860 0
	cmp	r3, #0
	bne	.L2759
	.loc 4 861 0
	lsr	r1, r1, #20
.LVL2686:
	.loc 4 881 0
	bics	r3, r2, #1
	.loc 4 861 0
	lsl	r1, r1, #20
.LVL2687:
	.loc 4 881 0
	bne	.L2760
	.loc 4 887 0
	bics	r3, lr, #1
	.loc 4 882 0
	lsl	r2, r2, #9
.LVL2688:
	.loc 4 887 0
	bne	.L2761
	mov	r3, #2
	movt	r3, 3
.LVL2689:
.L2765:
	orr	lr, r3, lr, lsl #4
	orr	r2, lr, r2
	orr	r1, r2, r1
	orr	r1, r1, ip
	orr	r0, r1, r0
.LBE9793:
.LBE9792:
	.loc 11 973 0
	pop	{r4, pc}
.LVL2690:
.L2745:
.LBB9794:
.LBB9782:
.LBB9778:
.LBB9779:
	.loc 11 86 0
	movw	r1, #:lower16:.LC26
.LVL2691:
	movw	r0, #:lower16:.LC27
.LVL2692:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC27
	ldr	r3, .L2768+8
.LVL2693:
	mov	r2, #86
.LVL2694:
	bl	_fail
.LVL2695:
.L2759:
.LBE9779:
.LBE9778:
.LBE9782:
.LBE9794:
.LBB9795:
.LBB9788:
	bl	pde_pde_section_new.part.117
.LVL2696:
.L2760:
	.loc 4 881 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC148
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC148
	ldr	r3, .L2768+4
	movw	r2, #881
.LVL2697:
	bl	_assert_fail
.LVL2698:
.L2769:
	.align	2
.L2768:
	.word	.LANCHOR4+3548
	.word	.LANCHOR4+1176
	.word	.LANCHOR4+56
.LBE9788:
.LBE9795:
	.cfi_endproc
.LFE1005:
	.size	makeUserPDE.constprop.292, .-makeUserPDE.constprop.292
	.align	2
	.global	cdtMove
	.syntax unified
	.arm
	.type	cdtMove, %function
cdtMove:
.LFB520:
	.loc 3 680 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2699:
	ldr	r3, [r0]
.LVL2700:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 680 0
	mov	r4, r0
	mov	r6, r1
.LBB9806:
.LBB9807:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2701:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9807:
.LBE9806:
	.loc 3 681 0
	cmp	r3, #0
	beq	.L2778
	ldr	r3, [r1]
.LVL2702:
.LBB9808:
.LBB9809:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2703:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9809:
.LBE9808:
	.loc 3 682 0
	cmp	r3, #0
	beq	.L2779
	.loc 3 683 0
	movw	r5, #:lower16:ksRootCTE
	mov	r2, r0
	movt	r5, #:upper16:ksRootCTE
	mov	r0, #0
.LVL2704:
	ldr	r1, [r5]
.LVL2705:
	bl	aaRemove
.LVL2706:
.LBB9810:
.LBB9811:
	.loc 4 436 0
	ldr	r2, [r4, #12]
.LBE9811:
.LBE9810:
	.loc 3 685 0
	mov	r3, #0
	str	r3, [r6, #8]
	.loc 3 688 0
	mov	r1, r6
	.loc 3 683 0
	str	r0, [r5]
.LVL2707:
.LBB9813:
.LBB9812:
	.loc 4 436 0
	and	r2, r2, #31
.LVL2708:
.LBE9812:
.LBE9813:
	.loc 3 685 0
	str	r2, [r6, #12]
	.loc 3 686 0
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	.loc 3 688 0
	bl	aaInsert
.LVL2709:
	str	r0, [r5]
	pop	{r4, r5, r6, pc}
.LVL2710:
.L2778:
	.loc 3 681 0 discriminator 1
	movw	r1, #:lower16:.LC84
.LVL2711:
	movw	r0, #:lower16:.LC149
.LVL2712:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC149
	ldr	r3, .L2780
	movw	r2, #681
	bl	_assert_fail
.LVL2713:
.L2779:
	.loc 3 682 0 discriminator 1
	movw	r1, #:lower16:.LC84
.LVL2714:
	movw	r0, #:lower16:.LC150
.LVL2715:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC150
	ldr	r3, .L2780
	movw	r2, #682
	bl	_assert_fail
.LVL2716:
.L2781:
	.align	2
.L2780:
	.word	.LANCHOR4+3560
	.cfi_endproc
.LFE520:
	.size	cdtMove, .-cdtMove
	.align	2
	.global	cdtFindWithExtra
	.syntax unified
	.arm
	.type	cdtFindWithExtra, %function
cdtFindWithExtra:
.LFB505:
	.loc 3 354 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB9852:
.LBB9853:
.LBB9854:
	.loc 4 997 0
	and	r2, r0, #14
	mov	r3, r0
	cmp	r2, #14
.LBE9854:
.LBE9853:
.LBE9852:
	.loc 3 354 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB9863:
.LBB9856:
.LBB9855:
	.loc 4 999 0
	uxtbeq	r3, r3
	.loc 4 998 0
	andne	r3, r0, #15
.LBE9855:
.LBE9856:
.LBE9863:
	.loc 3 354 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
.LVL2717:
.LBB9864:
.LBB9857:
.LBB9858:
	.loc 36 162 0
	cmp	r3, #1
.LBE9858:
.LBE9857:
.LBE9864:
	.loc 3 354 0
	add	r5, sp, #8
	stm	r5, {r0, r1}
.LBB9865:
.LBB9861:
.LBB9859:
	.loc 36 162 0
	beq	.L2785
	cmp	r3, #3
.LBE9859:
.LBE9861:
.LBE9865:
	.loc 3 357 0
	movne	r3, #32
	strne	r3, [sp, #4]
.LBB9866:
.LBB9862:
.LBB9860:
	.loc 36 162 0
	beq	.L2785
.L2786:
.LVL2718:
	movw	r6, #:lower16:ksRootCTE
.LBE9860:
.LBE9862:
.LBE9866:
.LBB9867:
.LBB9868:
.LBB9869:
.LBB9870:
.LBB9871:
.LBB9872:
	.loc 36 30 0
	movw	r8, #:lower16:untyped_comparator
	movw	r10, #:lower16:typed_comparator
	movw	r9, #:lower16:just_tie_break
	movt	r6, #:upper16:ksRootCTE
	movt	r8, #:upper16:untyped_comparator
	movt	r10, #:upper16:typed_comparator
	movt	r9, #:upper16:just_tie_break
.LBE9872:
.LBE9871:
.LBE9870:
.LBE9869:
.LBE9868:
.LBE9867:
	.loc 3 357 0
	mov	fp, #0
	add	r7, sp, #16
.LVL2719:
.L2811:
.LBB9913:
	.loc 3 366 0
	ldr	r4, [r6]
.LBB9905:
.LBB9906:
	.loc 4 444 0
	mov	r3, #0
.LBE9906:
.LBE9905:
	.loc 3 361 0
	ldm	r5, {r0, r1}
.LBB9908:
.LBB9907:
	.loc 4 444 0
	str	r3, [sp, #24]
	str	fp, [sp, #28]
.LBE9907:
.LBE9908:
	.loc 3 361 0
	stm	r7, {r0, r1}
.LVL2720:
.L2787:
	ldr	r3, [r4]
.LVL2721:
.LBB9909:
.LBB9897:
.LBB9893:
.LBB9877:
.LBB9875:
.LBB9873:
.LBB9874:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2722:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE9874:
.LBE9873:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L2799
.L2793:
	.word	.L2792
	.word	.L2814
	.word	.L2792
	.word	.L2792
	.word	.L2792
	.word	.L2792
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2792
	.word	.L2799
	.word	.L2792
	.word	.L2799
	.word	.L2795
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2795
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2792
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2796
.L2795:
	movw	r3, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r0, #2
	.loc 36 30 0
	movt	r3, #:upper16:irq_comparator
.L2794:
	ldr	r2, [sp, #16]
.LVL2723:
.LBE9875:
.LBE9877:
.LBB9878:
.LBB9879:
.LBB9880:
.LBB9881:
	.loc 4 997 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r2, r2
.LVL2724:
	.loc 4 998 0
	andne	r2, r2, #15
.LBE9881:
.LBE9880:
	.loc 36 30 0
	sub	r2, r2, #1
	cmp	r2, #61
	ldrls	pc, [pc, r2, asl #2]
	b	.L2799
.L2801:
	.word	.L2800
	.word	.L2815
	.word	.L2800
	.word	.L2800
	.word	.L2800
	.word	.L2800
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2800
	.word	.L2799
	.word	.L2800
	.word	.L2799
	.word	.L2803
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2803
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2800
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2799
	.word	.L2804
.L2803:
	.loc 36 45 0
	mov	r2, #2
.L2802:
.LBE9879:
.LBE9878:
.LBB9886:
	.loc 3 319 0
	cmp	r2, r0
	beq	.L2812
	bge	.L2806
.LVL2725:
.L2805:
.LBE9886:
.LBE9893:
.LBE9897:
.LBB9898:
.LBB9899:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL2726:
	lsr	r4, r4, #5
.LVL2727:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL2728:
	bne	.L2839
.LVL2729:
.L2808:
.LBE9899:
.LBE9898:
.LBE9909:
.LBE9913:
	.loc 3 357 0
	ldr	r3, [sp, #4]
	add	fp, fp, #1
.LVL2730:
	cmp	fp, r3
	bne	.L2811
	.loc 3 385 0
	mov	r0, #0
	b	.L2836
.LVL2731:
.L2799:
.LBB9914:
.LBB9910:
.LBB9900:
.LBB9894:
.LBB9887:
.LBB9884:
.LBB9882:
.LBB9883:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L2841
	mov	r2, #53
	bl	_assert_fail
.LVL2732:
.L2804:
.LBE9883:
.LBE9882:
.LBE9884:
.LBE9887:
.LBB9888:
	.loc 3 319 0
	cmp	r0, #3
	bne	.L2806
.L2812:
.LVL2733:
.LBE9888:
.LBB9889:
.LBB9890:
	.loc 3 310 0
	movw	r2, #:lower16:has_extra_comparator
	mov	r1, r7
	movt	r2, #:upper16:has_extra_comparator
	mov	r0, r4
	blx	r3
.LVL2734:
.LBE9890:
.LBE9889:
.LBE9894:
.LBE9900:
	.loc 3 373 0
	cmp	r0, #0
	bne	.L2840
.LBE9910:
	.loc 3 381 0
	mov	r0, r4
.LVL2735:
.L2836:
.LBE9914:
	.loc 3 386 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2736:
.L2785:
	.cfi_restore_state
	.loc 3 357 0
	mov	r3, #2
	str	r3, [sp, #4]
	b	.L2786
.LVL2737:
.L2814:
.LBB9915:
.LBB9911:
.LBB9901:
.LBB9895:
.LBB9891:
.LBB9876:
	.loc 36 30 0
	mov	r3, r8
	.loc 36 42 0
	mov	r0, #0
	b	.L2794
.L2792:
	.loc 36 30 0
	mov	r3, r10
	.loc 36 39 0
	mov	r0, #1
	b	.L2794
.L2796:
	mov	r3, r9
	.loc 36 50 0
	mov	r0, #3
	b	.L2794
.LVL2738:
.L2840:
.LBE9876:
.LBE9891:
.LBE9895:
.LBE9901:
	.loc 3 373 0
	cmp	r0, #1
	beq	.L2805
	cmn	r0, #1
	bne	.L2787
.LVL2739:
.L2806:
.LBB9902:
.LBB9903:
	.loc 30 217 0
	ldr	r4, [r4, #12]
.LVL2740:
	lsr	r4, r4, #5
.LVL2741:
	.loc 30 218 0
	lsls	r4, r4, #2
.LVL2742:
	beq	.L2808
.LVL2743:
.L2839:
	orr	r4, r4, #-536870912
.LVL2744:
.LBE9903:
.LBE9902:
.LBE9911:
	.loc 3 383 0
	cmp	r4, #0
	bne	.L2787
	b	.L2808
.LVL2745:
.L2815:
.LBB9912:
.LBB9904:
.LBB9896:
.LBB9892:
.LBB9885:
	.loc 36 42 0
	mov	r2, #0
	b	.L2802
.L2800:
	.loc 36 39 0
	mov	r2, #1
	b	.L2802
.L2842:
	.align	2
.L2841:
	.word	.LANCHOR4+2276
.LBE9885:
.LBE9892:
.LBE9896:
.LBE9904:
.LBE9912:
.LBE9915:
	.cfi_endproc
.LFE505:
	.size	cdtFindWithExtra, .-cdtFindWithExtra
	.align	2
	.global	unmapPagePTE
	.syntax unified
	.arm
	.type	unmapPagePTE, %function
unmapPagePTE:
.LFB336:
	.loc 11 517 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2746:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB9951:
.LBB9952:
	.loc 4 1791 0
	ubfx	r6, r1, #0, #10
	cmp	r6, #0
.LVL2747:
.LBE9952:
.LBE9951:
	.loc 11 517 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
.LBB9955:
.LBB9953:
	.loc 4 1791 0
	bne	.L2874
.LVL2748:
	add	r8, r3, #805306368
	.loc 4 1797 0
	bic	r3, r1, #1020
.LVL2749:
	bic	r3, r3, #3
	str	r6, [sp, #4]
.LVL2750:
	orr	r3, r3, #3
	mov	r4, r1
	str	r3, [sp]
.LBE9953:
.LBE9955:
	.loc 11 525 0
	add	r3, sp, #8
	mov	r7, r0
	ldmdb	r3, {r0, r1}
.LVL2751:
	mov	r5, r2
	bl	cdtFindWithExtra
.LVL2752:
	.loc 11 526 0
	cmp	r0, #0
	beq	.L2875
.LVL2753:
.LBB9956:
.LBB9957:
	.loc 4 1803 0
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
.LVL2754:
	and	r3, r3, #15
	cmp	r3, #3
	bne	.L2876
.LVL2755:
.LBE9957:
.LBE9956:
	.loc 11 530 0
	cmp	r7, #0
	beq	.L2848
	cmp	r7, #1
	bne	.L2877
.LBB9960:
	.loc 11 555 0
	ldr	r0, [r4, r5, lsl #2]
.LVL2756:
	lsl	r1, r5, #2
	add	r3, r4, r1
	cmp	r0, #0
	beq	.L2843
.LVL2757:
.LBB9961:
.LBB9962:
	.loc 31 169 0
	tst	r0, #2
	bne	.L2856
.LVL2758:
	.loc 31 171 0
	tst	r0, #1
	bne	.L2878
.LVL2759:
.L2856:
.LBE9962:
.LBE9961:
	.loc 11 558 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC156
.LVL2760:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC156
	ldr	r3, .L2881
	movw	r2, #558
.LVL2761:
	bl	_assert_fail
.LVL2762:
.L2877:
.LBE9960:
	.loc 11 571 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC23
.LVL2763:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC23
	ldr	r3, .L2881+4
	movw	r2, #571
.LVL2764:
	bl	_fail
.LVL2765:
.L2843:
	.loc 11 577 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL2766:
.L2848:
	.cfi_restore_state
	.loc 11 536 0
	ldr	r3, [r4, r5, lsl #2]
	add	r1, r4, r5, lsl #2
	cmp	r3, #0
	beq	.L2843
.LVL2767:
.LBB9981:
.LBB9982:
	.loc 31 169 0
	tst	r3, #2
	bne	.L2852
.LVL2768:
.LBE9982:
.LBE9981:
	.loc 11 539 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC153
.LVL2769:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC153
	ldr	r3, .L2881
.LVL2770:
	movw	r2, #539
.LVL2771:
	bl	_assert_fail
.LVL2772:
.L2852:
	.loc 11 540 0
	bic	r3, r3, #4080
.LVL2773:
	bic	r3, r3, #15
	cmp	r8, r3
	bne	.L2879
	.loc 11 542 0
	str	r7, [r4, r5, lsl #2]
.LVL2774:
.LBB9983:
.LBB9984:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9985:
.LBB9986:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2775:
	.arm
	.syntax unified
.L2854:
.LBE9986:
.LBE9985:
.LBE9984:
.LBE9983:
.LBB9987:
.LBB9958:
	.loc 4 1806 0
	bic	r1, r2, #4080
	bic	r1, r1, #15
.LBE9958:
.LBE9987:
	.loc 11 574 0
	cmp	r1, #0
	beq	.L2843
	.loc 11 575 0
	lsl	r5, r5, #12
.LVL2776:
	mov	r0, r7
	orr	r2, r5, r2, lsl #20
.LVL2777:
	.loc 11 577 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL2778:
	.loc 11 575 0
	b	flushPage
.LVL2779:
.L2878:
	.cfi_restore_state
.LBB9988:
	.loc 11 559 0
	lsr	r0, r0, #16
.LVL2780:
	lsl	r0, r0, #16
	cmp	r8, r0
	bne	.L2880
.LVL2781:
	.loc 11 562 0
	add	r0, r5, #1
	str	r6, [r4, r5, lsl #2]
.LVL2782:
	str	r6, [r4, r0, lsl #2]
	add	r0, r5, #2
	str	r6, [r4, r0, lsl #2]
.LBB9963:
.LBB9964:
	.loc 13 95 0
	add	r1, r4, r1
.LVL2783:
.LBE9964:
.LBE9963:
	.loc 11 562 0
	add	r0, r5, #3
	add	ip, r5, #4
	str	r6, [r4, r0, lsl #2]
.LVL2784:
.LBB9975:
.LBB9969:
	.loc 13 95 0
	add	r1, r1, #63
.LBE9969:
.LBE9975:
	.loc 11 562 0
	add	r0, r5, #5
	str	r6, [r4, ip, lsl #2]
.LVL2785:
.LBB9976:
.LBB9970:
	.loc 13 95 0
	lsr	r1, r1, #5
.LBE9970:
.LBE9976:
	.loc 11 562 0
	str	r6, [r4, r0, lsl #2]
.LVL2786:
	add	ip, r5, #6
.LBB9977:
.LBB9971:
	.loc 13 95 0
	lsr	r3, r3, #5
.LBE9971:
.LBE9977:
	.loc 11 562 0
	add	r0, r5, #7
	str	r6, [r4, ip, lsl #2]
.LVL2787:
	str	r6, [r4, r0, lsl #2]
.LVL2788:
	add	ip, r5, #8
	add	r0, r5, #9
	str	r6, [r4, ip, lsl #2]
.LVL2789:
.LBB9978:
.LBB9972:
	.loc 13 95 0
	add	r1, r1, #1
.LBE9972:
.LBE9978:
	.loc 11 562 0
	str	r6, [r4, r0, lsl #2]
.LVL2790:
	add	ip, r5, #10
	add	r0, r5, #11
	str	r6, [r4, ip, lsl #2]
.LVL2791:
.LBB9979:
.LBB9973:
	.loc 13 95 0
	cmp	r3, r1
.LBE9973:
.LBE9979:
	.loc 11 562 0
	str	r6, [r4, r0, lsl #2]
.LVL2792:
	add	ip, r5, #12
	add	r0, r5, #13
	str	r6, [r4, ip, lsl #2]
.LVL2793:
	str	r6, [r4, r0, lsl #2]
.LVL2794:
	add	ip, r5, #14
	add	r0, r5, #15
	str	r6, [r4, ip, lsl #2]
.LVL2795:
	str	r6, [r4, r0, lsl #2]
.LVL2796:
.LBB9980:
.LBB9974:
	.loc 13 95 0
	bcs	.L2854
.L2866:
.LVL2797:
.LBB9965:
.LBB9966:
	.loc 14 212 0
	lsl	r0, r3, #5
.LVL2798:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r0, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB9967:
.LBB9968:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2799:
	.arm
	.syntax unified
.LBE9968:
.LBE9967:
.LBE9966:
.LBE9965:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2800:
	cmp	r3, r1
	bne	.L2866
	b	.L2854
.LVL2801:
.L2874:
.LBE9974:
.LBE9980:
.LBE9988:
.LBB9989:
.LBB9954:
	.loc 4 1791 0
	movw	r1, #:lower16:.LC29
.LVL2802:
	movw	r0, #:lower16:.LC151
.LVL2803:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC151
	ldr	r3, .L2881+8
.LVL2804:
	movw	r2, #1791
.LVL2805:
	bl	_assert_fail
.LVL2806:
.L2876:
.LBE9954:
.LBE9989:
.LBB9990:
.LBB9959:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL2807:
.L2875:
.LBE9959:
.LBE9990:
	.loc 11 526 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC152
.LVL2808:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC152
	ldr	r3, .L2881
	movw	r2, #526
	bl	_assert_fail
.LVL2809:
.L2880:
.LBB9991:
	.loc 11 559 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC155
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC155
	ldr	r3, .L2881
	movw	r2, #559
.LVL2810:
	bl	_assert_fail
.LVL2811:
.L2879:
.LBE9991:
	.loc 11 540 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC154
.LVL2812:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC154
	ldr	r3, .L2881
	mov	r2, #540
.LVL2813:
	bl	_assert_fail
.LVL2814:
.L2882:
	.align	2
.L2881:
	.word	.LANCHOR4+3568
	.word	.LANCHOR4+3584
	.word	.LANCHOR4+952
	.cfi_endproc
.LFE336:
	.size	unmapPagePTE, .-unmapPagePTE
	.align	2
	.global	performPageInvocationUnmap
	.syntax unified
	.arm
	.type	performPageInvocationUnmap, %function
performPageInvocationUnmap:
.LFB366:
	.loc 11 1695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2815:
.LBB10018:
.LBB10019:
.LBB10020:
.LBB10021:
	.loc 4 1622 0
	and	r3, r0, #15
.LBE10021:
.LBE10020:
.LBE10019:
.LBE10018:
	.loc 11 1695 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB10029:
.LBB10026:
.LBB10024:
.LBB10022:
	.loc 4 1622 0
	cmp	r3, #1
.LBE10022:
.LBE10024:
.LBE10026:
.LBE10029:
	.loc 11 1695 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 11 1695 0
	stm	sp, {r0, r1}
.LVL2816:
.LBB10030:
.LBB10027:
.LBB10025:
.LBB10023:
	.loc 4 1622 0
	bne	.L2892
.LVL2817:
	mov	r6, r2
	mov	r2, r1
.LVL2818:
.LBE10023:
.LBE10025:
	.loc 31 89 0
	bic	r1, r1, #4080
	ubfx	r3, r0, #24, #2
	bic	r1, r1, #15
	mov	r4, r0
.LBE10027:
.LBE10030:
	.loc 11 1696 0
	adds	r1, r1, r3, lsl #10
	beq	.L2885
.LVL2819:
.LBB10031:
.LBB10032:
	.loc 4 1690 0
	lsr	r0, r0, #29
.LVL2820:
.LBE10032:
.LBE10031:
	.loc 11 1697 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L2886
.L2888:
	.word	.L2887
	.word	.L2887
	.word	.L2889
	.word	.L2889
.L2889:
.LVL2821:
	.loc 11 1707 0
	bic	r3, r4, #-16777216
.LBB10033:
.LBB10034:
	.loc 4 1664 0
	ubfx	r5, r2, #0, #12
.LBE10034:
.LBE10033:
	.loc 11 1707 0
	bic	r3, r3, #15
	mov	r2, r5
	lsl	r3, r3, #8
	bl	unmapPagePDE
.LVL2822:
	.loc 11 1711 0
	mov	r2, r5
.LVL2823:
.L2890:
	.loc 11 1718 0
	add	r3, sp, #16
.LBB10035:
.LBB10036:
.LBB10037:
	.loc 4 1747 0
	bic	r4, r4, #50331648
.LVL2824:
	str	r2, [sp, #12]
.LVL2825:
.LBE10037:
.LBE10036:
.LBE10035:
	.loc 11 1718 0
	mov	r0, r6
.LBB10040:
.LBB10039:
.LBB10038:
	.loc 4 1747 0
	str	r4, [sp, #8]
.LBE10038:
.LBE10039:
.LBE10040:
	.loc 11 1718 0
	ldmdb	r3, {r1, r2}
	bl	cdtUpdate
.LVL2826:
	.loc 11 1721 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL2827:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL2828:
.L2887:
	.cfi_restore_state
	.loc 11 1700 0
	bic	r3, r4, #-16777216
.LBB10041:
.LBB10042:
	.loc 4 1664 0
	ubfx	r5, r2, #0, #12
.LBE10042:
.LBE10041:
	.loc 11 1700 0
	bic	r3, r3, #15
	mov	r2, r5
	lsl	r3, r3, #8
	bl	unmapPagePTE
.LVL2829:
	.loc 11 1704 0
	mov	r2, r5
	b	.L2890
.LVL2830:
.L2886:
	.loc 11 1713 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC141
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC141
	ldr	r3, .L2893
	movw	r2, #1713
	bl	_fail
.LVL2831:
.L2885:
	ubfx	r2, r2, #0, #12
	b	.L2890
.LVL2832:
.L2892:
.LBB10043:
.LBB10028:
	bl	cap_frame_cap_get_capFMappedObject.part.113
.LVL2833:
.L2894:
	.align	2
.L2893:
	.word	.LANCHOR4+3600
.LBE10028:
.LBE10043:
	.cfi_endproc
.LFE366:
	.size	performPageInvocationUnmap, .-performPageInvocationUnmap
	.align	2
	.global	unmapAllPages
	.syntax unified
	.arm
	.type	unmapAllPages, %function
unmapAllPages:
.LFB338:
	.loc 11 640 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2834:
.LBB10158:
.LBB10159:
.LBB10160:
	.loc 4 1608 0
	ubfx	r3, r2, #10, #2
.LBE10160:
.LBE10159:
.LBE10158:
	.loc 11 640 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB10213:
.LBB10166:
.LBB10161:
	.loc 4 1608 0
	lsl	r3, r3, #24
.LBE10161:
.LBE10166:
.LBE10213:
	.loc 11 640 0
	mov	r6, r2
.LBB10214:
.LBB10215:
.LBB10216:
.LBB10217:
.LBB10218:
	.loc 4 1797 0
	bic	r10, r2, #1020
.LBE10218:
.LBE10217:
.LBE10216:
.LBE10215:
.LBE10214:
.LBB10268:
.LBB10167:
.LBB10162:
	.loc 4 1596 0
	bic	fp, r2, #4080
.LBE10162:
.LBE10167:
.LBE10268:
	.loc 11 640 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	orr	r2, r3, #536870913
.LVL2835:
.LBB10269:
.LBB10247:
.LBB10241:
.LBB10224:
.LBB10219:
	.loc 4 1797 0
	bic	r10, r10, #3
	orr	r3, r3, #1
.LBE10219:
.LBE10224:
.LBE10241:
.LBE10247:
.LBE10269:
	.loc 11 642 0
	mov	r4, #0
.LBB10270:
.LBB10168:
.LBB10163:
	.loc 4 1596 0
	bic	fp, fp, #15
.LBE10163:
.LBE10168:
.LBB10169:
.LBB10170:
.LBB10171:
.LBB10172:
	.loc 4 1791 0
	ubfx	r9, r6, #0, #10
	str	r3, [sp, #8]
.LBE10172:
.LBE10171:
.LBE10170:
.LBE10169:
.LBE10270:
.LBB10271:
.LBB10248:
.LBB10242:
.LBB10225:
.LBB10220:
	.loc 4 1797 0
	orr	r3, r10, #3
	str	r2, [sp, #12]
	str	r3, [sp, #4]
.LVL2836:
.L2922:
	ldr	r2, [r6, r4, lsl #2]
.LVL2837:
.LBE10220:
.LBE10225:
.LBE10242:
.LBE10248:
.LBE10271:
	.loc 11 643 0
	lsl	r7, r4, #2
	add	r5, r6, r7
.LBB10272:
.LBB10273:
	.loc 31 169 0
	tst	r2, #2
	bne	.L2896
.LVL2838:
	.loc 31 171 0
	tst	r2, #1
	bne	.L2945
.LVL2839:
.L2937:
.LBE10273:
.LBE10272:
	.loc 11 667 0
	add	r4, r4, #1
.LVL2840:
.L2908:
	.loc 11 642 0 discriminator 1
	cmp	r4, #255
	bls	.L2922
	.loc 11 671 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2841:
.L2896:
	.cfi_restore_state
.LBB10274:
.LBB10249:
.LBB10250:
	.loc 4 1616 0
	ldr	r3, [sp, #8]
	mov	r10, #61440
	movt	r10, 65535
	orr	r0, fp, r4
.LVL2842:
	and	r2, r2, r10
.LVL2843:
.LBE10250:
.LBE10249:
	.loc 11 647 0
	add	r1, sp, #32
.LBB10252:
.LBB10251:
	.loc 4 1616 0
	add	r2, r2, #-805306368
	str	r0, [sp, #36]
.LVL2844:
	orr	r2, r3, r2, lsr #8
	str	r2, [sp, #32]
.LBE10251:
.LBE10252:
	.loc 11 647 0
	ldm	r1, {r0, r1}
	bl	cdtFind
.LVL2845:
	.loc 11 648 0
	subs	r2, r0, #0
	beq	.L2946
	ldr	r8, [r2]
.LVL2846:
	ldr	r2, [r2, #4]
.LVL2847:
.LBB10253:
.LBB10254:
.LBB10255:
	.loc 4 1635 0
	and	r1, r8, #15
	cmp	r1, #1
	bne	.L2910
.LVL2848:
.LBE10255:
.LBE10254:
.LBB10257:
.LBB10258:
	.loc 4 1747 0
	ubfx	r2, r2, #0, #12
.LVL2849:
	bic	ip, r8, #50331648
.LVL2850:
.LBE10258:
.LBE10257:
.LBE10253:
	.loc 11 650 0
	add	r1, sp, #16
.LBB10262:
.LBB10260:
.LBB10259:
	.loc 4 1747 0
	str	r2, [sp, #20]
.LVL2851:
	str	ip, [sp, #16]
.LBE10259:
.LBE10260:
.LBE10262:
	.loc 11 650 0
	ldm	r1, {r1, r2}
	bl	cdtUpdate
.LVL2852:
.LBB10263:
.LBB10243:
.LBB10226:
.LBB10221:
	.loc 4 1791 0
	cmp	r9, #0
	bne	.L2911
.LVL2853:
	.loc 4 1797 0
	ldr	r3, [sp, #4]
.LBE10221:
.LBE10226:
	.loc 11 525 0
	add	r2, sp, #48
.LBB10227:
.LBB10222:
	.loc 4 1797 0
	str	r9, [sp, #52]
.LVL2854:
	str	r3, [sp, #48]
.LBE10222:
.LBE10227:
	.loc 11 525 0
	ldm	r2, {r0, r1}
	bl	cdtFindWithExtra
.LVL2855:
	.loc 11 526 0
	cmp	r0, #0
	beq	.L2912
.LVL2856:
.LBB10228:
.LBB10229:
	.loc 4 1803 0
	ldr	r2, [r0]
	and	r2, r2, #15
	cmp	r2, #3
	bne	.L2913
.LVL2857:
.LBE10229:
.LBE10228:
	.loc 11 536 0
	ldr	r2, [r6, r7]
	cmp	r2, #0
	beq	.L2937
.LVL2858:
.LBB10232:
.LBB10233:
	.loc 31 169 0
	tst	r2, #2
	bne	.L2905
.LVL2859:
.LBE10233:
.LBE10232:
	.loc 11 539 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC153
.LVL2860:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC153
	ldr	r3, .L2950
	movw	r2, #539
.LVL2861:
	bl	_assert_fail
.LVL2862:
.L2945:
.LBE10243:
.LBE10263:
.LBE10274:
.LBB10275:
.LBB10201:
.LBB10164:
	.loc 4 1616 0
	orr	r1, fp, r4
.LVL2863:
	lsr	r2, r2, #16
.LVL2864:
	str	r1, [sp, #44]
.LVL2865:
.LBE10164:
.LBE10201:
	.loc 11 658 0
	add	r3, sp, #40
.LBB10202:
.LBB10165:
	.loc 4 1616 0
	ldr	r1, [sp, #12]
	lsl	r2, r2, #16
	add	r2, r2, #-805306368
	orr	r2, r1, r2, lsr #8
	str	r2, [sp, #40]
.LBE10165:
.LBE10202:
	.loc 11 658 0
	ldm	r3, {r0, r1}
	bl	cdtFind
.LVL2866:
	.loc 11 659 0
	subs	r3, r0, #0
	beq	.L2947
	ldr	r8, [r3]
.LVL2867:
	ldr	r3, [r3, #4]
.LVL2868:
.LBB10203:
.LBB10204:
.LBB10205:
	.loc 4 1635 0
	and	r2, r8, #15
	cmp	r2, #1
	bne	.L2910
.LVL2869:
.LBE10205:
.LBE10204:
.LBB10206:
.LBB10207:
	.loc 4 1747 0
	ubfx	r3, r3, #0, #12
.LVL2870:
	bic	r1, r8, #50331648
.LVL2871:
.LBE10207:
.LBE10206:
.LBE10203:
	.loc 11 661 0
	add	r2, sp, #24
.LBB10210:
.LBB10209:
.LBB10208:
	.loc 4 1747 0
	str	r3, [sp, #28]
.LVL2872:
	str	r1, [sp, #24]
.LBE10208:
.LBE10209:
.LBE10210:
	.loc 11 661 0
	ldm	r2, {r1, r2}
.LVL2873:
	bl	cdtUpdate
.LVL2874:
.LBB10211:
.LBB10199:
.LBB10174:
.LBB10173:
	.loc 4 1791 0
	cmp	r9, #0
	bne	.L2911
.LVL2875:
	.loc 4 1797 0
	ldr	r3, [sp, #4]
	str	r9, [sp, #60]
.LVL2876:
	str	r3, [sp, #56]
.LBE10173:
.LBE10174:
	.loc 11 525 0
	add	r3, sp, #64
	ldmdb	r3, {r0, r1}
	bl	cdtFindWithExtra
.LVL2877:
	.loc 11 526 0
	cmp	r0, #0
	beq	.L2912
.LVL2878:
.LBB10175:
.LBB10176:
	.loc 4 1803 0
	ldr	r3, [r0]
	and	r3, r3, #15
	cmp	r3, #3
	bne	.L2913
.LVL2879:
.LBE10176:
.LBE10175:
.LBB10178:
	.loc 11 555 0
	ldr	r3, [r6, r7]
	cmp	r3, #0
	beq	.L2915
.LVL2880:
.LBB10179:
.LBB10180:
	.loc 31 169 0
	tst	r3, #2
	bne	.L2916
.LVL2881:
	.loc 31 171 0
	tst	r3, #1
	bne	.L2948
.LVL2882:
.L2916:
.LBE10180:
.LBE10179:
	.loc 11 558 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC156
.LVL2883:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC156
	ldr	r3, .L2950
.LVL2884:
	movw	r2, #558
	bl	_assert_fail
.LVL2885:
.L2948:
	.loc 11 559 0
	bic	r8, r8, #-16777216
.LVL2886:
	lsr	r3, r3, #16
.LVL2887:
	bic	r8, r8, #15
	lsl	r8, r8, #8
	lsl	r3, r3, #16
	add	r8, r8, #805306368
	cmp	r8, r3
	bne	.L2917
	.loc 11 562 0
	add	lr, r7, #60
.LBB10181:
.LBB10182:
	.loc 13 95 0
	lsr	r3, r5, #5
.LBE10182:
.LBE10181:
	.loc 11 562 0
	add	r2, r6, lr
	ldr	ip, [r0, #4]
.LVL2888:
.LBB10192:
.LBB10187:
	.loc 13 95 0
	add	r2, r2, #3
.LBE10187:
.LBE10192:
	.loc 11 562 0
	mov	r1, #0
.LBB10193:
.LBB10188:
	.loc 13 95 0
	lsr	r2, r2, #5
.LBE10188:
.LBE10193:
	.loc 11 562 0
	str	r1, [r6, r7]
.LVL2889:
	str	r1, [r5, #4]
.LVL2890:
.LBB10194:
.LBB10189:
	.loc 13 95 0
	add	r2, r2, #1
.LBE10189:
.LBE10194:
	.loc 11 562 0
	str	r1, [r5, #8]
.LVL2891:
.LBB10195:
.LBB10190:
	.loc 13 95 0
	cmp	r3, r2
.LBE10190:
.LBE10195:
	.loc 11 562 0
	str	r1, [r5, #12]
.LVL2892:
	str	r1, [r5, #16]
.LVL2893:
	str	r1, [r5, #20]
.LVL2894:
	str	r1, [r5, #24]
.LVL2895:
	str	r1, [r5, #28]
.LVL2896:
	str	r1, [r5, #32]
.LVL2897:
	str	r1, [r5, #36]
.LVL2898:
	str	r1, [r5, #40]
.LVL2899:
	str	r1, [r5, #44]
.LVL2900:
	str	r1, [r5, #48]
.LVL2901:
	str	r1, [r5, #52]
.LVL2902:
	str	r1, [r5, #56]
.LVL2903:
	str	r1, [r6, lr]
.LVL2904:
.LBB10196:
.LBB10191:
	.loc 13 95 0
	bcs	.L2921
.L2931:
.LVL2905:
.LBB10183:
.LBB10184:
	.loc 14 212 0
	lsl	r1, r3, #5
.LVL2906:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r1, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB10185:
.LBB10186:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL2907:
	.arm
	.syntax unified
.LBE10186:
.LBE10185:
.LBE10184:
.LBE10183:
	.loc 13 95 0
	add	r3, r3, #1
.LVL2908:
	cmp	r3, r2
	bne	.L2931
.LVL2909:
.L2921:
.LBE10191:
.LBE10196:
.LBE10178:
.LBB10197:
.LBB10177:
	.loc 4 1806 0
	bic	r1, ip, #4080
	bic	r1, r1, #15
.LBE10177:
.LBE10197:
	.loc 11 574 0
	cmp	r1, #0
	beq	.L2915
	.loc 11 575 0
	lsl	r2, r4, #12
	mov	r0, #1
.LVL2910:
	orr	r2, r2, ip, lsl #20
	bl	flushPage
.LVL2911:
.L2915:
.LBE10199:
.LBE10211:
	.loc 11 663 0
	add	r4, r4, #16
.LVL2912:
	b	.L2908
.LVL2913:
.L2905:
.LBE10275:
.LBB10276:
.LBB10264:
.LBB10244:
	.loc 11 540 0
	bic	r8, r8, #-16777216
.LVL2914:
	and	r2, r2, r10
.LVL2915:
	bic	r8, r8, #15
	lsl	r8, r8, #8
	add	r8, r8, #805306368
	cmp	r8, r2
	bne	.L2949
	ldr	r2, [r0, #4]
	.loc 11 542 0
	str	r9, [r6, r7]
.LVL2916:
.LBB10234:
.LBB10230:
	.loc 4 1806 0
	and	r1, r2, r10
.LBE10230:
.LBE10234:
.LBB10235:
.LBB10236:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r5, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB10237:
.LBB10238:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE10238:
.LBE10237:
.LBE10236:
.LBE10235:
	.loc 11 574 0
	cmp	r1, #0
	beq	.L2937
	.loc 11 575 0
	lsl	r3, r4, #12
	mov	r0, #0
.LVL2917:
	orr	r2, r3, r2, lsl #20
	bl	flushPage
.LVL2918:
	b	.L2937
.LVL2919:
.L2946:
.LBE10244:
.LBE10264:
	.loc 11 648 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC157
.LVL2920:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC157
	ldr	r3, .L2950+4
	mov	r2, #648
.LVL2921:
	bl	_assert_fail
.LVL2922:
.L2917:
.LBE10276:
.LBB10277:
.LBB10212:
.LBB10200:
.LBB10198:
	.loc 11 559 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC155
.LVL2923:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC155
	ldr	r3, .L2950
	movw	r2, #559
	bl	_assert_fail
.LVL2924:
.L2949:
.LBE10198:
.LBE10200:
.LBE10212:
.LBE10277:
.LBB10278:
.LBB10265:
.LBB10245:
	.loc 11 540 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC154
.LVL2925:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC154
	ldr	r3, .L2950
	mov	r2, #540
	bl	_assert_fail
.LVL2926:
.L2947:
.LBE10245:
.LBE10265:
.LBE10278:
.LBB10279:
	.loc 11 659 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC157
.LVL2927:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC157
	ldr	r3, .L2950+4
.LVL2928:
	movw	r2, #659
	bl	_assert_fail
.LVL2929:
.L2913:
.LBE10279:
.LBB10280:
.LBB10266:
.LBB10246:
.LBB10239:
.LBB10231:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL2930:
.L2912:
.LBE10231:
.LBE10239:
	.loc 11 526 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC152
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC152
	ldr	r3, .L2950
	movw	r2, #526
	bl	_assert_fail
.LVL2931:
.L2911:
.LBB10240:
.LBB10223:
	.loc 4 1791 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC151
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC151
	ldr	r3, .L2950+8
	movw	r2, #1791
	bl	_assert_fail
.LVL2932:
.L2910:
.LBE10223:
.LBE10240:
.LBE10246:
.LBE10266:
.LBB10267:
.LBB10261:
.LBB10256:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L2950+12
	movw	r2, #1636
	bl	_assert_fail
.LVL2933:
.L2951:
	.align	2
.L2950:
	.word	.LANCHOR4+3568
	.word	.LANCHOR4+3628
	.word	.LANCHOR4+952
	.word	.LANCHOR4+3400
.LBE10256:
.LBE10261:
.LBE10267:
.LBE10280:
	.cfi_endproc
.LFE338:
	.size	unmapAllPages, .-unmapAllPages
	.section	.boot.text
	.align	2
	.global	create_mapped_it_frame_cap
	.syntax unified
	.arm
	.type	create_mapped_it_frame_cap, %function
create_mapped_it_frame_cap:
.LFB308:
	.loc 38 159 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2934:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 38 159 0
	stm	sp, {r1, r2}
.LVL2935:
.LBB10292:
.LBB10293:
	.loc 4 1886 0
	and	r2, r1, #15
	cmp	r2, #5
.LBE10293:
.LBE10292:
	.loc 38 159 0
	ldr	r6, [sp, #32]
.LBB10297:
.LBB10294:
	.loc 4 1886 0
	bne	.L2960
.LBE10294:
.LBE10297:
	.loc 38 163 0
	ldr	r2, [sp, #36]
.LBB10298:
.LBB10295:
	.loc 4 1889 0
	bic	r1, r1, #16320
	mov	r5, r0
	bic	r1, r1, #63
.LVL2936:
.LBE10295:
.LBE10298:
	.loc 38 163 0
	cmp	r2, #0
	.loc 38 161 0
	lsr	r2, r6, #20
.LVL2937:
	.loc 38 163 0
	bne	.L2961
	ldr	r2, [r1, r2, lsl #2]
.LVL2938:
.LBB10299:
	.loc 38 174 0
	ubfx	r6, r6, #12, #8
.LVL2939:
.LBB10300:
.LBB10301:
	.loc 4 828 0
	and	r1, r2, #3
.LVL2940:
	cmp	r1, #1
	bne	.L2962
.LVL2941:
.LBE10301:
.LBE10300:
.LBB10303:
.LBB10304:
	.loc 46 46 0
	bic	r2, r2, #1020
.LVL2942:
.LBE10304:
.LBE10303:
.LBB10307:
.LBB10308:
	.loc 4 1610 0
	ubfx	r1, r3, #0, #12
.LBE10308:
.LBE10307:
.LBB10311:
.LBB10305:
	.loc 46 46 0
	bic	r2, r2, #3
.LBE10305:
.LBE10311:
.LBB10312:
.LBB10309:
	.loc 4 1610 0
	cmp	r1, #0
.LBE10309:
.LBE10312:
.LBB10313:
.LBB10306:
	.loc 46 46 0
	add	r2, r2, #-805306368
.LVL2943:
.LBE10306:
.LBE10313:
.LBB10314:
.LBB10310:
	.loc 4 1599 0
	bic	r1, r2, #4080
	.loc 4 1608 0
	ubfx	r2, r2, #10, #2
.LVL2944:
	.loc 4 1599 0
	bic	r1, r1, #15
	.loc 4 1608 0
	lsl	r2, r2, #24
	.loc 4 1599 0
	orr	r6, r1, r6
.LVL2945:
	.loc 4 1610 0
	bne	.L2958
.LVL2946:
	.loc 4 1614 0
	bic	r4, r3, #4080
	bic	r4, r4, #15
	orr	r2, r2, r4, lsr #8
.LVL2947:
	orr	r4, r2, #402653185
.LVL2948:
.L2956:
.LBE10310:
.LBE10314:
.LBE10299:
	.loc 38 186 0
	add	r3, sp, #16
	str	r4, [sp, #8]
	str	r6, [sp, #12]
	ldmdb	r3, {r0, r1}
	bl	map_it_frame_cap
.LVL2949:
	.loc 38 188 0
	mov	r0, r5
	.loc 38 187 0
	str	r4, [r5]
	str	r6, [r5, #4]
.LVL2950:
	.loc 38 188 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
.LVL2951:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL2952:
.L2961:
	.cfi_restore_state
.LBB10316:
.LBB10317:
	.loc 4 1610 0
	ubfx	r0, r3, #0, #12
.LVL2953:
	.loc 4 1599 0
	orr	r6, r1, r2
.LVL2954:
	.loc 4 1610 0
	cmp	r0, #0
	.loc 4 1614 0
	biceq	r3, r3, #4080
.LVL2955:
	biceq	r3, r3, #15
	lsreq	r3, r3, #8
	orreq	r4, r3, #1476395009
	.loc 4 1610 0
	beq	.L2956
.LVL2956:
.L2958:
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC118
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC118
	ldr	r3, .L2963
	movw	r2, #1610
	bl	_assert_fail
.LVL2957:
.L2960:
.LBE10317:
.LBE10316:
.LBB10318:
.LBB10296:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL2958:
.L2962:
.LBE10296:
.LBE10318:
.LBB10319:
.LBB10315:
.LBB10302:
	bl	pde_pde_coarse_get_address.part.93
.LVL2959:
.L2964:
	.align	2
.L2963:
	.word	.LANCHOR4+652
.LBE10302:
.LBE10315:
.LBE10319:
	.cfi_endproc
.LFE308:
	.size	create_mapped_it_frame_cap, .-create_mapped_it_frame_cap
	.align	2
	.global	create_unmapped_it_frame_cap
	.syntax unified
	.arm
	.type	create_unmapped_it_frame_cap, %function
create_unmapped_it_frame_cap:
.LFB307:
	.loc 38 144 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2960:
	.loc 38 145 0
	cmp	r2, #0
.LBB10322:
.LBB10323:
	.loc 4 1610 0
	ubfx	r2, r1, #0, #12
.LVL2961:
.LBE10323:
.LBE10322:
	.loc 38 145 0
	moveq	r3, #0
	movne	r3, #1073741824
.LVL2962:
.LBB10327:
.LBB10324:
	.loc 4 1610 0
	cmp	r2, #0
	bne	.L2970
.LVL2963:
	.loc 4 1616 0
	bic	r1, r1, #4080
.LVL2964:
	str	r2, [r0, #4]
.LVL2965:
	bic	r1, r1, #15
	orr	r1, r3, r1, lsr #8
	orr	r1, r1, #402653185
	str	r1, [r0]
.LBE10324:
.LBE10327:
	.loc 38 155 0
	bx	lr
.LVL2966:
.L2970:
.LBB10328:
.LBB10325:
	.loc 4 1610 0
	movw	r1, #:lower16:.LC29
.LVL2967:
	movw	r0, #:lower16:.LC118
.LVL2968:
.LBE10325:
.LBE10328:
	.loc 38 144 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB10329:
.LBB10326:
	.loc 4 1610 0
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC118
	ldr	r3, .L2971
	movw	r2, #1610
	bl	_assert_fail
.LVL2969:
.L2972:
	.align	2
.L2971:
	.word	.LANCHOR4+652
.LBE10326:
.LBE10329:
	.cfi_endproc
.LFE307:
	.size	create_unmapped_it_frame_cap, .-create_unmapped_it_frame_cap
	.text
	.align	2
	.global	cdtInsert
	.syntax unified
	.arm
	.type	cdtInsert, %function
cdtInsert:
.LFB518:
	.loc 3 654 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2970:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 3 654 0
	mov	r6, r1
	ldr	r5, [r1]
.LVL2971:
	mov	r4, r0
.LBB10345:
.LBB10346:
	.loc 4 997 0
	and	r7, r5, #14
	cmp	r7, #14
	.loc 4 999 0
	uxtbeq	r3, r5
.LVL2972:
	.loc 4 998 0
	andne	r3, r5, #15
.LBE10346:
.LBE10345:
	.loc 3 656 0
	cmp	r3, #0
	beq	.L3002
	.loc 3 657 0
	cmp	r0, #0
	beq	.L2977
	ldr	r0, [r0]
.LVL2973:
.LBB10347:
.LBB10348:
	.loc 4 997 0 discriminator 1
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0 discriminator 1
	uxtbeq	r3, r0
.LVL2974:
	.loc 4 998 0 discriminator 1
	andne	r3, r0, #15
.LBE10348:
.LBE10347:
	.loc 3 657 0 discriminator 1
	cmp	r3, #0
	beq	.L3003
	.loc 3 658 0 discriminator 1
	bl	cap_get_capSpaceType.isra.178
.LVL2975:
	mov	r8, r0
	mov	r0, r5
	bl	cap_get_capSpaceType.isra.178
.LVL2976:
	cmp	r8, r0
	.loc 3 659 0 discriminator 1
	movne	r4, #0
.LVL2977:
	.loc 3 658 0 discriminator 1
	beq	.L3004
.L2977:
.LVL2978:
.LBB10349:
.LBB10350:
	.loc 3 649 0
	movw	r5, #:lower16:ksRootCTE
.LBE10350:
.LBE10349:
	.loc 3 666 0
	mov	r3, #0
.LBB10354:
.LBB10351:
	.loc 3 649 0
	movt	r5, #:upper16:ksRootCTE
.LBE10351:
.LBE10354:
	.loc 3 666 0
	str	r4, [r6, #12]
.LVL2979:
.LBB10355:
.LBB10352:
	.loc 3 649 0
	ldr	r0, [r5]
	mov	r1, r6
.LBE10352:
.LBE10355:
	.loc 3 666 0
	str	r3, [r6, #8]
.LBB10356:
.LBB10353:
	.loc 3 649 0
	bl	aaInsert
.LVL2980:
	str	r0, [r5]
.LVL2981:
.LBE10353:
.LBE10356:
	.loc 3 668 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL2982:
.L3004:
.LBB10357:
.LBB10358:
.LBB10359:
	.loc 4 997 0
	cmp	r7, #14
.LBE10359:
.LBE10358:
.LBE10357:
.LBB10368:
.LBB10369:
	.loc 4 469 0
	ldr	r3, [r4, #12]
.LBE10369:
.LBE10368:
.LBB10371:
.LBB10361:
.LBB10360:
	.loc 4 999 0
	uxtbeq	r5, r5
	.loc 4 998 0
	andne	r5, r5, #15
.LBE10360:
.LBE10361:
.LBB10362:
.LBB10363:
	.loc 36 162 0
	cmp	r5, #1
.LBE10363:
.LBE10362:
.LBE10371:
.LBB10372:
.LBB10370:
	.loc 4 469 0
	and	r3, r3, #31
.LBE10370:
.LBE10372:
	.loc 3 661 0
	add	r4, r3, #1
.LVL2983:
.LBB10373:
.LBB10366:
.LBB10364:
	.loc 36 162 0
	beq	.L2985
	cmp	r5, #3
	movne	r2, #32
	beq	.L2985
.LBE10364:
.LBE10366:
.LBE10373:
	.loc 3 662 0
	cmp	r4, r2
	beq	.L2989
.L3005:
.LVL2984:
.LBB10374:
.LBB10375:
	.loc 4 435 0
	bics	r3, r4, #31
	beq	.L2977
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC128
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC128
	ldr	r3, .L3006
	movw	r2, #435
	bl	_assert_fail
.LVL2985:
.L2985:
.LBE10375:
.LBE10374:
.LBB10376:
.LBB10367:
.LBB10365:
	.loc 36 162 0
	mov	r2, #2
.LBE10365:
.LBE10367:
.LBE10376:
	.loc 3 662 0
	cmp	r4, r2
	bne	.L3005
.L2989:
	.loc 3 663 0
	mov	r4, r3
.LVL2986:
	b	.L2977
.LVL2987:
.L3002:
	.loc 3 656 0 discriminator 1
	movw	r1, #:lower16:.LC84
.LVL2988:
	movw	r0, #:lower16:.LC150
.LVL2989:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC150
	ldr	r3, .L3006+4
	mov	r2, #656
	bl	_assert_fail
.LVL2990:
.L3003:
	.loc 3 657 0 discriminator 2
	movw	r1, #:lower16:.LC84
.LVL2991:
	movw	r0, #:lower16:.LC158
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC158
	ldr	r3, .L3006+4
	movw	r2, #657
	bl	_assert_fail
.LVL2992:
.L3007:
	.align	2
.L3006:
	.word	.LANCHOR4+2260
	.word	.LANCHOR4+3644
	.cfi_endproc
.LFE518:
	.size	cdtInsert, .-cdtInsert
	.align	2
	.syntax unified
	.arm
	.type	cdtInsert.constprop.272, %function
cdtInsert.constprop.272:
.LFB1025:
	.loc 3 653 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2993:
	ldr	r3, [r0]
.LVL2994:
	mov	r2, r0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB10392:
.LBB10393:
	.loc 4 997 0
	and	r1, r3, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL2995:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE10393:
.LBE10392:
	.loc 3 656 0
	cmp	r3, #0
	beq	.L3013
.LVL2996:
.LBB10394:
.LBB10395:
	.loc 3 649 0
	movw	r4, #:lower16:ksRootCTE
.LBE10395:
.LBE10394:
	.loc 3 666 0
	mov	r3, #0
.LBB10399:
.LBB10396:
	.loc 3 649 0
	movt	r4, #:upper16:ksRootCTE
.LBE10396:
.LBE10399:
	.loc 3 666 0
	str	r3, [r0, #8]
.LBB10400:
.LBB10397:
	.loc 3 649 0
	mov	r1, r2
	ldr	r0, [r4]
.LVL2997:
.LBE10397:
.LBE10400:
	.loc 3 666 0
	str	r3, [r2, #12]
.LVL2998:
.LBB10401:
.LBB10398:
	.loc 3 649 0
	bl	aaInsert
.LVL2999:
	str	r0, [r4]
.LVL3000:
	pop	{r4, pc}
.LVL3001:
.L3013:
.LBE10398:
.LBE10401:
	.loc 3 656 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC150
.LVL3002:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC150
	ldr	r3, .L3014
	mov	r2, #656
.LVL3003:
	bl	_assert_fail
.LVL3004:
.L3015:
	.align	2
.L3014:
	.word	.LANCHOR4+3644
	.cfi_endproc
.LFE1025:
	.size	cdtInsert.constprop.272, .-cdtInsert.constprop.272
	.section	.boot.text
	.align	2
	.global	create_bi_frame_cap
	.syntax unified
	.arm
	.type	create_bi_frame_cap, %function
create_bi_frame_cap:
.LFB471:
	.loc 25 236 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3005:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	.loc 25 236 0
	ldr	lr, [sp, #60]
	add	ip, sp, #8
	add	r4, sp, #16
	.loc 25 240 0
	add	r5, sp, #24
	.loc 25 236 0
	ldr	r6, [sp, #56]
	stm	ip, {r2, r3}
	stm	r4, {r0, r1}
	.loc 25 240 0
	mov	r0, r5
	ldm	ip, {r1, r2}
	mov	r3, r6
	str	lr, [sp]
	bl	create_mapped_it_frame_cap.constprop.265
.LVL3006:
	.loc 25 241 0
	ldm	r4, {r0, r1}
	bl	cap_get_capPtr
.LVL3007:
	mov	r3, r0
.LVL3008:
	ldm	r5, {r0, r1}
.LVL3009:
.LBB10402:
.LBB10403:
	.loc 25 122 0
	add	r3, r3, #112
.LVL3010:
	add	r2, sp, #32
	stm	r2, {r0, r1}
	stm	r3, {r0, r1}
	.loc 25 123 0
	mov	r0, r3
.LBE10403:
.LBE10402:
	.loc 25 242 0
	add	sp, sp, #40
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB10405:
.LBB10404:
	.loc 25 123 0
	b	cdtInsert.constprop.272
.LVL3011:
.LBE10404:
.LBE10405:
	.cfi_endproc
.LFE471:
	.size	create_bi_frame_cap, .-create_bi_frame_cap
	.align	2
	.global	create_domain_cap
	.syntax unified
	.arm
	.type	create_domain_cap, %function
create_domain_cap:
.LFB469:
	.loc 25 192 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3012:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 25 192 0
	stm	sp, {r0, r1}
	.loc 25 204 0
	ldm	sp, {r0, r1}
	bl	cap_get_capPtr
.LVL3013:
.LBB10416:
.LBB10417:
	.loc 25 122 0
	mov	r1, #62
.LBE10417:
.LBE10416:
	.loc 25 204 0
	mov	r3, r0
.LVL3014:
.LBB10420:
.LBB10418:
	.loc 25 122 0
	mov	r2, #0
	str	r1, [r0, #176]
	.loc 25 123 0
	add	r0, r0, #176
.LVL3015:
	.loc 25 122 0
	str	r2, [r3, #180]
.LBE10418:
.LBE10420:
	.loc 25 205 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB10421:
.LBB10419:
	.loc 25 123 0
	b	cdtInsert.constprop.272
.LVL3016:
.LBE10419:
.LBE10421:
	.cfi_endproc
.LFE469:
	.size	create_domain_cap, .-create_domain_cap
	.align	2
	.global	write_slot
	.syntax unified
	.arm
	.type	write_slot, %function
write_slot:
.LFB466:
	.loc 25 121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3017:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 25 121 0
	mov	ip, r0
	stm	sp, {r1, r2}
	.loc 25 122 0
	ldm	sp, {r0, r1}
.LVL3018:
	stm	ip, {r0, r2}
	.loc 25 123 0
	mov	r0, ip
	.loc 25 128 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 25 123 0
	b	cdtInsert.constprop.272
.LVL3019:
	.cfi_endproc
.LFE466:
	.size	write_slot, .-write_slot
	.text
	.align	2
	.global	capDL
	.syntax unified
	.arm
	.type	capDL, %function
capDL:
.LFB392:
	.loc 1 212 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3020:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB10546:
.LBB10547:
.LBB10548:
.LBB10549:
.LBB10550:
	.loc 1 145 0
	mov	r9, #61440
	.loc 1 142 0
	mov	r8, #0
.LBE10550:
.LBE10549:
.LBE10548:
.LBE10547:
.LBB10574:
.LBB10575:
	.loc 1 202 0
	movw	r3, #:lower16:intStateIRQNode
.LBE10575:
.LBE10574:
.LBB10593:
.LBB10594:
	.loc 1 159 0
	movw	r2, #:lower16:ksCurThread
.LBE10594:
.LBE10593:
.LBB10603:
.LBB10569:
.LBB10566:
.LBB10561:
	.loc 1 145 0
	movt	r9, 65535
	.loc 1 142 0
	movt	r8, 65535
.LBE10561:
.LBE10566:
.LBE10569:
.LBE10603:
.LBE10546:
	.loc 1 212 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
.LBB10690:
.LBB10604:
.LBB10590:
	.loc 1 202 0
	movt	r3, #:upper16:intStateIRQNode
.LBE10590:
.LBE10604:
.LBB10605:
.LBB10600:
	.loc 1 159 0
	movt	r2, #:upper16:ksCurThread
.LBE10600:
.LBE10605:
.LBB10606:
.LBB10591:
	.loc 1 202 0
	str	r3, [sp]
.LBE10591:
.LBE10606:
.LBB10607:
.LBB10601:
	.loc 1 159 0
	str	r2, [sp, #4]
.L3023:
.LBE10601:
.LBE10607:
.LBB10608:
.LBB10609:
	.loc 2 125 0
	mvn	r2, #1040384
.L3025:
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L3025
	.loc 2 126 0
	ldr	r1, [r2, #-4095]
	uxtb	r1, r1
.LVL3021:
.LBE10609:
.LBE10608:
	.loc 1 219 0
	cmp	r1, #255
	bne	.L3025
.LBB10610:
.LBB10611:
.LBB10612:
.LBB10613:
	.loc 2 125 0
	mvn	r4, #1040384
.LVL3022:
.L3027:
	ldr	r3, [r4, #-3943]
	tst	r3, #1
	beq	.L3027
	.loc 2 126 0
	ldr	r5, [r4, #-4095]
	uxtb	r5, r5
.LBE10613:
.LBE10612:
	.loc 1 30 0
	cmp	r5, #255
	beq	.L3027
	.loc 1 33 0
	cmp	r5, #170
	beq	.L3030
.L3029:
.LVL3023:
.LBE10611:
.LBE10610:
	.loc 1 225 0
	sub	r3, r5, #240
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L3023
.L3077:
	.word	.L3032
	.word	.L3047
	.word	.L3053
	.word	.L3059
	.word	.L3068
	.word	.L3040
	.word	.L3023
	.word	.L3023
	.word	.L3074
	.word	.L3076
.LVL3024:
.L3030:
.LBB10619:
.LBB10618:
.LBB10614:
.LBB10615:
.LBB10616:
.LBB10617:
	.loc 2 125 0
	ldr	r3, [r4, #-3943]
	tst	r3, #1
	beq	.L3030
	.loc 2 126 0
	ldr	r3, [r4, #-4095]
	uxtb	r3, r3
.LBE10617:
.LBE10616:
	.loc 1 35 0
	cmp	r3, #255
	beq	.L3027
	.loc 1 38 0
	sub	r2, r3, #160
	cmp	r2, #2
	bls	.L3023
	.loc 1 49 0
	sub	r3, r3, #20
	uxtb	r5, r3
	cmp	r5, #19
	movhi	r5, r1
	b	.L3029
.LVL3025:
.L3076:
.LBE10615:
.LBE10614:
.LBE10618:
.LBE10619:
.LBB10620:
.LBB10621:
	.loc 2 119 0
	mvn	r2, #1040384
.L3121:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3121
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
.LVL3026:
.LBE10621:
.LBE10620:
.LBE10690:
	.loc 1 303 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3027:
.L3059:
	.cfi_restore_state
.LBB10691:
.LBB10622:
	.loc 1 269 0
	add	r0, sp, #8
	bl	getArg32
.LVL3028:
	.loc 1 270 0
	cmp	r0, #0
	beq	.L3146
.L3060:
.LVL3029:
	.loc 1 271 0
	mov	r1, r5
	b	.L3027
.L3040:
.LBE10622:
.LBB10632:
	.loc 1 240 0
	add	r0, sp, #12
	bl	getArg32
.LVL3030:
	.loc 1 241 0
	cmp	r0, #0
	bne	.L3060
	.loc 1 244 0
	ldr	r7, [sp, #12]
.LVL3031:
.LBB10570:
.LBB10567:
	.loc 1 139 0
	mov	r6, r0
	sub	r5, r7, #4
.LVL3032:
	add	r7, r7, #1020
.LVL3033:
	b	.L3045
.LVL3034:
.L3149:
.LBB10562:
.LBB10551:
.LBB10552:
	.loc 31 171 0
	tst	r4, #1
	bne	.L3147
.LVL3035:
.L3043:
.LBE10552:
.LBE10551:
.LBE10562:
	.loc 1 139 0
	cmp	r5, r7
	add	r6, r6, #1
.LVL3036:
	beq	.L3148
.LVL3037:
.L3045:
.LBB10563:
	.loc 1 140 0
	ldr	r4, [r5, #4]!
.LVL3038:
.LBB10554:
.LBB10553:
	.loc 31 169 0
	tst	r4, #2
	beq	.L3149
.LVL3039:
.LBE10553:
.LBE10554:
	.loc 1 145 0
	tst	r4, r9
	beq	.L3144
.LVL3040:
.L3044:
.LBB10555:
.LBB10556:
	.loc 1 109 0
	uxtb	r0, r6
.LBE10556:
.LBE10555:
.LBE10563:
	.loc 1 139 0
	add	r6, r6, #1
.LVL3041:
.LBB10564:
.LBB10558:
.LBB10557:
	.loc 1 109 0
	bl	putEncodedChar
.LVL3042:
	.loc 1 110 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3043:
	.loc 1 111 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3044:
	.loc 1 112 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3045:
.LBE10557:
.LBE10558:
.LBB10559:
.LBB10560:
	.loc 1 109 0
	uxtb	r0, r4
	bl	putEncodedChar
.LVL3046:
	.loc 1 110 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL3047:
	.loc 1 111 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL3048:
	.loc 1 112 0
	lsr	r0, r4, #24
	bl	putEncodedChar
.LVL3049:
.LBE10560:
.LBE10559:
.LBE10564:
	.loc 1 139 0
	cmp	r5, r7
	bne	.L3045
.LVL3050:
.L3148:
.LBE10567:
.LBE10570:
.LBB10571:
.LBB10572:
	.loc 2 119 0
	mvn	r2, #1040384
.L3119:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3119
.LBE10572:
.LBE10571:
.LBE10632:
.LBB10633:
.LBB10634:
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3051:
.L3047:
	ldr	r6, .L3153
.LBE10634:
.LBE10633:
.LBB10640:
.LBB10602:
	.loc 1 159 0
	ldr	r3, [sp, #4]
	add	r7, r6, #2048
	ldr	r0, [r3]
	bl	sendWord
.LVL3052:
.L3051:
.LBB10595:
	.loc 1 161 0
	ldr	r4, [r6, #-20]
.LVL3053:
	.loc 1 162 0
	cmp	r4, #0
	beq	.L3048
	.loc 1 163 0
	ldr	r5, [r6, #-16]
	pld	[r6]
	cmp	r5, r4
	beq	.L3049
.L3050:
.LVL3054:
.LBB10596:
.LBB10597:
	.loc 1 109 0
	uxtb	r0, r4
	bl	putEncodedChar
.LVL3055:
	.loc 1 110 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL3056:
	.loc 1 111 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL3057:
	.loc 1 112 0
	lsr	r0, r4, #24
	bl	putEncodedChar
.LVL3058:
.LBE10597:
.LBE10596:
	.loc 1 165 0
	ldr	r4, [r4, #124]
.LVL3059:
	.loc 1 163 0
	ldr	r5, [r6, #-16]
	cmp	r4, r5
	bne	.L3050
.L3049:
.LVL3060:
.LBB10598:
.LBB10599:
	.loc 1 109 0
	uxtb	r0, r5
	bl	putEncodedChar
.LVL3061:
	.loc 1 110 0
	ubfx	r0, r5, #8, #8
	bl	putEncodedChar
.LVL3062:
	.loc 1 111 0
	ubfx	r0, r5, #16, #8
	bl	putEncodedChar
.LVL3063:
	.loc 1 112 0
	lsr	r0, r5, #24
	bl	putEncodedChar
.LVL3064:
.L3048:
	add	r6, r6, #8
.LBE10599:
.LBE10598:
.LBE10595:
	.loc 1 160 0
	cmp	r6, r7
	bne	.L3051
.LBE10602:
.LBE10640:
.LBB10641:
.LBB10642:
	.loc 2 119 0
	mvn	r2, #1040384
.L3120:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3120
.LBE10642:
.LBE10641:
.LBB10643:
.LBB10635:
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3065:
.L3074:
.LBE10635:
.LBE10643:
.LBB10644:
.LBB10645:
.LBB10646:
	.loc 1 109 0
	mov	r0, #224
	bl	putEncodedChar
.LVL3066:
	.loc 1 110 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3067:
	.loc 1 111 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3068:
	.loc 1 112 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3069:
.LBE10646:
.LBE10645:
.LBB10647:
.LBB10648:
	.loc 1 109 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3070:
	.loc 1 110 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3071:
	.loc 1 111 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3072:
	.loc 1 112 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3073:
.LBE10648:
.LBE10647:
.LBE10644:
.LBB10649:
.LBB10636:
	.loc 2 119 0
	mvn	r2, #1040384
.L3075:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3075
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3074:
.L3053:
.LBE10636:
.LBE10649:
.LBB10650:
	.loc 1 258 0
	add	r0, sp, #12
	bl	getArg32
.LVL3075:
	.loc 1 259 0
	cmp	r0, #0
	bne	.L3060
.LVL3076:
.LBB10651:
.LBB10652:
	.loc 1 174 0
	ldr	r3, [sp, #12]
.LVL3077:
.LBB10653:
.LBB10654:
	.loc 4 365 0
	ldr	r4, [r3, #4]
.LVL3078:
.LBE10654:
.LBE10653:
	.loc 1 175 0
	ldr	r5, [r3]
.LVL3079:
	.loc 1 176 0
	bics	r4, r4, #15
.LVL3080:
	.loc 1 175 0
	bic	r5, r5, #15
.LVL3081:
	.loc 1 176 0
	beq	.L3055
	.loc 1 179 0
	cmp	r4, r5
	beq	.L3056
.LVL3082:
.L3057:
.LBB10655:
.LBB10656:
	.loc 1 109 0
	uxtb	r0, r4
	bl	putEncodedChar
.LVL3083:
	.loc 1 110 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL3084:
	.loc 1 111 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL3085:
	.loc 1 112 0
	lsr	r0, r4, #24
	bl	putEncodedChar
.LVL3086:
.LBE10656:
.LBE10655:
	.loc 1 181 0
	ldr	r4, [r4, #132]
.LVL3087:
	.loc 1 179 0
	cmp	r5, r4
	bne	.L3057
.L3056:
	.loc 1 183 0
	mov	r0, r4
	bl	sendWord
.LVL3088:
.L3055:
.LBE10652:
.LBE10651:
.LBB10657:
.LBB10658:
	.loc 2 119 0
	mvn	r2, #1040384
.L3058:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3058
.LBE10658:
.LBE10657:
.LBE10650:
.LBB10659:
.LBB10637:
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3089:
.L3068:
	ldr	r3, [sp]
.LBE10637:
.LBE10659:
.LBB10660:
.LBB10592:
.LBB10576:
.LBB10577:
	.loc 1 190 0
	mov	r6, #0
	ldr	r4, [r3]
	add	r4, r4, #36
	b	.L3072
.LVL3090:
.L3071:
	add	r6, r6, #1
.LVL3091:
	add	r4, r4, #16
	cmp	r6, #256
	beq	.L3150
.LVL3092:
.L3072:
.LBB10578:
	.loc 1 191 0
	ldr	r5, [r4, #-36]
.LVL3093:
	pld	[r4, #-4]
.LBB10579:
.LBB10580:
	.loc 4 997 0
	and	r2, r5, #14
	.loc 4 998 0
	and	r3, r5, #15
	.loc 4 997 0
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r5
.LVL3094:
.LBE10580:
.LBE10579:
	.loc 1 192 0
	cmp	r3, #0
	beq	.L3071
.LBB10581:
.LBB10582:
	.loc 1 109 0
	uxtb	r0, r6
.LBE10582:
.LBE10581:
	.loc 1 191 0
	ldr	r7, [r4, #-32]
.LVL3095:
	pld	[r4]
.LBE10578:
	.loc 1 190 0
	add	r6, r6, #1
.LVL3096:
.LBB10589:
.LBB10584:
.LBB10583:
	.loc 1 109 0
	bl	putEncodedChar
.LVL3097:
	.loc 1 110 0
	mov	r0, #0
	add	r4, r4, #16
	bl	putEncodedChar
.LVL3098:
	.loc 1 111 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3099:
	.loc 1 112 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3100:
.LBE10583:
.LBE10584:
.LBB10585:
.LBB10586:
	.loc 1 109 0
	uxtb	r0, r5
	bl	putEncodedChar
.LVL3101:
	.loc 1 110 0
	ubfx	r0, r5, #8, #8
	bl	putEncodedChar
.LVL3102:
	.loc 1 111 0
	ubfx	r0, r5, #16, #8
	bl	putEncodedChar
.LVL3103:
	.loc 1 112 0
	lsr	r0, r5, #24
	bl	putEncodedChar
.LVL3104:
.LBE10586:
.LBE10585:
.LBB10587:
.LBB10588:
	.loc 1 109 0
	uxtb	r0, r7
	bl	putEncodedChar
.LVL3105:
	.loc 1 110 0
	ubfx	r0, r7, #8, #8
	bl	putEncodedChar
.LVL3106:
	.loc 1 111 0
	ubfx	r0, r7, #16, #8
	bl	putEncodedChar
.LVL3107:
	.loc 1 112 0
	lsr	r0, r7, #24
	bl	putEncodedChar
.LVL3108:
.LBE10588:
.LBE10587:
.LBE10589:
	.loc 1 190 0
	cmp	r6, #256
	bne	.L3072
.L3150:
.LBE10577:
.LBE10576:
.LBE10592:
.LBE10660:
.LBB10661:
.LBB10662:
	.loc 2 119 0
	mvn	r2, #1040384
.L3073:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3073
.LBE10662:
.LBE10661:
.LBB10663:
.LBB10638:
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3109:
.L3032:
.LBE10638:
.LBE10663:
.LBB10664:
	.loc 1 229 0
	add	r0, sp, #12
	bl	getArg32
.LVL3110:
	.loc 1 230 0
	cmp	r0, #0
	bne	.L3060
	.loc 1 233 0
	ldr	r3, [sp, #12]
.LVL3111:
.LBB10665:
.LBB10666:
.LBB10667:
	.loc 1 124 0
	mov	r7, #0
	.loc 1 122 0
	mov	r6, #64512
.LBE10667:
	.loc 1 119 0
	mov	r5, r0
.LVL3112:
.LBB10678:
	.loc 1 124 0
	movt	r7, 65520
	.loc 1 122 0
	movt	r6, 65535
	add	r10, r3, #16320
	sub	fp, r3, #4
	add	r10, r10, #60
	b	.L3037
.LVL3113:
.L3034:
	.loc 1 124 0
	cmp	r1, #2
	beq	.L3151
.LVL3114:
.L3036:
.LBE10678:
	.loc 1 119 0
	cmp	r10, fp
	add	r5, r5, #1
.LVL3115:
	beq	.L3152
.LVL3116:
.L3037:
.LBB10679:
	.loc 1 120 0
	ldr	r4, [fp, #4]!
.LVL3117:
.LBB10668:
.LBB10669:
	.loc 4 748 0
	and	r1, r4, #3
.LBE10669:
.LBE10668:
	.loc 1 122 0
	cmp	r1, #1
	bne	.L3034
.LVL3118:
	tst	r4, r6
	beq	.L3036
.LVL3119:
.L3035:
	.loc 1 128 0
	cmp	r5, #3584
.LBB10670:
.LBB10671:
	.loc 1 109 0
	uxtb	r0, r5
.LBE10671:
.LBE10670:
	.loc 1 128 0
	bcs	.L3036
.LBB10674:
.LBB10672:
	.loc 1 109 0
	bl	putEncodedChar
.LVL3120:
	.loc 1 110 0
	ubfx	r0, r5, #8, #8
.LBE10672:
.LBE10674:
.LBE10679:
	.loc 1 119 0
	add	r5, r5, #1
.LVL3121:
.LBB10680:
.LBB10675:
.LBB10673:
	.loc 1 110 0
	bl	putEncodedChar
.LVL3122:
	.loc 1 111 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3123:
	.loc 1 112 0
	mov	r0, #0
	bl	putEncodedChar
.LVL3124:
.LBE10673:
.LBE10675:
.LBB10676:
.LBB10677:
	.loc 1 109 0
	uxtb	r0, r4
	bl	putEncodedChar
.LVL3125:
	.loc 1 110 0
	ubfx	r0, r4, #8, #8
	bl	putEncodedChar
.LVL3126:
	.loc 1 111 0
	ubfx	r0, r4, #16, #8
	bl	putEncodedChar
.LVL3127:
	.loc 1 112 0
	lsr	r0, r4, #24
	bl	putEncodedChar
.LVL3128:
.LBE10677:
.LBE10676:
.LBE10680:
	.loc 1 119 0
	cmp	r10, fp
	bne	.L3037
.LVL3129:
.L3152:
.LBE10666:
.LBE10665:
.LBB10683:
.LBB10684:
	.loc 2 119 0
	mvn	r2, #1040384
.L3118:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L3118
.LBE10684:
.LBE10683:
.LBE10664:
.LBB10686:
.LBB10639:
	.loc 2 120 0
	mov	r3, #187
	str	r3, [r2, #-4031]
	b	.L3023
.LVL3130:
.L3147:
.LBE10639:
.LBE10686:
.LBB10687:
.LBB10573:
.LBB10568:
.LBB10565:
	.loc 1 142 0
	tst	r4, r8
	bne	.L3044
.LVL3131:
.L3144:
	.loc 1 145 0
	tst	r4, #48
	beq	.L3043
	b	.L3044
.LVL3132:
.L3151:
.LBE10565:
.LBE10568:
.LBE10573:
.LBE10687:
.LBB10688:
.LBB10685:
.LBB10682:
.LBB10681:
	.loc 1 124 0
	tst	r4, r7
	bne	.L3035
	tst	r4, #3072
	beq	.L3036
	b	.L3035
.LVL3133:
.L3146:
.LBE10681:
.LBE10682:
.LBE10685:
.LBE10688:
.LBB10689:
	.loc 1 273 0
	add	r0, sp, #12
.LVL3134:
	bl	getArg32
.LVL3135:
	.loc 1 274 0
	cmp	r0, #0
	bne	.L3060
.LBB10623:
.LBB10624:
	.loc 1 190 0
	ldr	r3, [sp, #12]
	mov	r2, #1
.LBE10624:
.LBE10623:
	.loc 1 278 0
	ldr	r4, [sp, #8]
.LVL3136:
.LBB10629:
.LBB10628:
	.loc 1 190 0
	lsls	r7, r2, r3
	addne	r4, r4, #80
.LVL3137:
	movne	r5, r0
.LVL3138:
	beq	.L3067
.LVL3139:
.L3066:
.LBB10625:
	.loc 1 191 0
	ldr	r6, [r4, #-80]
.LVL3140:
	pld	[r4]
.LBB10626:
.LBB10627:
	.loc 4 997 0
	and	r2, r6, #14
	.loc 4 998 0
	and	r3, r6, #15
	.loc 4 997 0
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r6
.LVL3141:
.LBE10627:
.LBE10626:
	.loc 1 192 0
	cmp	r3, #0
	beq	.L3065
	.loc 1 191 0
	ldr	r10, [r4, #-76]
	.loc 1 193 0
	mov	r0, r5
	bl	sendWord
.LVL3142:
	.loc 1 194 0
	mov	r0, r6
	bl	sendWord
.LVL3143:
	.loc 1 195 0
	mov	r0, r10
	bl	sendWord
.LVL3144:
.L3065:
.LBE10625:
	.loc 1 190 0
	add	r5, r5, #1
.LVL3145:
	add	r4, r4, #16
	cmp	r5, r7
	bne	.L3066
.LVL3146:
.L3067:
.LBE10628:
.LBE10629:
.LBB10630:
.LBB10631:
	.loc 2 119 0
	mvn	r3, #1040384
.L3062:
	ldr	r2, [r3, #-3943]
	tst	r2, #16384
	beq	.L3062
	.loc 2 120 0
	mov	r2, #187
	str	r2, [r3, #-4031]
.LBE10631:
.LBE10630:
.LBE10689:
	.loc 1 281 0
	b	.L3023
.L3154:
	.align	2
.L3153:
	.word	ksReadyQueues+20
.LBE10691:
	.cfi_endproc
.LFE392:
	.size	capDL, .-capDL
	.align	2
	.global	unmapAllPageTables
	.syntax unified
	.arm
	.type	unmapAllPageTables, %function
unmapAllPageTables:
.LFB334:
	.loc 11 460 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3147:
.LBB10793:
.LBB10794:
.LBB10795:
	.loc 4 1608 0
	ubfx	r3, r0, #10, #2
.LBE10795:
.LBE10794:
.LBE10793:
	.loc 11 460 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB10840:
.LBB10802:
.LBB10796:
	.loc 4 1608 0
	lsl	r3, r3, #24
.LBE10796:
.LBE10802:
.LBE10840:
.LBB10841:
.LBB10842:
.LBB10843:
	.loc 4 1797 0
	mov	r10, #61440
.LBE10843:
.LBE10842:
.LBE10841:
.LBB10868:
.LBB10803:
.LBB10797:
	.loc 4 1596 0
	bic	fp, r0, #4080
.LBE10797:
.LBE10803:
.LBE10868:
.LBB10869:
.LBB10850:
.LBB10851:
	.file 47 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/machine.h"
	.loc 47 24 0
	mov	r8, #64512
.LBE10851:
.LBE10850:
.LBE10869:
	.loc 11 460 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	orr	r2, r3, #1610612737
.LBB10870:
.LBB10854:
.LBB10844:
	.loc 4 1797 0
	movt	r10, 65535
	orr	r3, r3, #1073741825
.LBE10844:
.LBE10854:
.LBE10870:
	.loc 11 460 0
	mov	r9, r0
.LBB10871:
.LBB10804:
.LBB10798:
	.loc 4 1596 0
	bic	fp, fp, #15
.LBE10798:
.LBE10804:
	.loc 11 480 0
	mov	r4, r0
.LBE10871:
.LBB10872:
.LBB10855:
.LBB10852:
	.loc 47 24 0
	movt	r8, 65535
.LBE10852:
.LBE10855:
.LBB10856:
.LBB10845:
	.loc 4 1785 0
	mov	r5, #1
	str	r3, [sp, #12]
	.loc 4 1797 0
	and	r10, r10, r0
	.loc 4 1785 0
	ubfx	r3, r0, #0, #12
	str	r2, [sp, #8]
	str	r3, [sp]
	str	r10, [sp, #4]
.LVL3148:
.L3178:
	ldr	r2, [r4]
	sub	r6, r5, #1
.LVL3149:
	and	r3, r2, #3
.L3156:
.LVL3150:
.LBE10845:
.LBE10856:
.LBE10872:
	.loc 11 464 0
	cmp	r3, #1
	beq	.L3157
	bcc	.L3158
	cmp	r3, #2
	bne	.L3156
.LVL3151:
	.loc 11 477 0
	tst	r2, #262144
.LBB10873:
.LBB10805:
.LBB10799:
	.loc 4 1616 0
	mov	r10, #0
	orr	r1, fp, r6
	movt	r10, 65520
.LBE10799:
.LBE10805:
.LBE10873:
	.loc 11 477 0
	beq	.L3163
.LVL3152:
.LBB10874:
.LBB10806:
.LBB10800:
	.loc 4 1616 0
	ldr	r3, [sp, #8]
	and	r2, r2, r10
.LVL3153:
	add	r2, r2, #-805306368
	str	r1, [sp, #36]
.LVL3154:
.LBE10800:
.LBE10806:
	.loc 11 480 0
	add	r1, sp, #32
.LBB10807:
.LBB10801:
	.loc 4 1616 0
	orr	r2, r3, r2, lsr #8
	str	r2, [sp, #32]
.LBE10801:
.LBE10807:
	.loc 11 480 0
	ldm	r1, {r0, r1}
	bl	cdtFind
.LVL3155:
	.loc 11 481 0
	subs	r2, r0, #0
	beq	.L3191
	ldr	r7, [r2]
.LVL3156:
	ldr	r2, [r2, #4]
.LVL3157:
.LBB10808:
.LBB10809:
.LBB10810:
	.loc 4 1635 0
	and	r1, r7, #15
	cmp	r1, #1
	bne	.L3173
.LVL3158:
.LBE10810:
.LBE10809:
.LBB10812:
.LBB10813:
	.loc 4 1747 0
	ubfx	r2, r2, #0, #12
.LVL3159:
	bic	ip, r7, #50331648
.LVL3160:
.LBE10813:
.LBE10812:
.LBE10808:
	.loc 11 483 0
	add	r1, sp, #16
.LBB10817:
.LBB10815:
.LBB10814:
	.loc 4 1747 0
	str	r2, [sp, #20]
.LVL3161:
	str	ip, [sp, #16]
.LBE10814:
.LBE10815:
.LBE10817:
	.loc 11 483 0
	ldm	r1, {r1, r2}
	bl	cdtUpdate
.LVL3162:
.LBB10818:
.LBB10819:
.LBB10820:
	.loc 11 613 0
	ldr	r2, [r4]
.LVL3163:
	cmp	r2, #0
	beq	.L3158
.LVL3164:
	.loc 11 617 0
	and	r1, r2, #3
	cmp	r1, #2
	bne	.L3192
.LVL3165:
	.loc 11 618 0
	tst	r2, #262144
	beq	.L3193
.LVL3166:
	.loc 11 619 0
	bic	r7, r7, #-16777216
.LVL3167:
	and	r3, r2, r10
	bic	r7, r7, #15
	lsl	r7, r7, #8
	add	r7, r7, #805306368
	cmp	r7, r3
	bne	.L3169
.LVL3168:
.LBB10821:
.LBB10822:
	.loc 13 95 0
	add	r1, r4, #63
	lsr	r3, r4, #5
	lsr	r1, r1, #5
.LBE10822:
.LBE10821:
	.loc 11 622 0
	mov	r2, #0
.LVL3169:
	str	r2, [r4]
.LVL3170:
.LBB10830:
.LBB10827:
	.loc 13 95 0
	add	r1, r1, #1
.LBE10827:
.LBE10830:
	.loc 11 622 0
	str	r2, [r4, #4]
.LVL3171:
.LBB10831:
.LBB10828:
	.loc 13 95 0
	cmp	r1, r3
.LBE10828:
.LBE10831:
	.loc 11 622 0
	str	r2, [r4, #8]
.LVL3172:
	str	r2, [r4, #12]
.LVL3173:
	str	r2, [r4, #16]
.LVL3174:
	str	r2, [r4, #20]
.LVL3175:
	str	r2, [r4, #24]
.LVL3176:
	str	r2, [r4, #28]
.LVL3177:
	str	r2, [r4, #32]
.LVL3178:
	str	r2, [r4, #36]
.LVL3179:
	str	r2, [r4, #40]
.LVL3180:
	str	r2, [r4, #44]
.LVL3181:
	str	r2, [r4, #48]
.LVL3182:
	str	r2, [r4, #52]
.LVL3183:
	str	r2, [r4, #56]
.LVL3184:
	str	r2, [r4, #60]
.LVL3185:
.LBB10832:
.LBB10829:
	.loc 13 95 0
	bls	.L3171
.L3183:
.LVL3186:
.LBB10823:
.LBB10824:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL3187:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB10825:
.LBB10826:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL3188:
	.arm
	.syntax unified
.LBE10826:
.LBE10825:
.LBE10824:
.LBE10823:
	.loc 13 95 0
	add	r3, r3, #1
.LVL3189:
	cmp	r1, r3
	bne	.L3183
.LVL3190:
.L3171:
.LBE10829:
.LBE10832:
.LBE10820:
	.loc 11 636 0
	lsl	r2, r6, #20
	mov	r1, r9
	mov	r0, #3
	bl	flushPage
.LVL3191:
.L3158:
	add	r5, r5, #1
.LVL3192:
.LBE10819:
.LBE10818:
.LBE10874:
	.loc 11 463 0 discriminator 1
	movw	r3, #3585
	cmp	r5, r3
	add	r4, r4, #4
	bne	.L3178
	.loc 11 502 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3193:
.L3157:
	.cfi_restore_state
.LBB10875:
.LBB10857:
.LBB10846:
	.loc 4 1785 0
	ldr	r3, [sp]
.LBE10846:
.LBE10857:
.LBB10858:
.LBB10853:
	.loc 47 24 0
	and	r2, r2, r8
	add	r2, r2, #-805306368
.LVL3194:
.LBE10853:
.LBE10858:
.LBB10859:
.LBB10847:
	.loc 4 1785 0
	cmp	r3, #0
	bne	.L3194
.LVL3195:
	.loc 4 1797 0
	ldr	r3, [sp, #4]
	orr	r2, r2, #3
.LVL3196:
	str	r2, [sp, #24]
	orr	r1, r3, r6
.LBE10847:
.LBE10859:
	.loc 11 468 0
	add	r3, sp, #24
.LBB10860:
.LBB10848:
	.loc 4 1797 0
	str	r1, [sp, #28]
.LVL3197:
.LBE10848:
.LBE10860:
	.loc 11 468 0
	ldm	r3, {r0, r1}
	bl	cdtFind
.LVL3198:
	.loc 11 469 0
	subs	r3, r0, #0
	beq	.L3195
	ldr	r7, [r3]
.LVL3199:
	ldr	r3, [r3, #4]
.LVL3200:
.LBB10861:
.LBB10862:
	.loc 4 1816 0
	and	r2, r7, #15
	cmp	r2, #3
	bne	.L3196
.LVL3201:
	.loc 4 1823 0
	ubfx	r3, r3, #0, #12
.LVL3202:
.LBE10862:
.LBE10861:
	.loc 11 471 0
	add	r2, sp, #16
.LBB10865:
.LBB10863:
	.loc 4 1823 0
	str	r3, [sp, #20]
.LVL3203:
	str	r7, [sp, #16]
.LBE10863:
.LBE10865:
	.loc 11 471 0
	ldm	r2, {r1, r2}
	bl	cdtUpdate
.LVL3204:
	.loc 11 472 0
	and	r2, r7, r8
	mov	r1, r6
	mov	r0, r9
	bl	unmapPageTable
.LVL3205:
	b	.L3158
.LVL3206:
.L3163:
.LBE10875:
.LBB10876:
.LBB10877:
.LBB10878:
	.loc 4 1616 0
	ldr	r3, [sp, #12]
	and	r2, r2, r10
.LVL3207:
	add	r2, r2, #-805306368
	str	r1, [sp, #44]
.LVL3208:
	orr	r2, r3, r2, lsr #8
.LBE10878:
.LBE10877:
	.loc 11 489 0
	add	r3, sp, #48
.LBB10880:
.LBB10879:
	.loc 4 1616 0
	str	r2, [sp, #40]
.LBE10879:
.LBE10880:
	.loc 11 489 0
	ldmdb	r3, {r0, r1}
	bl	cdtFind
.LVL3209:
	.loc 11 490 0
	subs	r2, r0, #0
	beq	.L3197
	ldr	r7, [r2]
.LVL3210:
	ldr	r2, [r2, #4]
.LVL3211:
.LBB10881:
.LBB10882:
.LBB10883:
	.loc 4 1635 0 discriminator 2
	and	r1, r7, #15
	cmp	r1, #1
	bne	.L3173
.LVL3212:
.LBE10883:
.LBE10882:
.LBB10884:
.LBB10885:
	.loc 4 1747 0
	ubfx	r2, r2, #0, #12
.LVL3213:
	bic	ip, r7, #50331648
.LVL3214:
.LBE10885:
.LBE10884:
.LBE10881:
	.loc 11 492 0
	add	r1, sp, #16
.LBB10888:
.LBB10887:
.LBB10886:
	.loc 4 1747 0
	str	r2, [sp, #20]
.LVL3215:
	str	ip, [sp, #16]
.LBE10886:
.LBE10887:
.LBE10888:
	.loc 11 492 0
	ldm	r1, {r1, r2}
	bl	cdtUpdate
.LVL3216:
.LBB10889:
.LBB10890:
	.loc 11 592 0
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L3158
.LVL3217:
	.loc 11 596 0
	and	r1, r2, #3
	cmp	r1, #2
	bne	.L3198
.LVL3218:
	.loc 11 597 0
	tst	r2, #262144
	bne	.L3199
.LVL3219:
	.loc 11 598 0
	bic	r7, r7, #-16777216
.LVL3220:
	and	r3, r2, r10
	bic	r7, r7, #15
	lsl	r7, r7, #8
	add	r7, r7, #805306368
	cmp	r7, r3
	bne	.L3200
	.loc 11 600 0
	mov	r3, #0
	str	r3, [r4]
.LVL3221:
.LBB10891:
.LBB10892:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r4, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB10893:
.LBB10894:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
	.arm
	.syntax unified
.LBE10894:
.LBE10893:
.LBE10892:
.LBE10891:
	.loc 11 636 0
	mov	r0, #2
	lsl	r2, r6, #20
.LVL3222:
	mov	r1, r9
	bl	flushPage
.LVL3223:
	b	.L3158
.LVL3224:
.L3194:
.LBE10890:
.LBE10889:
.LBE10876:
.LBB10899:
.LBB10866:
.LBB10849:
	bl	cap_page_table_cap_new.part.107
.LVL3225:
.L3196:
.LBE10849:
.LBE10866:
.LBB10867:
.LBB10864:
	bl	cap_page_table_cap_set_capPTMappedObject.part.132
.LVL3226:
.L3195:
.LBE10864:
.LBE10867:
	.loc 11 469 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC152
.LVL3227:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC152
	ldr	r3, .L3201
.LVL3228:
	movw	r2, #469
	bl	_assert_fail
.LVL3229:
.L3192:
.LBE10899:
.LBB10900:
.LBB10837:
.LBB10835:
.LBB10833:
	.loc 11 617 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC137
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC137
	ldr	r3, .L3201+4
	movw	r2, #617
.LVL3230:
	bl	_assert_fail
.LVL3231:
.L3198:
.LBE10833:
.LBE10835:
.LBE10837:
.LBE10900:
.LBB10901:
.LBB10897:
.LBB10895:
	.loc 11 596 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC137
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC137
	ldr	r3, .L3201+4
	mov	r2, #596
.LVL3232:
	bl	_assert_fail
.LVL3233:
.L3197:
.LBE10895:
.LBE10897:
	.loc 11 490 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC157
.LVL3234:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC157
	ldr	r3, .L3201
	movw	r2, #490
.LVL3235:
	bl	_assert_fail
.LVL3236:
.L3200:
.LBB10898:
.LBB10896:
	.loc 11 598 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC139
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC139
	ldr	r3, .L3201+4
	movw	r2, #598
.LVL3237:
	bl	_assert_fail
.LVL3238:
.L3199:
	.loc 11 597 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC138
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC138
	ldr	r3, .L3201+4
	movw	r2, #597
.LVL3239:
	bl	_assert_fail
.LVL3240:
.L3173:
.LBE10896:
.LBE10898:
.LBE10901:
.LBB10902:
.LBB10838:
.LBB10816:
.LBB10811:
	.loc 4 1635 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC44
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC44
	ldr	r3, .L3201+8
	movw	r2, #1636
	bl	_assert_fail
.LVL3241:
.L3169:
.LBE10811:
.LBE10816:
.LBE10838:
.LBB10839:
.LBB10836:
.LBB10834:
	.loc 11 619 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC139
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC139
	ldr	r3, .L3201+4
	movw	r2, #619
.LVL3242:
	bl	_assert_fail
.LVL3243:
.L3193:
	.loc 11 618 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC140
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC140
	ldr	r3, .L3201+4
	movw	r2, #618
.LVL3244:
	bl	_assert_fail
.LVL3245:
.L3191:
.LBE10834:
.LBE10836:
.LBE10839:
	.loc 11 481 0 discriminator 1
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC157
.LVL3246:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC157
	ldr	r3, .L3201
	movw	r2, #481
.LVL3247:
	bl	_assert_fail
.LVL3248:
.L3202:
	.align	2
.L3201:
	.word	.LANCHOR4+3656
	.word	.LANCHOR4+3488
	.word	.LANCHOR4+3400
.LBE10902:
	.cfi_endproc
.LFE334:
	.size	unmapAllPageTables, .-unmapAllPageTables
	.section	.boot.text
	.align	2
	.global	alloc_region
	.syntax unified
	.arm
	.type	alloc_region, %function
alloc_region:
.LFB465:
	.loc 25 54 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3249:
	.loc 25 72 0
	movw	ip, #:lower16:.LANCHOR3
	.loc 25 54 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	.loc 25 72 0
	movt	ip, #:upper16:.LANCHOR3
	mov	r9, #1
	lsl	r9, r9, r0
	.loc 25 54 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 25 72 0
	ldr	r5, [ip]
	.loc 25 73 0
	ldr	r6, [ip, #4]
	.loc 25 72 0
	sub	r4, r5, #1
	lsr	r4, r4, r0
	.loc 25 73 0
	lsr	r2, r6, r0
	.loc 25 72 0
	add	r4, r4, #1
	.loc 25 73 0
	lsl	r2, r2, r0
	.loc 25 72 0
	lsl	r4, r4, r0
	sub	r1, r6, r2
	sub	r3, r4, r5
	cmp	r1, r3
.LVL3250:
	.loc 25 75 0
	addhi	r2, r4, r9
.LVL3251:
	.loc 25 78 0
	subls	r4, r2, r9
.LVL3252:
	.loc 25 81 0
	cmp	r4, r5
	cmpcs	r2, r4
	movhi	r1, #1
	movls	r1, #0
	cmp	r2, r6
	movhi	r1, #0
	andls	r1, r1, #1
	cmp	r1, #0
	beq	.L3214
	.loc 25 83 0
	sub	r1, r4, r5
	sub	r3, r6, r2
	cmp	r3, r1
	movls	r8, r5
	movhi	r1, r6
	movls	r1, r4
	movls	r5, r2
	movhi	r8, r2
	movhi	r6, r4
.LVL3253:
.L3206:
	.loc 25 72 0
	ldr	lr, [ip, #8]
	.loc 25 73 0
	ldr	r7, [ip, #12]
	.loc 25 72 0
	sub	r3, lr, #1
	lsr	r3, r3, r0
	.loc 25 73 0
	lsr	r10, r7, r0
	.loc 25 72 0
	add	r3, r3, #1
	lsl	r3, r3, r0
	.loc 25 73 0
	lsl	r0, r10, r0
.LVL3254:
	.loc 25 72 0
	sub	fp, r3, lr
	sub	r10, r7, r0
	cmp	fp, r10
.LVL3255:
	.loc 25 78 0
	subcs	r3, r0, r9
.LVL3256:
	.loc 25 75 0
	addcc	r0, r3, r9
.LVL3257:
	.loc 25 81 0
	cmp	lr, r3
	movls	r9, #1
	movhi	r9, #0
	cmp	r0, r3
	movls	r9, #0
	cmp	r7, r0
	movcc	r9, #0
	andcs	r9, r9, #1
	cmp	r9, #0
	beq	.L3210
	.loc 25 83 0
	sub	r9, r3, lr
	sub	r10, r7, r0
	cmp	r9, r10
	strcs	r9, [sp, #4]
	movcs	fp, lr
	movcs	r9, r10
	strcc	r7, [sp]
	strcs	r3, [sp]
	movcs	lr, r0
	ldrcs	r10, [sp, #4]
	movcc	fp, r0
	movcc	r7, r3
.LVL3258:
	.loc 25 94 0
	cmp	r4, r2
	beq	.L3219
.LVL3259:
.LBB10903:
.LBB10904:
	.loc 25 49 0 discriminator 1
	sub	r2, r6, r5
.LVL3260:
.LBE10904:
.LBE10903:
	.loc 25 94 0 discriminator 1
	cmp	r2, r9
	bhi	.L3219
.LVL3261:
	.loc 25 95 0
	beq	.L3224
.L3221:
	mov	r9, #0
	b	.L3212
.L3224:
.LVL3262:
	.loc 25 96 0
	sub	r2, r1, r8
	cmp	r2, r10
	bls	.L3221
.LVL3263:
.L3219:
	ldr	r1, [sp]
.LVL3264:
	mov	r8, fp
.LVL3265:
	mov	r6, r7
.LVL3266:
	mov	r5, lr
.LVL3267:
	mov	r2, r0
	mov	r4, r3
.LVL3268:
	.loc 25 70 0
	mov	r9, #1
.LVL3269:
.L3210:
	.loc 25 104 0 discriminator 2
	cmp	r2, r4
	beq	.L3225
.LVL3270:
.L3212:
	.loc 25 109 0
	add	r2, ip, r9, lsl #3
	mov	r3, #0
.LVL3271:
	.loc 25 111 0
	str	r1, [sp, #20]
	add	r1, sp, #24
.LVL3272:
	.loc 25 109 0
	str	r3, [r2, #4]
.LVL3273:
	.loc 25 111 0
	str	r8, [sp, #16]
	ldmdb	r1, {r0, r1}
.LVL3274:
	.loc 25 109 0
	str	r3, [ip, r9, lsl #3]
	.loc 25 111 0
	bl	insert_region
.LVL3275:
	.loc 25 112 0
	add	r3, sp, #8
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	ldm	r3, {r0, r1}
	bl	insert_region
.LVL3276:
	cmp	r0, #0
	movne	r0, r4
	beq	.L3226
.LVL3277:
	.loc 25 117 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3278:
.L3214:
	.cfi_restore_state
	.loc 25 59 0
	mov	r8, r1
	.loc 25 58 0
	mov	r6, r1
	mov	r5, r1
	.loc 25 57 0
	mov	r2, r1
.LVL3279:
	mov	r4, r1
.LVL3280:
	b	.L3206
.LVL3281:
.L3226:
	.loc 25 113 0
	movw	r0, #:lower16:.LC160
	sub	r1, r6, r5
	movt	r0, #:upper16:.LC160
	bl	kprintf
.LVL3282:
	mov	r0, r4
.LVL3283:
	.loc 25 117 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3284:
.L3225:
	.cfi_restore_state
	.loc 25 105 0
	movw	r0, #:lower16:.LC159
.LVL3285:
	movt	r0, #:upper16:.LC159
	bl	kprintf
.LVL3286:
	.loc 25 106 0
	mov	r0, #0
.LVL3287:
	.loc 25 117 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE465:
	.size	alloc_region, .-alloc_region
	.align	2
	.global	provide_cap
	.syntax unified
	.arm
	.type	provide_cap, %function
provide_cap:
.LFB473:
	.loc 25 277 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 25 278 0
	movw	r4, #:lower16:.LANCHOR3
	.loc 25 277 0
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
	.loc 25 278 0
	movt	r4, #:upper16:.LANCHOR3
	.loc 25 277 0
	add	ip, sp, #8
	stm	ip, {r0, r1}
	.loc 25 278 0
	ldr	r5, [r4, #20]
	ldr	r1, [r4, #24]
	.loc 25 277 0
	stm	sp, {r2, r3}
	.loc 25 278 0
	cmp	r5, r1
	bcs	.L3231
	.loc 25 282 0
	ldm	ip, {r0, r1}
	bl	cap_get_capPtr
.LVL3288:
	add	r5, r0, r5, lsl #4
.LVL3289:
	ldm	sp, {r0, r1}
	add	r3, sp, #16
	stm	r3, {r0, r1}
.LBB10907:
.LBB10908:
	.loc 25 122 0
	stm	r5, {r0, r1}
	.loc 25 123 0
	mov	r0, r5
	bl	cdtInsert.constprop.272
.LVL3290:
.LBE10908:
.LBE10907:
	.loc 25 283 0
	ldr	r3, [r4, #20]
	.loc 25 284 0
	mov	r0, #1
	.loc 25 283 0
	add	r3, r3, r0
	str	r3, [r4, #20]
	.loc 25 285 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L3231:
	.cfi_restore_state
	.loc 25 279 0
	movw	r0, #:lower16:.LC161
	movt	r0, #:upper16:.LC161
	bl	kprintf
.LVL3291:
	.loc 25 280 0
	mov	r0, #0
	.loc 25 285 0
	add	sp, sp, #24
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE473:
	.size	provide_cap, .-provide_cap
	.text
	.align	2
	.global	printCTE
	.syntax unified
	.arm
	.type	printCTE, %function
printCTE:
.LFB538:
	.loc 3 1105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3292:
	.loc 3 1107 0
	cmp	r1, #0
	.loc 3 1105 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	mov	r10, r0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	.loc 3 1107 0
	beq	.L3284
	ldr	r9, [r1]
	mov	r4, r1
	ldr	r5, [r1, #8]
.LBB10946:
.LBB10947:
.LBB10948:
	.loc 4 997 0
	and	r8, r9, #14
	cmp	r8, #14
.LBE10948:
.LBE10947:
.LBE10946:
.LBB10953:
.LBB10954:
	.loc 4 499 0
	and	r2, r5, #31
.LVL3293:
.LBE10954:
.LBE10953:
.LBB10955:
.LBB10951:
.LBB10949:
	.loc 4 997 0
	beq	.L3234
	.loc 4 998 0
	and	r6, r9, #15
.LVL3294:
	cmp	r6, #12
	bhi	.L3283
.L3235:
	movw	r3, #:lower16:.LANCHOR4
.LBE10949:
.LBE10951:
.LBE10955:
	.loc 3 1110 0
	subs	fp, r6, #0
	movt	r3, #:upper16:.LANCHOR4
	add	r3, r3, r6, lsl #2
	ldr	r3, [r3, #3676]
	beq	.L3266
.L3238:
	ldm	r4, {r0, r1}
.LVL3295:
	str	r3, [sp, #44]
	str	r2, [sp, #40]
	bl	cap_get_capSpacePtr
.LVL3296:
	cmp	r6, #0
	ldr	r3, [sp, #44]
	mov	fp, r0
.LVL3297:
	mov	ip, r6
.LVL3298:
	ldr	r2, [sp, #40]
	streq	r6, [sp, #44]
	beq	.L3243
	ldm	r4, {r0, r1}
	add	lr, sp, #56
	stm	lr, {r0, r1}
.LVL3299:
.LBB10956:
.LBB10957:
	.loc 36 102 0
	sub	r1, ip, #1
	cmp	r1, #61
	ldrls	pc, [pc, r1, asl #2]
	b	.L3239
.L3241:
	.word	.L3240
	.word	.L3240
	.word	.L3240
	.word	.L3240
	.word	.L3240
	.word	.L3240
	.word	.L3239
	.word	.L3242
	.word	.L3239
	.word	.L3240
	.word	.L3239
	.word	.L3240
	.word	.L3239
	.word	.L3262
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3242
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3240
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3239
	.word	.L3242
.LVL3300:
.L3234:
.LBE10957:
.LBE10956:
.LBB10962:
.LBB10952:
.LBB10950:
	.loc 4 999 0
	uxtb	r6, r9
.LVL3301:
	cmp	r6, #12
	bls	.L3235
.L3283:
	movw	r3, #:lower16:.LC162
	movt	r3, #:upper16:.LC162
	b	.L3238
.LVL3302:
.L3240:
.LBE10950:
.LBE10952:
.LBE10962:
.LBB10963:
.LBB10960:
	.loc 36 112 0
	str	r9, [sp, #56]
	ldm	lr, {r0, r1}
	str	r3, [sp, #48]
	str	r2, [sp, #40]
	bl	cap_get_capSizeBits
.LVL3303:
	mov	r1, #1
	ldr	r2, [sp, #40]
	lsl	r3, r1, r0
	str	r3, [sp, #44]
	ldr	r3, [sp, #48]
.LVL3304:
.L3243:
	ldr	r1, [r4, #12]
.LBE10960:
.LBE10963:
.LBB10964:
.LBB10965:
	.loc 30 211 0 discriminator 8
	lsr	r5, r5, #5
.LVL3305:
	ldr	r0, [r4, #4]
	.loc 30 212 0 discriminator 8
	lsls	r5, r5, #2
.LBE10965:
.LBE10964:
.LBB10967:
.LBB10968:
	.loc 30 217 0 discriminator 8
	lsr	r6, r1, #5
.LVL3306:
.LBE10968:
.LBE10967:
.LBB10970:
.LBB10966:
	.loc 30 212 0 discriminator 8
	orrne	r5, r5, #-536870912
.LBE10966:
.LBE10970:
.LBB10971:
.LBB10969:
	.loc 30 218 0 discriminator 8
	lsls	r6, r6, #2
.LVL3307:
	orrne	r6, r6, #-536870912
.LVL3308:
.LBE10969:
.LBE10971:
.LBB10972:
.LBB10973:
.LBB10974:
.LBB10975:
	.loc 4 997 0 discriminator 8
	cmp	r8, #14
	beq	.L3246
	.loc 4 998 0
	and	r7, r9, #15
.LVL3309:
.LBE10975:
.LBE10974:
	.loc 30 390 0
	cmp	r7, #4
	beq	.L3248
	cmp	r7, #6
	bne	.L3277
.L3249:
.LVL3310:
.LBB10977:
.LBB10978:
	.loc 4 1281 0
	lsr	r0, r0, #4
.LVL3311:
	mov	r7, #6
	str	r0, [sp, #40]
.LVL3312:
.L3254:
.LBE10978:
.LBE10977:
.LBE10973:
.LBE10972:
.LBB10990:
.LBB10991:
	.loc 4 997 0
	cmp	r8, #14
.LBE10991:
.LBE10990:
.LBB10993:
.LBB10994:
	.loc 4 469 0
	and	r8, r1, #31
.LVL3313:
.LBE10994:
.LBE10993:
.LBB10996:
.LBB10992:
	.loc 4 997 0
	beq	.L3285
.LVL3314:
.L3255:
.LBE10992:
.LBE10996:
	.loc 3 1110 0 discriminator 9
	ldm	r4, {r0, r1}
	str	r3, [sp, #52]
	str	r2, [sp, #48]
	bl	cap_get_capExtraComp
.LVL3315:
	ldr	r2, [sp, #48]
	mov	r1, r0
	ldr	r3, [sp, #52]
.L3256:
	.loc 3 1110 0 is_stmt 0 discriminator 12
	str	r1, [sp, #28]
	movw	r0, #:lower16:.LC164
	ldr	r1, [sp, #40]
	movt	r0, #:upper16:.LC164
	ldr	ip, [sp, #44]
	str	r4, [sp, #32]
	str	r1, [sp, #20]
	mov	r1, r10
	str	r8, [sp, #24]
	str	r6, [sp, #16]
	str	r5, [sp, #12]
	stm	sp, {r7, fp, ip}
	bl	kprintf
.LVL3316:
	.loc 3 1124 0 is_stmt 1 discriminator 12
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3317:
.L3246:
	.cfi_restore_state
.LBB10997:
.LBB10986:
.LBB10980:
.LBB10976:
	.loc 4 999 0
	uxtb	r7, r9
.LVL3318:
.LBE10976:
.LBE10980:
	.loc 30 390 0
	cmp	r7, #4
	beq	.L3251
	cmp	r7, #6
	beq	.L3286
.L3277:
.LVL3319:
.LBE10986:
.LBE10997:
.LBB10998:
.LBB10995:
	.loc 4 469 0
	and	r8, r1, #31
.LVL3320:
.LBE10995:
.LBE10998:
.LBB10999:
.LBB10987:
	.loc 30 396 0
	mov	r1, #0
	str	r1, [sp, #40]
.LVL3321:
.L3258:
.LBE10987:
.LBE10999:
	.loc 3 1110 0
	cmp	r7, #0
	moveq	r1, r7
	beq	.L3256
	b	.L3255
.LVL3322:
.L3248:
.LBB11000:
.LBB10988:
.LBB10981:
.LBB10982:
	.loc 4 1229 0
	lsr	r0, r9, #4
	mov	r7, #4
	str	r0, [sp, #40]
.LVL3323:
	b	.L3254
.LVL3324:
.L3266:
.LBE10982:
.LBE10981:
.LBE10988:
.LBE11000:
	.loc 3 1110 0
	str	fp, [sp, #44]
	b	.L3243
.LVL3325:
.L3262:
.LBB11001:
.LBB10961:
	.loc 36 117 0
	mov	r1, #255
	str	r1, [sp, #44]
	b	.L3243
.L3242:
	.loc 36 115 0
	mov	r1, #1
	str	r1, [sp, #44]
	b	.L3243
.L3239:
.LBB10958:
.LBB10959:
	.loc 36 125 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L3287
	mov	r2, #125
	bl	_assert_fail
.LVL3326:
.L3284:
.LBE10959:
.LBE10958:
.LBE10961:
.LBE11001:
	.loc 3 1108 0
	movw	r0, #:lower16:.LC163
.LVL3327:
	mov	r2, r1
	movt	r0, #:upper16:.LC163
	mov	r1, r10
.LVL3328:
	.loc 3 1124 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3329:
	.loc 3 1108 0
	b	kprintf
.LVL3330:
.L3285:
	.cfi_restore_state
	uxtb	r7, r9
	b	.L3258
.LVL3331:
.L3251:
.LBB11002:
.LBB10989:
.LBB10984:
.LBB10983:
	.loc 4 1226 0
	and	r0, r9, #15
.LVL3332:
	cmp	r0, #4
	beq	.L3248
	bl	cap_endpoint_cap_get_capEPBadge.isra.85.part.86
.LVL3333:
.L3286:
.LBE10983:
.LBE10984:
.LBB10985:
.LBB10979:
	.loc 4 1278 0
	and	ip, r9, #15
	cmp	ip, #6
	beq	.L3249
	bl	cap_async_endpoint_cap_get_capAEPBadge.part.185
.LVL3334:
.L3288:
	.align	2
.L3287:
	.word	.LANCHOR4+2828
.LBE10979:
.LBE10985:
.LBE10989:
.LBE11002:
	.cfi_endproc
.LFE538:
	.size	printCTE, .-printCTE
	.align	2
	.syntax unified
	.arm
	.type	print_fault, %function
print_fault:
.LFB549:
	.file 48 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/kernel/faulthandler.c"
	.loc 48 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 48 72 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
.LVL3335:
	.loc 48 73 0
	and	r2, r3, #7
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L3290
.L3292:
	.word	.L3291
	.word	.L3293
	.word	.L3294
	.word	.L3295
	.word	.L3296
.L3296:
.LVL3336:
	.loc 48 93 0
	movw	r0, #:lower16:.LC173
	lsr	r2, r3, #3
	movt	r0, #:upper16:.LC173
	.loc 48 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 48 93 0
	b	kprintf
.LVL3337:
.L3291:
	.cfi_restore_state
	.loc 48 75 0
	movw	r0, #:lower16:.LC169
	movt	r0, #:upper16:.LC169
	.loc 48 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 48 98 0
	b	kprintf
.LVL3338:
.L3295:
	.cfi_restore_state
	.loc 48 89 0
	movw	r0, #:lower16:.LC172
	movt	r0, #:upper16:.LC172
	.loc 48 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 48 89 0
	b	kprintf
.LVL3339:
.L3293:
	.cfi_restore_state
	.loc 48 78 0
	movw	lr, #:lower16:.LC165
	movw	ip, #:lower16:.LC166
	cmp	r3, #0
	movt	lr, #:upper16:.LC165
	movt	ip, #:upper16:.LC166
	movw	r0, #:lower16:.LC170
	mov	r2, r1
	movt	r0, #:upper16:.LC170
	movlt	r1, lr
.LVL3340:
	movge	r1, ip
	.loc 48 101 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 48 93 0
	b	kprintf
.LVL3341:
.L3294:
	.cfi_restore_state
	.loc 48 83 0
	movw	lr, #:lower16:.LC167
	movw	ip, #:lower16:.LC168
	tst	r3, #131072
	movt	lr, #:upper16:.LC167
	movt	ip, #:upper16:.LC168
	movw	r0, #:lower16:.LC171
	mov	r2, r1
	lsr	r3, r3, #18
.LVL3342:
	movne	r1, lr
.LVL3343:
	moveq	r1, ip
	movt	r0, #:upper16:.LC171
	.loc 48 101 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
.LVL3344:
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 48 83 0
	b	kprintf
.LVL3345:
.L3290:
	.loc 48 98 0
	movw	r0, #:lower16:.LC174
	movt	r0, #:upper16:.LC174
	.loc 48 101 0
	add	sp, sp, #12
	@ sp needed
	ldr	lr, [sp], #4
	.loc 48 98 0
	b	kprintf
.LVL3346:
	.cfi_endproc
.LFE549:
	.size	print_fault, .-print_fault
	.align	2
	.global	handleDoubleFault
	.syntax unified
	.arm
	.type	handleDoubleFault, %function
handleDoubleFault:
.LFB550:
	.loc 48 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3347:
	.loc 48 109 0
	movw	r3, #:lower16:current_fault
	.loc 48 107 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 48 109 0
	movt	r3, #:upper16:current_fault
	.loc 48 107 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 48 107 0
	mov	r4, r0
	.loc 48 109 0
	add	r6, sp, #8
	.loc 48 107 0
	stm	sp, {r1, r2}
	.loc 48 109 0
	ldm	r3, {r0, r1}
.LVL3348:
	stm	r6, {r0, r1}
	.loc 48 110 0
	movw	r0, #:lower16:.LC175
	movt	r0, #:upper16:.LC175
	bl	kprintf
.LVL3349:
	.loc 48 111 0
	ldm	r6, {r0, r1}
	bl	print_fault
.LVL3350:
	.loc 48 112 0
	movw	r0, #:lower16:.LC176
	movt	r0, #:upper16:.LC176
	bl	kprintf
.LVL3351:
	.loc 48 113 0
	ldm	sp, {r0, r1}
	bl	print_fault
.LVL3352:
	.loc 48 114 0
	movw	r0, #:lower16:.LC177
	add	r2, r4, #140
	mov	r1, r4
	movt	r0, #:upper16:.LC177
	bl	kprintf
.LVL3353:
	.loc 48 115 0
	movw	r0, #:lower16:.LC178
	ldr	r1, [r4, #68]
	movt	r0, #:upper16:.LC178
	bl	kprintf
.LVL3354:
.LBB11021:
.LBB11022:
.LBB11023:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE11023:
.LBE11022:
.LBB11026:
.LBB11027:
	.loc 4 269 0
	ldr	r3, [r4, #72]
.LBE11027:
.LBE11026:
.LBB11029:
.LBB11024:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LBE11024:
.LBE11029:
.LBB11030:
.LBB11028:
	.loc 4 269 0
	bic	r3, r3, #15
	str	r3, [r4, #72]
.LVL3355:
.LBE11028:
.LBE11030:
.LBB11031:
.LBB11025:
	.loc 26 435 0
	cmp	r4, r2
	beq	.L3307
.L3304:
.LBE11025:
.LBE11031:
.LBE11021:
	.loc 48 119 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL3356:
.L3307:
	.cfi_restore_state
.LBB11038:
.LBB11032:
.LBB11033:
.LBB11034:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3304
	mov	r0, r4
.LBE11034:
.LBE11033:
.LBE11032:
.LBE11038:
	.loc 48 119 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3357:
.LBB11039:
.LBB11037:
.LBB11036:
.LBB11035:
	b	scheduleTCB.part.236
.LVL3358:
.LBE11035:
.LBE11036:
.LBE11037:
.LBE11039:
	.cfi_endproc
.LFE550:
	.size	handleDoubleFault, .-handleDoubleFault
	.section	.boot.text
	.align	2
	.global	create_frames_of_region
	.syntax unified
	.arm
	.type	create_frames_of_region, %function
create_frames_of_region:
.LFB474:
	.loc 25 295 0
	.cfi_startproc
	@ args = 28, pretend = 8, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3359:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	sub	sp, sp, #36
	.cfi_def_cfa_offset 80
	ldr	ip, [sp, #88]
.LVL3360:
	.loc 25 301 0
	movw	r6, #:lower16:.LANCHOR3
	movt	r6, #:upper16:.LANCHOR3
	.loc 25 295 0
	mov	r9, r0
	.loc 25 303 0
	ldr	r5, [sp, #84]
	.loc 25 295 0
	add	r0, sp, #16
.LVL3361:
	str	r3, [sp, #76]
	.loc 25 301 0
	ldr	r3, [r6, #20]
	.loc 25 303 0
	cmp	r5, ip
	.loc 25 295 0
	stm	r0, {r1, r2}
	ldr	r8, [sp, #92]
	.loc 25 301 0
	str	r3, [sp, #12]
.LVL3362:
	.loc 25 303 0
	bcs	.L3319
	mov	r2, #49152
.LBB11075:
.LBB11076:
.LBB11077:
.LBB11078:
.LBB11079:
	.loc 46 46 0
	mov	r1, #64512
.LBE11079:
.LBE11078:
.LBE11077:
.LBE11076:
.LBE11075:
.LBB11124:
.LBB11125:
.LBB11126:
.LBB11127:
	.loc 4 1614 0
	mov	r10, #61440
	movt	r2, 65535
.LBE11127:
.LBE11126:
.LBE11125:
.LBE11124:
.LBB11137:
.LBB11120:
.LBB11102:
.LBB11084:
.LBB11080:
	.loc 46 46 0
	movt	r1, 65535
.LBE11080:
.LBE11084:
.LBE11102:
.LBE11120:
.LBE11137:
.LBB11138:
.LBB11134:
.LBB11131:
.LBB11128:
	.loc 4 1614 0
	movt	r10, 65535
	str	r2, [sp, #4]
.LBE11128:
.LBE11131:
.LBE11134:
.LBE11138:
	.loc 25 303 0
	mov	fp, r3
.LBB11139:
.LBB11121:
.LBB11103:
.LBB11085:
.LBB11081:
	.loc 46 46 0
	str	r1, [sp, #8]
.LBE11081:
.LBE11085:
.LBE11103:
.LBE11121:
.LBE11139:
	.loc 25 303 0
	mov	r7, ip
	str	r9, [sp]
	b	.L3318
.LVL3363:
.L3316:
.LBB11140:
.LBB11141:
	.loc 25 282 0
	ldm	ip, {r0, r1}
.LBE11141:
.LBE11140:
	.loc 25 303 0
	add	r5, r5, #4096
.LVL3364:
.LBB11147:
.LBB11144:
	.loc 25 282 0
	bl	cap_get_capPtr
.LVL3365:
	add	r1, r0, fp, lsl #4
.LVL3366:
.LBB11142:
.LBB11143:
	.loc 25 122 0
	str	r4, [r0, fp, lsl #4]
	.loc 25 123 0
	mov	r0, r1
	.loc 25 122 0
	str	r9, [r1, #4]
	.loc 25 123 0
	bl	cdtInsert.constprop.272
.LVL3367:
.LBE11143:
.LBE11142:
	.loc 25 283 0
	ldr	fp, [r6, #20]
.LBE11144:
.LBE11147:
	.loc 25 303 0
	cmp	r5, r7
.LBB11148:
.LBB11145:
	.loc 25 283 0
	add	fp, fp, #1
	str	fp, [r6, #20]
.LBE11145:
.LBE11148:
	.loc 25 303 0
	bcs	.L3322
.LVL3368:
.L3318:
	.loc 25 304 0
	cmp	r8, #0
	bne	.L3323
.LVL3369:
.LBB11149:
.LBB11135:
.LBB11132:
.LBB11129:
	.loc 4 1610 0
	ubfx	r3, r5, #0, #12
	cmp	r3, #0
	bne	.L3315
.LVL3370:
	.loc 4 1614 0
	and	r4, r5, r10
.LBE11129:
.LBE11132:
.LBE11135:
.LBE11149:
	.loc 25 307 0
	mov	r9, r8
.LBB11150:
.LBB11136:
.LBB11133:
.LBB11130:
	.loc 4 1614 0
	lsr	r4, r4, #8
	orr	r4, r4, #402653185
.LVL3371:
.L3314:
.LBE11130:
.LBE11133:
.LBE11136:
.LBE11150:
.LBB11151:
.LBB11146:
	.loc 25 278 0
	ldr	lr, [r6, #24]
	add	r3, sp, #16
	ldm	r3, {r0, r1}
	add	ip, sp, #24
	cmp	fp, lr
	stm	ip, {r0, r1}
.LVL3372:
	bcc	.L3316
	ldr	r9, [sp]
.LVL3373:
	.loc 25 279 0
	movw	r0, #:lower16:.LC161
	movt	r0, #:upper16:.LC161
	bl	kprintf
.LVL3374:
.LBE11146:
.LBE11151:
	.loc 25 310 0
	mov	r3, #0
	str	r3, [r9]
	str	r3, [r9, #4]
	str	r3, [r9, #8]
.LVL3375:
.L3308:
	.loc 25 320 0
	mov	r0, r9
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL3376:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3377:
.L3323:
	.cfi_restore_state
	ldr	r1, [sp, #76]
	ldr	r3, [sp, #96]
.LBB11152:
.LBB11122:
.LBB11104:
.LBB11105:
	.loc 4 1886 0
	and	r0, r1, #15
	cmp	r0, #5
	rsb	r3, r3, #805306368
	add	r3, r3, r5
.LVL3378:
	bne	.L3324
.LVL3379:
	ldr	r2, [sp, #4]
	lsr	r0, r3, #20
.LVL3380:
.LBE11105:
.LBE11104:
.LBB11107:
	.loc 38 174 0
	ubfx	r3, r3, #12, #8
.LVL3381:
	and	r1, r1, r2
.LVL3382:
	ldr	r4, [r1, r0, lsl #2]
.LVL3383:
.LBB11086:
.LBB11087:
	.loc 4 828 0
	and	r1, r4, #3
	cmp	r1, #1
	bne	.L3325
.LVL3384:
.LBE11087:
.LBE11086:
.LBB11089:
.LBB11082:
	.loc 46 46 0
	ldr	r2, [sp, #8]
.LBE11082:
.LBE11089:
.LBB11090:
.LBB11091:
	.loc 4 1610 0
	ubfx	r1, r5, #0, #12
	cmp	r1, #0
.LBE11091:
.LBE11090:
.LBB11096:
.LBB11083:
	.loc 46 46 0
	and	r4, r4, r2
.LVL3385:
	add	r4, r4, #-805306368
.LVL3386:
.LBE11083:
.LBE11096:
.LBB11097:
.LBB11092:
	.loc 4 1599 0
	bic	r1, r4, #4080
	.loc 4 1608 0
	ubfx	r4, r4, #10, #2
.LVL3387:
	.loc 4 1599 0
	bic	r1, r1, #15
	.loc 4 1608 0
	lsl	r4, r4, #24
	.loc 4 1599 0
	orr	r3, r1, r3
.LVL3388:
	.loc 4 1610 0
	bne	.L3315
.LVL3389:
	.loc 4 1614 0
	and	r1, r5, r10
.LBE11092:
.LBE11097:
.LBE11107:
.LBB11108:
.LBB11109:
	.loc 11 116 0
	ubfx	r0, r3, #0, #12
.LVL3390:
.LBE11109:
.LBE11108:
.LBB11113:
.LBB11098:
.LBB11093:
	.loc 4 1614 0
	orr	r4, r4, r1, lsr #8
.LVL3391:
.LBE11093:
.LBE11098:
.LBE11113:
.LBB11114:
.LBB11110:
	.loc 11 116 0
	lsl	r0, r0, #2
	lsr	ip, r3, #12
.LBE11110:
.LBE11114:
.LBB11115:
.LBB11099:
.LBB11094:
	.loc 4 1614 0
	orr	r4, r4, #402653185
.LVL3392:
.LBE11094:
.LBE11099:
.LBE11115:
.LBB11116:
.LBB11111:
	.loc 11 116 0
	bic	r1, r4, #-16777216
	ubfx	lr, r4, #24, #2
	bic	r1, r1, #15
	add	r0, r0, lr, lsl #10
	lsl	r1, r1, #8
.LBE11111:
.LBE11116:
	.loc 38 187 0
	mov	r9, r3
.LBB11117:
.LBB11112:
	.loc 11 116 0
	add	r1, r1, #805306368
	orr	r1, r1, #2096
	orr	r1, r1, #14
	str	r1, [r0, ip, lsl #12]
.LVL3393:
	b	.L3314
.LVL3394:
.L3322:
	ldr	r9, [sp]
.LVL3395:
	ldr	r3, [sp, #12]
.LVL3396:
.L3309:
.LBE11112:
.LBE11117:
.LBE11122:
.LBE11152:
	.loc 25 317 0
	mov	r2, #1
	stm	r9, {r3, fp}
	str	r2, [r9, #8]
	b	.L3308
.LVL3397:
.L3319:
	mov	fp, r3
	b	.L3309
.LVL3398:
.L3315:
.LBB11153:
.LBB11123:
.LBB11118:
.LBB11100:
.LBB11095:
	.loc 4 1610 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC118
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC118
	ldr	r3, .L3326
	movw	r2, #1610
	bl	_assert_fail
.LVL3399:
.L3325:
.LBE11095:
.LBE11100:
.LBB11101:
.LBB11088:
	bl	pde_pde_coarse_get_address.part.93
.LVL3400:
.L3324:
.LBE11088:
.LBE11101:
.LBE11118:
.LBB11119:
.LBB11106:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL3401:
.L3327:
	.align	2
.L3326:
	.word	.LANCHOR4+652
.LBE11106:
.LBE11119:
.LBE11123:
.LBE11153:
	.cfi_endproc
.LFE474:
	.size	create_frames_of_region, .-create_frames_of_region
	.align	2
	.syntax unified
	.arm
	.type	create_untypeds_for_region.constprop.263, %function
create_untypeds_for_region.constprop.263:
.LFB1034:
	.loc 25 453 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3402:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 25 453 0
	add	ip, sp, #8
	add	r6, sp, #16
	stm	ip, {r2, r3}
.LVL3403:
	ldr	r10, [sp, #12]
.LVL3404:
	stm	r6, {r0, r1}
	ldr	r7, [sp, #80]
	.loc 25 463 0
	cmp	r2, r10
	beq	.L3329
.LBB11176:
.LBB11177:
	.loc 25 424 0
	movw	r9, #:lower16:.LANCHOR3
	.loc 25 430 0
	movw	r8, #:lower16:.LC182
	mov	r5, r2
	.loc 25 424 0
	movt	r9, #:upper16:.LANCHOR3
	.loc 25 430 0
	movt	r8, #:upper16:.LC182
	b	.L3338
.LVL3405:
.L3332:
	mov	r0, r8
	bl	kprintf
.LVL3406:
.LBE11177:
.LBE11176:
	.loc 25 490 0
	mov	r3, #1
	add	r5, r5, r3, lsl r4
.LVL3407:
	.loc 25 463 0
	cmp	r10, r5
	beq	.L3329
.LVL3408:
.L3338:
	.loc 25 472 0
	cmp	r5, #-536870912
	.loc 25 473 0
	moveq	r5, #4096
.LVL3409:
	rbitne	r4, r5
	movteq	r5, 57344
.LVL3410:
	clzne	r3, r4
.LBB11195:
.LBB11196:
	.loc 25 441 0
	sub	r4, r10, r5
.LVL3411:
.LBE11196:
.LBE11195:
	.loc 25 472 0
	moveq	r3, #12
.LBB11198:
.LBB11197:
	.loc 25 441 0
	clz	r4, r4
.LVL3412:
	rsb	r4, r4, #31
.LVL3413:
	cmp	r4, r3
	movcs	r4, r3
.LVL3414:
.LBE11197:
.LBE11198:
	.loc 25 486 0
	cmp	r4, #3
	bls	.L3343
.LBB11199:
.LBB11192:
	.loc 25 424 0
	ldr	fp, [r9, #20]
	add	r3, sp, #24
	ldm	r6, {r0, r1}
	sub	r2, fp, r7
	.loc 25 425 0
	cmp	r2, #800
	stm	r3, {r0, r1}
.LVL3415:
	bcs	.L3332
	.loc 25 426 0
	ldr	r1, [r9, #16]
.LBB11178:
.LBB11179:
	.loc 4 1034 0
	bics	r0, r4, #31
.LBE11179:
.LBE11178:
	.loc 25 426 0
	add	ip, r5, #805306368
	add	r0, r2, #18
	.loc 25 427 0
	add	r2, r1, r2
.LVL3416:
	.loc 25 426 0
	str	ip, [r1, r0, lsl #2]
	.loc 25 427 0
	strb	r4, [r2, #3272]
.LVL3417:
.LBB11182:
.LBB11180:
	.loc 4 1034 0
	bne	.L3344
.LVL3418:
	.loc 4 1037 0
	ands	r2, r5, #15
	bne	.L3345
.LVL3419:
.LBE11180:
.LBE11182:
.LBB11183:
.LBB11184:
	.loc 25 278 0
	ldr	lr, [r9, #24]
	add	ip, sp, #32
	ldm	r3, {r0, r1}
.LVL3420:
	cmp	fp, lr
	stm	ip, {r0, r1}
.LVL3421:
	bcs	.L3346
	.loc 25 282 0
	ldm	ip, {r0, r1}
	bl	cap_get_capPtr
.LVL3422:
.LBB11185:
.LBB11186:
	.loc 25 122 0
	bic	r3, r5, #15
.LVL3423:
.LBE11186:
.LBE11185:
	.loc 25 282 0
	add	r2, r0, fp, lsl #4
.LVL3424:
.LBB11188:
.LBB11187:
	.loc 25 122 0
	orr	r3, r3, #2
.LVL3425:
	str	r3, [r0, fp, lsl #4]
	.loc 25 123 0
	mov	r0, r2
	.loc 25 122 0
	str	r4, [r2, #4]
	.loc 25 123 0
	bl	cdtInsert.constprop.272
.LVL3426:
.LBE11187:
.LBE11188:
	.loc 25 283 0
	ldr	r3, [r9, #20]
	add	r3, r3, #1
	str	r3, [r9, #20]
.LVL3427:
.LBE11184:
.LBE11183:
.LBE11192:
.LBE11199:
	.loc 25 490 0
	mov	r3, #1
	add	r5, r5, r3, lsl r4
.LVL3428:
	.loc 25 463 0
	cmp	r10, r5
	bne	.L3338
.LVL3429:
.L3329:
	.loc 25 492 0
	mov	r2, #1
	.loc 25 493 0
	mov	r0, r2
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3430:
.L3346:
	.cfi_restore_state
.LBB11200:
.LBB11193:
.LBB11190:
.LBB11189:
	.loc 25 279 0
	movw	r0, #:lower16:.LC161
	str	r2, [sp, #4]
	movt	r0, #:upper16:.LC161
	bl	kprintf
.LVL3431:
	ldr	r2, [sp, #4]
.LBE11189:
.LBE11190:
.LBE11193:
.LBE11200:
	.loc 25 493 0
	mov	r0, r2
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3432:
.L3343:
	.cfi_restore_state
.LBB11201:
.LBB11202:
	.loc 25 486 0
	movw	r1, #:lower16:.LC77
	movw	r0, #:lower16:.LC179
	movt	r1, #:upper16:.LC77
	movt	r0, #:upper16:.LC179
	ldr	r3, .L3347
	movw	r2, #486
	bl	_assert_fail
.LVL3433:
.L3345:
.LBE11202:
.LBE11201:
.LBB11203:
.LBB11194:
.LBB11191:
.LBB11181:
	.loc 4 1037 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC181
.LVL3434:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC181
	ldr	r3, .L3347+4
	movw	r2, #1037
	bl	_assert_fail
.LVL3435:
.L3344:
	.loc 4 1034 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC180
.LVL3436:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC180
	ldr	r3, .L3347+4
	movw	r2, #1034
	bl	_assert_fail
.LVL3437:
.L3348:
	.align	2
.L3347:
	.word	.LANCHOR4+3728
	.word	.LANCHOR4+2216
.LBE11181:
.LBE11191:
.LBE11194:
.LBE11203:
	.cfi_endproc
.LFE1034:
	.size	create_untypeds_for_region.constprop.263, .-create_untypeds_for_region.constprop.263
	.align	2
	.global	create_untypeds
	.syntax unified
	.arm
	.type	create_untypeds, %function
create_untypeds:
.LFB481:
	.loc 25 497 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 25 503 0
	movw	r4, #:lower16:.LANCHOR3
	movt	r4, #:upper16:.LANCHOR3
	.loc 25 497 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 64
	.loc 25 497 0
	add	ip, sp, #8
	add	r5, sp, #16
	.loc 25 503 0
	ldr	r8, [r4, #20]
.LVL3438:
	.loc 25 497 0
	stm	r5, {r0, r1}
	stm	ip, {r2, r3}
	.loc 25 506 0
	str	r8, [sp]
	ldm	r5, {r0, r1}
	ldm	ip, {r2, r3}
	bl	create_untypeds_for_region.constprop.263
.LVL3439:
	cmp	r0, #0
	beq	.L3352
	mov	r6, #0
	add	r7, sp, #24
	.loc 25 513 0
	mov	r9, r6
.L3353:
	.loc 25 512 0
	add	r3, r4, r6
	.loc 25 514 0
	str	r8, [sp]
	.loc 25 512 0
	ldm	r3, {r0, r1}
	.loc 25 513 0
	str	r9, [r4, r6]
	add	r6, r6, #8
	str	r9, [r3, #4]
	.loc 25 512 0
	stm	r7, {r0, r1}
	.loc 25 514 0
	ldm	r5, {r0, r1}
	ldm	r7, {r2, r3}
	bl	create_untypeds_for_region.constprop.263
.LVL3440:
	cmp	r0, #0
	beq	.L3352
	.loc 25 511 0 discriminator 2
	cmp	r6, #16
	bne	.L3353
	.loc 25 520 0
	ldr	r3, [r4, #16]
	.loc 25 523 0
	mov	r0, #1
	.loc 25 519 0
	ldr	r2, [r4, #20]
.LVL3441:
	.loc 25 520 0
	str	r8, [r3, #56]
	str	r2, [r3, #60]
	.loc 25 524 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL3442:
.L3352:
	.cfi_restore_state
	.loc 25 507 0
	mov	r0, #0
	.loc 25 524 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE481:
	.size	create_untypeds, .-create_untypeds
	.align	2
	.global	create_untypeds_for_region
	.syntax unified
	.arm
	.type	create_untypeds_for_region, %function
create_untypeds_for_region:
.LFB480:
	.loc 25 459 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3443:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 44
	.cfi_offset 4, -44
	.cfi_offset 5, -40
	.cfi_offset 6, -36
	.cfi_offset 7, -32
	.cfi_offset 8, -28
	.cfi_offset 9, -24
	.cfi_offset 10, -20
	.cfi_offset 11, -16
	.cfi_offset 14, -12
	sub	sp, sp, #44
	.cfi_def_cfa_offset 88
	ldr	r8, [sp, #88]
	.loc 25 459 0
	add	r7, sp, #16
	str	r3, [sp, #84]
	.loc 25 463 0
	cmp	r8, r3
	.loc 25 459 0
	stm	r7, {r0, r1}
.LVL3444:
	ldr	r9, [sp, #92]
	.loc 25 463 0
	beq	.L3360
	mov	r5, r3
	clz	r3, r2
.LVL3445:
	lsr	r3, r3, #5
.LBB11226:
.LBB11227:
	.loc 25 424 0
	movw	fp, #:lower16:.LANCHOR3
	.loc 25 430 0
	movw	r10, #:lower16:.LC182
	str	r3, [sp, #4]
.LBB11228:
.LBB11229:
	.loc 4 1032 0
	lsl	r3, r2, #5
.LBE11229:
.LBE11228:
	.loc 25 424 0
	movt	fp, #:upper16:.LANCHOR3
.LBB11236:
.LBB11230:
	.loc 4 1032 0
	str	r3, [sp, #12]
	.loc 4 1031 0
	bic	r3, r2, #1
.LBE11230:
.LBE11236:
	.loc 25 430 0
	movt	r10, #:upper16:.LC182
.LBB11237:
.LBB11231:
	.loc 4 1031 0
	str	r3, [sp, #8]
	b	.L3370
.LVL3446:
.L3363:
.LBE11231:
.LBE11237:
	.loc 25 430 0
	mov	r0, r10
	bl	kprintf
.LVL3447:
.LBE11227:
.LBE11226:
	.loc 25 490 0
	mov	r3, #1
.LVL3448:
	add	r5, r5, r3, lsl r4
.LVL3449:
	.loc 25 463 0
	cmp	r8, r5
	beq	.L3360
.L3370:
.LVL3450:
	.loc 25 472 0 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r5, #-536870912
	movne	r3, #0
	andeq	r3, r3, #1
	cmp	r3, #0
	.loc 25 473 0 discriminator 1
	movne	r5, #4096
.LVL3451:
	rbiteq	r4, r5
	movtne	r5, 57344
	clzeq	r3, r4
.LBB11253:
.LBB11254:
	.loc 25 441 0 discriminator 1
	sub	r4, r8, r5
.LBE11254:
.LBE11253:
	movne	r3, #12
.LVL3452:
.LBB11256:
.LBB11255:
	clz	r4, r4
.LVL3453:
.LBE11255:
.LBE11256:
	.loc 25 476 0 discriminator 1
	rsb	r4, r4, #31
.LVL3454:
	cmp	r4, r3
	movcs	r4, r3
.LVL3455:
	.loc 25 486 0 discriminator 1
	cmp	r4, #3
	bls	.L3375
.LBB11257:
.LBB11250:
	.loc 25 424 0
	ldr	r6, [fp, #20]
	add	r3, sp, #24
.LVL3456:
	ldm	r7, {r0, r1}
	sub	r2, r6, r9
	.loc 25 425 0
	cmp	r2, #800
	stm	r3, {r0, r1}
.LVL3457:
	bcs	.L3363
.LBB11238:
.LBB11232:
	.loc 4 1031 0
	ldr	r0, [sp, #8]
.LBE11232:
.LBE11238:
	.loc 25 426 0
	add	ip, r5, #805306368
	ldr	r1, [fp, #16]
.LBB11239:
.LBB11233:
	.loc 4 1031 0
	cmp	r0, #0
.LBE11233:
.LBE11239:
	.loc 25 426 0
	add	r0, r2, #18
	.loc 25 427 0
	add	r2, r1, r2
.LVL3458:
	.loc 25 426 0
	str	ip, [r1, r0, lsl #2]
	.loc 25 427 0
	strb	r4, [r2, #3272]
.LVL3459:
.LBB11240:
.LBB11234:
	.loc 4 1031 0
	bne	.L3376
.LVL3460:
	.loc 4 1034 0
	bics	r2, r4, #31
	bne	.L3377
.LVL3461:
	.loc 4 1037 0
	ands	r2, r5, #15
	bne	.L3378
.LVL3462:
.LBE11234:
.LBE11240:
.LBB11241:
.LBB11242:
	.loc 25 278 0
	ldr	lr, [fp, #24]
	add	ip, sp, #32
	ldm	r3, {r0, r1}
.LVL3463:
	cmp	r6, lr
	stm	ip, {r0, r1}
.LVL3464:
	bcs	.L3379
	.loc 25 282 0
	ldm	ip, {r0, r1}
	bl	cap_get_capPtr
.LVL3465:
.LBB11243:
.LBB11244:
	.loc 25 122 0
	bic	r3, r5, #15
.LBE11244:
.LBE11243:
	.loc 25 282 0
	add	r2, r0, r6, lsl #4
.LVL3466:
.LBB11246:
.LBB11245:
	.loc 25 122 0
	orr	r3, r3, #2
	str	r3, [r0, r6, lsl #4]
	.loc 25 123 0
	mov	r0, r2
	.loc 25 122 0
	ldr	r3, [sp, #12]
	orr	r3, r3, r4
	str	r3, [r2, #4]
	.loc 25 123 0
	bl	cdtInsert.constprop.272
.LVL3467:
.LBE11245:
.LBE11246:
	.loc 25 283 0
	ldr	r3, [fp, #20]
	add	r3, r3, #1
	str	r3, [fp, #20]
.LVL3468:
.LBE11242:
.LBE11241:
.LBE11250:
.LBE11257:
	.loc 25 490 0
	mov	r3, #1
.LVL3469:
	add	r5, r5, r3, lsl r4
.LVL3470:
	.loc 25 463 0
	cmp	r8, r5
	bne	.L3370
.LVL3471:
.L3360:
	.loc 25 492 0
	mov	r2, #1
	b	.L3373
.LVL3472:
.L3379:
.LBB11258:
.LBB11251:
.LBB11248:
.LBB11247:
	.loc 25 279 0
	movw	r0, #:lower16:.LC161
	str	r2, [sp, #4]
	movt	r0, #:upper16:.LC161
	bl	kprintf
.LVL3473:
	ldr	r2, [sp, #4]
.LVL3474:
.L3373:
.LBE11247:
.LBE11248:
.LBE11251:
.LBE11258:
	.loc 25 493 0
	mov	r0, r2
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL3475:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL3476:
	bx	lr
.LVL3477:
.L3375:
	.cfi_restore_state
.LBB11259:
.LBB11260:
	.loc 25 486 0
	movw	r1, #:lower16:.LC77
	movw	r0, #:lower16:.LC179
	movt	r1, #:upper16:.LC77
	movt	r0, #:upper16:.LC179
	ldr	r3, .L3380
.LVL3478:
	movw	r2, #486
	bl	_assert_fail
.LVL3479:
.L3378:
.LBE11260:
.LBE11259:
.LBB11261:
.LBB11252:
.LBB11249:
.LBB11235:
	.loc 4 1037 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC181
.LVL3480:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC181
	ldr	r3, .L3380+4
	movw	r2, #1037
	bl	_assert_fail
.LVL3481:
.L3377:
	.loc 4 1034 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC180
.LVL3482:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC180
	ldr	r3, .L3380+4
	movw	r2, #1034
	bl	_assert_fail
.LVL3483:
.L3376:
	bl	cap_untyped_cap_new.part.175
.LVL3484:
.L3381:
	.align	2
.L3380:
	.word	.LANCHOR4+3728
	.word	.LANCHOR4+2216
.LBE11235:
.LBE11249:
.LBE11252:
.LBE11261:
	.cfi_endproc
.LFE480:
	.size	create_untypeds_for_region, .-create_untypeds_for_region
	.text
	.align	2
	.global	preemptionPoint
	.syntax unified
	.arm
	.type	preemptionPoint, %function
preemptionPoint:
.LFB585:
	.file 49 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/model/preemption.c"
	.loc 49 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 49 24 0
	movw	r3, #:lower16:ksWorkUnitsCompleted
	movt	r3, #:upper16:ksWorkUnitsCompleted
	ldr	r2, [r3]
	add	r2, r2, #1
	.loc 49 34 0
	cmp	r2, #99
	bls	.L3383
.LBB11266:
.LBB11267:
.LBB11268:
	.loc 18 335 0
	movw	r2, #:lower16:.LANCHOR2
.LBE11268:
.LBE11267:
	.loc 49 35 0
	mov	r1, #0
.LBB11271:
.LBB11269:
	.loc 18 335 0
	movt	r2, #:upper16:.LANCHOR2
.LBE11269:
.LBE11271:
	.loc 49 35 0
	str	r1, [r3]
.LBB11272:
.LBB11270:
	.loc 18 335 0
	ldr	r3, [r2, #4]
	ldr	r3, [r3, #24]
.LBE11270:
.LBE11272:
	.loc 49 36 0
	ubfx	r3, r3, #0, #10
	cmp	r3, #1020
	bcs	.L3385
	.loc 49 37 0
	mov	r0, #4
.LBE11266:
	.loc 49 42 0
	bx	lr
.L3383:
	.loc 49 24 0
	str	r2, [r3]
.L3385:
.LBB11273:
	.loc 49 41 0
	mov	r0, #0
	bx	lr
.LBE11273:
	.cfi_endproc
.LFE585:
	.size	preemptionPoint, .-preemptionPoint
	.align	2
	.global	receiveAsyncIPC
	.syntax unified
	.arm
	.type	receiveAsyncIPC, %function
receiveAsyncIPC:
.LFB590:
	.file 50 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/asyncendpoint.c"
	.loc 50 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3485:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 50 116 0
	add	ip, sp, #8
	stmdb	ip, {r1, r2}
	ldr	r4, [sp]
.LVL3486:
.LBB11310:
.LBB11311:
	.loc 4 1356 0
	and	r2, r4, #15
	cmp	r2, #6
	bne	.L3399
	.loc 4 1359 0
	bic	r4, r4, #15
.LVL3487:
	mov	r5, r0
.LBE11311:
.LBE11310:
	.loc 50 121 0
	ldr	r2, [r4]
	and	r2, r2, #3
	cmp	r2, #1
	bls	.L3390
	cmp	r2, #2
	bne	.L3387
	ldr	r3, [r4, #8]
.LVL3488:
.LBB11313:
.LBB11314:
	.loc 10 21 0
	str	r3, [r0]
.LVL3489:
.LBE11314:
.LBE11313:
.LBB11315:
.LBB11316:
	.loc 4 109 0
	ldr	r3, [r4]
	bic	r3, r3, #3
	str	r3, [r4]
.LVL3490:
.L3387:
.LBE11316:
.LBE11315:
	.loc 50 154 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL3491:
.L3390:
	.cfi_restore_state
.LBB11317:
	.loc 50 127 0
	cmp	r3, #0
	beq	.L3392
.LVL3492:
.LBB11318:
.LBB11319:
	.loc 26 435 0
	movw	r3, #:lower16:ksCurThread
.LVL3493:
.LBE11319:
.LBE11318:
.LBB11323:
.LBB11324:
	.loc 4 240 0
	orr	r2, r4, #6
.LBE11324:
.LBE11323:
.LBB11326:
.LBB11320:
	.loc 26 435 0
	movt	r3, #:upper16:ksCurThread
.LBE11320:
.LBE11326:
.LBB11327:
.LBB11325:
	.loc 4 240 0
	str	r2, [r0, #72]
.LVL3494:
.LBE11325:
.LBE11327:
.LBB11328:
.LBB11321:
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r0, r3
	beq	.L3400
.LVL3495:
.L3393:
	ldr	r1, [r4, #4]
.LVL3496:
.LBE11321:
.LBE11328:
.LBB11329:
.LBB11330:
	.loc 40 157 0
	mov	lr, #0
	ldr	r2, [r4]
.LVL3497:
	.loc 40 151 0
	bics	r3, r1, #15
.LVL3498:
.LBE11330:
.LBE11329:
.LBB11333:
.LBB11334:
	.loc 50 29 0
	bic	ip, r2, #15
.LVL3499:
.LBE11334:
.LBE11333:
.LBB11335:
.LBB11331:
	.loc 40 151 0
	moveq	r3, r5
.LVL3500:
	.loc 40 154 0
	strne	r5, [ip, #132]
.LBE11331:
.LBE11335:
.LBB11336:
.LBB11337:
	.loc 4 110 0
	bic	r0, r2, #3
.LBE11337:
.LBE11336:
.LBB11340:
.LBB11341:
.LBB11342:
.LBB11343:
	.loc 4 70 0
	tst	r3, #15
.LBE11343:
.LBE11342:
.LBE11341:
.LBE11340:
.LBB11358:
.LBB11338:
	.loc 4 110 0
	orr	r0, r0, #1
.LBE11338:
.LBE11358:
.LBB11359:
.LBB11332:
	.loc 40 156 0
	str	ip, [r5, #136]
	.loc 40 157 0
	str	lr, [r5, #132]
.LVL3501:
.LBE11332:
.LBE11359:
.LBB11360:
.LBB11339:
	.loc 4 110 0
	str	r0, [r4]
.LVL3502:
.LBE11339:
.LBE11360:
.LBB11361:
.LBB11356:
.LBB11347:
.LBB11344:
	.loc 4 70 0
	bne	.L3401
	.loc 4 72 0
	and	r1, r1, #15
.LVL3503:
	bic	r3, r3, #15
.LVL3504:
.LBE11344:
.LBE11347:
.LBB11348:
.LBB11349:
	.loc 4 89 0
	tst	r5, #15
.LBE11349:
.LBE11348:
.LBB11352:
.LBB11345:
	.loc 4 72 0
	orr	r3, r1, r3
	str	r3, [r4, #4]
.LVL3505:
.LBE11345:
.LBE11352:
.LBB11353:
.LBB11350:
	.loc 4 89 0
	bne	.L3402
	.loc 4 91 0
	and	r2, r2, #12
	bic	r5, r5, #15
.LVL3506:
	orr	r5, r2, r5
	orr	r5, r5, #1
	str	r5, [r4]
.LVL3507:
.LBE11350:
.LBE11353:
.LBE11356:
.LBE11361:
.LBE11317:
	.loc 50 154 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL3508:
.L3392:
	.cfi_restore_state
.LBB11367:
.LBB11362:
.LBB11363:
.LBB11364:
	.loc 10 21 0
	str	r3, [r0]
.LVL3509:
.LBE11364:
.LBE11363:
.LBE11362:
.LBE11367:
	.loc 50 154 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL3510:
.L3400:
	.cfi_restore_state
.LBB11368:
.LBB11365:
.LBB11322:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3393
	bl	scheduleTCB.part.236
.LVL3511:
	b	.L3393
.LVL3512:
.L3399:
.LBE11322:
.LBE11365:
.LBE11368:
.LBB11369:
.LBB11312:
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL3513:
.L3401:
.LBE11312:
.LBE11369:
.LBB11370:
.LBB11366:
.LBB11357:
.LBB11354:
.LBB11346:
	bl	async_endpoint_ptr_set_aepQueue_head.isra.206.part.207
.LVL3514:
.L3402:
.LBE11346:
.LBE11354:
.LBB11355:
.LBB11351:
	bl	async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209
.LVL3515:
.LBE11351:
.LBE11355:
.LBE11357:
.LBE11366:
.LBE11370:
	.cfi_endproc
.LFE590:
	.size	receiveAsyncIPC, .-receiveAsyncIPC
	.align	2
	.global	aepCancelAll
	.syntax unified
	.arm
	.type	aepCancelAll, %function
aepCancelAll:
.LFB591:
	.loc 50 158 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3516:
	ldr	r3, [r0]
.LVL3517:
	.loc 50 159 0
	and	r2, r3, #3
	cmp	r2, #1
	bxne	lr
	ldr	r2, [r0, #4]
.LVL3518:
.LBB11371:
.LBB11372:
.LBB11373:
	.loc 4 90 0
	and	r3, r3, #12
.LBE11373:
.LBE11372:
.LBE11371:
	.loc 50 158 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB11380:
.LBB11375:
.LBB11374:
	.loc 4 90 0
	str	r3, [r0]
.LBE11374:
.LBE11375:
	.loc 50 167 0
	bics	r4, r2, #15
.LVL3519:
.LBB11376:
.LBB11377:
	.loc 4 71 0
	and	r2, r2, #15
	str	r2, [r0, #4]
.LVL3520:
.LBE11377:
.LBE11376:
	.loc 50 167 0
	bne	.L3407
	b	.L3408
.LVL3521:
.L3406:
	.loc 50 167 0 is_stmt 0 discriminator 2
	ldr	r4, [r4, #132]
.LVL3522:
	cmp	r4, #0
	beq	.L3408
.LVL3523:
.L3407:
	.loc 50 168 0 is_stmt 1 discriminator 2
	mov	r0, r4
	bl	setThreadState.constprop.305
.LVL3524:
.LBB11378:
.LBB11379:
	.loc 40 53 0 discriminator 2
	ldr	r3, [r4, #76]
	tst	r3, #1
	bne	.L3406
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL3525:
.LBE11379:
.LBE11378:
	.loc 50 167 0
	ldr	r4, [r4, #132]
.LVL3526:
	cmp	r4, #0
	bne	.L3407
.LVL3527:
.L3408:
.LBE11380:
	.loc 50 173 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB11381:
	.loc 50 171 0
	b	rescheduleRequired
.LVL3528:
.LBE11381:
	.cfi_endproc
.LFE591:
	.size	aepCancelAll, .-aepCancelAll
	.align	2
	.global	asyncIPCCancel
	.syntax unified
	.arm
	.type	asyncIPCCancel, %function
asyncIPCCancel:
.LFB592:
	.loc 50 177 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3529:
	ldr	r2, [r1]
.LVL3530:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 50 181 0
	and	r3, r2, #3
	cmp	r3, #1
	bne	.L3424
.LVL3531:
.LBB11426:
.LBB11427:
	.loc 40 167 0
	ldr	r4, [r0, #136]
.LBE11427:
.LBE11426:
.LBB11430:
.LBB11431:
	.loc 50 29 0
	bic	r3, r2, #15
	ldr	ip, [r1, #4]
.LVL3532:
.LBE11431:
.LBE11430:
.LBB11433:
.LBB11428:
	.loc 40 167 0
	cmp	r4, #0
	.loc 40 168 0
	ldrne	r5, [r0, #132]
.LBE11428:
.LBE11433:
.LBB11434:
.LBB11432:
	.loc 50 28 0
	bic	lr, ip, #15
.LVL3533:
.LBE11432:
.LBE11434:
.LBB11435:
.LBB11429:
	.loc 40 170 0
	ldreq	lr, [r0, #132]
.LVL3534:
	.loc 40 168 0
	strne	r5, [r4, #132]
	ldrne	r5, [r0, #132]
	.loc 40 170 0
	moveq	r5, lr
.LVL3535:
	.loc 40 173 0
	cmp	r5, #0
	.loc 40 174 0
	strne	r4, [r5, #136]
	.loc 40 167 0
	moveq	r3, r4
.LVL3536:
.LBE11429:
.LBE11435:
.LBB11436:
.LBB11437:
.LBB11438:
.LBB11439:
	.loc 4 70 0
	tst	lr, #15
	bne	.L3425
	.loc 4 72 0
	and	ip, ip, #15
.LVL3537:
	bic	r4, lr, #15
.LBE11439:
.LBE11438:
.LBB11442:
.LBB11443:
	.loc 4 89 0
	tst	r3, #15
.LBE11443:
.LBE11442:
.LBB11446:
.LBB11440:
	.loc 4 72 0
	orr	ip, ip, r4
	str	ip, [r1, #4]
.LVL3538:
.LBE11440:
.LBE11446:
.LBB11447:
.LBB11444:
	.loc 4 89 0
	bne	.L3426
	.loc 4 91 0
	and	r2, r2, #15
.LVL3539:
	bic	r3, r3, #15
.LVL3540:
	orr	r3, r2, r3
.LVL3541:
.LBE11444:
.LBE11447:
.LBE11437:
.LBE11436:
	.loc 50 189 0
	cmp	lr, #0
.LBB11451:
.LBB11452:
.LBB11453:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE11453:
.LBE11452:
.LBE11451:
.LBB11472:
.LBB11473:
	.loc 4 109 0
	biceq	r3, r3, #3
.LBE11473:
.LBE11472:
.LBB11475:
.LBB11458:
.LBB11454:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
.LBE11454:
.LBE11458:
.LBE11475:
.LBB11476:
.LBB11474:
	.loc 4 109 0
	str	r3, [r1]
.LVL3542:
.LBE11474:
.LBE11476:
.LBB11477:
.LBB11459:
.LBB11455:
	.loc 26 435 0
	ldr	r2, [r2]
.LBE11455:
.LBE11459:
.LBB11460:
.LBB11461:
	.loc 4 269 0
	ldr	r3, [r0, #72]
.LBE11461:
.LBE11460:
.LBB11463:
.LBB11456:
	.loc 26 435 0
	cmp	r0, r2
.LBE11456:
.LBE11463:
.LBB11464:
.LBB11462:
	.loc 4 269 0
	bic	r3, r3, #15
	str	r3, [r0, #72]
.LVL3543:
.LBE11462:
.LBE11464:
.LBB11465:
.LBB11457:
	.loc 26 435 0
	popne	{r4, r5, r6, pc}
.LVL3544:
.LBE11457:
.LBE11465:
.LBB11466:
.LBB11467:
.LBB11468:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	popne	{r4, r5, r6, pc}
.LBE11468:
.LBE11467:
.LBE11466:
.LBE11477:
	.loc 50 195 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3545:
.LBB11478:
.LBB11471:
.LBB11470:
.LBB11469:
	b	scheduleTCB.part.236
.LVL3546:
.L3426:
	.cfi_restore_state
.LBE11469:
.LBE11470:
.LBE11471:
.LBE11478:
.LBB11479:
.LBB11450:
.LBB11448:
.LBB11445:
	bl	async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209
.LVL3547:
.L3425:
.LBE11445:
.LBE11448:
.LBB11449:
.LBB11441:
	bl	async_endpoint_ptr_set_aepQueue_head.isra.206.part.207
.LVL3548:
.L3424:
.LBE11441:
.LBE11449:
.LBE11450:
.LBE11479:
.LBB11480:
.LBB11481:
	.loc 50 181 0
	movw	r1, #:lower16:.LC183
.LVL3549:
	movw	r0, #:lower16:.LC184
.LVL3550:
	movt	r1, #:upper16:.LC183
	movt	r0, #:upper16:.LC184
	ldr	r3, .L3427
	mov	r2, #181
	bl	_assert_fail
.LVL3551:
.L3428:
	.align	2
.L3427:
	.word	.LANCHOR4+3756
.LBE11481:
.LBE11480:
	.cfi_endproc
.LFE592:
	.size	asyncIPCCancel, .-asyncIPCCancel
	.align	2
	.global	completeAsyncIPC
	.syntax unified
	.arm
	.type	completeAsyncIPC, %function
completeAsyncIPC:
.LFB593:
	.loc 50 199 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3552:
	.loc 50 202 0
	cmp	r1, #0
	.loc 50 199 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 50 202 0
	beq	.L3430
	ldr	r3, [r0]
.LVL3553:
	.loc 50 202 0 is_stmt 0 discriminator 1
	and	r2, r3, #3
	cmp	r2, #2
	bne	.L3430
.LVL3554:
	ldr	r2, [r0, #8]
.LBB11498:
.LBB11499:
	.loc 4 109 0 is_stmt 1
	bic	r3, r3, #3
	str	r3, [r0]
.LVL3555:
.LBE11499:
.LBE11498:
.LBB11500:
.LBB11501:
	.loc 10 21 0
	str	r2, [r1]
.LVL3556:
.LBE11501:
.LBE11500:
	.loc 50 209 0
	pop	{r4, pc}
.LVL3557:
.L3430:
.LBB11502:
.LBB11503:
	.loc 50 207 0
	movw	r1, #:lower16:.LC183
.LVL3558:
	movw	r0, #:lower16:.LC185
.LVL3559:
	movt	r1, #:upper16:.LC183
	movt	r0, #:upper16:.LC185
	ldr	r3, .L3436
	mov	r2, #207
	bl	_fail
.LVL3560:
.L3437:
	.align	2
.L3436:
	.word	.LANCHOR4+3772
.LBE11503:
.LBE11502:
	.cfi_endproc
.LFE593:
	.size	completeAsyncIPC, .-completeAsyncIPC
	.align	2
	.global	unbindAsyncEndpoint
	.syntax unified
	.arm
	.type	unbindAsyncEndpoint, %function
unbindAsyncEndpoint:
.LFB594:
	.loc 50 213 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3561:
	.loc 50 215 0
	ldr	r3, [r0, #84]
.LVL3562:
	.loc 50 217 0
	cmp	r3, #0
.LVL3563:
.LBB11504:
.LBB11505:
	.loc 4 33 0
	ldrne	r2, [r3, #12]
.LBE11505:
.LBE11504:
	.loc 50 219 0
	movne	r1, #0
.LBB11507:
.LBB11506:
	.loc 4 33 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LVL3564:
.LBE11506:
.LBE11507:
	.loc 50 219 0
	strne	r1, [r0, #84]
	bx	lr
	.cfi_endproc
.LFE594:
	.size	unbindAsyncEndpoint, .-unbindAsyncEndpoint
	.align	2
	.global	bindAsyncEndpoint
	.syntax unified
	.arm
	.type	bindAsyncEndpoint, %function
bindAsyncEndpoint:
.LFB595:
	.loc 50 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3565:
.LBB11508:
.LBB11509:
	.loc 4 32 0
	tst	r0, #15
	bne	.L3446
	.loc 4 34 0
	ldr	r2, [r1, #12]
	bic	r3, r0, #15
	and	r2, r2, #15
	orr	r3, r2, r3
	str	r3, [r1, #12]
.LVL3566:
.LBE11509:
.LBE11508:
	.loc 50 227 0
	str	r1, [r0, #84]
	bx	lr
.LVL3567:
.L3446:
	.loc 50 225 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB11511:
.LBB11510:
	bl	async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216
.LVL3568:
.LBE11510:
.LBE11511:
	.cfi_endproc
.LFE595:
	.size	bindAsyncEndpoint, .-bindAsyncEndpoint
	.align	2
	.global	invokeCNodeInsert
	.syntax unified
	.arm
	.type	invokeCNodeInsert, %function
invokeCNodeInsert:
.LFB600:
	.loc 41 329 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3569:
	ldr	ip, [r3]
	.loc 41 329 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 41 329 0
	stm	sp, {r0, r1}
	add	r5, sp, #8
.LBB11516:
.LBB11517:
.LBB11518:
.LBB11519:
	.loc 4 997 0
	and	lr, ip, #14
	cmp	lr, #14
	ldm	sp, {r0, r1}
	.loc 4 999 0
	uxtbeq	r4, ip
	.loc 4 998 0
	andne	r4, ip, #15
.LBE11519:
.LBE11518:
	.loc 41 389 0
	cmp	r4, #0
	stm	r5, {r0, r1}
.LVL3570:
	bne	.L3452
	.loc 41 391 0
	ldm	r5, {r0, r1}
	stm	r3, {r0, r1}
	.loc 41 392 0
	mov	r0, r2
	mov	r1, r3
	bl	cdtInsert
.LVL3571:
.LBE11517:
.LBE11516:
	.loc 41 333 0
	mov	r0, r4
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL3572:
.L3452:
	.cfi_restore_state
.LBB11521:
.LBB11520:
	bl	cteInsert.part.218
.LVL3573:
.LBE11520:
.LBE11521:
	.cfi_endproc
.LFE600:
	.size	invokeCNodeInsert, .-invokeCNodeInsert
	.align	2
	.global	cteInsert
	.syntax unified
	.arm
	.type	cteInsert, %function
cteInsert:
.LFB604:
	.loc 41 387 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3574:
	ldr	ip, [r3]
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 41 387 0
	stm	sp, {r0, r1}
.LVL3575:
.LBB11524:
.LBB11525:
	.loc 4 997 0
	and	r1, ip, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	ip, ip
.LVL3576:
	.loc 4 998 0
	andne	ip, ip, #15
.LBE11525:
.LBE11524:
	.loc 41 389 0
	cmp	ip, #0
	bne	.L3458
	.loc 41 391 0
	ldm	sp, {r0, r1}
	stm	r3, {r0, r1}
	.loc 41 392 0
	mov	r1, r3
	mov	r0, r2
	.loc 41 393 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 41 392 0
	b	cdtInsert
.LVL3577:
.L3458:
	.cfi_restore_state
	bl	cteInsert.part.218
.LVL3578:
	.cfi_endproc
.LFE604:
	.size	cteInsert, .-cteInsert
	.align	2
	.global	cteMove
	.syntax unified
	.arm
	.type	cteMove, %function
cteMove:
.LFB605:
	.loc 41 397 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3579:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r2
	ldr	lr, [r3]
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	mov	ip, r0
	.loc 41 397 0
	stm	sp, {r0, r1}
.LVL3580:
.LBB11546:
.LBB11547:
	.loc 4 997 0
	and	r2, lr, #14
.LVL3581:
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	lr, lr
.LVL3582:
	.loc 4 998 0
	andne	lr, lr, #15
.LBE11547:
.LBE11546:
	.loc 41 399 0
	cmp	lr, #0
	bne	.L3471
.LBB11548:
.LBB11549:
	.loc 4 997 0
	and	r2, ip, #14
.LBE11549:
.LBE11548:
	.loc 41 401 0
	ldm	sp, {r0, r1}
.LBB11551:
.LBB11550:
	.loc 4 997 0
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, ip
	.loc 4 998 0
	andne	r2, ip, #15
.LBE11550:
.LBE11551:
	.loc 41 401 0
	stm	r3, {r0, r1}
.LVL3583:
	.loc 41 402 0
	cmp	r2, #8
	beq	.L3472
	.loc 41 407 0
	mov	r1, r3
	mov	r0, r5
.LVL3584:
	bl	cdtMove
.LVL3585:
.L3469:
	.loc 41 409 0
	mov	r3, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	.loc 41 410 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
.LVL3586:
	@ sp needed
	pop	{r4, r5, pc}
.LVL3587:
.L3472:
	.cfi_restore_state
.LBB11552:
.LBB11553:
.LBB11554:
	.loc 4 1453 0
	and	r2, ip, #15
	cmp	r2, #8
	bne	.L3473
.LVL3588:
.LBE11554:
.LBE11553:
	.loc 41 404 0
	bic	ip, ip, #508
	bic	ip, ip, #3
.LBB11556:
.LBB11557:
	.loc 4 1426 0
	ldr	r2, [ip, #32]
.LBE11557:
.LBE11556:
	.loc 41 404 0
	add	ip, ip, #32
.LVL3589:
.LBB11560:
.LBB11558:
	.loc 4 1426 0
	and	r2, r2, #15
	cmp	r2, #8
	bne	.L3474
	.loc 4 1430 0
	tst	r3, #15
	bne	.L3475
	.loc 4 1433 0
	ldr	r2, [ip, #4]
	bic	r3, r3, #15
.LVL3590:
	and	r2, r2, #15
	orr	r3, r2, r3
	str	r3, [ip, #4]
	b	.L3469
.LVL3591:
.L3471:
.LBE11558:
.LBE11560:
.LBE11552:
.LBB11563:
.LBB11564:
	.loc 41 399 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC111
.LVL3592:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC111
	ldr	r3, .L3476
.LVL3593:
	movw	r2, #399
	bl	_assert_fail
.LVL3594:
.L3473:
.LBE11564:
.LBE11563:
.LBB11565:
.LBB11561:
.LBB11555:
	bl	cap_reply_cap_get_capTCBPtr.isra.69.part.70
.LVL3595:
.L3474:
.LBE11555:
.LBE11561:
.LBB11562:
.LBB11559:
	bl	cap_reply_cap_ptr_set_capCallerSlot.part.219
.LVL3596:
.L3475:
	.loc 4 1430 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC186
.LVL3597:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC186
	ldr	r3, .L3476+4
.LVL3598:
	movw	r2, #1430
	bl	_assert_fail
.LVL3599:
.L3477:
	.align	2
.L3476:
	.word	.LANCHOR4+3792
	.word	.LANCHOR4+3076
.LBE11559:
.LBE11562:
.LBE11565:
	.cfi_endproc
.LFE605:
	.size	cteMove, .-cteMove
	.align	2
	.global	invokeCNodeMove
	.syntax unified
	.arm
	.type	invokeCNodeMove, %function
invokeCNodeMove:
.LFB601:
	.loc 41 337 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3600:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 41 337 0
	stm	sp, {r0, r1}
	.loc 41 338 0
	ldm	sp, {r0, r1}
	bl	cteMove
.LVL3601:
	.loc 41 341 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE601:
	.size	invokeCNodeMove, .-invokeCNodeMove
	.align	2
	.global	invokeCNodeRotate
	.syntax unified
	.arm
	.type	invokeCNodeRotate, %function
invokeCNodeRotate:
.LFB602:
	.loc 41 346 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3602:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 41 346 0
	ldr	r5, [sp, #40]
	add	r4, sp, #16
	add	ip, sp, #8
	ldr	lr, [sp, #48]
	stm	r4, {r0, r1}
	stm	ip, {r2, r3}
	.loc 41 347 0
	cmp	r5, lr
	beq	.L3484
	.loc 41 350 0
	mov	r3, lr
	ldm	ip, {r0, r1}
	ldr	r2, [sp, #44]
	bl	cteMove
.LVL3603:
	.loc 41 351 0
	ldm	r4, {r0, r1}
	mov	r2, r5
	ldr	r3, [sp, #44]
	bl	cteMove
.LVL3604:
	.loc 41 355 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L3484:
	.cfi_restore_state
	.loc 41 348 0
	ldr	r1, [sp, #12]
	mov	r2, r5
	ldr	r3, [sp, #44]
	str	r1, [sp]
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	ldm	r4, {r0, r1}
	bl	cdtSwap
.LVL3605:
	.loc 41 355 0
	mov	r0, #0
	add	sp, sp, #28
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE602:
	.size	invokeCNodeRotate, .-invokeCNodeRotate
	.align	2
	.global	invokeCNodeSaveCaller
	.syntax unified
	.arm
	.type	invokeCNodeSaveCaller, %function
invokeCNodeSaveCaller:
.LFB603:
	.loc 41 359 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3606:
	.loc 41 363 0
	movw	r2, #:lower16:ksCurThread
	.loc 41 359 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 41 363 0
	movt	r2, #:upper16:ksCurThread
	.loc 41 359 0
	mov	r4, r0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 41 363 0
	ldr	r3, [r2]
	.loc 41 364 0
	add	lr, sp, #8
	.loc 41 363 0
	bic	r2, r3, #508
	bic	r2, r2, #3
	add	r2, r2, #48
.LVL3607:
	.loc 41 364 0
	ldm	r2, {r0, r1}
.LVL3608:
	stm	lr, {r0, r1}
.LVL3609:
.LBB11566:
.LBB11567:
	.loc 4 997 0
	and	r1, r0, #14
.LVL3610:
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, r0
.LVL3611:
	.loc 4 998 0
	andne	r1, r0, #15
.LBE11567:
.LBE11566:
	.loc 41 366 0
	cmp	r1, #0
	beq	.L3489
	cmp	r1, #8
	bne	.L3496
.LBB11568:
.LBB11569:
	.loc 4 1439 0
	and	r3, r0, #15
	str	r0, [sp, #8]
.LVL3612:
	cmp	r3, #8
.LBE11569:
.LBE11568:
	.loc 41 364 0
	ldr	r3, [r2, #4]
.LBB11572:
.LBB11570:
	.loc 4 1439 0
	bne	.L3497
.LBE11570:
.LBE11572:
	.loc 41 372 0
	tst	r3, #1
	beq	.L3498
.LVL3613:
.L3491:
	.loc 41 383 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL3614:
.L3496:
	.cfi_restore_state
	.loc 41 378 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC188
.LVL3615:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC188
	ldr	r3, .L3499
	movw	r2, #378
.LVL3616:
	bl	_fail
.LVL3617:
.L3489:
	.loc 41 368 0
	ldr	r2, [r3, #68]
.LVL3618:
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
.LVL3619:
	str	r1, [sp]
.LVL3620:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L3499
	str	r2, [sp, #4]
	mov	r2, #368
	bl	kprintf
.LVL3621:
	movw	r0, #:lower16:.LC187
	movt	r0, #:upper16:.LC187
	bl	kprintf
.LVL3622:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL3623:
	.loc 41 383 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL3624:
.L3498:
	.cfi_restore_state
	.loc 41 373 0
	str	r3, [sp, #12]
	mov	r3, r4
.LVL3625:
	ldm	lr, {r0, r1}
.LVL3626:
	bl	cteMove
.LVL3627:
	b	.L3491
.LVL3628:
.L3497:
.LBB11573:
.LBB11571:
	bl	cap_reply_cap_get_capReplyMaster.part.68
.LVL3629:
.L3500:
	.align	2
.L3499:
	.word	.LANCHOR4+3800
.LBE11571:
.LBE11573:
	.cfi_endproc
.LFE603:
	.size	invokeCNodeSaveCaller, .-invokeCNodeSaveCaller
	.align	2
	.global	capSwapForDelete
	.syntax unified
	.arm
	.type	capSwapForDelete, %function
capSwapForDelete:
.LFB606:
	.loc 41 414 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3630:
	.loc 41 417 0
	cmp	r0, r1
	bxeq	lr
.LVL3631:
	mov	r3, r1
.LVL3632:
	mov	r2, r0
.LBB11576:
.LBB11577:
	.loc 41 421 0
	ldm	r0, {r0, r1}
.LVL3633:
.LBE11577:
.LBE11576:
	.loc 41 414 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
.LBB11579:
.LBB11578:
	.loc 41 421 0
	add	ip, sp, #8
	.loc 41 424 0
	str	r3, [sp, #4]
	.loc 41 421 0
	stm	ip, {r0, r1}
	.loc 41 422 0
	ldm	r3, {r0, r1}
	add	r3, sp, #24
.LVL3634:
	stmdb	r3, {r0, r1}
	.loc 41 424 0
	ldr	lr, [sp, #20]
	ldm	ip, {r0, r1}
	ldr	r3, [sp, #16]
	str	lr, [sp]
	bl	cdtSwap
.LVL3635:
.LBE11578:
.LBE11579:
	.loc 41 425 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE606:
	.size	capSwapForDelete, .-capSwapForDelete
	.align	2
	.global	insertNewCap
	.syntax unified
	.arm
	.type	insertNewCap, %function
insertNewCap:
.LFB616:
	.loc 41 673 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3636:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 41 674 0
	stm	r1, {r2, r3}
	.loc 41 673 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	.loc 41 676 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	.loc 41 675 0
	b	cdtInsert
.LVL3637:
	.cfi_endproc
.LFE616:
	.size	insertNewCap, .-insertNewCap
	.align	2
	.global	setupReplyMaster
	.syntax unified
	.arm
	.type	setupReplyMaster, %function
setupReplyMaster:
.LFB617:
	.loc 41 680 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3638:
	.loc 41 683 0
	bic	r0, r0, #508
.LVL3639:
	bic	r0, r0, #3
	ldr	r3, [r0, #32]
	add	r1, r0, #32
.LVL3640:
.LBB11586:
.LBB11587:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3641:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE11587:
.LBE11586:
	.loc 41 684 0
	cmp	r3, #0
.LVL3642:
	.loc 41 687 0
	moveq	r2, #8
	moveq	r3, #1
	streq	r2, [r0, #32]
	streq	r3, [r1, #4]
	bx	lr
	.cfi_endproc
.LFE617:
	.size	setupReplyMaster, .-setupReplyMaster
	.align	2
	.global	ensureEmptySlot
	.syntax unified
	.arm
	.type	ensureEmptySlot, %function
ensureEmptySlot:
.LFB618:
	.loc 41 693 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3643:
	ldr	r0, [r0]
.LVL3644:
.LBB11588:
.LBB11589:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r0, r0
.LVL3645:
	.loc 4 998 0
	andne	r0, r0, #15
.LBE11589:
.LBE11588:
	.loc 41 694 0
	cmp	r0, #0
	.loc 41 695 0
	movwne	r3, #:lower16:current_syscall_error
	movne	r2, #8
	movtne	r3, #:upper16:current_syscall_error
	.loc 41 696 0
	movne	r0, #3
	.loc 41 695 0
	strne	r2, [r3, #24]
	.loc 41 700 0
	bx	lr
	.cfi_endproc
.LFE618:
	.size	ensureEmptySlot, .-ensureEmptySlot
	.align	2
	.global	getReceiveSlots
	.syntax unified
	.arm
	.type	getReceiveSlots, %function
getReceiveSlots:
.LFB620:
	.loc 41 724 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3646:
	.loc 41 732 0
	subs	r3, r1, #0
	beq	.L3528
.LVL3647:
	.loc 41 724 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
.LBB11590:
.LBB11591:
.LBB11592:
.LBB11593:
	.loc 34 61 0
	add	r2, r3, #500
.LVL3648:
.LBE11593:
.LBE11592:
.LBE11591:
.LBE11590:
.LBB11597:
.LBB11598:
	.loc 44 25 0
	add	r4, sp, #16
	mov	r1, r0
.LVL3649:
	mov	r0, r4
.LVL3650:
.LBE11598:
.LBE11597:
.LBB11601:
.LBB11596:
.LBB11595:
.LBB11594:
	.loc 34 61 0
	ldm	r2, {r2, r5, r6}
.LVL3651:
.LBE11594:
.LBE11595:
.LBE11596:
.LBE11601:
.LBB11602:
.LBB11599:
	.loc 44 25 0
	bl	lookupSlot
.LVL3652:
	.loc 44 26 0
	ldr	r1, [sp, #16]
	cmp	r1, #0
	bne	.L3521
.LVL3653:
	.loc 44 33 0
	ldr	r3, [sp, #20]
.LBE11599:
.LBE11602:
.LBB11603:
.LBB11604:
	.loc 44 129 0
	add	r0, sp, #8
.LBE11604:
.LBE11603:
.LBB11606:
.LBB11600:
	.loc 44 33 0
	ldm	r3, {r2, r3}
.LVL3654:
.LBE11600:
.LBE11606:
.LBB11607:
.LBB11605:
	.loc 44 129 0
	str	r6, [sp, #4]
	str	r5, [sp]
	str	r2, [sp, #16]
	str	r3, [sp, #20]
.LVL3655:
	ldm	r4, {r2, r3}
.LVL3656:
	bl	lookupSlotForCNodeOp
.LVL3657:
.LBE11605:
.LBE11607:
	.loc 41 746 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L3521
	.loc 41 749 0
	ldr	r0, [sp, #12]
.LVL3658:
	ldr	r3, [r0]
.LVL3659:
.LBB11608:
.LBB11609:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3660:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE11609:
.LBE11608:
	.loc 41 751 0
	cmp	r3, #0
	bne	.L3521
	.loc 41 756 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL3661:
.L3521:
	.cfi_restore_state
	.loc 41 741 0
	mov	r0, #0
	.loc 41 756 0
	add	sp, sp, #24
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL3662:
.L3528:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 41 733 0
	mov	r0, #0
.LVL3663:
	.loc 41 756 0
	bx	lr
	.cfi_endproc
.LFE620:
	.size	getReceiveSlots, .-getReceiveSlots
	.align	2
	.global	loadCapTransfer
	.syntax unified
	.arm
	.type	loadCapTransfer, %function
loadCapTransfer:
.LFB621:
	.loc 41 760 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3664:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB11610:
.LBB11611:
	.loc 34 62 0
	ldr	ip, [r1, #500]
	.loc 34 60 0
	ldr	lr, [r1, #504]
.LVL3665:
	.loc 34 61 0
	ldr	r2, [r1, #508]
.LVL3666:
	.loc 34 62 0
	stm	r0, {ip, lr}
	str	r2, [r0, #8]
.LVL3667:
.LBE11611:
.LBE11610:
	.loc 41 763 0
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE621:
	.size	loadCapTransfer, .-loadCapTransfer
	.align	2
	.global	replyFromKernel_error
	.syntax unified
	.arm
	.type	replyFromKernel_error, %function
replyFromKernel_error:
.LFB626:
	.loc 42 207 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3668:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 42 207 0
	mov	r4, r0
	.loc 42 211 0
	mov	r1, r4
	mov	r0, #1
.LVL3669:
	bl	lookupIPCBuffer
.LVL3670:
.LBB11618:
.LBB11619:
	.loc 10 21 0
	mov	r3, #0
.LBE11619:
.LBE11618:
	.loc 42 213 0
	mov	r1, r0
.LBB11621:
.LBB11620:
	.loc 10 21 0
	str	r3, [r4]
.LVL3671:
.LBE11620:
.LBE11621:
	.loc 42 213 0
	mov	r0, r4
.LVL3672:
	bl	setMRs_syscall_error
.LVL3673:
	.loc 42 214 0
	movw	r2, #:lower16:current_syscall_error
	movt	r2, #:upper16:current_syscall_error
	ldr	r3, [r2, #24]
.LVL3674:
.LBB11622:
.LBB11623:
	.loc 33 20 0
	lsr	r2, r3, #20
	lsl	r2, r2, #20
	cmp	r2, #0
	bne	.L3535
	.loc 33 29 0
	bics	r2, r0, #127
	.loc 33 21 0
	lsl	r3, r3, #12
.LVL3675:
	.loc 33 29 0
	bne	.L3536
.LVL3676:
.LBE11623:
.LBE11622:
.LBB11625:
.LBB11626:
	.loc 10 21 0
	orr	r3, r0, r3
.LVL3677:
	str	r3, [r4, #4]
.LVL3678:
	pop	{r4, pc}
.LVL3679:
.L3535:
.LBE11626:
.LBE11625:
.LBB11627:
.LBB11624:
	bl	message_info_new.part.143
.LVL3680:
.L3536:
	.loc 33 29 0
	movw	r1, #:lower16:.LC65
	movw	r0, #:lower16:.LC133
.LVL3681:
	movt	r1, #:upper16:.LC65
	movt	r0, #:upper16:.LC133
	ldr	r3, .L3537
.LVL3682:
	mov	r2, #29
	bl	_assert_fail
.LVL3683:
.L3538:
	.align	2
.L3537:
	.word	.LANCHOR4+1620
.LBE11624:
.LBE11627:
	.cfi_endproc
.LFE626:
	.size	replyFromKernel_error, .-replyFromKernel_error
	.align	2
	.global	replyFromKernel_success_empty
	.syntax unified
	.arm
	.type	replyFromKernel_success_empty, %function
replyFromKernel_success_empty:
.LFB627:
	.loc 42 220 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3684:
.LBB11634:
.LBB11635:
	.loc 10 21 0
	mov	r3, #0
	str	r3, [r0]
.LVL3685:
.LBE11635:
.LBE11634:
.LBB11636:
.LBB11637:
	str	r3, [r0, #4]
.LVL3686:
	bx	lr
.LBE11637:
.LBE11636:
	.cfi_endproc
.LFE627:
	.size	replyFromKernel_success_empty, .-replyFromKernel_success_empty
	.align	2
	.global	epCancelAll
	.syntax unified
	.arm
	.type	epCancelAll, %function
epCancelAll:
.LFB629:
	.loc 42 283 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3687:
	ldr	r3, [r0]
.LVL3688:
	.loc 42 284 0
	tst	r3, #3
	bxeq	lr
	ldr	r2, [r0, #4]
.LVL3689:
.LBB11638:
.LBB11639:
.LBB11640:
	.loc 4 396 0
	and	r3, r3, #12
.LBE11640:
.LBE11639:
.LBE11638:
	.loc 42 283 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB11647:
.LBB11642:
.LBB11641:
	.loc 4 396 0
	str	r3, [r0]
.LBE11641:
.LBE11642:
	.loc 42 297 0
	bics	r4, r2, #15
.LVL3690:
.LBB11643:
.LBB11644:
	.loc 4 377 0
	and	r2, r2, #15
	str	r2, [r0, #4]
.LVL3691:
.LBE11644:
.LBE11643:
	.loc 42 297 0
	bne	.L3545
	b	.L3546
.LVL3692:
.L3544:
	.loc 42 297 0 is_stmt 0 discriminator 2
	ldr	r4, [r4, #132]
.LVL3693:
	cmp	r4, #0
	beq	.L3546
.LVL3694:
.L3545:
	.loc 42 298 0 is_stmt 1 discriminator 2
	mov	r0, r4
	bl	setThreadState.constprop.305
.LVL3695:
.LBB11645:
.LBB11646:
	.loc 40 53 0 discriminator 2
	ldr	r3, [r4, #76]
	tst	r3, #1
	bne	.L3544
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL3696:
.LBE11646:
.LBE11645:
	.loc 42 297 0
	ldr	r4, [r4, #132]
.LVL3697:
	cmp	r4, #0
	bne	.L3545
.LVL3698:
.L3546:
.LBE11647:
	.loc 42 306 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB11648:
	.loc 42 302 0
	b	rescheduleRequired
.LVL3699:
.LBE11648:
	.cfi_endproc
.LFE629:
	.size	epCancelAll, .-epCancelAll
	.align	2
	.global	epCancelBadgedSends
	.syntax unified
	.arm
	.type	epCancelBadgedSends, %function
epCancelBadgedSends:
.LFB630:
	.loc 42 310 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3700:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	ldr	r6, [r0]
.LVL3701:
	.loc 42 311 0
	and	r3, r6, #3
	cmp	r3, #1
	beq	.L3551
	popcc	{r4, r5, r6, r7, r8, r9, r10, pc}
	cmp	r3, #2
	beq	.L3572
	.loc 42 349 0
	movw	r1, #:lower16:.LC189
.LVL3702:
	movw	r0, #:lower16:.LC190
.LVL3703:
	movt	r1, #:upper16:.LC189
	movt	r0, #:upper16:.LC190
	ldr	r3, .L3576
	movw	r2, #349
	bl	_fail
.LVL3704:
.L3551:
	ldr	r3, [r0, #4]
.LVL3705:
.LBB11681:
.LBB11682:
.LBB11683:
	.loc 4 396 0
	and	r2, r6, #12
	mov	r8, r0
	str	r2, [r0]
.LBE11683:
.LBE11682:
.LBB11684:
.LBB11685:
	.loc 42 27 0
	bic	r6, r6, #15
.LVL3706:
.LBE11685:
.LBE11684:
	.loc 42 327 0
	bics	r4, r3, #15
.LVL3707:
.LBB11687:
.LBB11688:
	.loc 4 377 0
	and	r3, r3, #15
	str	r3, [r0, #4]
.LVL3708:
.LBE11688:
.LBE11687:
	.loc 42 327 0
	beq	.L3563
	mov	r7, r1
	mov	r9, r4
	b	.L3558
.LVL3709:
.L3554:
	.loc 42 327 0 is_stmt 0 discriminator 1
	cmp	r5, #0
	mov	r4, r5
.LVL3710:
	beq	.L3573
.LVL3711:
.L3558:
.LBB11689:
	.loc 42 331 0 is_stmt 1
	ldr	r3, [r4, #80]
	.loc 42 330 0
	ldr	r5, [r4, #132]
.LVL3712:
	.loc 42 331 0
	cmp	r7, r3, lsr #4
	bne	.L3554
	.loc 42 332 0
	mov	r0, r4
	bl	setThreadState.constprop.305
.LVL3713:
.LBB11690:
.LBB11691:
	.loc 40 53 0
	ldr	r3, [r4, #76]
	tst	r3, #1
	beq	.L3574
.L3555:
.LVL3714:
.LBE11691:
.LBE11690:
.LBB11693:
.LBB11694:
	.loc 40 167 0
	ldr	r3, [r4, #136]
	cmp	r3, #0
	.loc 40 168 0
	ldrne	r2, [r4, #132]
	.loc 40 170 0
	ldreq	r9, [r4, #132]
.LVL3715:
	.loc 40 168 0
	strne	r2, [r3, #132]
	ldrne	r2, [r4, #132]
	.loc 40 170 0
	moveq	r2, r9
.LVL3716:
	mov	r4, r5
.LVL3717:
	.loc 40 173 0
	cmp	r2, #0
	.loc 40 174 0
	strne	r3, [r2, #136]
	.loc 40 167 0
	moveq	r6, r3
.LVL3718:
.LBE11694:
.LBE11693:
.LBE11689:
	.loc 42 327 0
	cmp	r5, #0
	bne	.L3558
.LVL3719:
.L3573:
.LBB11696:
.LBB11697:
.LBB11698:
.LBB11699:
	.loc 4 376 0
	tst	r9, #15
	bne	.L3559
	ldr	r3, [r8, #4]
	bic	r4, r9, #15
.LVL3720:
.L3553:
	.loc 4 378 0
	and	r3, r3, #15
.LBE11699:
.LBE11698:
.LBB11702:
.LBB11703:
	.loc 4 395 0
	tst	r6, #15
.LBE11703:
.LBE11702:
.LBB11707:
.LBB11700:
	.loc 4 378 0
	orr	r4, r3, r4
	str	r4, [r8, #4]
.LVL3721:
.LBE11700:
.LBE11707:
.LBB11708:
.LBB11704:
	.loc 4 395 0
	bne	.L3575
	.loc 4 397 0
	ldr	r3, [r8]
	bic	r6, r6, #15
.LVL3722:
.LBE11704:
.LBE11708:
.LBE11697:
.LBE11696:
	.loc 42 339 0
	cmp	r9, #0
.LBB11714:
.LBB11712:
.LBB11709:
.LBB11705:
	.loc 4 397 0
	and	r3, r3, #15
	orr	r6, r3, r6
.LVL3723:
.LBE11705:
.LBE11709:
.LBE11712:
.LBE11714:
.LBB11715:
.LBB11716:
	.loc 4 416 0
	bicne	r6, r6, #3
	orrne	r6, r6, #1
	str	r6, [r8]
.LBE11716:
.LBE11715:
.LBE11681:
	.loc 42 351 0
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3724:
.LBB11720:
	.loc 42 343 0
	b	rescheduleRequired
.LVL3725:
.L3572:
	.cfi_restore_state
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL3726:
.L3574:
.LBB11717:
.LBB11695:
.LBB11692:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL3727:
	b	.L3555
.LVL3728:
.L3563:
.LBE11692:
.LBE11695:
.LBE11717:
.LBB11718:
.LBB11686:
	.loc 42 29 0
	mov	r9, r4
	b	.L3553
.LVL3729:
.L3559:
.LBE11686:
.LBE11718:
.LBB11719:
.LBB11713:
.LBB11710:
.LBB11701:
	bl	endpoint_ptr_set_epQueue_head.isra.224.part.225
.LVL3730:
.L3575:
.LBE11701:
.LBE11710:
.LBB11711:
.LBB11706:
	bl	endpoint_ptr_set_epQueue_tail.isra.226.part.227
.LVL3731:
.L3577:
	.align	2
.L3576:
	.word	.LANCHOR4+3824
.LBE11706:
.LBE11711:
.LBE11713:
.LBE11719:
.LBE11720:
	.cfi_endproc
.LFE630:
	.size	epCancelBadgedSends, .-epCancelBadgedSends
	.align	2
	.global	invokeIRQControl
	.syntax unified
	.arm
	.type	invokeIRQControl, %function
invokeIRQControl:
.LFB632:
	.file 51 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/interrupt.c"
	.loc 51 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3732:
.LBB11730:
.LBB11731:
.LBB11732:
.LBB11733:
.LBB11734:
	.loc 18 207 0
	movw	r3, #:lower16:.LANCHOR2
.LVL3733:
.LBE11734:
.LBE11733:
.LBE11732:
.LBE11731:
.LBE11730:
	.loc 51 85 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB11753:
.LBB11750:
.LBB11745:
.LBB11740:
.LBB11735:
	.loc 18 207 0
	movt	r3, #:upper16:.LANCHOR2
.LBE11735:
.LBE11740:
.LBE11745:
	.loc 51 266 0
	mov	r4, #1
.LBB11746:
.LBB11741:
.LBB11736:
	.loc 18 207 0
	and	lr, r0, #31
	.loc 18 205 0
	lsr	ip, r0, #5
	.loc 18 207 0
	ldr	r5, [r3]
.LBE11736:
.LBE11741:
.LBE11746:
	.loc 51 266 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
.LBB11747:
.LBB11742:
.LBB11737:
	.loc 18 207 0
	lsl	lr, r4, lr
.LBE11737:
.LBE11742:
.LBE11747:
	.loc 51 266 0
	str	r4, [r3, r0, lsl #2]
.LVL3734:
.LBE11750:
.LBE11753:
.LBB11754:
.LBB11755:
	.loc 4 1919 0
	bics	r4, r0, #255
.LBE11755:
.LBE11754:
.LBB11762:
.LBB11751:
.LBB11748:
.LBB11743:
.LBB11738:
	.loc 18 207 0
	add	ip, ip, #64
.LVL3735:
.LBE11738:
.LBE11743:
.LBE11748:
.LBE11751:
.LBE11762:
	.loc 51 85 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
.LBB11763:
.LBB11752:
.LBB11749:
.LBB11744:
.LBB11739:
	.loc 18 207 0
	str	lr, [r5, ip, lsl #2]
.LVL3736:
.LBE11739:
.LBE11744:
.LBE11749:
.LBE11752:
.LBE11763:
.LBB11764:
.LBB11758:
	.loc 4 1919 0
	bne	.L3581
.LVL3737:
	.loc 4 1925 0
	uxtb	r0, r0
.LVL3738:
	mov	ip, #30
.LBE11758:
.LBE11764:
	.loc 51 87 0
	mov	r3, r1
.LBB11765:
.LBB11759:
	.loc 4 1925 0
	str	ip, [sp]
.LBE11759:
.LBE11765:
	.loc 51 87 0
	add	r1, sp, #8
.LVL3739:
.LBB11766:
.LBB11760:
	.loc 4 1925 0
	str	r0, [sp, #4]
.LVL3740:
.LBE11760:
.LBE11766:
	.loc 51 87 0
	ldmdb	r1, {r0, r1}
	bl	cteInsert
.LVL3741:
	.loc 51 90 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL3742:
.L3581:
	.cfi_restore_state
.LBB11767:
.LBB11761:
.LBB11756:
.LBB11757:
	.loc 4 1919 0
	movw	r1, #:lower16:.LC29
.LVL3743:
	movw	r0, #:lower16:.LC191
.LVL3744:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC191
	ldr	r3, .L3582
	movw	r2, #1919
.LVL3745:
	bl	_assert_fail
.LVL3746:
.L3583:
	.align	2
.L3582:
	.word	.LANCHOR4+3844
.LBE11757:
.LBE11756:
.LBE11761:
.LBE11767:
	.cfi_endproc
.LFE632:
	.size	invokeIRQControl, .-invokeIRQControl
	.align	2
	.global	decodeIRQControlInvocation
	.syntax unified
	.arm
	.type	decodeIRQControlInvocation, %function
decodeIRQControlInvocation:
.LFB631:
	.loc 51 29 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3747:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 51 30 0
	cmp	r0, #23
	.loc 51 29 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #36
	.cfi_def_cfa_offset 64
.LVL3748:
	.loc 51 29 0
	str	r3, [sp, #60]
.LVL3749:
	.loc 51 30 0
	beq	.L3599
	.loc 51 74 0
	cmp	r0, #24
	beq	.L3598
	.loc 51 77 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL3750:
	movt	r3, #:upper16:ksCurThread
	mov	r2, #77
.LVL3751:
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L3601
.LVL3752:
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL3753:
	movw	r0, #:lower16:.LC192
	movt	r0, #:upper16:.LC192
	bl	kprintf
.LVL3754:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL3755:
.L3598:
	.loc 51 78 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	.loc 51 79 0
	mov	r0, r2
	.loc 51 78 0
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L3596:
	.loc 51 81 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3756:
.L3599:
	.cfi_restore_state
.LBB11768:
	.loc 51 38 0 discriminator 1
	cmp	r3, #0
	cmpne	r1, #2
	mov	r4, r2
	movls	r2, #1
.LVL3757:
	movhi	r2, #0
	bls	.L3600
.LVL3758:
.LBB11769:
.LBB11770:
	.loc 37 30 0
	movw	r5, #:lower16:ksCurThread
.LBE11770:
.LBE11769:
	.loc 51 47 0
	ldm	r3, {r0, r1}
.LVL3759:
.LBB11776:
.LBB11773:
	.loc 37 30 0
	movt	r5, #:upper16:ksCurThread
.LBE11773:
.LBE11776:
	.loc 51 47 0
	add	ip, sp, #8
.LBB11777:
.LBB11774:
	.loc 37 30 0
	ldr	r3, [r5]
.LVL3760:
.LBE11774:
.LBE11777:
	.loc 51 47 0
	stm	ip, {r0, r1}
.LBB11778:
.LBB11775:
.LBB11771:
.LBB11772:
	.loc 10 27 0
	ldr	r6, [r3, #8]
.LVL3761:
.LBE11772:
.LBE11771:
.LBE11775:
.LBE11778:
.LBB11779:
.LBB11780:
.LBB11781:
.LBB11782:
	ldr	lr, [r3, #12]
.LVL3762:
.LBE11782:
.LBE11781:
.LBE11780:
.LBE11779:
.LBB11783:
.LBB11784:
.LBB11785:
.LBB11786:
	ldr	r7, [r3, #16]
.LVL3763:
.LBE11786:
.LBE11785:
.LBE11784:
.LBE11783:
	.loc 51 49 0
	cmp	r6, #159
	bls	.L3588
	.loc 51 50 0
	movw	r3, #:lower16:current_syscall_error
	mov	ip, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 51 52 0
	mov	r1, #159
	.loc 51 51 0
	str	r2, [r3, #8]
	.loc 51 53 0
	mov	r0, #3
	.loc 51 50 0
	str	ip, [r3, #24]
	.loc 51 52 0
	str	r1, [r3, #12]
	.loc 51 53 0
	b	.L3596
.LVL3764:
.L3600:
	.loc 51 39 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 51 40 0
	mov	r0, #3
.LVL3765:
	.loc 51 39 0
	str	r2, [r3, #24]
.LBE11768:
	.loc 51 81 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL3766:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3767:
.L3588:
	.cfi_restore_state
.LBB11795:
.LBB11787:
.LBB11788:
	.loc 51 260 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
.LBE11788:
.LBE11787:
	.loc 51 56 0
	ldr	r3, [r3, r6, lsl #2]
	cmp	r3, #0
	beq	.L3589
	.loc 51 57 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #9
	movt	r3, #:upper16:current_syscall_error
	.loc 51 58 0
	mov	r0, #3
	.loc 51 57 0
	str	r2, [r3, #24]
	.loc 51 58 0
	b	.L3596
.L3589:
	ldm	ip, {r0, r1}
	add	r2, sp, #24
.LBB11789:
.LBB11790:
	.loc 44 129 0
	str	r7, [sp, #4]
	str	lr, [sp]
	stm	r2, {r0, r1}
.LVL3768:
	mov	r1, r3
	add	r0, sp, #16
	ldm	r2, {r2, r3}
	bl	lookupSlotForCNodeOp
.LVL3769:
	ldr	r0, [sp, #16]
.LVL3770:
.LBE11790:
.LBE11789:
	.loc 51 62 0
	cmp	r0, #0
	bne	.L3596
	.loc 51 65 0
	ldr	r7, [sp, #20]
.LVL3771:
	ldr	r3, [r7]
.LVL3772:
.LBB11791:
.LBB11792:
.LBB11793:
.LBB11794:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3773:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE11794:
.LBE11793:
	.loc 41 694 0
	cmp	r3, #0
	beq	.L3592
	.loc 41 695 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	.loc 41 696 0
	mov	r0, #3
.LVL3774:
	.loc 41 695 0
	str	r2, [r3, #24]
.LVL3775:
	b	.L3596
.LVL3776:
.L3592:
.LBE11792:
.LBE11791:
	.loc 51 72 0
	ldr	r0, [r5]
.LVL3777:
	bl	setThreadState.constprop.305
.LVL3778:
	.loc 51 73 0
	mov	r2, r4
	mov	r1, r7
	uxth	r0, r6
.LBE11795:
	.loc 51 81 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL3779:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LBB11796:
	.loc 51 73 0
	b	invokeIRQControl
.LVL3780:
.L3602:
	.align	2
.L3601:
	.word	.LANCHOR4+3868
.LBE11796:
	.cfi_endproc
.LFE631:
	.size	decodeIRQControlInvocation, .-decodeIRQControlInvocation
	.align	2
	.global	invokeIRQHandler_AckIRQ
	.syntax unified
	.arm
	.type	invokeIRQHandler_AckIRQ, %function
invokeIRQHandler_AckIRQ:
.LFB634:
	.loc 51 159 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3781:
.LBB11797:
.LBB11798:
.LBB11799:
	.loc 18 207 0
	movw	r2, #:lower16:.LANCHOR2
.LVL3782:
	.loc 18 205 0
	lsr	r3, r0, #5
.LVL3783:
	.loc 18 207 0
	movt	r2, #:upper16:.LANCHOR2
	ldr	r1, [r2]
	and	r0, r0, #31
.LVL3784:
	mov	r2, #1
	add	r3, r3, #64
.LVL3785:
	lsl	r0, r2, r0
	str	r0, [r1, r3, lsl #2]
.LVL3786:
	bx	lr
.LBE11799:
.LBE11798:
.LBE11797:
	.cfi_endproc
.LFE634:
	.size	invokeIRQHandler_AckIRQ, .-invokeIRQHandler_AckIRQ
	.align	2
	.global	invokeIRQHandler_SetMode
	.syntax unified
	.arm
	.type	invokeIRQHandler_SetMode, %function
invokeIRQHandler_SetMode:
.LFB635:
	.loc 51 164 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3787:
	bx	lr
	.cfi_endproc
.LFE635:
	.size	invokeIRQHandler_SetMode, .-invokeIRQHandler_SetMode
	.align	2
	.global	deletedIRQHandler
	.syntax unified
	.arm
	.type	deletedIRQHandler, %function
deletedIRQHandler:
.LFB639:
	.loc 51 202 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3788:
.LBB11810:
.LBB11811:
.LBB11812:
.LBB11813:
.LBB11814:
.LBB11815:
	.loc 18 199 0
	movw	r1, #:lower16:.LANCHOR2
.LVL3789:
.LBE11815:
.LBE11814:
.LBE11813:
.LBE11812:
.LBE11811:
.LBE11810:
	.loc 51 202 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB11829:
.LBB11828:
.LBB11825:
.LBB11822:
.LBB11819:
.LBB11816:
	.loc 18 199 0
	movt	r1, #:upper16:.LANCHOR2
	and	lr, r0, #31
	.loc 18 196 0
	lsr	r3, r0, #5
	.loc 18 199 0
	mov	r2, #1
	ldr	ip, [r1]
	lsl	r2, r2, lr
.LBE11816:
.LBE11819:
.LBE11822:
.LBE11825:
	.loc 51 266 0
	movw	r1, #:lower16:intStateIRQTable
	movt	r1, #:upper16:intStateIRQTable
	mov	lr, #0
.LBB11826:
.LBB11823:
.LBB11820:
.LBB11817:
	.loc 18 199 0
	add	r3, r3, #96
.LBE11817:
.LBE11820:
.LBE11823:
.LBE11826:
	.loc 51 266 0
	str	lr, [r1, r0, lsl #2]
.LVL3790:
.LBB11827:
.LBB11824:
.LBB11821:
.LBB11818:
	.loc 18 199 0
	str	r2, [ip, r3, lsl #2]
.LVL3791:
	ldr	pc, [sp], #4
.LBE11818:
.LBE11821:
.LBE11824:
.LBE11827:
.LBE11828:
.LBE11829:
	.cfi_endproc
.LFE639:
	.size	deletedIRQHandler, .-deletedIRQHandler
	.align	2
	.global	isIRQActive
	.syntax unified
	.arm
	.type	isIRQActive, %function
isIRQActive:
.LFB641:
	.loc 51 259 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3792:
	.loc 51 260 0
	movw	r3, #:lower16:intStateIRQTable
	movt	r3, #:upper16:intStateIRQTable
	ldr	r0, [r3, r0, lsl #2]
.LVL3793:
	.loc 51 261 0
	adds	r0, r0, #0
	movne	r0, #1
	bx	lr
	.cfi_endproc
.LFE641:
	.size	isIRQActive, .-isIRQActive
	.align	2
	.global	setIRQState
	.syntax unified
	.arm
	.type	setIRQState, %function
setIRQState:
.LFB642:
	.loc 51 265 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3794:
	.loc 51 266 0
	movw	r3, #:lower16:intStateIRQTable
.LBB11840:
.LBB11841:
.LBB11842:
.LBB11843:
.LBB11844:
	.loc 18 199 0
	movw	r2, #:lower16:.LANCHOR2
.LBE11844:
.LBE11843:
.LBE11842:
.LBE11841:
.LBE11840:
	.loc 51 266 0
	movt	r3, #:upper16:intStateIRQTable
.LBB11855:
.LBB11853:
.LBB11849:
.LBB11847:
.LBB11845:
	.loc 18 199 0
	movt	r2, #:upper16:.LANCHOR2
.LBE11845:
.LBE11847:
.LBE11849:
.LBE11853:
.LBE11855:
	.loc 51 266 0
	str	r0, [r3, r1, lsl #2]
.LVL3795:
.LBB11856:
.LBB11854:
	.loc 18 345 0
	cmp	r0, #0
.LBB11850:
.LBB11848:
.LBB11846:
	.loc 18 196 0
	lsr	r3, r1, #5
.LVL3796:
	.loc 18 199 0
	ldr	r0, [r2]
.LVL3797:
	and	r1, r1, #31
.LVL3798:
	mov	r2, #1
	addeq	r3, r3, #96
.LVL3799:
.LBE11846:
.LBE11848:
.LBE11850:
.LBB11851:
.LBB11852:
	.loc 18 207 0
	lsl	r1, r2, r1
.LVL3800:
	addne	r3, r3, #64
	str	r1, [r0, r3, lsl #2]
.LVL3801:
	bx	lr
.LBE11852:
.LBE11851:
.LBE11854:
.LBE11856:
	.cfi_endproc
.LFE642:
	.size	setIRQState, .-setIRQState
	.align	2
	.global	getObjectSize
	.syntax unified
	.arm
	.type	getObjectSize, %function
getObjectSize:
.LFB643:
	.file 52 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/object/objecttype.c"
	.loc 52 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3802:
	.loc 52 35 0
	cmp	r0, #4
	bhi	.L3628
	.loc 52 38 0
	sub	r0, r0, #1
.LVL3803:
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L3621
.L3622:
	.word	.L3626
	.word	.L3623
	.word	.L3623
	.word	.L3624
.L3623:
	.loc 52 42 0
	mov	r0, #4
.LVL3804:
	bx	lr
.LVL3805:
.L3628:
.LBB11863:
.LBB11864:
	.loc 23 236 0
	sub	r0, r0, #5
.LVL3806:
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L3613
.L3615:
	.word	.L3625
	.word	.L3616
	.word	.L3617
	.word	.L3618
	.word	.L3619
	.word	.L3620
.LVL3807:
.L3626:
.LBE11864:
.LBE11863:
	.loc 52 40 0
	mov	r0, #9
.LVL3808:
	.loc 52 54 0
	bx	lr
.L3621:
	.loc 52 48 0
	mov	r0, r1
	bx	lr
.L3624:
	.loc 52 46 0
	add	r0, r1, #4
	bx	lr
.LVL3809:
.L3625:
.LBB11871:
.LBB11869:
	.loc 23 238 0
	mov	r0, #12
.LVL3810:
	bx	lr
.L3617:
	.loc 23 242 0
	mov	r0, #20
	bx	lr
.L3618:
	.loc 23 244 0
	mov	r0, #24
	bx	lr
.L3619:
	.loc 23 246 0
	mov	r0, #10
	bx	lr
.L3620:
	.loc 23 248 0
	mov	r0, #14
	bx	lr
.L3616:
	.loc 23 240 0
	mov	r0, #16
	bx	lr
.L3613:
.LVL3811:
.LBB11865:
.LBB11866:
	.loc 23 250 0
	movw	r1, #:lower16:.LC24
.LVL3812:
	movw	r0, #:lower16:.LC25
.LBE11866:
.LBE11865:
.LBE11869:
.LBE11871:
	.loc 52 34 0
	push	{r4, lr}
.LBB11872:
.LBB11870:
.LBB11868:
.LBB11867:
	.loc 23 250 0
	movt	r1, #:upper16:.LC24
	movt	r0, #:upper16:.LC25
	ldr	r3, .L3629
	mov	r2, #250
	bl	_fail
.LVL3813:
.L3630:
	.align	2
.L3629:
	.word	.LANCHOR4+36
.LBE11867:
.LBE11868:
.LBE11870:
.LBE11872:
	.cfi_endproc
.LFE643:
	.size	getObjectSize, .-getObjectSize
	.align	2
	.global	deriveCap
	.syntax unified
	.arm
	.type	deriveCap, %function
deriveCap:
.LFB644:
	.loc 52 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3814:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 52 58 0
	stm	sp, {r2, r3}
	mov	r3, r2
.LVL3815:
.LBB11873:
.LBB11874:
.LBB11875:
.LBB11876:
	.loc 4 997 0
	and	r2, r2, #14
.LVL3816:
.LBE11876:
.LBE11875:
.LBE11874:
.LBE11873:
	.loc 52 58 0
	mov	ip, sp
.LBB11883:
.LBB11881:
.LBB11879:
.LBB11877:
	.loc 4 997 0
	cmp	r2, #14
.LBE11877:
.LBE11879:
.LBE11881:
.LBE11883:
	.loc 52 58 0
	mov	r4, r0
.LBB11884:
.LBB11882:
.LBB11880:
.LBB11878:
	.loc 4 997 0
	beq	.L3632
.LVL3817:
.LBE11878:
.LBE11880:
.LBE11882:
.LBE11884:
	.loc 52 61 0
	tst	r3, #1
.LBB11885:
.LBB11886:
	.loc 4 998 0
	andeq	r2, r3, #15
.LBE11886:
.LBE11885:
	.loc 52 61 0
	bne	.L3633
.L3637:
	.loc 52 65 0
	cmp	r2, #14
	beq	.L3640
	cmp	r2, #46
	beq	.L3640
	cmp	r2, #8
	beq	.L3640
.LVL3818:
	.loc 52 83 0
	ldr	r2, [sp, #4]
.LVL3819:
.L3639:
	.loc 52 86 0
	mov	r1, #0
.LVL3820:
	.loc 52 87 0
	mov	r0, r4
.LVL3821:
	.loc 52 86 0
	str	r3, [r4, #4]
	str	r2, [r4, #8]
.LVL3822:
	str	r1, [r4]
	.loc 52 87 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL3823:
.L3640:
	.cfi_restore_state
.LBB11888:
.LBB11889:
	.loc 4 1020 0
	mov	r2, #0
	mov	r3, r2
.LVL3824:
	b	.L3639
.LVL3825:
.L3632:
.LBE11889:
.LBE11888:
	.loc 52 61 0
	tst	r3, #1
.LBB11890:
.LBB11887:
	.loc 4 999 0
	uxtbeq	r2, r3
.LBE11887:
.LBE11890:
	.loc 52 61 0
	beq	.L3637
.L3633:
	.loc 52 62 0
	mov	r0, r4
.LVL3826:
	ldm	ip, {r2, r3}
.LVL3827:
	bl	Arch_deriveCap
.LVL3828:
	.loc 52 87 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
.LVL3829:
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE644:
	.size	deriveCap, .-deriveCap
	.align	2
	.global	hasRecycleRights
	.syntax unified
	.arm
	.type	hasRecycleRights, %function
hasRecycleRights:
.LFB647:
	.loc 52 284 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 52 284 0
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
.LVL3830:
.LBB11913:
.LBB11914:
	.loc 4 997 0
	and	r1, r3, #14
	cmp	r1, #14
	beq	.L3653
	.loc 4 998 0
	and	r0, r3, #15
.LVL3831:
.LBE11914:
.LBE11913:
	.loc 52 285 0
	cmp	r0, #4
	beq	.L3655
	cmp	r0, #6
	beq	.L3656
	cmp	r0, #0
	beq	.L3657
.L3658:
	.loc 52 300 0
	tst	r3, #1
	beq	.L3693
.LBB11916:
.LBB11917:
	.loc 23 176 0
	cmp	r0, #1
	bne	.L3693
.LVL3832:
.LBB11918:
.LBB11919:
	.loc 4 1701 0
	and	r2, r3, #15
.LVL3833:
	cmp	r2, #1
	bne	.L3696
.LVL3834:
.LBE11919:
.LBE11918:
	.loc 23 178 0
	ubfx	r0, r3, #27, #2
	sub	r0, r0, #3
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3657
.LVL3835:
.L3661:
.LBE11917:
.LBE11916:
.LBB11924:
.LBB11925:
	.loc 4 1330 0
	and	r3, r3, #15
.LVL3836:
	cmp	r3, #6
	bne	.L3697
.LVL3837:
.L3656:
.LBE11925:
.LBE11924:
	.loc 52 296 0
	ands	r0, r2, #1
.LBB11927:
.LBB11928:
	.loc 4 1307 0
	ubfxne	r0, r2, #1, #1
.LVL3838:
.L3657:
.LBE11928:
.LBE11927:
	.loc 52 306 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL3839:
	@ sp needed
	ldr	pc, [sp], #4
.LVL3840:
.L3653:
	.cfi_restore_state
.LBB11929:
.LBB11915:
	.loc 4 999 0
	uxtb	r0, r3
.LVL3841:
.LBE11915:
.LBE11929:
	.loc 52 285 0
	cmp	r0, #4
	beq	.L3659
	bls	.L3698
	cmp	r0, #6
	beq	.L3661
	cmp	r0, #62
	bne	.L3658
.L3668:
	.loc 52 288 0
	mov	r0, #0
	b	.L3657
.L3659:
.LVL3842:
.LBB11930:
.LBB11931:
	.loc 4 1200 0
	and	r3, r3, #15
.LVL3843:
	cmp	r3, #4
	bne	.L3699
.LVL3844:
.L3655:
.LBE11931:
.LBE11930:
	.loc 52 292 0
	ands	r0, r2, #1
	beq	.L3657
.LVL3845:
	.loc 52 291 0
	ubfx	r0, r2, #1, #1
	cmp	r0, #0
.LBB11933:
.LBB11934:
	.loc 4 1151 0
	ubfxne	r0, r2, #2, #1
.LBE11934:
.LBE11933:
	.loc 52 306 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL3846:
	@ sp needed
	ldr	pc, [sp], #4
.LVL3847:
.L3693:
	.cfi_restore_state
.LBB11935:
.LBB11922:
	.loc 23 181 0
	mov	r0, #1
.LBE11922:
.LBE11935:
	.loc 52 306 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L3698:
	.cfi_restore_state
	.loc 52 285 0
	cmp	r0, #0
	beq	.L3668
	b	.L3658
.LVL3848:
.L3697:
.LBB11936:
.LBB11926:
	bl	cap_async_endpoint_cap_get_capAEPCanSend.part.231
.LVL3849:
.L3699:
.LBE11926:
.LBE11936:
.LBB11937:
.LBB11932:
	bl	cap_endpoint_cap_get_capCanSend.part.81
.LVL3850:
.L3696:
.LBE11932:
.LBE11937:
.LBB11938:
.LBB11923:
.LBB11921:
.LBB11920:
	bl	cap_frame_cap_get_capFVMRights.isra.119.part.120
.LVL3851:
.LBE11920:
.LBE11921:
.LBE11923:
.LBE11938:
	.cfi_endproc
.LFE647:
	.size	hasRecycleRights, .-hasRecycleRights
	.align	2
	.global	sameRegionAs
	.syntax unified
	.arm
	.type	sameRegionAs, %function
sameRegionAs:
.LFB648:
	.loc 52 310 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 52 310 0
	stm	sp, {r2, r3}
.LBB11939:
.LBB11940:
	.loc 4 997 0
	and	r3, r0, #14
	cmp	r3, #14
.LBE11940:
.LBE11939:
	.loc 52 310 0
	add	lr, sp, #8
	stm	lr, {r0, r1}
	mov	r4, sp
	mov	ip, r0
	ldr	r5, [sp, #12]
.LVL3852:
	ldr	r1, [sp, #4]
.LVL3853:
	mov	r3, r2
.LVL3854:
.LBB11944:
.LBB11941:
	.loc 4 997 0
	beq	.L3701
	.loc 4 998 0
	and	r0, r0, #15
.LVL3855:
.LBE11941:
.LBE11944:
	.loc 52 311 0
	sub	r2, r0, #2
.LVL3856:
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L3702
.L3704:
	.word	.L3703
	.word	.L3702
	.word	.L3705
	.word	.L3702
	.word	.L3706
	.word	.L3702
	.word	.L3707
	.word	.L3702
	.word	.L3708
	.word	.L3702
	.word	.L3709
	.word	.L3702
	.word	.L3710
.LVL3857:
.L3701:
.LBB11945:
.LBB11942:
	.loc 4 999 0
	uxtb	r2, r0
.LVL3858:
.LBE11942:
.LBE11945:
	.loc 52 311 0
	sub	r6, r2, #2
.LBB11946:
.LBB11943:
	.loc 4 999 0
	mov	r0, r2
.LVL3859:
.LBE11943:
.LBE11946:
	.loc 52 311 0
	cmp	r6, #60
	ldrls	pc, [pc, r6, asl #2]
	b	.L3702
.L3712:
	.word	.L3711
	.word	.L3702
	.word	.L3705
	.word	.L3702
	.word	.L3706
	.word	.L3702
	.word	.L3707
	.word	.L3702
	.word	.L3708
	.word	.L3702
	.word	.L3709
	.word	.L3702
	.word	.L3710
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3713
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3702
	.word	.L3714
.L3710:
.LVL3860:
.LBB11947:
.LBB11948:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r0, r3
	.loc 4 998 0
	andne	r0, r3, #15
.LBE11948:
.LBE11947:
.LBB11949:
	.loc 52 321 0
	bic	r0, r0, #16
	sub	r0, r0, #14
	clz	r0, r0
	lsr	r0, r0, #5
.LVL3861:
.L3716:
.LBE11949:
	.loc 52 391 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL3862:
.L3703:
	.cfi_restore_state
.LBB11954:
	.loc 52 316 0
	ldm	r4, {r0, r1}
.LVL3863:
.LBB11950:
.LBB11951:
	.loc 4 1094 0
	bic	r6, ip, #15
.LVL3864:
.LBE11951:
.LBE11950:
	.loc 52 316 0
	bl	cap_get_capPtr
.LVL3865:
	mov	r7, r0
.LVL3866:
	.loc 52 319 0
	ldm	r4, {r0, r1}
.LVL3867:
	bl	cap_get_capSizeBits
.LVL3868:
	.loc 52 321 0
	adds	r3, r7, #0
	movne	r3, #1
	cmp	r7, r6
	movcc	r3, #0
	.loc 52 322 0
	cmp	r3, #0
	beq	.L3715
	.loc 52 319 0 discriminator 1
	mov	r3, #1
	.loc 52 322 0 discriminator 1
	and	r5, r5, #31
.LVL3869:
	.loc 52 319 0 discriminator 1
	add	r2, r7, r3, lsl r0
	.loc 52 322 0 discriminator 1
	sub	ip, r6, #1
.LVL3870:
	add	r0, ip, r3, lsl r5
.LVL3871:
	.loc 52 319 0 discriminator 1
	sub	r2, r2, #1
	.loc 52 322 0 discriminator 1
	cmp	r0, r2
	movcc	r3, #0
	movcs	r3, #1
	cmp	r7, r2
	movhi	r3, #0
.LVL3872:
.L3715:
	mov	r0, r3
	.loc 52 321 0
	b	.L3716
.LVL3873:
.L3705:
.LBE11954:
.LBB11955:
.LBB11956:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL3874:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE11956:
.LBE11955:
	.loc 52 326 0
	cmp	r2, #4
	beq	.L3766
.LVL3875:
.L3751:
	.loc 52 390 0
	mov	r0, #0
	.loc 52 391 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL3876:
.L3706:
	.cfi_restore_state
.LBB11957:
.LBB11958:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL3877:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE11958:
.LBE11957:
	.loc 52 333 0
	cmp	r2, #6
	bne	.L3751
.LVL3878:
.LBB11959:
.LBB11960:
	.loc 4 1356 0
	and	r2, ip, #15
	cmp	r2, #6
	bne	.L3724
.LBE11960:
.LBE11959:
.LBB11963:
.LBB11964:
	and	r2, r3, #15
.LBE11964:
.LBE11963:
.LBB11966:
.LBB11961:
	.loc 4 1359 0
	bic	ip, ip, #15
.LVL3879:
.LBE11961:
.LBE11966:
.LBB11967:
.LBB11965:
	.loc 4 1356 0
	cmp	r2, #6
	beq	.L3765
.LVL3880:
.L3724:
.LBE11965:
.LBE11967:
.LBB11968:
.LBB11962:
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL3881:
.L3707:
.LBE11962:
.LBE11968:
.LBB11969:
.LBB11970:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL3882:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE11970:
.LBE11969:
	.loc 52 356 0
	cmp	r2, #8
	bne	.L3751
.LVL3883:
.LBB11971:
.LBB11972:
	.loc 4 1453 0
	and	r2, ip, #15
	cmp	r2, #8
	bne	.L3737
.LBE11972:
.LBE11971:
.LBB11975:
.LBB11976:
	and	r2, r3, #15
.LBE11976:
.LBE11975:
.LBB11978:
.LBB11973:
	.loc 4 1456 0
	bic	ip, ip, #31
.LVL3884:
.LBE11973:
.LBE11978:
.LBB11979:
.LBB11977:
	.loc 4 1453 0
	cmp	r2, #8
	bne	.L3737
.LVL3885:
.LBE11977:
.LBE11979:
	.loc 52 357 0
	bic	r0, r3, #31
	sub	r0, r0, ip
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3716
.LVL3886:
.L3708:
.LBB11980:
.LBB11981:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL3887:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE11981:
.LBE11980:
	.loc 52 340 0
	cmp	r2, #10
	bne	.L3751
.LVL3888:
.LBB11982:
.LBB11983:
	.loc 4 1545 0
	and	r2, ip, #15
	cmp	r2, #10
	bne	.L3728
.LBE11983:
.LBE11982:
.LBB11986:
.LBB11987:
	and	r2, r3, #15
.LBE11987:
.LBE11986:
.LBB11989:
.LBB11984:
	.loc 4 1548 0
	bic	ip, ip, #31
.LVL3889:
.LBE11984:
.LBE11989:
.LBB11990:
.LBB11988:
	.loc 4 1545 0
	cmp	r2, #10
	bne	.L3728
.LVL3890:
.LBE11988:
.LBE11990:
	.loc 52 342 0
	bic	r0, r3, #31
	cmp	r0, ip
	bne	.L3751
.LVL3891:
	.loc 52 342 0 is_stmt 0 discriminator 1
	ubfx	r0, r1, #18, #5
	ubfx	r5, r5, #18, #5
.LVL3892:
	sub	r0, r0, r5
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3716
.LVL3893:
.L3709:
.LBB11991:
.LBB11992:
	.loc 4 997 0 is_stmt 1
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL3894:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE11992:
.LBE11991:
	.loc 52 349 0
	cmp	r2, #12
	bne	.L3751
.LVL3895:
.LBB11993:
.LBB11994:
	.loc 4 1576 0
	and	r2, ip, #15
	cmp	r2, #12
	bne	.L3733
.LBE11994:
.LBE11993:
.LBB11997:
.LBB11998:
	and	r2, r3, #15
.LBE11998:
.LBE11997:
.LBB12000:
.LBB11995:
	.loc 4 1579 0
	bic	ip, ip, #15
.LVL3896:
.LBE11995:
.LBE12000:
.LBB12001:
.LBB11999:
	.loc 4 1576 0
	cmp	r2, #12
	bne	.L3733
.LVL3897:
.L3765:
.LBE11999:
.LBE12001:
	.loc 52 350 0
	bic	r0, r3, #15
	sub	r0, r0, ip
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3716
.LVL3898:
.L3702:
	.loc 52 383 0
	ands	r0, r0, #1
	beq	.L3716
.LVL3899:
.LBB12002:
.LBB12003:
.LBB12004:
.LBB12005:
	.loc 4 997 0 discriminator 1
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0 discriminator 1
	uxtbeq	r0, r3
	.loc 4 998 0 discriminator 1
	andne	r0, r3, #15
.LBE12005:
.LBE12004:
.LBE12003:
.LBE12002:
	.loc 52 383 0 discriminator 1
	ands	r0, r0, #1
	beq	.L3716
	.loc 52 385 0
	ldm	r4, {r2, r3}
.LVL3900:
	ldm	lr, {r0, r1}
.LVL3901:
	.loc 52 391 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3902:
	.loc 52 385 0
	b	Arch_sameRegionAs
.LVL3903:
.L3714:
	.cfi_restore_state
.LBB12006:
.LBB12007:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	bne	.L3751
.LVL3904:
.LBE12007:
.LBE12006:
.LBB12008:
	.loc 52 321 0
	uxtb	r0, r3
	sub	r0, r0, #62
	clz	r0, r0
	lsr	r0, r0, #5
.LBE12008:
	b	.L3716
.L3713:
.LVL3905:
.LBB12009:
.LBB12010:
	.loc 4 997 0
	and	r0, r3, #14
	cmp	r0, #14
	bne	.L3751
.LVL3906:
.LBE12010:
.LBE12009:
	.loc 52 376 0
	uxtb	r0, r3
	cmp	r0, #30
	bne	.L3751
.LVL3907:
.LBB12011:
.LBB12012:
	.loc 4 1931 0
	cmp	r2, #30
	bne	.L3767
.LVL3908:
.LBE12012:
.LBE12011:
	.loc 52 377 0
	uxtb	r0, r1
	uxtb	r5, r5
.LVL3909:
	sub	r0, r0, r5
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3716
.LVL3910:
.L3711:
.LBB12014:
.LBB11953:
.LBB11952:
	.loc 4 1091 0
	and	r3, ip, #15
.LVL3911:
	cmp	r3, #2
	beq	.L3703
	bl	cap_untyped_cap_get_capPtr.isra.94.part.95
.LVL3912:
.L3766:
.LBE11952:
.LBE11953:
.LBE12014:
.LBB12015:
.LBB12016:
	.loc 4 1134 0
	and	ip, ip, #15
.LVL3913:
	cmp	ip, #4
	bne	.L3720
.LBE12016:
.LBE12015:
.LBB12019:
.LBB12020:
	and	r0, r3, #15
.LBE12020:
.LBE12019:
.LBB12022:
.LBB12017:
	.loc 4 1137 0
	bic	r5, r5, #15
.LVL3914:
.LBE12017:
.LBE12022:
.LBB12023:
.LBB12021:
	.loc 4 1134 0
	cmp	r0, #4
	bne	.L3720
.LBE12021:
.LBE12023:
	.loc 52 327 0
	bic	r0, r1, #15
	sub	r0, r0, r5
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L3716
.LVL3915:
.L3733:
.LBB12024:
.LBB11996:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL3916:
.L3767:
.LBE11996:
.LBE12024:
.LBB12025:
.LBB12013:
	bl	cap_irq_handler_cap_get_capIRQ.part.180
.LVL3917:
.L3737:
.LBE12013:
.LBE12025:
.LBB12026:
.LBB11974:
	bl	cap_reply_cap_get_capTCBPtr.isra.69.part.70
.LVL3918:
.L3728:
.LBE11974:
.LBE12026:
.LBB12027:
.LBB11985:
	bl	cap_cnode_cap_get_capCNodePtr.isra.79.part.80
.LVL3919:
.L3720:
.LBE11985:
.LBE12027:
.LBB12028:
.LBB12018:
	bl	cap_endpoint_cap_get_capEPPtr.part.82
.LVL3920:
.LBE12018:
.LBE12028:
	.cfi_endproc
.LFE648:
	.size	sameRegionAs, .-sameRegionAs
	.align	2
	.global	cdtFindTypedInRange
	.syntax unified
	.arm
	.type	cdtFindTypedInRange, %function
cdtFindTypedInRange:
.LFB515:
	.loc 3 616 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3921:
	.loc 3 621 0
	mov	r2, #1
	sub	r3, r0, #16
	add	r3, r3, r2, lsl r1
.LVL3922:
	.loc 3 616 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	.loc 3 620 0
	mov	r2, #0
.LBB12080:
.LBB12081:
	.loc 4 1122 0
	ands	r5, r3, #15
.LBE12081:
.LBE12080:
	.loc 3 616 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 3 620 0
	str	r2, [sp, #12]
	str	r2, [sp, #8]
	str	r2, [sp, #16]
	str	r2, [sp, #20]
.LBB12085:
.LBB12082:
	.loc 4 1122 0
	bne	.L3840
.LBE12082:
.LBE12085:
.LBB12086:
.LBB12087:
	.loc 3 563 0
	movw	r2, #:lower16:ksRootCTE
.LBB12088:
.LBB12089:
.LBB12090:
.LBB12091:
.LBB12092:
	.loc 36 30 0
	movw	r6, #:lower16:untyped_comparator
	movw	r10, #:lower16:typed_comparator
	movw	r7, #:lower16:just_tie_break
.LBE12092:
.LBE12091:
.LBE12090:
.LBE12089:
.LBE12088:
	.loc 3 563 0
	movt	r2, #:upper16:ksRootCTE
	mov	r8, r0
	mov	r9, r1
.LVL3923:
.LBB12158:
.LBB12118:
.LBB12113:
.LBB12098:
.LBB12095:
	.loc 36 30 0
	movt	r6, #:upper16:untyped_comparator
	movt	r10, #:upper16:typed_comparator
	movt	r7, #:upper16:just_tie_break
.LBE12095:
.LBE12098:
.LBE12113:
.LBE12118:
.LBE12158:
	.loc 3 563 0
	ldr	r4, [r2]
.LBE12087:
.LBE12086:
.LBB12166:
.LBB12083:
	.loc 4 1128 0
	bic	r3, r3, #15
.LVL3924:
	mov	r2, #4
	str	r3, [sp, #12]
.LVL3925:
	str	r2, [sp, #8]
.LVL3926:
.L3800:
	ldr	r3, [r4]
.LVL3927:
.LBE12083:
.LBE12166:
.LBB12167:
.LBB12163:
.LBB12159:
.LBB12119:
.LBB12114:
.LBB12099:
.LBB12096:
.LBB12093:
.LBB12094:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3928:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12094:
.LBE12093:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3793
.L3774:
	.word	.L3773
	.word	.L3813
	.word	.L3773
	.word	.L3773
	.word	.L3773
	.word	.L3773
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3773
	.word	.L3793
	.word	.L3773
	.word	.L3793
	.word	.L3776
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3776
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3773
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3777
.L3776:
	movw	fp, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r1, #2
	.loc 36 30 0
	movt	fp, #:upper16:irq_comparator
.L3775:
	ldr	r3, [sp, #8]
.LVL3929:
.LBE12096:
.LBE12099:
.LBB12100:
.LBB12101:
.LBB12102:
.LBB12103:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3930:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12103:
.LBE12102:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3793
.L3782:
	.word	.L3781
	.word	.L3814
	.word	.L3781
	.word	.L3781
	.word	.L3781
	.word	.L3781
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3781
	.word	.L3793
	.word	.L3781
	.word	.L3793
	.word	.L3784
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3784
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3781
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3785
.L3784:
	.loc 36 45 0
	mov	r3, #2
.L3783:
.LBE12101:
.LBE12100:
.LBB12105:
	.loc 3 319 0
	cmp	r1, r3
	beq	.L3805
	ble	.L3789
.LVL3931:
.L3786:
.LBE12105:
.LBE12114:
.LBE12119:
.LBB12120:
.LBB12121:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL3932:
	lsr	r4, r4, #5
.LVL3933:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL3934:
	bne	.L3841
.LVL3935:
.L3799:
.LBE12121:
.LBE12120:
.LBE12159:
.LBE12163:
.LBE12167:
	.loc 3 627 0
	cmp	r5, #0
	beq	.L3801
.L3806:
.LVL3936:
.LBB12168:
.LBB12169:
	.loc 4 1034 0
	bics	r3, r9, #31
	bne	.L3842
.LVL3937:
	.loc 4 1037 0
	tst	r8, #15
	bne	.L3843
.LVL3938:
	.loc 4 1043 0
	bic	r8, r8, #15
.LVL3939:
.LBE12169:
.LBE12168:
	.loc 3 627 0
	ldm	r5, {r2, r3}
.LBB12172:
.LBB12170:
	.loc 4 1043 0
	orr	r8, r8, #2
.LVL3940:
	stm	sp, {r8, r9}
.LBE12170:
.LBE12172:
	.loc 3 627 0
	ldm	sp, {r0, r1}
	bl	sameRegionAs
.LVL3941:
	cmp	r0, #0
	movne	r0, r5
	beq	.L3801
.LVL3942:
.L3832:
	.loc 3 631 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3943:
.L3793:
	.cfi_restore_state
.LBB12173:
.LBB12164:
.LBB12160:
.LBB12122:
.LBB12123:
.LBB12124:
.LBB12125:
.LBB12126:
.LBB12127:
.LBB12128:
.LBB12129:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L3847
	mov	r2, #53
	bl	_assert_fail
.LVL3944:
.L3785:
.LBE12129:
.LBE12128:
.LBE12127:
.LBE12126:
.LBE12125:
.LBE12124:
.LBE12123:
.LBE12122:
.LBB12150:
.LBB12115:
.LBB12106:
	.loc 3 319 0
	cmp	r1, #3
	bne	.L3789
.L3805:
.LVL3945:
.LBE12106:
.LBB12107:
.LBB12108:
	.loc 3 310 0
	movw	r2, #:lower16:largest_child_comparator
	add	r1, sp, #8
.LVL3946:
	movt	r2, #:upper16:largest_child_comparator
	mov	r0, r4
	blx	fp
.LVL3947:
.LBE12108:
.LBE12107:
.LBE12115:
.LBE12150:
	.loc 3 569 0
	cmn	r0, #1
	bne	.L3786
.LVL3948:
.L3789:
.LBB12151:
.LBB12152:
	.loc 30 217 0
	ldr	r3, [r4, #12]
	lsr	r3, r3, #5
.LVL3949:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL3950:
	beq	.L3844
.LVL3951:
.LBE12152:
.LBE12151:
	.loc 3 571 0
	cmp	r5, #0
	.loc 3 570 0
	orr	fp, r3, #-536870912
.LVL3952:
	.loc 3 571 0
	beq	.L3818
.LVL3953:
.L3807:
.LBB12153:
.LBB12147:
.LBB12144:
.LBB12141:
	.loc 3 317 0
	ldr	r0, [r4]
	bl	cap_get_capSpaceType.isra.178
.LVL3954:
	ldr	r3, [r5]
.LVL3955:
.LBB12135:
.LBB12132:
.LBB12130:
.LBB12131:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL3956:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12131:
.LBE12130:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3793
.L3795:
	.word	.L3794
	.word	.L3816
	.word	.L3794
	.word	.L3794
	.word	.L3794
	.word	.L3794
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3794
	.word	.L3793
	.word	.L3794
	.word	.L3793
	.word	.L3797
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3797
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3794
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3793
	.word	.L3798
.LVL3957:
.L3841:
	orr	r4, r4, #-536870912
.LVL3958:
.L3790:
.LBE12132:
.LBE12135:
.LBE12141:
.LBE12144:
.LBE12147:
.LBE12153:
.LBE12160:
	.loc 3 577 0
	cmp	r4, #0
	bne	.L3800
	b	.L3799
.LVL3959:
.L3813:
.LBB12161:
.LBB12154:
.LBB12116:
.LBB12110:
.LBB12097:
	.loc 36 30 0
	mov	fp, r6
	.loc 36 42 0
	mov	r1, #0
	b	.L3775
.L3773:
	.loc 36 30 0
	mov	fp, r10
	.loc 36 39 0
	mov	r1, #1
	b	.L3775
.L3777:
	mov	fp, r7
	.loc 36 50 0
	mov	r1, #3
	b	.L3775
.L3814:
.LBE12097:
.LBE12110:
.LBB12111:
.LBB12104:
	.loc 36 42 0
	mov	r3, #0
	b	.L3783
.L3781:
	.loc 36 39 0
	mov	r3, #1
	b	.L3783
.LVL3960:
.L3844:
.LBE12104:
.LBE12111:
.LBE12116:
.LBE12154:
	.loc 3 571 0
	cmp	r5, #0
	beq	.L3820
	.loc 3 570 0
	mov	fp, r3
	b	.L3807
.LVL3961:
.L3797:
.LBB12155:
.LBB12148:
.LBB12145:
.LBB12142:
.LBB12136:
.LBB12133:
	.loc 36 45 0
	mov	r3, #2
.L3796:
.LVL3962:
.LBE12133:
.LBE12136:
.LBB12137:
	.loc 3 319 0
	cmp	r3, r0
	beq	.L3845
	bge	.L3836
.LVL3963:
.L3818:
.LBE12137:
.LBE12142:
.LBE12145:
.LBE12148:
.LBE12155:
	.loc 3 571 0
	mov	r5, r4
.LVL3964:
.L3836:
	mov	r4, fp
.LVL3965:
	b	.L3790
.LVL3966:
.L3820:
	mov	r5, r4
.LVL3967:
	b	.L3806
.LVL3968:
.L3816:
.LBB12156:
.LBB12149:
.LBB12146:
.LBB12143:
.LBB12138:
.LBB12134:
	.loc 36 42 0
	mov	r3, #0
	b	.L3796
.L3798:
	.loc 36 50 0
	mov	r3, #3
	b	.L3796
.L3794:
	.loc 36 39 0
	mov	r3, #1
	b	.L3796
.LVL3969:
.L3845:
.LBE12134:
.LBE12138:
.LBB12139:
.LBB12140:
	.loc 3 308 0
	movw	r2, #:lower16:.LANCHOR4
	movt	r2, #:upper16:.LANCHOR4
	add	r3, r2, r3, lsl #2
.LVL3970:
	ldr	r3, [r3, #2316]
.LVL3971:
	.loc 3 309 0
	cmp	r3, #0
	beq	.L3846
	.loc 3 310 0
	movw	r2, #:lower16:tie_break_comparator
	mov	r1, r5
	movt	r2, #:upper16:tie_break_comparator
	mov	r0, r4
.LVL3972:
	blx	r3
.LVL3973:
.LBE12140:
.LBE12139:
.LBE12143:
.LBE12146:
.LBE12149:
.LBE12156:
	.loc 3 571 0
	cmp	r0, #1
	bne	.L3836
	b	.L3818
.LVL3974:
.L3801:
.LBE12161:
.LBE12164:
.LBE12173:
	.loc 3 630 0
	mov	r0, #0
	b	.L3832
.LVL3975:
.L3840:
.LBB12174:
.LBB12084:
	.loc 4 1122 0
	movw	r1, #:lower16:.LC29
.LVL3976:
	movw	r0, #:lower16:.LC193
.LVL3977:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC193
	ldr	r3, .L3847+4
.LVL3978:
	movw	r2, #1122
	bl	_assert_fail
.LVL3979:
.L3846:
.LBE12084:
.LBE12174:
.LBB12175:
.LBB12165:
.LBB12162:
.LBB12157:
.LBB12117:
.LBB12112:
.LBB12109:
	.loc 3 309 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC88
.LVL3980:
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC88
	ldr	r3, .L3847+8
.LVL3981:
	movw	r2, #309
	bl	_assert_fail
.LVL3982:
.L3843:
.LBE12109:
.LBE12112:
.LBE12117:
.LBE12157:
.LBE12162:
.LBE12165:
.LBE12175:
.LBB12176:
.LBB12171:
	.loc 4 1037 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC181
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC181
	ldr	r3, .L3847+12
	movw	r2, #1037
	bl	_assert_fail
.LVL3983:
.L3842:
	.loc 4 1034 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC180
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC180
	ldr	r3, .L3847+12
	movw	r2, #1034
	bl	_assert_fail
.LVL3984:
.L3848:
	.align	2
.L3847:
	.word	.LANCHOR4+2276
	.word	.LANCHOR4+2628
	.word	.LANCHOR4+2300
	.word	.LANCHOR4+2216
.LBE12171:
.LBE12176:
	.cfi_endproc
.LFE515:
	.size	cdtFindTypedInRange, .-cdtFindTypedInRange
	.align	2
	.global	cdtFindChild
	.syntax unified
	.arm
	.type	cdtFindChild, %function
cdtFindChild:
.LFB516:
	.loc 3 635 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3985:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	mov	r5, r0
	ldr	r4, [r0]
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 3 636 0
	mov	r0, r4
.LVL3986:
	bl	cap_get_capSpaceType.isra.178
.LVL3987:
	cmp	r0, #0
	bne	.L3850
.LVL3988:
.LBB12263:
.LBB12264:
.LBB12265:
	.loc 4 1091 0
	and	r3, r4, #15
	cmp	r3, #2
	bne	.L3864
.LVL3989:
.LBE12265:
.LBE12264:
	.loc 3 638 0
	ldr	r1, [r5, #4]
	bic	r0, r4, #15
	and	r1, r1, #31
	bl	cdtFindTypedInRange
.LVL3990:
	.loc 3 639 0
	cmp	r0, #0
	beq	.L3945
.LVL3991:
.L3941:
.LBE12263:
	.loc 3 644 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3992:
.L3945:
	.cfi_restore_state
	ldr	r4, [r5]
.LVL3993:
.L3850:
.LBB12268:
.LBB12269:
.LBB12270:
.LBB12271:
.LBB12272:
.LBB12273:
	.loc 4 997 0
	and	r3, r4, #14
	ldr	r2, [r5, #4]
	cmp	r3, #14
.LBE12273:
.LBE12272:
.LBE12271:
.LBE12270:
	.loc 3 598 0
	mov	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
.LVL3994:
.LBB12300:
.LBB12296:
.LBB12275:
.LBB12274:
	.loc 4 999 0
	uxtbeq	r3, r4
.LVL3995:
	.loc 4 998 0
	andne	r3, r4, #15
.LBE12274:
.LBE12275:
	.loc 3 475 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3855
.L3857:
	.word	.L3856
	.word	.L3858
	.word	.L3856
	.word	.L3859
	.word	.L3856
	.word	.L3860
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3856
	.word	.L3855
	.word	.L3856
	.word	.L3855
	.word	.L3862
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3856
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3856
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3855
	.word	.L3856
.L3860:
.LVL3996:
.LBB12276:
.LBB12277:
	.loc 4 1278 0
	and	r3, r4, #15
	cmp	r3, #6
	bne	.L3946
.LBE12277:
.LBE12276:
	.loc 3 506 0
	lsrs	r3, r2, #4
	beq	.L3947
.LVL3997:
.L3856:
	.loc 3 527 0
	str	r4, [sp]
	str	r2, [sp, #4]
.LVL3998:
.L3863:
.LBE12296:
.LBE12300:
.LBB12301:
.LBB12302:
	.loc 3 563 0
	movw	r3, #:lower16:ksRootCTE
.LBB12303:
.LBB12304:
.LBB12305:
.LBB12306:
.LBB12307:
	.loc 36 30 0
	movw	r6, #:lower16:untyped_comparator
.LBE12307:
.LBE12306:
.LBE12305:
.LBE12304:
.LBE12303:
	.loc 3 563 0
	movt	r3, #:upper16:ksRootCTE
.LBB12387:
.LBB12336:
.LBB12331:
.LBB12314:
.LBB12310:
	.loc 36 30 0
	movw	r8, #:lower16:typed_comparator
.LBE12310:
.LBE12314:
.LBE12331:
.LBE12336:
.LBE12387:
	.loc 3 563 0
	ldr	r4, [r3]
.LVL3999:
.LBB12388:
.LBB12337:
.LBB12332:
.LBB12315:
.LBB12311:
	movw	r7, #:lower16:just_tie_break
	.loc 36 30 0
	movt	r6, #:upper16:untyped_comparator
	movt	r8, #:upper16:typed_comparator
	movt	r7, #:upper16:just_tie_break
.LBE12311:
.LBE12315:
.LBE12332:
.LBE12337:
.LBE12388:
	.loc 3 564 0
	mov	r9, #0
.LVL4000:
.L3908:
	ldr	r3, [r4]
.LVL4001:
.LBB12389:
.LBB12338:
.LBB12333:
.LBB12316:
.LBB12312:
.LBB12308:
.LBB12309:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4002:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12309:
.LBE12308:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3901
.L3874:
	.word	.L3873
	.word	.L3918
	.word	.L3873
	.word	.L3873
	.word	.L3873
	.word	.L3873
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3873
	.word	.L3901
	.word	.L3873
	.word	.L3901
	.word	.L3876
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3876
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3873
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3877
.L3876:
	movw	r10, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r1, #2
	.loc 36 30 0
	movt	r10, #:upper16:irq_comparator
.L3875:
	ldr	r3, [sp]
.LVL4003:
.LBE12312:
.LBE12316:
.LBB12317:
.LBB12318:
.LBB12319:
.LBB12320:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4004:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12320:
.LBE12319:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3901
.L3882:
	.word	.L3881
	.word	.L3919
	.word	.L3881
	.word	.L3881
	.word	.L3881
	.word	.L3881
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3881
	.word	.L3901
	.word	.L3881
	.word	.L3901
	.word	.L3884
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3884
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3881
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3885
.L3884:
	.loc 36 45 0
	mov	r3, #2
.L3883:
.LBE12318:
.LBE12317:
.LBB12323:
	.loc 3 319 0
	cmp	r3, r1
	beq	.L3911
.L3915:
	bge	.L3889
.LVL4005:
.LBE12323:
.LBE12333:
.LBE12338:
.LBB12339:
.LBB12340:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL4006:
	lsr	r4, r4, #5
.LVL4007:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL4008:
	bne	.L3948
.LVL4009:
.L3907:
.LBE12340:
.LBE12339:
.LBE12389:
.LBE12302:
.LBE12301:
	.loc 3 608 0
	cmp	r9, #0
	beq	.L3909
	mov	r4, r9
.L3913:
	movw	r2, #:lower16:slot_lt_comparator
	mov	r1, r5
	movt	r2, #:upper16:slot_lt_comparator
	mov	r0, r4
	bl	compSlotWith
.LVL4010:
	cmp	r0, #1
	moveq	r0, r4
	beq	.L3941
.L3909:
	.loc 3 609 0
	mov	r0, #0
	b	.L3941
.LVL4011:
.L3918:
.LBB12397:
.LBB12394:
.LBB12390:
.LBB12342:
.LBB12334:
.LBB12324:
.LBB12313:
	.loc 36 30 0
	mov	r10, r6
	.loc 36 42 0
	mov	r1, #0
	b	.L3875
.L3873:
	.loc 36 30 0
	mov	r10, r8
	.loc 36 39 0
	mov	r1, #1
	b	.L3875
.L3877:
	mov	r10, r7
	.loc 36 50 0
	mov	r1, #3
	b	.L3875
.L3919:
.LBE12313:
.LBE12324:
.LBB12325:
.LBB12321:
	.loc 36 42 0
	mov	r3, #0
.LBE12321:
.LBE12325:
.LBB12326:
	.loc 3 319 0
	cmp	r3, r1
	bne	.L3915
.L3911:
.LVL4012:
.LBE12326:
.LBB12327:
.LBB12328:
	.loc 3 310 0
	movw	r2, #:lower16:largest_child_comparator
	mov	r1, sp
	movt	r2, #:upper16:largest_child_comparator
	mov	r0, r4
	blx	r10
.LVL4013:
.LBE12328:
.LBE12327:
.LBE12334:
.LBE12342:
	.loc 3 569 0
	cmn	r0, #1
	beq	.L3889
.LBB12343:
.LBB12341:
	.loc 30 211 0
	ldr	r4, [r4, #8]
.LVL4014:
	lsr	r4, r4, #5
.LVL4015:
	.loc 30 212 0
	lsls	r4, r4, #2
.LVL4016:
	beq	.L3907
.LVL4017:
.L3948:
	orr	r4, r4, #-536870912
.LVL4018:
.L3890:
.LBE12341:
.LBE12343:
.LBE12390:
	.loc 3 577 0
	cmp	r4, #0
	bne	.L3908
	b	.L3907
.LVL4019:
.L3881:
.LBB12391:
.LBB12344:
.LBB12335:
.LBB12329:
.LBB12322:
	.loc 36 39 0
	mov	r3, #1
	b	.L3883
.L3885:
.LBE12322:
.LBE12329:
.LBB12330:
	.loc 3 319 0
	cmp	r1, #3
	beq	.L3911
.LVL4020:
.L3889:
.LBE12330:
.LBE12335:
.LBE12344:
.LBB12345:
.LBB12346:
	.loc 30 217 0
	ldr	r3, [r4, #12]
	lsr	r3, r3, #5
.LVL4021:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL4022:
	beq	.L3949
.LVL4023:
.LBE12346:
.LBE12345:
	.loc 3 571 0
	cmp	r9, #0
	.loc 3 570 0
	orr	r10, r3, #-536870912
.LVL4024:
	.loc 3 571 0
	beq	.L3924
.LVL4025:
.L3914:
	ldr	r3, [r4]
.LVL4026:
.LBB12347:
.LBB12348:
.LBB12349:
.LBB12350:
.LBB12351:
.LBB12352:
.LBB12353:
.LBB12354:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4027:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12354:
.LBE12353:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3901
.L3895:
	.word	.L3894
	.word	.L3921
	.word	.L3894
	.word	.L3894
	.word	.L3894
	.word	.L3894
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3894
	.word	.L3901
	.word	.L3894
	.word	.L3901
	.word	.L3897
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3897
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3894
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3898
.LVL4028:
.L3901:
.LBE12352:
.LBE12351:
.LBB12357:
.LBB12358:
.LBB12359:
.LBB12360:
	.loc 36 53 0
	movw	r1, #:lower16:.LC56
	movw	r0, #:lower16:.LC47
	movt	r1, #:upper16:.LC56
	movt	r0, #:upper16:.LC47
	ldr	r3, .L3952
	mov	r2, #53
	bl	_assert_fail
.LVL4029:
.L3862:
.LBE12360:
.LBE12359:
.LBE12358:
.LBE12357:
.LBE12350:
.LBE12349:
.LBE12348:
.LBE12347:
.LBE12391:
.LBE12394:
.LBE12397:
.LBB12398:
.LBB12297:
.LBB12279:
.LBB12280:
	.loc 4 1925 0
	mov	r2, #30
.LVL4030:
	mov	r3, #255
	stm	sp, {r2, r3}
.LVL4031:
	b	.L3863
.LVL4032:
.L3859:
.LBE12280:
.LBE12279:
.LBB12281:
.LBB12282:
	.loc 4 1226 0
	and	r3, r4, #15
	cmp	r3, #4
	bne	.L3950
.LVL4033:
.LBE12282:
.LBE12281:
	.loc 3 501 0
	lsrs	r3, r4, #4
	bne	.L3856
.LVL4034:
.LBB12284:
.LBB12285:
	.loc 4 1128 0
	bic	r2, r2, #15
.LVL4035:
	mvn	r3, #11
	str	r2, [sp, #4]
.LVL4036:
	str	r3, [sp]
	b	.L3863
.LVL4037:
.L3858:
.LBE12285:
.LBE12284:
.LBB12286:
.LBB12287:
	.loc 4 1091 0
	and	r3, r4, #15
	cmp	r3, #2
	bne	.L3864
.LVL4038:
.LBE12287:
.LBE12286:
	.loc 3 499 0
	and	r2, r2, #31
.LVL4039:
	mov	r3, #1
	lsl	r2, r3, r2
	bic	r4, r4, #15
	sub	r2, r2, #16
	add	r4, r2, r4
.LVL4040:
.LBB12288:
.LBB12289:
	.loc 4 1037 0
	tst	r4, #15
	bne	.L3951
.LVL4041:
	.loc 4 1043 0
	bic	r4, r4, #15
.LVL4042:
	mov	r3, #4
	orr	r4, r4, #2
.LVL4043:
	str	r3, [sp, #4]
.LVL4044:
	str	r4, [sp]
	b	.L3863
.LVL4045:
.L3855:
.LBE12289:
.LBE12288:
	.loc 3 529 0
	movw	r1, #:lower16:.LC84
	movw	r0, #:lower16:.LC194
	movt	r1, #:upper16:.LC84
	movt	r0, #:upper16:.LC194
	ldr	r3, .L3952+4
	movw	r2, #529
.LVL4046:
	bl	_fail
.LVL4047:
.L3949:
.LBE12297:
.LBE12398:
.LBB12399:
.LBB12395:
.LBB12392:
	.loc 3 571 0
	cmp	r9, #0
	beq	.L3913
	.loc 3 570 0
	mov	r10, r3
	b	.L3914
.LVL4048:
.L3906:
.LBB12384:
.LBB12381:
.LBB12378:
.LBB12375:
.LBB12366:
	.loc 3 319 0
	cmp	r1, #3
	bne	.L3926
.L3912:
.LVL4049:
.LBE12366:
.LBB12367:
.LBB12368:
	.loc 3 310 0
	movw	r2, #:lower16:tie_break_comparator
	mov	r1, r9
	movt	r2, #:upper16:tie_break_comparator
	mov	r0, r4
	blx	fp
.LVL4050:
.LBE12368:
.LBE12367:
.LBE12375:
.LBE12378:
.LBE12381:
.LBE12384:
	.loc 3 571 0
	cmp	r0, #1
	bne	.L3926
.LVL4051:
.L3924:
	mov	r9, r4
.LVL4052:
	mov	r4, r10
.LVL4053:
	b	.L3890
.LVL4054:
.L3897:
.LBB12385:
.LBB12382:
.LBB12379:
.LBB12376:
.LBB12369:
.LBB12355:
	.loc 36 30 0
	movw	fp, #:lower16:irq_comparator
	.loc 36 45 0
	mov	r1, #2
	.loc 36 30 0
	movt	fp, #:upper16:irq_comparator
.L3896:
	ldr	r3, [r9]
.LVL4055:
.LBE12355:
.LBE12369:
.LBB12370:
.LBB12363:
.LBB12361:
.LBB12362:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4056:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12362:
.LBE12361:
	.loc 36 30 0
	sub	r3, r3, #1
	cmp	r3, #61
	ldrls	pc, [pc, r3, asl #2]
	b	.L3901
.L3903:
	.word	.L3902
	.word	.L3922
	.word	.L3902
	.word	.L3902
	.word	.L3902
	.word	.L3902
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3902
	.word	.L3901
	.word	.L3902
	.word	.L3901
	.word	.L3905
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3905
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3902
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3901
	.word	.L3906
.LVL4057:
.L3947:
.LBE12363:
.LBE12370:
.LBE12376:
.LBE12379:
.LBE12382:
.LBE12385:
.LBE12392:
.LBE12395:
.LBE12399:
.LBB12400:
.LBB12298:
.LBB12291:
.LBB12292:
	.loc 4 1272 0
	bic	r4, r4, #15
.LVL4058:
	mvn	r3, #15
	orr	r4, r4, #6
	str	r3, [sp, #4]
.LVL4059:
	str	r4, [sp]
	b	.L3863
.LVL4060:
.L3905:
.LBE12292:
.LBE12291:
.LBE12298:
.LBE12400:
.LBB12401:
.LBB12396:
.LBB12393:
.LBB12386:
.LBB12383:
.LBB12380:
.LBB12377:
.LBB12371:
.LBB12364:
	.loc 36 45 0
	mov	r3, #2
.L3904:
.LBE12364:
.LBE12371:
.LBB12372:
	.loc 3 319 0
	cmp	r3, r1
	beq	.L3912
	blt	.L3924
.LVL4061:
.L3926:
	mov	r4, r10
.LVL4062:
	b	.L3890
.LVL4063:
.L3921:
.LBE12372:
.LBB12373:
.LBB12356:
	.loc 36 30 0
	mov	fp, r6
	.loc 36 42 0
	mov	r1, #0
	b	.L3896
.L3898:
	mov	fp, r7
	.loc 36 50 0
	mov	r1, #3
	b	.L3896
.L3894:
	.loc 36 30 0
	mov	fp, r8
	.loc 36 39 0
	mov	r1, #1
	b	.L3896
.L3922:
.LBE12356:
.LBE12373:
.LBB12374:
.LBB12365:
	.loc 36 42 0
	mov	r3, #0
	b	.L3904
.L3902:
	.loc 36 39 0
	mov	r3, #1
	b	.L3904
.LVL4064:
.L3864:
.LBE12365:
.LBE12374:
.LBE12377:
.LBE12380:
.LBE12383:
.LBE12386:
.LBE12393:
.LBE12396:
.LBE12401:
.LBE12269:
.LBE12268:
.LBB12404:
.LBB12267:
.LBB12266:
	bl	cap_untyped_cap_get_capPtr.isra.94.part.95
.LVL4065:
.L3950:
.LBE12266:
.LBE12267:
.LBE12404:
.LBB12405:
.LBB12403:
.LBB12402:
.LBB12299:
.LBB12293:
.LBB12283:
	bl	cap_endpoint_cap_get_capEPBadge.isra.85.part.86
.LVL4066:
.L3951:
.LBE12283:
.LBE12293:
.LBB12294:
.LBB12290:
	.loc 4 1037 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC181
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC181
	ldr	r3, .L3952+8
	movw	r2, #1037
	bl	_assert_fail
.LVL4067:
.L3946:
.LBE12290:
.LBE12294:
.LBB12295:
.LBB12278:
	bl	cap_async_endpoint_cap_get_capAEPBadge.part.185
.LVL4068:
.L3953:
	.align	2
.L3952:
	.word	.LANCHOR4+2276
	.word	.LANCHOR4+3896
	.word	.LANCHOR4+2216
.LBE12278:
.LBE12295:
.LBE12299:
.LBE12402:
.LBE12403:
.LBE12405:
	.cfi_endproc
.LFE516:
	.size	cdtFindChild, .-cdtFindChild
	.align	2
	.global	sameObjectAs
	.syntax unified
	.arm
	.type	sameObjectAs, %function
sameObjectAs:
.LFB649:
	.loc 52 395 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 52 395 0
	add	lr, sp, #8
	stm	sp, {r2, r3}
	mov	ip, sp
	mov	r3, r2
	stm	lr, {r0, r1}
	mov	r1, r0
.LVL4069:
.LBB12406:
.LBB12407:
	.loc 4 997 0
	and	r0, r0, #14
	cmp	r0, #14
	beq	.L3955
	.loc 4 998 0
	and	r2, r1, #15
.LVL4070:
.LBE12407:
.LBE12406:
	.loc 52 396 0
	cmp	r2, #2
.LBB12411:
.LBB12408:
	.loc 4 998 0
	mov	r4, r2
.LBE12408:
.LBE12411:
	.loc 52 396 0
	beq	.L3978
	.loc 52 399 0
	cmp	r2, #14
	beq	.L3988
.L3964:
	.loc 52 403 0
	tst	r4, #1
	beq	.L3965
.LVL4071:
.LBB12412:
.LBB12413:
.LBB12414:
.LBB12415:
	.loc 4 997 0 discriminator 1
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0 discriminator 1
	uxtbeq	r3, r3
.LVL4072:
	.loc 4 998 0 discriminator 1
	andne	r3, r3, #15
.LBE12415:
.LBE12414:
.LBE12413:
.LBE12412:
	.loc 52 403 0 discriminator 1
	tst	r3, #1
	bne	.L3989
.L3965:
	.loc 52 406 0
	ldm	ip, {r2, r3}
	ldm	lr, {r0, r1}
	.loc 52 407 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 52 406 0
	b	sameRegionAs
.LVL4073:
.L3955:
	.cfi_restore_state
.LBB12416:
.LBB12409:
	.loc 4 999 0
	uxtb	r2, r1
.LVL4074:
.LBE12409:
.LBE12416:
	.loc 52 396 0
	cmp	r2, #2
.LBB12417:
.LBB12410:
	.loc 4 999 0
	mov	r4, r2
.LBE12410:
.LBE12417:
	.loc 52 396 0
	beq	.L3978
	.loc 52 399 0
	cmp	r2, #14
	bne	.L3964
.LVL4075:
.LBB12418:
.LBB12419:
	.loc 4 997 0
	and	r4, r3, #14
	cmp	r4, #14
	beq	.L3969
.LVL4076:
.L3963:
	mov	r4, r2
	b	.L3964
.L3988:
.LVL4077:
	and	r4, r3, #14
	cmp	r4, #14
	bne	.L3963
.L3969:
.LVL4078:
.LBE12419:
.LBE12418:
	.loc 52 399 0
	uxtb	r2, r3
	cmp	r2, #30
	bne	.L3990
.L3978:
	.loc 52 407 0
	mov	r0, #0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL4079:
.L3989:
	.cfi_restore_state
	.loc 52 404 0
	ldm	ip, {r2, r3}
	ldm	lr, {r0, r1}
	.loc 52 407 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 52 404 0
	b	Arch_sameObjectAs
.LVL4080:
.L3990:
	.cfi_restore_state
.LBB12420:
.LBB12421:
.LBB12422:
.LBB12423:
	.loc 4 997 0
	cmp	r0, #14
	uxtbeq	r2, r1
	andne	r2, r1, #15
	b	.L3963
.LBE12423:
.LBE12422:
.LBE12421:
.LBE12420:
	.cfi_endproc
.LFE649:
	.size	sameObjectAs, .-sameObjectAs
	.align	2
	.global	cdtIsFinal
	.syntax unified
	.arm
	.type	cdtIsFinal, %function
cdtIsFinal:
.LFB509:
	.loc 3 454 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4081:
.LBB12466:
.LBB12467:
.LBB12468:
.LBB12469:
	.loc 30 217 0
	ldr	r2, [r0, #12]
.LBE12469:
.LBE12468:
.LBE12467:
.LBE12466:
	.loc 3 454 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 3 454 0
	mov	r4, r0
.LVL4082:
.LBB12491:
.LBB12488:
.LBB12471:
.LBB12470:
	.loc 30 217 0
	lsr	r2, r2, #5
.LVL4083:
	.loc 30 218 0
	lsls	r2, r2, #2
.LVL4084:
	bne	.L4025
.LVL4085:
.LBE12470:
.LBE12471:
	.loc 3 825 0
	bl	aaParent
.LVL4086:
	.loc 3 826 0
	subs	r5, r0, #0
	movne	r2, r4
	beq	.L3996
.LVL4087:
.L3997:
.LBB12472:
.LBB12473:
	.loc 30 211 0
	ldr	r3, [r5, #8]
.LBE12473:
.LBE12472:
	.loc 3 828 0
	mov	r0, r5
.LBB12476:
.LBB12474:
	.loc 30 211 0
	lsr	r3, r3, #5
.LVL4088:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL4089:
.LBE12474:
.LBE12476:
	.loc 3 826 0
	orr	r3, r3, #-536870912
.LVL4090:
.LBB12477:
.LBB12475:
	.loc 30 212 0
	beq	.L3998
.LBE12475:
.LBE12477:
	.loc 3 826 0
	cmp	r2, r3
	beq	.L4026
.L3998:
	.loc 3 828 0
	bl	aaParent
.LVL4091:
	.loc 3 826 0
	cmp	r0, #0
	mov	r2, r5
	mov	r5, r0
.LVL4092:
	bne	.L3997
.LVL4093:
.L3996:
.LBE12488:
.LBE12491:
.LBB12492:
.LBB12493:
.LBB12494:
.LBB12495:
.LBB12496:
.LBB12497:
	.loc 30 211 0
	ldr	r3, [r4, #8]
	lsr	r3, r3, #5
.LVL4094:
	.loc 30 212 0
	lsls	r2, r3, #2
.LVL4095:
	bne	.L4027
.LVL4096:
.LBE12497:
.LBE12496:
	.loc 3 802 0
	mov	r0, r4
	bl	aaParent
.LVL4097:
	.loc 3 803 0
	subs	r5, r0, #0
	movne	r2, r4
	bne	.L4004
	b	.L4003
.LVL4098:
.L4005:
	.loc 3 805 0
	bl	aaParent
.LVL4099:
	.loc 3 803 0
	cmp	r0, #0
	mov	r2, r5
	mov	r5, r0
.LVL4100:
	beq	.L4003
.LVL4101:
.L4004:
.LBB12498:
.LBB12499:
	.loc 30 217 0
	ldr	r3, [r5, #12]
.LBE12499:
.LBE12498:
	.loc 3 805 0
	mov	r0, r5
.LBB12502:
.LBB12500:
	.loc 30 217 0
	lsr	r3, r3, #5
.LVL4102:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL4103:
.LBE12500:
.LBE12502:
	.loc 3 803 0
	orr	r3, r3, #-536870912
.LVL4104:
.LBB12503:
.LBB12501:
	.loc 30 218 0
	beq	.L4005
.LBE12501:
.LBE12503:
	.loc 3 803 0
	cmp	r2, r3
	bne	.L4005
	mov	r1, r5
	b	.L4000
.LVL4105:
.L4027:
	.loc 3 793 0
	orr	r2, r2, #-536870912
.LVL4106:
.LBB12504:
.LBB12505:
.LBB12506:
.LBB12507:
	.loc 30 217 0
	ldr	r3, [r2, #12]
	lsr	r3, r3, #5
.LVL4107:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL4108:
	bne	.L4023
.LVL4109:
.L4011:
.LBE12507:
.LBE12506:
.LBB12508:
.LBB12509:
	mov	r1, r2
.LVL4110:
.L4000:
.LBE12509:
.LBE12508:
.LBE12505:
.LBE12504:
.LBE12495:
.LBE12494:
	.loc 3 466 0
	ldm	r4, {r2, r3}
	ldm	r1, {r0, r1}
	bl	sameObjectAs
.LVL4111:
.LBE12493:
.LBE12492:
	.loc 3 463 0
	clz	r0, r0
	lsr	r0, r0, #5
	.loc 3 470 0
	pop	{r4, r5, r6, pc}
.LVL4112:
.L4023:
.LBB12518:
.LBB12516:
.LBB12515:
.LBB12514:
.LBB12513:
.LBB12512:
	.loc 3 758 0
	orr	r2, r3, #-536870912
.LVL4113:
.LBB12511:
.LBB12510:
	.loc 30 217 0
	ldr	r3, [r2, #12]
	lsr	r3, r3, #5
.LVL4114:
	.loc 30 218 0
	lsls	r3, r3, #2
.LVL4115:
	beq	.L4011
	b	.L4023
.LVL4116:
.L4025:
.LBE12510:
.LBE12511:
.LBE12512:
.LBE12513:
.LBE12514:
.LBE12515:
.LBE12516:
.LBE12518:
.LBB12519:
.LBB12489:
	.loc 3 815 0
	orr	r2, r2, #-536870912
.LVL4117:
.LBB12478:
.LBB12479:
.LBB12480:
.LBB12481:
	.loc 30 211 0
	ldr	r3, [r2, #8]
	lsr	r3, r3, #5
.LVL4118:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL4119:
	bne	.L4022
.LVL4120:
.L4008:
.LBE12481:
.LBE12480:
.LBB12482:
.LBB12483:
	mov	r1, r2
.LVL4121:
.L3993:
.LBE12483:
.LBE12482:
.LBE12479:
.LBE12478:
.LBE12489:
.LBE12519:
	.loc 3 462 0
	ldm	r4, {r2, r3}
	ldm	r1, {r0, r1}
	bl	sameObjectAs
.LVL4122:
	cmp	r0, #0
	beq	.L3996
	.loc 3 463 0
	mov	r0, #0
	pop	{r4, r5, r6, pc}
.LVL4123:
.L4022:
.LBB12520:
.LBB12490:
.LBB12487:
.LBB12486:
	.loc 3 746 0
	orr	r2, r3, #-536870912
.LVL4124:
.LBB12485:
.LBB12484:
	.loc 30 211 0
	ldr	r3, [r2, #8]
	lsr	r3, r3, #5
.LVL4125:
	.loc 30 212 0
	lsls	r3, r3, #2
.LVL4126:
	beq	.L4008
	b	.L4022
.LVL4127:
.L4026:
.LBE12484:
.LBE12485:
.LBE12486:
.LBE12487:
	.loc 3 826 0
	mov	r1, r5
	b	.L3993
.LVL4128:
.L4003:
.LBE12490:
.LBE12520:
.LBB12521:
.LBB12517:
	.loc 3 469 0
	mov	r0, #1
.LVL4129:
	pop	{r4, r5, r6, pc}
.LBE12517:
.LBE12521:
	.cfi_endproc
.LFE509:
	.size	cdtIsFinal, .-cdtIsFinal
	.align	2
	.global	slotCapLongRunningDelete
	.syntax unified
	.arm
	.type	slotCapLongRunningDelete, %function
slotCapLongRunningDelete:
.LFB619:
	.loc 41 704 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4130:
	ldr	r3, [r0]
.LVL4131:
.LBB12530:
.LBB12531:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4132:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12531:
.LBE12530:
	.loc 41 705 0
	cmp	r3, #0
	bne	.L4054
	.loc 41 706 0
	mov	r0, #0
.LVL4133:
	.loc 41 718 0
	bx	lr
.LVL4134:
.L4054:
	.loc 41 704 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 41 707 0
	bl	cdtIsFinal
.LVL4135:
	cmp	r0, #0
	beq	.L4052
.LVL4136:
	ldr	r3, [r4]
.LVL4137:
.LBB12532:
.LBB12533:
.LBB12534:
.LBB12535:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4138:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE12535:
.LBE12534:
	.loc 41 710 0
	cmp	r3, #12
	beq	.L4037
	cmp	r3, #46
	beq	.L4037
	cmp	r3, #10
	beq	.L4037
.LVL4139:
.L4052:
	.loc 41 716 0
	mov	r0, #0
	pop	{r4, pc}
.LVL4140:
.L4037:
	.loc 41 714 0
	mov	r0, #1
.LBE12533:
.LBE12532:
	.loc 41 718 0
	pop	{r4, pc}
	.cfi_endproc
.LFE619:
	.size	slotCapLongRunningDelete, .-slotCapLongRunningDelete
	.align	2
	.global	decodeARMMMUInvocation
	.syntax unified
	.arm
	.type	decodeARMMMUInvocation, %function
decodeARMMMUInvocation:
.LFB360:
	.loc 11 1588 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4141:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	sub	sp, sp, #108
	.cfi_def_cfa_offset 144
	ldr	fp, [sp, #144]
	.loc 11 1588 0
	mov	r5, r3
	mov	r10, r0
	mov	r4, r1
.LVL4142:
	ldr	r9, [sp, #152]
.LVL4143:
.LBB12777:
.LBB12778:
	.loc 4 997 0
	and	r3, fp, #14
.LVL4144:
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r6, fp
.LVL4145:
	.loc 4 998 0
	andne	r6, fp, #15
.LBE12778:
.LBE12777:
	.loc 11 1589 0
	cmp	r6, #3
	beq	.L4059
	cmp	r6, #5
	beq	.L4060
	cmp	r6, #1
	beq	.L4282
.LVL4146:
.LBB12779:
.LBB12780:
	.loc 11 1602 0
	movw	r1, #:lower16:.LC26
.LVL4147:
	movw	r0, #:lower16:.LC204
.LVL4148:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC204
	ldr	r3, .L4313
	movw	r2, #1602
.LVL4149:
	bl	_fail
.LVL4150:
.L4282:
	add	r3, sp, #140
	add	r6, sp, #44
	ldmib	r3, {r0, r1}
.LVL4151:
.LBE12780:
.LBE12779:
.LBB12781:
.LBB12782:
	.loc 11 1249 0
	sub	r3, r10, #36
	ldr	r7, [sp, #148]
.LVL4152:
	stm	r6, {r0, r1}
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L4091
.L4093:
	.word	.L4092
	.word	.L4094
	.word	.L4095
	.word	.L4095
	.word	.L4095
	.word	.L4095
	.word	.L4096
.LVL4153:
.L4060:
.LBE12782:
.LBE12781:
.LBB12948:
.LBB12949:
	.loc 11 1508 0
	sub	r3, r0, #30
	cmp	r3, #3
	bls	.L4283
.LVL4154:
.L4091:
.LBE12949:
.LBE12948:
.LBB13016:
.LBB12939:
	.loc 11 1448 0
	mov	r2, #3
	movw	r3, #:lower16:current_syscall_error
	.loc 11 1450 0
	mov	r6, r2
	.loc 11 1448 0
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4155:
.L4266:
.LBE12939:
.LBE13016:
	.loc 11 1604 0
	mov	r0, r6
	add	sp, sp, #108
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4156:
.L4059:
	.cfi_restore_state
	add	r3, sp, #140
.LBB13017:
.LBB13018:
	.loc 11 993 0
	cmp	r10, #35
	ldmib	r3, {r0, r1}
.LVL4157:
	add	r7, sp, #36
	ldr	r8, [sp, #148]
	stm	r7, {r0, r1}
.LVL4158:
	beq	.L4284
	.loc 11 1002 0
	cmp	r10, #34
	bne	.L4275
	.loc 11 1007 0
	cmp	r9, #0
	cmpne	r4, #1
	movls	r4, #1
.LVL4159:
	movhi	r4, #0
	bls	.L4276
	.loc 11 1012 0
	str	fp, [sp, #36]
	str	r8, [sp, #40]
	ldm	r7, {r0, r1}
	bl	cdtFindWithExtra
.LVL4160:
	cmp	r0, #0
	bne	.L4285
.LVL4161:
	.loc 11 1022 0
	ldr	r4, [r9]
.LBB13019:
.LBB13020:
	.loc 37 30 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL4162:
.LBE13020:
.LBE13019:
.LBB13024:
.LBB13025:
	.loc 4 997 0
	and	r3, r4, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r4
	.loc 4 998 0
	andne	r3, r4, #15
.LBE13025:
.LBE13024:
.LBB13026:
.LBB13023:
.LBB13021:
.LBB13022:
	.loc 10 27 0
	ldr	r7, [r0, #8]
.LVL4163:
.LBE13022:
.LBE13021:
.LBE13023:
.LBE13026:
	.loc 11 1024 0
	cmp	r3, #5
	bne	.L4286
.LVL4164:
.LBB13027:
.LBB13028:
	.loc 4 1886 0
	and	r3, r4, #15
	cmp	r3, #5
	bne	.L4087
.LBE13028:
.LBE13027:
	.loc 11 1033 0
	cmn	r7, #536870913
.LBB13030:
.LBB13029:
	.loc 4 1889 0
	bic	r4, r4, #16320
.LVL4165:
	bic	r4, r4, #63
.LVL4166:
.LBE13029:
.LBE13030:
	.loc 11 1033 0
	bhi	.L4287
	.loc 11 1040 0
	lsr	r7, r7, #20
.LVL4167:
.LBB13031:
.LBB13032:
	.loc 4 753 0
	ldr	r8, [r4, r7, lsl #2]
.LVL4168:
.LBE13032:
.LBE13031:
	.loc 11 1041 0
	add	r9, r4, r7, lsl #2
.LVL4169:
	.loc 11 1042 0
	ands	r8, r8, #3
	.loc 11 1043 0
	movwne	r3, #:lower16:current_syscall_error
	movne	r2, #8
	movtne	r3, #:upper16:current_syscall_error
	strne	r2, [r3, #24]
.LVL4170:
	.loc 11 1042 0
	bne	.L4266
.LVL4171:
.LBB13033:
.LBB13034:
	.loc 4 1855 0
	and	r3, fp, #15
	cmp	r3, #3
	bne	.L4288
.LVL4172:
.LBE13034:
.LBE13033:
.LBB13036:
.LBB13037:
	.loc 4 820 0
	ldr	r6, [r0, #12]
	bic	r3, fp, #1020
	bic	r3, r3, #3
.LBE13037:
.LBE13036:
.LBB13040:
.LBB13041:
	.loc 4 1848 0
	orr	r10, r4, r7
.LVL4173:
.LBE13041:
.LBE13040:
.LBB13042:
.LBB13038:
	.loc 4 820 0
	add	r3, r3, #805306368
	ubfx	r6, r6, #1, #1
	orr	r6, r3, r6, lsl #9
.LBE13038:
.LBE13042:
	.loc 11 1059 0
	bl	setThreadState.constprop.305
.LVL4174:
.LBB13043:
.LBB13044:
	.loc 11 1610 0
	add	r3, sp, #64
	str	fp, [sp, #64]
	str	r10, [sp, #68]
.LBE13044:
.LBE13043:
.LBB13050:
.LBB13039:
	.loc 4 820 0
	orr	r6, r6, #1
.LVL4175:
.LBE13039:
.LBE13050:
.LBB13051:
.LBB13049:
	.loc 11 1610 0
	mov	r0, r5
	ldm	r3, {r1, r2}
	bl	cdtUpdate
.LVL4176:
	.loc 11 1611 0
	str	r6, [r4, r7, lsl #2]
.LVL4177:
.LBB13045:
.LBB13046:
	.loc 14 212 0
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r9, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB13047:
.LBB13048:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL4178:
	.arm
	.syntax unified
.LBE13048:
.LBE13047:
.LBE13046:
.LBE13045:
.LBE13049:
.LBE13051:
	.loc 11 1060 0
	mov	r6, r8
.LVL4179:
.LBE13018:
.LBE13017:
	.loc 11 1604 0
	mov	r0, r6
	add	sp, sp, #108
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4180:
.L4283:
	.cfi_restore_state
.LBB13057:
.LBB13008:
.LBB12950:
	.loc 11 1518 0
	cmp	r1, #1
	bls	.L4289
.LVL4181:
.LBB12951:
.LBB12952:
	.loc 37 30 0
	movw	r8, #:lower16:ksCurThread
	movt	r8, #:upper16:ksCurThread
	ldr	r5, [r8]
.LVL4182:
.LBB12953:
.LBB12954:
	.loc 10 27 0
	ldr	r4, [r5, #8]
.LVL4183:
.LBE12954:
.LBE12953:
.LBE12952:
.LBE12951:
.LBB12955:
.LBB12956:
.LBB12957:
.LBB12958:
	ldr	r1, [r5, #12]
.LVL4184:
.LBE12958:
.LBE12957:
.LBE12956:
.LBE12955:
	.loc 11 1528 0
	cmp	r4, r1
	bcs	.L4290
	.loc 11 1536 0
	cmn	r4, #536870913
	cmpls	r1, #-536870912
	movhi	r0, #1
.LVL4185:
	movls	r0, #0
	bhi	.L4291
.LVL4186:
.LBB12959:
.LBB12960:
	.loc 4 1886 0
	and	r3, fp, #15
	cmp	r3, #5
	bne	.L4087
.LVL4187:
.LBE12960:
.LBE12959:
.LBB12962:
.LBB12963:
.LBB12964:
.LBB12965:
	.loc 4 753 0
	lsr	r3, r4, #20
.LBE12965:
.LBE12964:
.LBE12963:
.LBE12962:
	.loc 11 1542 0
	bic	r7, fp, #16320
	bic	r7, r7, #63
.LVL4188:
.LBB12989:
.LBB12986:
.LBB12967:
.LBB12966:
	.loc 4 753 0
	ldr	ip, [r7, r3, lsl #2]
.LVL4189:
.LBE12966:
.LBE12967:
	.loc 11 1464 0
	and	r3, ip, #3
	cmp	r3, #1
	beq	.L4070
	cmp	r3, #2
	bne	.L4069
.LVL4190:
.LBB12968:
.LBB12969:
	.loc 4 922 0
	lsr	r9, ip, #20
.LVL4191:
.LBE12969:
.LBE12968:
	.loc 11 1468 0
	tst	ip, #262144
	moveq	r0, #2
.LBB12971:
.LBB12970:
	.loc 4 922 0
	lsl	r9, r9, #20
.LVL4192:
.LBE12970:
.LBE12971:
	.loc 11 1468 0
	movne	r0, #3
.LVL4193:
.L4073:
.LBE12986:
.LBE12989:
.LBB12990:
.LBB12991:
	.loc 11 1500 0
	mov	r6, #1
.LBE12991:
.LBE12990:
	.loc 11 1558 0
	sub	fp, r1, #1
.LVL4194:
.LBB12993:
.LBB12992:
	.loc 11 1500 0
	bl	pageBitsForSize
.LVL4195:
	lsl	r6, r6, r0
	rsb	r3, r6, #0
	and	r2, r4, r3
.LVL4196:
.LBE12992:
.LBE12993:
	.loc 11 1557 0
	and	r3, r3, fp
	cmp	r2, r3
	beq	.L4292
	.loc 11 1561 0
	sub	r6, r6, #1
	.loc 11 1559 0
	movw	r3, #:lower16:current_syscall_error
	.loc 11 1561 0
	add	r6, r6, r2
	.loc 11 1559 0
	movt	r3, #:upper16:current_syscall_error
	mov	r2, #4
	.loc 11 1561 0
	str	r6, [r3, #12]
	.loc 11 1560 0
	str	r4, [r3, #8]
	.loc 11 1564 0
	mov	r6, #3
	.loc 11 1559 0
	str	r2, [r3, #24]
	b	.L4266
.LVL4197:
.L4096:
.LBE12950:
.LBE13008:
.LBE13057:
.LBB13058:
.LBB12940:
	.loc 11 1443 0
	movw	r4, #:lower16:ksCurThread
.LVL4198:
	movt	r4, #:upper16:ksCurThread
	ldr	r0, [r4]
	bl	setThreadState.constprop.305
.LVL4199:
.LBB12783:
.LBB12784:
	.loc 4 1766 0
	and	r1, fp, #15
	cmp	r1, #1
	bne	.L4293
.LVL4200:
.LBE12784:
.LBE12783:
.LBB12786:
.LBB12787:
.LBB12788:
.LBB12789:
	.loc 10 21 0
	bic	r2, fp, #-16777216
.LBE12789:
.LBE12788:
	.loc 11 1640 0
	ldr	r3, [r4]
.LVL4201:
.LBB12793:
.LBB12790:
	.loc 10 21 0
	bic	r2, r2, #15
.LBE12790:
.LBE12793:
.LBE12787:
.LBE12786:
	.loc 11 1444 0
	mov	r6, #0
.LBB12799:
.LBB12798:
.LBB12794:
.LBB12791:
	.loc 10 21 0
	lsl	r2, r2, #8
.LBE12791:
.LBE12794:
.LBB12795:
.LBB12796:
	str	r1, [r3, #4]
.LBE12796:
.LBE12795:
.LBB12797:
.LBB12792:
	add	r2, r2, #805306368
	str	r2, [r3, #8]
.LVL4202:
	b	.L4266
.LVL4203:
.L4095:
.LBE12792:
.LBE12797:
.LBE12798:
.LBE12799:
.LBB12800:
	.loc 11 1365 0
	cmp	r4, #1
	bls	.L4294
.LVL4204:
.LBB12801:
.LBB12802:
	.loc 4 1687 0
	and	r3, fp, #15
	cmp	r3, #1
	bne	.L4130
	.loc 4 1690 0
	lsr	r8, fp, #29
.LVL4205:
.LBE12802:
.LBE12801:
	.loc 11 1374 0
	str	r7, [sp, #48]
	ldm	r6, {r0, r1}
	.loc 11 1373 0
	cmp	r8, #1
	bls	.L4295
	.loc 11 1395 0
	bl	cap_frame_cap_get_capFMappedObject
.LVL4206:
	.loc 11 1396 0
	subs	r9, r0, #0
.LVL4207:
	.loc 11 1403 0
	lslne	r7, r7, #20
.LVL4208:
	.loc 11 1396 0
	beq	.L4296
.LVL4209:
.L4137:
.LBB12803:
.LBB12804:
	.loc 37 30 0
	movw	r5, #:lower16:ksCurThread
.LVL4210:
	movt	r5, #:upper16:ksCurThread
	ldr	r3, [r5]
.LVL4211:
.LBB12805:
.LBB12806:
	.loc 10 27 0
	ldr	r2, [r3, #8]
.LVL4212:
.LBE12806:
.LBE12805:
.LBE12804:
.LBE12803:
.LBB12807:
.LBB12808:
.LBB12809:
.LBB12810:
	ldr	r4, [r3, #12]
.LVL4213:
.LBE12810:
.LBE12809:
.LBE12808:
.LBE12807:
	.loc 11 1411 0
	cmp	r2, r4
	bcs	.L4297
	.loc 11 1418 0
	mov	r0, r8
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	mov	r8, #1
	bl	pageBitsForSize
.LVL4214:
	.loc 11 1421 0
	ldr	r2, [sp, #20]
	.loc 11 1418 0
	lsl	r0, r8, r0
.LVL4215:
	.loc 11 1421 0
	ldr	r3, [sp, #16]
	cmp	r4, r0
	cmpls	r2, r0
	movcs	r6, #1
	movcc	r6, #0
	bcc	.L4140
	.loc 11 1422 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
.LVL4216:
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4313+4
	str	r2, [sp, #4]
	movw	r2, #1422
	bl	kprintf
.LVL4217:
	movw	r0, #:lower16:.LC203
	.loc 11 1425 0
	mov	r6, #3
	.loc 11 1422 0
	movt	r0, #:upper16:.LC203
	bl	kprintf
.LVL4218:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4219:
	.loc 11 1423 0
	movw	r3, #:lower16:current_syscall_error
	.loc 11 1424 0
	mov	r2, #0
	.loc 11 1423 0
	movt	r3, #:upper16:current_syscall_error
	str	r8, [r3, #24]
	.loc 11 1424 0
	str	r2, [r3]
	b	.L4266
.LVL4220:
.L4094:
.LBE12800:
	.loc 11 1345 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL4221:
	.loc 11 1346 0
	str	r7, [sp, #48]
	mov	r2, r5
	ldm	r6, {r0, r1}
	bl	performPageInvocationUnmap
.LVL4222:
	mov	r6, r0
	b	.L4266
.LVL4223:
.L4294:
.LBB12829:
	.loc 11 1366 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	movw	r2, #1366
.LVL4224:
	ldr	r1, .L4313+4
	.loc 11 1368 0
	mov	r6, #3
	.loc 11 1366 0
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL4225:
	movw	r0, #:lower16:.LC199
	movt	r0, #:upper16:.LC199
.LVL4226:
.L4273:
	bl	kprintf
.LVL4227:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4228:
.L4276:
	.loc 11 1367 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	b	.L4266
.LVL4229:
.L4092:
.LBE12829:
.LBB12830:
	.loc 11 1259 0
	cmp	r9, #0
	cmpne	r4, #2
	movls	r3, #1
	movhi	r3, #0
	str	r3, [sp, #20]
	bls	.L4298
.LVL4230:
.LBB12831:
.LBB12832:
	.loc 37 30 0
	movw	r8, #:lower16:ksCurThread
.LBE12832:
.LBE12831:
.LBB12838:
.LBB12839:
	.loc 4 1687 0
	and	r3, fp, #15
.LBE12839:
.LBE12838:
.LBB12844:
.LBB12835:
	.loc 37 30 0
	movt	r8, #:upper16:ksCurThread
.LBE12835:
.LBE12844:
.LBB12845:
.LBB12840:
	.loc 4 1687 0
	cmp	r3, #1
.LBE12840:
.LBE12845:
.LBB12846:
.LBB12836:
	.loc 37 30 0
	ldr	r10, [r8]
.LVL4231:
.LBE12836:
.LBE12846:
	.loc 11 1269 0
	ldr	r9, [r9]
.LVL4232:
.LBB12847:
.LBB12848:
.LBB12849:
.LBB12850:
	.loc 10 27 0
	ldr	r3, [r10, #12]
.LBE12850:
.LBE12849:
.LBE12848:
.LBE12847:
.LBB12854:
.LBB12837:
.LBB12833:
.LBB12834:
	ldr	r4, [r10, #8]
.LVL4233:
.LBE12834:
.LBE12833:
.LBE12837:
.LBE12854:
.LBB12855:
.LBB12853:
.LBB12852:
.LBB12851:
	str	r3, [sp, #28]
.LVL4234:
.LBE12851:
.LBE12852:
.LBE12853:
.LBE12855:
.LBB12856:
.LBB12857:
.LBB12858:
.LBB12859:
	ldr	r3, [r10, #16]
	str	r3, [sp, #24]
.LVL4235:
.LBE12859:
.LBE12858:
.LBE12857:
.LBE12856:
.LBB12860:
.LBB12841:
	.loc 4 1687 0
	bne	.L4130
	.loc 4 1690 0
	lsr	r3, fp, #29
.LBE12841:
.LBE12860:
	.loc 11 1274 0
	str	r7, [sp, #48]
	ldm	r6, {r0, r1}
.LBB12861:
.LBB12842:
	.loc 4 1690 0
	str	r3, [sp, #16]
.LVL4236:
.LBE12842:
.LBE12861:
	.loc 11 1274 0
	bl	cap_frame_cap_get_capFMappedObject
.LVL4237:
	subs	r3, r0, #0
	bne	.L4299
.LVL4238:
.LBB12862:
.LBB12863:
	.loc 4 997 0
	and	r1, r9, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, r9
.LVL4239:
	.loc 4 998 0
	andne	r1, r9, #15
.LBE12863:
.LBE12862:
	.loc 11 1282 0
	cmp	r1, #5
	bne	.L4300
.LBB12864:
.LBB12865:
	.loc 4 1886 0
	and	r1, r9, #15
	str	r3, [sp, #20]
.LVL4240:
	cmp	r1, #5
	bne	.L4087
.LVL4241:
.LBE12865:
.LBE12864:
	.loc 11 1292 0
	lsr	r0, fp, #29
	.loc 11 1289 0
	bic	r9, r9, #16320
.LVL4242:
	bic	r9, r9, #63
	.loc 11 1292 0
	bl	pageBitsForSize
.LVL4243:
	mov	ip, #1
	.loc 11 1294 0
	sub	r1, r4, #1
	.loc 11 1292 0
	lsl	r0, ip, r0
.LVL4244:
	.loc 11 1294 0
	ldr	r3, [sp, #20]
	add	r1, r1, r0
	cmn	r1, #536870913
	bhi	.L4301
.LBB12866:
.LBB12867:
	.loc 4 1704 0
	ubfx	r1, fp, #27, #2
.LVL4245:
.LBE12867:
.LBE12866:
.LBB12868:
.LBB12869:
	.loc 11 736 0
	cmp	r1, #0
	beq	.L4105
	.loc 11 739 0
	cmp	r1, #2
	beq	.L4302
	.loc 11 743 0
	cmp	r1, #3
	beq	.L4303
.L4151:
	.loc 11 751 0
	mov	r3, ip
.L4105:
.LVL4246:
.LBE12869:
.LBE12868:
	.loc 11 1305 0
	sub	r0, r0, #1
.LVL4247:
	tst	r0, r4
	bne	.L4143
.LVL4248:
.L4108:
	.loc 11 1315 0
	ldr	r1, [sp, #16]
.LBB12873:
.LBB12874:
	.loc 46 52 0
	bic	r2, fp, #-16777216
	bic	r2, r2, #15
	lsl	r2, r2, #8
.LBE12874:
.LBE12873:
	.loc 11 1315 0
	cmp	r1, #1
.LBB12876:
.LBB12875:
	.loc 46 52 0
	add	fp, r2, #805306368
.LVL4249:
.LBE12875:
.LBE12876:
	.loc 11 1315 0
	bls	.L4304
.LVL4250:
.LBB12877:
.LBB12878:
.LBB12879:
	.loc 11 1183 0
	cmp	r1, #2
	beq	.L4123
	cmp	r1, #3
	bne	.L4305
.LVL4251:
	.loc 11 1216 0
	ldr	ip, [sp, #24]
.LBB12880:
.LBB12881:
	.loc 11 353 0
	lsr	r8, r4, #20
.LVL4252:
	mov	r0, r1
.LBE12881:
.LBE12880:
	.loc 11 1216 0
	str	r3, [sp, #4]
	mov	r1, fp
.LVL4253:
	ubfx	r2, ip, #2, #1
	and	r3, ip, #1
.LVL4254:
	str	r2, [sp]
	ubfx	r2, ip, #1, #1
	bl	makeUserPDE.constprop.292
.LVL4255:
	.loc 11 1226 0
	ldr	r3, [r9, r8, lsl #2]
	.loc 11 1216 0
	str	r0, [sp, #88]
.LVL4256:
	.loc 11 1226 0
	tst	r3, #3
	bne	.L4128
.LVL4257:
	add	r3, r8, #1
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4258:
	add	r3, r8, #2
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4259:
	add	r3, r8, #3
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4260:
	add	r3, r8, #4
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4261:
	add	r3, r8, #5
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4262:
	add	r3, r8, #6
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4263:
	add	r3, r8, #7
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4264:
	add	r3, r8, #8
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4265:
	add	r3, r8, #9
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4266:
	add	r3, r8, #10
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4267:
	add	r3, r8, #11
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4268:
	add	r3, r8, #12
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4269:
	add	r3, r8, #13
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4270:
	add	r3, r8, #14
	ldr	r3, [r9, r3, lsl #2]
	tst	r3, #3
	bne	.L4128
.LVL4271:
	add	r3, r8, #15
	ldr	r3, [r9, r3, lsl #2]
	ands	r3, r3, #3
	bne	.L4128
.LVL4272:
	.loc 11 1236 0
	add	lr, sp, #84
	str	r3, [sp, #84]
	str	r9, [sp, #92]
	add	ip, sp, #64
	str	r8, [sp, #96]
	mov	r4, #16
.LVL4273:
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	str	r4, [ip]
.LVL4274:
.L4127:
.LBE12879:
.LBE12878:
	.loc 11 1337 0
	mov	r0, r10
	bl	setThreadState.constprop.305
.LVL4275:
	.loc 11 1338 0
	add	r2, sp, #72
	str	r7, [sp, #48]
	ldm	r2, {r0, r1, r2}
	ldr	r3, [sp, #68]
	stm	sp, {r0, r1, r2}
	mov	r2, r5
	ldm	r6, {r0, r1}
	bl	performPageInvocationMapPDE
.LVL4276:
	mov	r6, r0
	b	.L4266
.LVL4277:
.L4295:
.LBE12877:
.LBE12830:
.LBB12924:
	.loc 11 1374 0
	bl	cap_frame_cap_get_capFMappedObject
.LVL4278:
	.loc 11 1375 0
	subs	r3, r0, #0
	beq	.L4306
.LVL4279:
.LBB12811:
.LBB12812:
	.loc 4 1791 0
	ubfx	r0, r3, #0, #10
.LVL4280:
.LBE12812:
.LBE12811:
.LBB12816:
.LBB12817:
	.loc 4 1664 0
	ubfx	r7, r7, #0, #12
.LVL4281:
.LBE12817:
.LBE12816:
.LBB12818:
.LBB12813:
	.loc 4 1791 0
	cmp	r0, #0
	bne	.L4307
.LVL4282:
	.loc 4 1797 0
	bic	r3, r3, #1020
.LVL4283:
.LBE12813:
.LBE12818:
	.loc 11 1382 0
	add	r1, sp, #84
.LBB12819:
.LBB12814:
	.loc 4 1797 0
	bic	r3, r3, #3
	str	r0, [sp, #88]
.LVL4284:
	orr	r3, r3, #3
	str	r3, [sp, #84]
.LBE12814:
.LBE12819:
	.loc 11 1382 0
	ldm	r1, {r0, r1}
	bl	cdtFindWithExtra
.LVL4285:
	.loc 11 1383 0
	cmp	r0, #0
	beq	.L4308
.LVL4286:
.LBB12820:
.LBB12821:
	.loc 4 1803 0
	ldr	r6, [r0]
	ldr	r3, [r0, #4]
.LVL4287:
	and	r6, r6, #15
	cmp	r6, #3
	bne	.L4309
	.loc 4 1806 0
	bic	r9, r3, #4080
.LVL4288:
	bic	r9, r9, #15
.LVL4289:
.LBE12821:
.LBE12820:
	.loc 11 1385 0
	cmp	r9, #0
	.loc 11 1393 0
	lslne	r7, r7, #12
	orrne	r7, r7, r3, lsl #20
	.loc 11 1385 0
	bne	.L4137
	.loc 11 1386 0
	movw	r3, #:lower16:ksCurThread
.LVL4290:
	ldr	r1, .L4313+4
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL4291:
	ldr	r3, [r3]
	movw	r2, #1386
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL4292:
	movw	r0, #:lower16:.LC201
	movt	r0, #:upper16:.LC201
	bl	kprintf
.LVL4293:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4294:
.L4275:
	.loc 11 1387 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	str	r6, [r3, #24]
	b	.L4266
.LVL4295:
.L4291:
.LBE12924:
.LBE12940:
.LBE13058:
.LBB13059:
.LBB13009:
.LBB13001:
	.loc 11 1537 0
	ldr	r2, [r5, #68]
.LVL4296:
	add	r3, r5, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	ldr	r1, .L4313+8
	mov	r3, r5
	str	r2, [sp, #4]
	movt	r0, #:upper16:.LC3
	movw	r2, #1537
	bl	kprintf
.LVL4297:
	movw	r0, #:lower16:.LC197
	movt	r0, #:upper16:.LC197
	bl	kprintf
.LVL4298:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4299:
	b	.L4091
.LVL4300:
.L4284:
.LBE13001:
.LBE13009:
.LBE13059:
.LBB13060:
.LBB13053:
	.loc 11 994 0
	mov	r0, r5
	bl	cdtIsFinal
.LVL4301:
	cmp	r0, #0
	.loc 11 995 0
	movweq	r3, #:lower16:current_syscall_error
	moveq	r2, #9
	movteq	r3, #:upper16:current_syscall_error
	streq	r2, [r3, #24]
	.loc 11 994 0
	beq	.L4266
	.loc 11 998 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL4302:
	.loc 11 999 0
	str	fp, [sp, #36]
	mov	r2, r5
	str	r8, [sp, #40]
	ldm	r7, {r0, r1}
	bl	performPageTableInvocationUnmap
.LVL4303:
	mov	r6, r0
	b	.L4266
.LVL4304:
.L4290:
.LBE13053:
.LBE13060:
.LBB13061:
.LBB13010:
.LBB13002:
	.loc 11 1529 0
	ldr	r2, [r5, #68]
.LVL4305:
	add	r3, r5, #140
	movw	r0, #:lower16:.LC3
.LVL4306:
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r5
	str	r2, [sp, #4]
	movw	r2, #1529
	ldr	r1, .L4313+8
	.loc 11 1532 0
	mov	r6, #3
	.loc 11 1529 0
	bl	kprintf
.LVL4307:
	movw	r0, #:lower16:.LC196
	movt	r0, #:upper16:.LC196
.LVL4308:
.L4274:
.LBE13002:
.LBE13010:
.LBE13061:
.LBB13062:
.LBB12941:
.LBB12925:
	.loc 11 1412 0
	bl	kprintf
.LVL4309:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4310:
	.loc 11 1413 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 11 1414 0
	str	r2, [r3]
	b	.L4266
.LVL4311:
.L4070:
.LBE12925:
.LBE12941:
.LBE13062:
.LBB13063:
.LBB13011:
.LBB13003:
.LBB12994:
.LBB12987:
.LBB12972:
.LBB12973:
.LBB12974:
.LBB12975:
.LBB12976:
	.loc 4 2032 0
	bic	ip, ip, #1020
	ubfx	r3, r4, #12, #8
	bic	ip, ip, #3
	add	ip, ip, r3, lsl #2
	add	r3, ip, #-805306368
	ldr	r9, [r3]
.LVL4312:
.LBE12976:
.LBE12975:
	.loc 31 181 0
	tst	r9, #2
	bne	.L4074
.LVL4313:
	.loc 31 183 0
	tst	r9, #1
.LBE12974:
.LBE12973:
.LBB12978:
.LBB12979:
	.loc 4 2098 0
	lsrne	r9, r9, #16
.LBE12979:
.LBE12978:
	.loc 11 1482 0
	movne	r0, #1
.LBB12981:
.LBB12980:
	.loc 4 2098 0
	lslne	r9, r9, #16
.LBE12980:
.LBE12981:
.LBB12982:
.LBB12977:
	.loc 31 183 0
	bne	.L4073
.LVL4314:
.L4069:
.LBE12977:
.LBE12982:
.LBE12972:
.LBE12987:
.LBE12994:
	.loc 11 1552 0
	mov	r0, r5
	.loc 11 1553 0
	mov	r6, #0
	.loc 11 1552 0
	bl	setThreadState.constprop.305
.LVL4315:
	b	.L4266
.LVL4316:
.L4285:
.LBE13003:
.LBE13011:
.LBE13063:
.LBB13064:
.LBB13054:
	.loc 11 1013 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1015 0
	str	r4, [r3, #4]
	.loc 11 1013 0
	str	r2, [r3, #24]
	b	.L4266
.LVL4317:
.L4297:
.LBE13054:
.LBE13064:
.LBB13065:
.LBB12942:
.LBB12926:
	.loc 11 1412 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4313+4
	str	r2, [sp, #4]
	movw	r2, #1412
	bl	kprintf
.LVL4318:
	movw	r0, #:lower16:.LC202
	.loc 11 1415 0
	mov	r6, #3
	.loc 11 1412 0
	movt	r0, #:upper16:.LC202
	b	.L4274
.LVL4319:
.L4286:
.LBE12926:
.LBE12942:
.LBE13065:
.LBB13066:
.LBB13055:
	.loc 11 1025 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1026 0
	mov	r2, #1
	.loc 11 1025 0
	str	r1, [r3, #24]
.LVL4320:
	.loc 11 1026 0
	str	r2, [r3, #4]
	b	.L4266
.LVL4321:
.L4287:
	.loc 11 1034 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1035 0
	mov	r2, #0
	.loc 11 1034 0
	str	r1, [r3, #24]
.LVL4322:
	.loc 11 1035 0
	str	r2, [r3]
	b	.L4266
.LVL4323:
.L4289:
.LBE13055:
.LBE13066:
.LBB13067:
.LBB13012:
.LBB13004:
	.loc 11 1519 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL4324:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	movw	r2, #1519
.LVL4325:
	ldr	r1, .L4313+8
.LVL4326:
	.loc 11 1521 0
	mov	r6, #3
	.loc 11 1519 0
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL4327:
	movw	r0, #:lower16:.LC195
	movt	r0, #:upper16:.LC195
	b	.L4273
.LVL4328:
.L4298:
.LBE13004:
.LBE13012:
.LBE13067:
.LBB13068:
.LBB12943:
.LBB12927:
	.loc 11 1260 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
.LVL4329:
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1263 0
	mov	r6, #3
	.loc 11 1260 0
	str	r2, [r3, #24]
	b	.L4266
.LVL4330:
.L4304:
.LBB12888:
.LBB12889:
.LBB12890:
.LBB12891:
.LBB12892:
	.loc 11 876 0
	mov	r0, r3
.LBE12892:
.LBE12891:
.LBB12895:
.LBB12896:
	.loc 4 327 0
	ldr	r3, [sp, #24]
.LVL4331:
	ubfx	r10, r3, #2, #1
.LBE12896:
.LBE12895:
	.loc 11 1087 0
	bne	.L4310
.LVL4332:
.LBB12897:
.LBB12893:
	.loc 11 876 0
	bl	APFromVMRights
.LVL4333:
	.loc 11 903 0
	ldr	r3, [sp, #24]
	ands	r2, r3, #1
.LVL4334:
	beq	.L4118
	.loc 11 904 0
	ldr	r3, [sp, #16]
	mov	r1, r10
	str	r0, [sp]
	mov	r2, #5
.LVL4335:
	mov	r0, fp
.LVL4336:
	str	r3, [sp, #4]
	mov	r3, #0
	bl	pte_pte_large_new.constprop.291
.LVL4337:
	mov	r3, r0
.LVL4338:
.L4119:
.LBE12893:
.LBE12897:
	.loc 11 1138 0
	mov	r2, r4
	mov	r1, r9
	add	r0, sp, #52
.LVL4339:
	str	r3, [sp, #88]
.LVL4340:
	bl	lookupPTSlot
.LVL4341:
	add	r1, sp, #52
.LVL4342:
	ldm	r1, {r1, r2, r3}
.LVL4343:
	.loc 11 1139 0
	cmp	r1, #0
	bne	.L4120
.LVL4344:
	ldr	r1, [r2, r3, lsl #2]
.LVL4345:
.LBB12898:
.LBB12899:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4346:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4347:
	add	r1, r3, #1
.LVL4348:
	ldr	r1, [r2, r1, lsl #2]
.LVL4349:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4350:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4351:
	add	r1, r3, #2
.LVL4352:
	ldr	r1, [r2, r1, lsl #2]
.LVL4353:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4354:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4355:
	add	r1, r3, #3
.LVL4356:
	ldr	r1, [r2, r1, lsl #2]
.LVL4357:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4358:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4359:
	add	r1, r3, #4
.LVL4360:
	ldr	r1, [r2, r1, lsl #2]
.LVL4361:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4362:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4363:
	add	r1, r3, #5
.LVL4364:
	ldr	r1, [r2, r1, lsl #2]
.LVL4365:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4366:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4367:
	add	r1, r3, #6
.LVL4368:
	ldr	r1, [r2, r1, lsl #2]
.LVL4369:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4370:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4371:
	add	r1, r3, #7
.LVL4372:
	ldr	r1, [r2, r1, lsl #2]
.LVL4373:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4374:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4375:
	add	r1, r3, #8
.LVL4376:
	ldr	r1, [r2, r1, lsl #2]
.LVL4377:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4378:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4379:
	add	r1, r3, #9
.LVL4380:
	ldr	r1, [r2, r1, lsl #2]
.LVL4381:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4382:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4383:
	add	r1, r3, #10
.LVL4384:
	ldr	r1, [r2, r1, lsl #2]
.LVL4385:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4386:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4387:
	add	r1, r3, #11
.LVL4388:
	ldr	r1, [r2, r1, lsl #2]
.LVL4389:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4390:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4391:
	add	r1, r3, #12
.LVL4392:
	ldr	r1, [r2, r1, lsl #2]
.LVL4393:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4394:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4395:
	add	r1, r3, #13
.LVL4396:
	ldr	r1, [r2, r1, lsl #2]
.LVL4397:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4398:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4399:
	add	r1, r3, #14
.LVL4400:
	ldr	r1, [r2, r1, lsl #2]
.LVL4401:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4402:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4403:
	add	r1, r3, #15
.LVL4404:
	ldr	r1, [r2, r1, lsl #2]
.LVL4405:
	.loc 31 169 0
	tst	r1, #2
	bne	.L4116
.LVL4406:
	.loc 31 171 0
	tst	r1, #1
	bne	.L4116
.LVL4407:
.LBE12899:
.LBE12898:
	.loc 11 1165 0
	mov	r1, #0
.LVL4408:
	add	lr, sp, #84
	str	r2, [sp, #92]
	add	ip, sp, #64
	str	r3, [sp, #96]
	mov	r4, #16
.LVL4409:
	str	r1, [sp, #84]
	ldmia	lr!, {r0, r1, r2, r3}
.LVL4410:
	stmia	ip!, {r0, r1, r2, r3}
	str	r4, [ip]
.LVL4411:
.L4144:
.LBE12890:
.LBE12889:
	.loc 11 1324 0
	ldr	r0, [r8]
	bl	setThreadState.constprop.305
.LVL4412:
	.loc 11 1325 0
	add	r2, sp, #72
	str	r7, [sp, #48]
	ldm	r2, {r0, r1, r2}
	ldr	r3, [sp, #68]
	stm	sp, {r0, r1, r2}
	mov	r2, r5
	ldm	r6, {r0, r1}
	bl	performPageInvocationMapPTE
.LVL4413:
	mov	r6, r0
	b	.L4266
.LVL4414:
.L4116:
.LBB12911:
.LBB12907:
	.loc 11 1117 0
	movw	r3, #:lower16:current_syscall_error
.LVL4415:
	mov	r2, #8
.LVL4416:
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL4417:
.L4115:
	mov	r6, #3
	b	.L4266
.LVL4418:
.L4305:
.LBE12907:
.LBE12911:
.LBE12888:
.LBB12915:
.LBB12886:
.LBB12884:
	.loc 11 1239 0
	movw	r1, #:lower16:.LC26
.LVL4419:
	movw	r0, #:lower16:.LC198
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC198
	ldr	r3, .L4313+12
.LVL4420:
	movw	r2, #1239
	bl	_fail
.LVL4421:
.L4123:
	.loc 11 1191 0
	ldr	ip, [sp, #24]
.LBB12882:
.LBB12883:
	.loc 11 353 0
	lsr	r8, r4, #20
.LVL4422:
	mov	r0, r1
.LBE12883:
.LBE12882:
	.loc 11 1191 0
	str	r3, [sp, #4]
	mov	r1, fp
.LVL4423:
	ubfx	r2, ip, #2, #1
	and	r3, ip, #1
.LVL4424:
	str	r2, [sp]
	ubfx	r2, ip, #1, #1
	bl	makeUserPDE.constprop.292
.LVL4425:
	.loc 11 1200 0
	ldr	r3, [r9, r8, lsl #2]
	.loc 11 1191 0
	str	r0, [sp, #88]
.LVL4426:
	.loc 11 1200 0
	ands	r3, r3, #3
.LVL4427:
	bne	.L4128
.LVL4428:
	.loc 11 1209 0
	add	lr, sp, #84
	str	r3, [sp, #84]
	str	r9, [sp, #92]
	add	ip, sp, #64
	str	r8, [sp, #96]
	mov	r4, #1
.LVL4429:
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	str	r4, [ip]
.LVL4430:
	b	.L4127
.LVL4431:
.L4140:
.LBE12884:
.LBE12886:
.LBE12915:
.LBE12927:
.LBB12928:
	.loc 11 1434 0
	sub	r4, r4, #1
	.loc 11 1430 0
	add	r8, r2, r7
	.loc 11 1433 0
	mov	r0, r3
.LVL4432:
	.loc 11 1434 0
	add	r7, r4, r7
.LVL4433:
	.loc 11 1430 0
	str	r2, [sp, #16]
.LVL4434:
	.loc 11 1433 0
	bl	setThreadState.constprop.305
.LVL4435:
.LBB12823:
.LBB12824:
	.loc 11 1790 0
	cmp	r8, r7
	bcc	.L4311
.LVL4436:
.L4141:
.LBE12824:
.LBE12823:
	.loc 11 1434 0
	mov	r6, #0
	b	.L4266
.LVL4437:
.L4128:
.LBE12928:
.LBB12929:
.LBB12916:
.LBB12887:
.LBB12885:
	.loc 11 1201 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #8
	movt	r3, #:upper16:current_syscall_error
	mov	r6, #3
	str	r2, [r3, #24]
.LVL4438:
	b	.L4266
.LVL4439:
.L4302:
.LBE12885:
.LBE12887:
.LBE12916:
.LBB12917:
.LBB12870:
	.loc 11 739 0
	ldr	r3, [sp, #28]
	tst	r3, #2
	beq	.L4312
	.loc 11 741 0
	mov	r3, r1
	b	.L4105
.LVL4440:
.L4074:
.LBE12870:
.LBE12917:
.LBE12929:
.LBE12943:
.LBE13068:
.LBB13069:
.LBB13013:
.LBB13005:
.LBB12995:
.LBB12988:
.LBB12985:
.LBB12983:
.LBB12984:
	.loc 4 2208 0
	bic	r9, r9, #4080
	bic	r9, r9, #15
.LVL4441:
	b	.L4073
.LVL4442:
.L4299:
.LBE12984:
.LBE12983:
.LBE12985:
.LBE12988:
.LBE12995:
.LBE13005:
.LBE13013:
.LBE13069:
.LBB13070:
.LBB12944:
.LBB12930:
	.loc 11 1277 0
	ldr	r1, [sp, #20]
	.loc 11 1275 0
	movw	r3, #:lower16:current_syscall_error
	movt	r3, #:upper16:current_syscall_error
	mov	r2, #2
	.loc 11 1279 0
	mov	r6, #3
	.loc 11 1275 0
	str	r2, [r3, #24]
	.loc 11 1277 0
	str	r1, [r3, #4]
	b	.L4266
.L4300:
	.loc 11 1283 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1285 0
	mov	r2, #1
	.loc 11 1283 0
	str	r1, [r3, #24]
	.loc 11 1287 0
	mov	r6, #3
	.loc 11 1285 0
	str	r2, [r3, #4]
	b	.L4266
.LVL4443:
.L4303:
.LBB12918:
.LBB12871:
	.loc 11 743 0
	ldr	r3, [sp, #28]
	tst	r3, #2
	beq	.L4151
.LVL4444:
	.loc 11 741 0
	tst	r3, #1
	movne	r3, #3
	moveq	r3, #2
	b	.L4105
.LVL4445:
.L4310:
.LBE12871:
.LBE12918:
.LBB12919:
.LBB12912:
.LBB12908:
.LBB12900:
.LBB12901:
	.loc 11 876 0
	bl	APFromVMRights
.LVL4446:
	.loc 11 880 0
	ldr	r3, [sp, #24]
	.loc 11 876 0
	mov	r1, r0
.LVL4447:
	.loc 11 881 0
	mov	r2, #1
	.loc 11 880 0
	ands	r3, r3, #1
.LVL4448:
	beq	.L4112
	.loc 11 881 0
	mov	r3, #0
.LVL4449:
	str	r1, [sp]
	str	r2, [sp, #8]
	mov	r1, r2
	str	r3, [sp, #4]
	mov	r2, r3
	str	r10, [sp, #12]
	mov	r3, #5
	mov	r0, fp
.LVL4450:
	bl	pte_pte_small_new.constprop.290
.LVL4451:
	mov	r3, r0
.LVL4452:
.L4113:
.LBE12901:
.LBE12900:
	.loc 11 1100 0
	mov	r2, r4
	mov	r1, r9
	add	r0, sp, #52
.LVL4453:
	str	r3, [sp, #88]
.LVL4454:
	bl	lookupPTSlot
.LVL4455:
	add	r1, sp, #52
.LVL4456:
	ldm	r1, {r1, r2, r3}
.LVL4457:
	.loc 11 1101 0
	cmp	r1, #0
	bne	.L4120
.LVL4458:
	ldr	r0, [r2, r3, lsl #2]
.LVL4459:
.LBB12903:
.LBB12904:
	.loc 31 169 0
	tst	r0, #2
	bne	.L4116
.LVL4460:
	.loc 31 171 0
	tst	r0, #1
	bne	.L4116
.LVL4461:
.LBE12904:
.LBE12903:
	.loc 11 1125 0
	add	lr, sp, #84
	str	r1, [sp, #84]
	str	r2, [sp, #92]
	add	ip, sp, #64
	str	r3, [sp, #96]
	mov	r4, #1
.LVL4462:
	ldmia	lr!, {r0, r1, r2, r3}
.LVL4463:
	stmia	ip!, {r0, r1, r2, r3}
	str	r4, [ip]
.LVL4464:
	b	.L4144
.LVL4465:
.L4292:
.LBE12908:
.LBE12912:
.LBE12919:
.LBE12930:
.LBE12944:
.LBE13070:
.LBB13071:
.LBB13014:
.LBB13006:
	.loc 11 1573 0
	mov	r0, r5
	bl	setThreadState.constprop.305
.LVL4466:
.LBB12996:
.LBB12997:
	.loc 11 1790 0
	cmp	r4, fp
	bcs	.L4141
	.loc 11 1791 0
	mov	r0, r7
	bl	setVMRootForFlush
.LVL4467:
	.loc 11 1793 0
	sub	r3, r6, #1
.LVL4468:
	.loc 11 1791 0
	mov	r5, r0
.LVL4469:
	.loc 11 1793 0
	and	r3, r3, r4
.LVL4470:
	mov	r0, r10
.LVL4471:
	mov	r2, fp
	mov	r1, r4
	add	r3, r3, r9
	bl	doFlush
.LVL4472:
	.loc 11 1795 0
	cmp	r5, #0
	beq	.L4141
	.loc 11 1796 0
	ldr	r0, [r8]
.LBE12997:
.LBE12996:
	.loc 11 1574 0
	mov	r6, #0
.LVL4473:
.LBB12999:
.LBB12998:
	.loc 11 1796 0
	bl	setVMRoot
.LVL4474:
	b	.L4266
.LVL4475:
.L4301:
.LBE12998:
.LBE12999:
.LBE13006:
.LBE13014:
.LBE13071:
.LBB13072:
.LBB12945:
.LBB12931:
	.loc 11 1295 0
	movw	r3, #:lower16:current_syscall_error
	.loc 11 1297 0
	mov	r2, #0
	.loc 11 1295 0
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1299 0
	mov	r6, #3
	.loc 11 1295 0
	str	ip, [r3, #24]
	.loc 11 1297 0
	str	r2, [r3]
	b	.L4266
.LVL4476:
.L4312:
	.loc 11 1305 0
	sub	r0, r0, #1
.LVL4477:
	tst	r0, r4
.LBB12920:
.LBB12872:
	.loc 11 751 0
	moveq	r3, ip
.LBE12872:
.LBE12920:
	.loc 11 1305 0
	beq	.L4108
.LVL4478:
.L4143:
	.loc 11 1306 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #5
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1309 0
	mov	r6, #3
	.loc 11 1306 0
	str	r2, [r3, #24]
	b	.L4266
.LVL4479:
.L4296:
.LBE12931:
.LBB12932:
	.loc 11 1397 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL4480:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	movw	r2, #1397
.LVL4481:
.L4277:
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	ldr	r1, .L4313+4
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL4482:
	movw	r0, #:lower16:.LC200
	movt	r0, #:upper16:.LC200
	bl	kprintf
.LVL4483:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL4484:
	b	.L4091
.LVL4485:
.L4311:
.LBB12826:
.LBB12825:
	.loc 11 1791 0
	mov	r0, r9
	bl	setVMRootForFlush
.LVL4486:
	.loc 11 1793 0
	ldr	r2, [sp, #16]
	bic	r3, fp, #-16777216
	bic	r3, r3, #15
	.loc 11 1791 0
	mov	r4, r0
.LVL4487:
	.loc 11 1793 0
	mov	r1, r8
	mov	r0, r10
.LVL4488:
	add	fp, r2, #805306368
.LVL4489:
	mov	r2, r7
	add	r3, fp, r3, lsl #8
	bl	doFlush
.LVL4490:
	.loc 11 1795 0
	cmp	r4, #0
	beq	.L4141
	.loc 11 1796 0
	ldr	r0, [r5]
	bl	setVMRoot
.LVL4491:
	b	.L4266
.LVL4492:
.L4112:
.LBE12825:
.LBE12826:
.LBE12932:
.LBB12933:
.LBB12921:
.LBB12913:
.LBB12909:
.LBB12905:
.LBB12902:
	.loc 11 890 0
	stm	sp, {r1, r3}
	mov	r0, fp
.LVL4493:
	str	r3, [sp, #8]
	mov	r1, r2
.LVL4494:
	str	r10, [sp, #12]
	bl	pte_pte_small_new.constprop.290
.LVL4495:
	mov	r3, r0
	b	.L4113
.LVL4496:
.L4118:
.LBE12902:
.LBE12905:
.LBB12906:
.LBB12894:
	.loc 11 914 0
	ldr	r3, [sp, #16]
.LVL4497:
	mov	r1, r10
	str	r0, [sp]
	mov	r0, fp
.LVL4498:
	str	r2, [sp, #4]
	bl	pte_pte_large_new.constprop.291
.LVL4499:
	mov	r3, r0
	b	.L4119
.LVL4500:
.L4306:
.LBE12894:
.LBE12906:
.LBE12909:
.LBE12913:
.LBE12921:
.LBE12933:
.LBB12934:
	.loc 11 1376 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
.LVL4501:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	mov	r2, #1376
	b	.L4277
.LVL4502:
.L4120:
.LBE12934:
.LBB12935:
.LBB12922:
.LBB12914:
.LBB12910:
	.loc 11 1102 0
	movw	r3, #:lower16:current_syscall_error
.LVL4503:
	mov	r1, #6
.LVL4504:
	movt	r3, #:upper16:current_syscall_error
	.loc 11 1104 0
	mov	r2, #0
.LVL4505:
	.loc 11 1102 0
	str	r1, [r3, #24]
	.loc 11 1104 0
	str	r2, [r3, #20]
.LVL4506:
	b	.L4115
.LVL4507:
.L4087:
.LBE12910:
.LBE12914:
.LBE12922:
.LBE12935:
.LBE12945:
.LBE13072:
.LBB13073:
.LBB13015:
.LBB13007:
.LBB13000:
.LBB12961:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL4508:
.L4309:
.LBE12961:
.LBE13000:
.LBE13007:
.LBE13015:
.LBE13073:
.LBB13074:
.LBB12946:
.LBB12936:
.LBB12827:
.LBB12822:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL4509:
.L4308:
.LBE12822:
.LBE12827:
	.loc 11 1383 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC152
.LVL4510:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC152
	ldr	r3, .L4313+16
	movw	r2, #1383
	bl	_assert_fail
.LVL4511:
.L4307:
.LBB12828:
.LBB12815:
	.loc 4 1791 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC151
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC151
	ldr	r3, .L4313+20
.LVL4512:
	movw	r2, #1791
	bl	_assert_fail
.LVL4513:
.L4293:
.LBE12815:
.LBE12828:
.LBE12936:
.LBB12937:
.LBB12785:
	bl	cap_frame_cap_get_capFBasePtr.isra.101.part.102
.LVL4514:
.L4288:
.LBE12785:
.LBE12937:
.LBE12946:
.LBE13074:
.LBB13075:
.LBB13056:
.LBB13052:
.LBB13035:
	bl	cap_page_table_cap_get_capPTBasePtr.isra.103.part.104
.LVL4515:
.L4130:
.LBE13035:
.LBE13052:
.LBE13056:
.LBE13075:
.LBB13076:
.LBB12947:
.LBB12938:
.LBB12923:
.LBB12843:
	bl	cap_frame_cap_get_capFSize.isra.121.part.122
.LVL4516:
.L4314:
	.align	2
.L4313:
	.word	.LANCHOR4+4040
	.word	.LANCHOR4+3984
	.word	.LANCHOR4+3916
	.word	.LANCHOR4+3952
	.word	.LANCHOR4+4012
	.word	.LANCHOR4+952
.LBE12843:
.LBE12923:
.LBE12938:
.LBE12947:
.LBE13076:
	.cfi_endproc
.LFE360:
	.size	decodeARMMMUInvocation, .-decodeARMMMUInvocation
	.align	2
	.global	Arch_decodeInvocation
	.syntax unified
	.arm
	.type	Arch_decodeInvocation, %function
Arch_decodeInvocation:
.LFB451:
	.loc 23 359 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4517:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 23 359 0
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	.loc 23 360 0
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	.loc 23 361 0
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 23 360 0
	b	decodeARMMMUInvocation
.LVL4518:
	.cfi_endproc
.LFE451:
	.size	Arch_decodeInvocation, .-Arch_decodeInvocation
	.align	2
	.global	updateCapData
	.syntax unified
	.arm
	.type	updateCapData, %function
updateCapData:
.LFB650:
	.loc 52 411 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4519:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	ip, r3
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
.LBB13111:
.LBB13112:
.LBB13113:
.LBB13114:
	.loc 4 997 0
	and	lr, r3, #14
.LVL4520:
	cmp	lr, #14
.LBE13114:
.LBE13113:
.LBE13112:
.LBE13111:
	.loc 52 411 0
	str	r3, [sp, #20]
.LVL4521:
	ldr	lr, [sp, #24]
.LVL4522:
.LBB13118:
.LBB13117:
.LBB13116:
.LBB13115:
	.loc 4 997 0
	beq	.L4318
.LBE13115:
.LBE13116:
.LBE13117:
.LBE13118:
	.loc 52 412 0
	tst	r3, #1
.LBB13119:
.LBB13120:
	.loc 4 998 0
	andeq	r3, r3, #15
.LBE13120:
.LBE13119:
	.loc 52 412 0
	bne	.L4319
.L4323:
	.loc 52 416 0
	cmp	r3, #6
	mov	r4, r0
	beq	.L4325
	cmp	r3, #10
	beq	.L4326
	cmp	r3, #4
	beq	.L4335
	.loc 52 452 0
	stm	r0, {ip, lr}
	.loc 52 454 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4523:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4524:
	bx	lr
.LVL4525:
.L4318:
	.cfi_restore_state
	.loc 52 412 0
	tst	r3, #1
.LBB13122:
.LBB13121:
	.loc 4 999 0
	uxtbeq	r3, r3
.LBE13121:
.LBE13122:
	.loc 52 412 0
	beq	.L4323
.L4319:
.LVL4526:
.LBB13123:
.LBB13124:
	.loc 23 50 0
	stm	r0, {ip, lr}
.LVL4527:
.L4317:
.LBE13124:
.LBE13123:
	.loc 52 454 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL4528:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4529:
	bx	lr
.LVL4530:
.L4325:
	.cfi_restore_state
	.loc 52 425 0
	cmp	r1, #0
	bne	.L4328
.LVL4531:
.LBB13125:
.LBB13126:
	.loc 4 1278 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #6
	bne	.L4336
.LBE13126:
.LBE13125:
	.loc 52 425 0
	lsrs	r3, lr, #4
	bne	.L4328
.LVL4532:
.LBB13128:
.LBB13129:
	.loc 4 1298 0
	orr	r2, lr, r2, lsl #4
.LVL4533:
	str	ip, [r0]
	str	r2, [r0, #4]
	b	.L4317
.LVL4534:
.L4335:
.LBE13129:
.LBE13128:
	.loc 52 418 0
	cmp	r1, #0
	bne	.L4328
.LVL4535:
.LBB13130:
.LBB13131:
	.loc 4 1226 0 discriminator 1
	and	r3, ip, #15
	cmp	r3, #4
	bne	.L4337
.LBE13131:
.LBE13130:
	.loc 52 418 0
	lsrs	r3, ip, #4
	beq	.L4338
.LVL4536:
.L4328:
.LBB13133:
.LBB13134:
	.loc 4 1020 0
	mov	r3, #0
	str	r3, [r4]
	str	r3, [r4, #4]
.LVL4537:
.LBE13134:
.LBE13133:
	.loc 52 454 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL4538:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
.LVL4539:
	bx	lr
.LVL4540:
.L4326:
	.cfi_restore_state
.LBB13135:
.LBB13136:
.LBB13137:
	.loc 4 1519 0
	and	r1, ip, #15
.LVL4541:
.LBE13137:
.LBE13136:
.LBB13140:
.LBB13141:
	.loc 4 292 0
	ubfx	r5, r2, #3, #5
.LVL4542:
.LBE13141:
.LBE13140:
.LBB13142:
.LBB13138:
	.loc 4 1519 0
	cmp	r1, #10
	bne	.L4339
.LBE13138:
.LBE13142:
	.loc 52 437 0
	ubfx	r1, lr, #18, #5
	add	r1, r1, r5
	cmp	r1, #32
	bhi	.L4328
.LVL4543:
.LBB13143:
.LBB13144:
.LBB13145:
	.loc 4 1511 0
	ubfx	r2, r2, #8, #18
.LVL4544:
	mvn	r3, #0
	mov	r1, #0
	bic	r3, r2, r3, lsl r5
	movt	r1, 61564
.LVL4545:
.LBE13145:
.LBE13144:
	.loc 52 447 0
	str	ip, [r0]
.LBB13147:
.LBB13146:
	.loc 4 1511 0
	and	r1, r1, lr
	orr	r3, r1, r3
.LVL4546:
.LBE13146:
.LBE13147:
	.loc 52 447 0
	orr	r3, r3, r5, lsl #23
.LVL4547:
	str	r3, [r0, #4]
.LVL4548:
	b	.L4317
.LVL4549:
.L4338:
.LBE13143:
.LBE13135:
.LBB13149:
.LBB13150:
	.loc 4 1246 0
	lsl	r2, r2, #4
.LVL4550:
	str	lr, [r0, #4]
	orr	r2, r2, #4
	str	r2, [r0]
	b	.L4317
.LVL4551:
.L4339:
.LBE13150:
.LBE13149:
.LBB13151:
.LBB13148:
.LBB13139:
	bl	cap_cnode_cap_get_capCNodeRadix.part.78
.LVL4552:
.L4337:
.LBE13139:
.LBE13148:
.LBE13151:
.LBB13152:
.LBB13132:
	bl	cap_endpoint_cap_get_capEPBadge.isra.85.part.86
.LVL4553:
.L4336:
.LBE13132:
.LBE13152:
.LBB13153:
.LBB13127:
	bl	cap_async_endpoint_cap_get_capAEPBadge.part.185
.LVL4554:
.LBE13127:
.LBE13153:
	.cfi_endproc
.LFE650:
	.size	updateCapData, .-updateCapData
	.align	2
	.global	maskCapRights
	.syntax unified
	.arm
	.type	maskCapRights, %function
maskCapRights:
.LFB651:
	.loc 52 458 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4555:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 52 458 0
	stm	sp, {r2, r3}
	mov	r3, r2
.LVL4556:
.LBB13188:
.LBB13189:
.LBB13190:
.LBB13191:
	.loc 4 997 0
	and	r2, r2, #14
.LVL4557:
.LBE13191:
.LBE13190:
.LBE13189:
.LBE13188:
	.loc 52 458 0
	mov	ip, sp
.LBB13198:
.LBB13196:
.LBB13194:
.LBB13192:
	.loc 4 997 0
	cmp	r2, #14
.LBE13192:
.LBE13194:
.LBE13196:
.LBE13198:
	.loc 52 458 0
	mov	r4, r0
.LBB13199:
.LBB13197:
.LBB13195:
.LBB13193:
	.loc 4 997 0
	beq	.L4341
.LVL4558:
.LBE13193:
.LBE13195:
.LBE13197:
.LBE13199:
	.loc 52 459 0
	tst	r3, #1
.LBB13200:
.LBB13201:
	.loc 4 998 0
	andeq	r0, r3, #15
.LVL4559:
.LBE13201:
.LBE13200:
	.loc 52 459 0
	bne	.L4342
.L4346:
	ldr	r2, [sp, #4]
	.loc 52 463 0
	cmp	r0, #62
	ldrls	pc, [pc, r0, asl #2]
	b	.L4347
.L4349:
	.word	.L4348
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4350
	.word	.L4347
	.word	.L4351
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4348
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4347
	.word	.L4348
.LVL4560:
.L4341:
	.loc 52 459 0
	tst	r3, #1
.LBB13203:
.LBB13202:
	.loc 4 999 0
	uxtbeq	r0, r3
.LVL4561:
.LBE13202:
.LBE13203:
	.loc 52 459 0
	beq	.L4346
.L4342:
	.loc 52 460 0
	mov	r0, r4
	ldm	ip, {r2, r3}
.LVL4562:
	bl	Arch_maskCapRights
.LVL4563:
	.loc 52 507 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL4564:
	@ sp needed
	pop	{r4, pc}
.LVL4565:
.L4351:
	.cfi_restore_state
.LBB13204:
.LBB13205:
.LBB13206:
	.loc 4 1330 0
	and	r0, r3, #15
	cmp	r0, #6
	bne	.L4356
.LVL4566:
.LBE13206:
.LBE13205:
.LBB13208:
.LBB13209:
	.loc 4 1322 0
	and	r0, r1, r2
.LBE13209:
.LBE13208:
	.loc 52 501 0
	ubfx	ip, r2, #1, #1
.LBB13213:
.LBB13210:
	.loc 4 1322 0
	and	r0, r0, #1
.LBE13210:
.LBE13213:
	.loc 52 501 0
	and	r1, ip, r1, lsr #1
.LVL4567:
.LBB13214:
.LBB13211:
	.loc 4 1322 0
	bic	r2, r2, #3
.LBE13211:
.LBE13214:
	.loc 52 501 0
	str	r3, [r4]
.LBB13215:
.LBB13212:
	.loc 4 1322 0
	orr	r2, r2, r0
.LBE13212:
.LBE13215:
.LBE13204:
	.loc 52 507 0
	mov	r0, r4
.LBB13217:
	.loc 52 501 0
	orr	r2, r2, r1, lsl #1
	str	r2, [r4, #4]
.LVL4568:
.LBE13217:
	.loc 52 507 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL4569:
.L4348:
	.cfi_restore_state
	mov	r0, r4
	.loc 52 473 0
	str	r3, [r4]
	str	r2, [r4, #4]
	.loc 52 507 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL4570:
.L4350:
	.cfi_restore_state
.LBB13218:
.LBB13219:
.LBB13220:
	.loc 4 1200 0
	and	r0, r3, #15
	cmp	r0, #4
	bne	.L4357
.LVL4571:
.LBE13220:
.LBE13219:
.LBB13222:
.LBB13223:
	.loc 4 1192 0
	and	r0, r1, r2
.LBE13223:
.LBE13222:
.LBB13227:
.LBB13228:
	.loc 4 1166 0
	ubfx	ip, r2, #1, #1
.LBE13228:
.LBE13227:
.LBB13232:
.LBB13224:
	.loc 4 1192 0
	bic	lr, r2, #3
.LBE13224:
.LBE13232:
.LBB13233:
.LBB13229:
	.loc 4 1166 0
	and	ip, ip, r1, lsr #1
.LBE13229:
.LBE13233:
.LBB13234:
.LBB13225:
	.loc 4 1192 0
	and	r0, r0, #1
.LBE13225:
.LBE13234:
	.loc 52 488 0
	str	r3, [r4]
.LBB13235:
.LBB13226:
	.loc 4 1192 0
	orr	r0, lr, r0
.LVL4572:
.LBE13226:
.LBE13235:
	.loc 52 488 0
	ubfx	r2, r2, #2, #1
.LVL4573:
.LBB13236:
.LBB13230:
	.loc 4 1166 0
	orr	r3, r0, ip, lsl #1
.LVL4574:
.LBE13230:
.LBE13236:
	.loc 52 488 0
	and	r2, r2, r1, lsr #2
.LBB13237:
.LBB13231:
	.loc 4 1166 0
	bic	r1, r3, #4
.LVL4575:
.LBE13231:
.LBE13237:
.LBE13218:
	.loc 52 507 0
	mov	r0, r4
.LBB13239:
	.loc 52 488 0
	orr	r1, r1, r2, lsl #2
	str	r1, [r4, #4]
.LVL4576:
.LBE13239:
	.loc 52 507 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL4577:
	@ sp needed
	pop	{r4, pc}
.LVL4578:
.L4347:
	.cfi_restore_state
	.loc 52 505 0
	movw	r1, #:lower16:.LC205
.LVL4579:
	movw	r0, #:lower16:.LC206
	movt	r1, #:upper16:.LC205
	movt	r0, #:upper16:.LC206
	ldr	r3, .L4358
.LVL4580:
	movw	r2, #505
	bl	_fail
.LVL4581:
.L4356:
.LBB13240:
.LBB13216:
.LBB13207:
	bl	cap_async_endpoint_cap_get_capAEPCanSend.part.231
.LVL4582:
.L4357:
.LBE13207:
.LBE13216:
.LBE13240:
.LBB13241:
.LBB13238:
.LBB13221:
	bl	cap_endpoint_cap_get_capCanSend.part.81
.LVL4583:
.L4359:
	.align	2
.L4358:
	.word	.LANCHOR4+4064
.LBE13221:
.LBE13238:
.LBE13241:
	.cfi_endproc
.LFE651:
	.size	maskCapRights, .-maskCapRights
	.align	2
	.global	tcbSchedEnqueue
	.syntax unified
	.arm
	.type	tcbSchedEnqueue, %function
tcbSchedEnqueue:
.LFB660:
	.loc 40 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4584:
	.loc 40 53 0
	ldr	r3, [r0, #76]
	tst	r3, #1
	bxne	lr
	b	tcbSchedEnqueue.part.235
.LVL4585:
	.cfi_endproc
.LFE660:
	.size	tcbSchedEnqueue, .-tcbSchedEnqueue
	.align	2
	.global	tcbSchedAppend
	.syntax unified
	.arm
	.type	tcbSchedAppend, %function
tcbSchedAppend:
.LFB661:
	.loc 40 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4586:
	.loc 40 84 0
	ldr	r3, [r0, #76]
	tst	r3, #1
	bxne	lr
	b	tcbSchedAppend.part.244
.LVL4587:
	.cfi_endproc
.LFE661:
	.size	tcbSchedAppend, .-tcbSchedAppend
	.align	2
	.global	tcbSchedDequeue
	.syntax unified
	.arm
	.type	tcbSchedDequeue, %function
tcbSchedDequeue:
.LFB662:
	.loc 40 114 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4588:
	ldr	r3, [r0, #76]
	.loc 40 115 0
	tst	r3, #1
	bxeq	lr
.LVL4589:
.LBB13242:
.LBB13243:
.LBB13244:
	.loc 39 24 0
	ldr	r2, [r0, #104]
.LBE13244:
.LBE13243:
.LBE13242:
	.loc 40 114 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB13259:
	.loc 40 122 0
	ldr	r6, [r0, #108]
.LVL4590:
.LBB13247:
.LBB13245:
	.loc 39 24 0
	cmp	r2, #0
	bne	.L4377
.LVL4591:
.LBE13245:
.LBE13247:
	.loc 40 126 0
	ldr	r1, [r0, #128]
	.loc 40 124 0
	movw	r2, #:lower16:ksReadyQueues
	movt	r2, #:upper16:ksReadyQueues
	add	ip, r2, r6, lsl #3
	ldr	r4, [r2, r6, lsl #3]
.LVL4592:
	.loc 40 126 0
	cmp	r1, #0
	.loc 40 124 0
	ldr	r5, [ip, #4]
.LVL4593:
	.loc 40 126 0
	beq	.L4367
	.loc 40 127 0
	ldr	lr, [r0, #124]
	str	lr, [r1, #124]
.LVL4594:
	.loc 40 135 0
	ldr	lr, [r0, #124]
	cmp	lr, #0
	moveq	r5, r1
.LVL4595:
	beq	.L4369
.L4368:
	.loc 40 136 0
	str	r1, [lr, #128]
.LVL4596:
.L4369:
.LBB13248:
.LBB13249:
	.loc 4 220 0
	bic	r3, r3, #1
.LBE13249:
.LBE13248:
	.loc 40 141 0
	str	r4, [r2, r6, lsl #3]
	str	r5, [ip, #4]
.LVL4597:
.LBB13251:
.LBB13250:
	.loc 4 220 0
	str	r3, [r0, #76]
.LVL4598:
.LBE13250:
.LBE13251:
.LBE13259:
	.loc 40 145 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4599:
.L4367:
.LBB13260:
	.loc 40 129 0
	ldr	r4, [r0, #124]
.LVL4600:
	.loc 40 130 0
	cmp	r4, #0
	bne	.L4371
.LVL4601:
.LBB13252:
.LBB13253:
.LBB13254:
.LBB13255:
	.loc 39 33 0
	lsr	r7, r6, #5
.LVL4602:
.LBE13255:
.LBE13254:
	.loc 40 43 0
	movw	r1, #:lower16:ksReadyQueuesL2Bitmap
	movt	r1, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r5, [r1, r7, lsl #2]
.LVL4603:
	and	lr, r6, #31
	mov	r8, #1
	bic	lr, r5, r8, lsl lr
	.loc 40 44 0
	cmp	lr, #0
	.loc 40 43 0
	str	lr, [r1, r7, lsl #2]
	.loc 40 44 0
	beq	.L4378
.L4370:
.LVL4604:
.LBE13253:
.LBE13252:
	.loc 40 126 0
	mov	r5, #0
	b	.L4369
.LVL4605:
.L4371:
	mov	lr, r4
	b	.L4368
.LVL4606:
.L4378:
.LBB13257:
.LBB13256:
	.loc 40 45 0
	movw	r1, #:lower16:ksReadyQueuesL1Bitmap
	movt	r1, #:upper16:ksReadyQueuesL1Bitmap
	ldr	lr, [r1]
	bic	r7, lr, r8, lsl r7
	str	r7, [r1]
	b	.L4370
.LVL4607:
.L4377:
.LBE13256:
.LBE13257:
.LBB13258:
.LBB13246:
	bl	ready_queues_index.part.203
.LVL4608:
.LBE13246:
.LBE13258:
.LBE13260:
	.cfi_endproc
.LFE662:
	.size	tcbSchedDequeue, .-tcbSchedDequeue
	.align	2
	.global	switchToThread
	.syntax unified
	.arm
	.type	switchToThread, %function
switchToThread:
.LFB566:
	.loc 26 343 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4609:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL4610:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB13265:
.LBB13266:
	.loc 9 21 0
	bl	setVMRoot
.LVL4611:
	.loc 9 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
.LBB13267:
.LBB13268:
	.loc 14 109 0
	add	r2, sp, #4
.LBE13268:
.LBE13267:
	.loc 9 22 0
	str	r1, [r3]
.LBB13270:
.LBB13269:
	.loc 14 109 0
	.syntax divided
@ 109 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
.LVL4612:
	.arm
	.syntax unified
.LBE13269:
.LBE13270:
.LBE13266:
.LBE13265:
	.loc 26 345 0
	mov	r0, r4
	bl	tcbSchedDequeue
.LVL4613:
	.loc 26 346 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	str	r4, [r3]
	.loc 26 347 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE566:
	.size	switchToThread, .-switchToThread
	.align	2
	.global	setDomain
	.syntax unified
	.arm
	.type	setDomain, %function
setDomain:
.LFB568:
	.loc 26 358 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4614:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 358 0
	mov	r4, r0
	mov	r5, r1
	.loc 26 359 0
	bl	tcbSchedDequeue
.LVL4615:
.LBB13271:
.LBB13272:
	.loc 26 49 0
	ldr	r3, [r4, #72]
.LBE13272:
.LBE13271:
	.loc 26 360 0
	str	r5, [r4, #104]
.LVL4616:
.LBB13274:
.LBB13273:
	.loc 26 49 0
	ands	r3, r3, #15
	beq	.L4382
	cmp	r3, #2
	bls	.L4383
	cmp	r3, #7
	bne	.L4382
.L4383:
.LVL4617:
.LBE13273:
.LBE13274:
.LBB13275:
.LBB13276:
	.loc 40 53 0
	ldr	r3, [r4, #76]
	tst	r3, #1
	beq	.L4391
.LVL4618:
.L4382:
.LBE13276:
.LBE13275:
	.loc 26 364 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	popne	{r4, r5, r6, pc}
	.loc 26 367 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4619:
	.loc 26 365 0
	b	rescheduleRequired
.LVL4620:
.L4391:
	.cfi_restore_state
.LBB13278:
.LBB13277:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL4621:
	b	.L4382
.LBE13277:
.LBE13278:
	.cfi_endproc
.LFE568:
	.size	setDomain, .-setDomain
	.align	2
	.global	setPriority
	.syntax unified
	.arm
	.type	setPriority, %function
setPriority:
.LFB569:
	.loc 26 371 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4622:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 371 0
	mov	r4, r0
	mov	r5, r1
	.loc 26 372 0
	bl	tcbSchedDequeue
.LVL4623:
.LBB13279:
.LBB13280:
	.loc 26 49 0
	ldr	r3, [r4, #72]
.LBE13280:
.LBE13279:
	.loc 26 373 0
	str	r5, [r4, #108]
.LVL4624:
.LBB13282:
.LBB13281:
	.loc 26 49 0
	ands	r3, r3, #15
	beq	.L4393
	cmp	r3, #2
	bls	.L4394
	cmp	r3, #7
	bne	.L4393
.L4394:
.LVL4625:
.LBE13281:
.LBE13282:
.LBB13283:
.LBB13284:
	.loc 40 53 0
	ldr	r3, [r4, #76]
	tst	r3, #1
	beq	.L4402
.LVL4626:
.L4393:
.LBE13284:
.LBE13283:
	.loc 26 377 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
	cmp	r4, r3
	popne	{r4, r5, r6, pc}
	.loc 26 380 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4627:
	.loc 26 378 0
	b	rescheduleRequired
.LVL4628:
.L4402:
	.cfi_restore_state
.LBB13286:
.LBB13285:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL4629:
	b	.L4393
.LBE13285:
.LBE13286:
	.cfi_endproc
.LFE569:
	.size	setPriority, .-setPriority
	.align	2
	.global	chooseThread
	.syntax unified
	.arm
	.type	chooseThread, %function
chooseThread:
.LFB565:
	.loc 26 315 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4630:
	.loc 26 326 0
	movw	r3, #:lower16:ksReadyQueuesL1Bitmap
	movt	r3, #:upper16:ksReadyQueuesL1Bitmap
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L4404
.LBB13319:
	.loc 26 327 0
	clz	r3, r3
	.loc 26 328 0
	movw	r2, #:lower16:ksReadyQueuesL2Bitmap
	.loc 26 327 0
	rsb	r3, r3, #31
.LVL4631:
	.loc 26 328 0
	movt	r2, #:upper16:ksReadyQueuesL2Bitmap
	ldr	r2, [r2, r3, lsl #2]
	.loc 26 330 0
	movw	r1, #:lower16:ksReadyQueues
	movt	r1, #:upper16:ksReadyQueues
.LBE13319:
	.loc 26 315 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB13330:
	.loc 26 328 0
	clz	r2, r2
.LVL4632:
	.loc 26 330 0
	rsb	r2, r2, #31
.LVL4633:
	orr	r3, r2, r3, lsl #5
.LVL4634:
	ldr	r4, [r1, r3, lsl #3]
.LVL4635:
	.loc 26 331 0
	cmp	r4, #0
	beq	.L4413
.LVL4636:
.LBB13320:
.LBB13321:
	.loc 26 49 0
	ldr	r3, [r4, #72]
.LVL4637:
	ands	r3, r3, #15
	beq	.L4406
	cmp	r3, #2
	bls	.L4407
	cmp	r3, #7
	beq	.L4407
.L4406:
.LVL4638:
.LBE13321:
.LBE13320:
	.loc 26 332 0
	movw	r1, #:lower16:.LC107
	movw	r0, #:lower16:.LC208
	movt	r1, #:upper16:.LC107
	movt	r0, #:upper16:.LC208
	ldr	r3, .L4414
	mov	r2, #332
.LVL4639:
	bl	_assert_fail
.LVL4640:
.L4407:
.LBB13322:
.LBB13323:
.LBB13324:
.LBB13325:
	.loc 9 21 0
	mov	r0, r4
	bl	setVMRoot
.LVL4641:
	.loc 9 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
.LBB13326:
.LBB13327:
	.loc 14 109 0
	add	r2, sp, #4
.LBE13327:
.LBE13326:
	.loc 9 22 0
	str	r1, [r3]
.LBB13329:
.LBB13328:
	.loc 14 109 0
	.syntax divided
@ 109 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
.LVL4642:
	.arm
	.syntax unified
.LBE13328:
.LBE13329:
.LBE13325:
.LBE13324:
	.loc 26 345 0
	mov	r0, r4
	bl	tcbSchedDequeue
.LVL4643:
	.loc 26 346 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	str	r4, [r3]
.LBE13323:
.LBE13322:
.LBE13330:
	.loc 26 339 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL4644:
.L4404:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
.LBB13331:
.LBB13332:
	.loc 26 353 0
	movw	r0, #:lower16:ksIdleThread
	movw	r2, #:lower16:ksCurThread
	movt	r0, #:upper16:ksIdleThread
.LBB13333:
.LBB13334:
	.loc 9 36 0
	movw	r1, #:lower16:.LANCHOR0
.LBE13334:
.LBE13333:
	.loc 26 353 0
	ldr	r0, [r0]
	movt	r2, #:upper16:ksCurThread
.LBB13336:
.LBB13335:
	.loc 9 36 0
	movt	r1, #:upper16:.LANCHOR0
	str	r3, [r1]
.LBE13335:
.LBE13336:
	.loc 26 353 0
	str	r0, [r2]
	bx	lr
.LVL4645:
.L4413:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBE13332:
.LBE13331:
.LBB13337:
.LBB13338:
.LBB13339:
	.loc 26 331 0
	movw	r1, #:lower16:.LC107
	movw	r0, #:lower16:.LC207
	movt	r1, #:upper16:.LC107
	movt	r0, #:upper16:.LC207
	ldr	r3, .L4414
.LVL4646:
	movw	r2, #331
.LVL4647:
	bl	_assert_fail
.LVL4648:
.L4415:
	.align	2
.L4414:
	.word	.LANCHOR4+4080
.LBE13339:
.LBE13338:
.LBE13337:
	.cfi_endproc
.LFE565:
	.size	chooseThread, .-chooseThread
	.align	2
	.global	schedule
	.syntax unified
	.arm
	.type	schedule, %function
schedule:
.LFB564:
	.loc 26 290 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 26 293 0
	movw	r4, #:lower16:ksSchedulerAction
	movt	r4, #:upper16:ksSchedulerAction
	.loc 26 290 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 26 293 0
	ldr	r5, [r4]
.LVL4649:
	.loc 26 294 0
	cmn	r5, #1
	beq	.L4437
	.loc 26 303 0
	cmp	r5, #0
	beq	.L4416
	.loc 26 304 0
	movw	r6, #:lower16:ksCurThread
	movt	r6, #:upper16:ksCurThread
	ldr	r0, [r6]
.LVL4650:
.LBB13372:
.LBB13373:
	.loc 26 49 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	beq	.L4421
	cmp	r3, #2
	bls	.L4422
	cmp	r3, #7
	bne	.L4421
.L4422:
.LVL4651:
.LBE13373:
.LBE13372:
.LBB13374:
.LBB13375:
	.loc 40 53 0
	ldr	r3, [r0, #76]
	tst	r3, #1
	beq	.L4438
.LVL4652:
.L4421:
.LBE13375:
.LBE13374:
.LBB13377:
.LBB13378:
.LBB13379:
.LBB13380:
	.loc 9 21 0
	mov	r0, r5
	bl	setVMRoot
.LVL4653:
	.loc 9 22 0
	ldr	r1, [r5, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
.LBB13381:
.LBB13382:
	.loc 14 109 0
	add	r2, sp, #4
.LBE13382:
.LBE13381:
	.loc 9 22 0
	str	r1, [r3]
.LBB13384:
.LBB13383:
	.loc 14 109 0
	.syntax divided
@ 109 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
	.arm
	.syntax unified
.LBE13383:
.LBE13384:
.LBE13380:
.LBE13379:
	.loc 26 345 0
	mov	r0, r5
	bl	tcbSchedDequeue
.LVL4654:
.LBE13378:
.LBE13377:
	.loc 26 309 0
	mov	r3, #0
.LBB13386:
.LBB13385:
	.loc 26 346 0
	str	r5, [r6]
.LBE13385:
.LBE13386:
	.loc 26 309 0
	str	r3, [r4]
.L4416:
	.loc 26 311 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL4655:
.L4437:
	.cfi_restore_state
.LBB13387:
.LBB13388:
	.loc 26 295 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
.LVL4656:
.LBB13389:
.LBB13390:
	.loc 26 49 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	beq	.L4418
	cmp	r3, #2
	bls	.L4419
	cmp	r3, #7
	bne	.L4418
.L4419:
.LVL4657:
.LBE13390:
.LBE13389:
.LBB13391:
.LBB13392:
	.loc 40 53 0
	ldr	r3, [r0, #76]
	tst	r3, #1
	bne	.L4418
	bl	tcbSchedEnqueue.part.235
.LVL4658:
.L4418:
.LBE13392:
.LBE13391:
	.loc 26 301 0
	bl	chooseThread
.LVL4659:
	.loc 26 302 0
	mov	r3, #0
	str	r3, [r4]
.LBE13388:
.LBE13387:
	.loc 26 311 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL4660:
.L4438:
	.cfi_restore_state
.LBB13393:
.LBB13376:
	bl	tcbSchedEnqueue.part.235
.LVL4661:
	ldr	r5, [r4]
.LVL4662:
	b	.L4421
.LBE13376:
.LBE13393:
	.cfi_endproc
.LFE564:
	.size	schedule, .-schedule
	.align	2
	.global	tcbEPAppend
	.syntax unified
	.arm
	.type	tcbEPAppend, %function
tcbEPAppend:
.LFB663:
	.loc 40 150 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4663:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 40 150 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	mov	r3, r0
	ldr	r2, [sp]
.LVL4664:
	.loc 40 157 0
	mov	ip, #0
	ldr	r0, [sp, #4]
.LVL4665:
	.loc 40 160 0
	str	r1, [r3, #4]
	.loc 40 151 0
	cmp	r2, #0
	moveq	r2, r1
.LVL4666:
	.loc 40 154 0
	strne	r1, [r0, #132]
	.loc 40 160 0
	str	r2, [r3]
	.loc 40 156 0
	str	r0, [r1, #136]
	.loc 40 161 0
	mov	r0, r3
.LVL4667:
	.loc 40 157 0
	str	ip, [r1, #132]
.LVL4668:
	.loc 40 161 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE663:
	.size	tcbEPAppend, .-tcbEPAppend
	.align	2
	.global	tcbEPDequeue
	.syntax unified
	.arm
	.type	tcbEPDequeue, %function
tcbEPDequeue:
.LFB664:
	.loc 40 166 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4669:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 40 166 0
	add	ip, sp, #8
	stmdb	ip, {r2, r3}
	mov	r3, r0
	.loc 40 167 0
	ldr	r2, [r1, #136]
	ldm	sp, {r0, ip}
.LVL4670:
	cmp	r2, #0
	.loc 40 168 0
	ldrne	lr, [r1, #132]
	.loc 40 170 0
	ldreq	r0, [r1, #132]
.LVL4671:
	.loc 40 168 0
	strne	lr, [r2, #132]
	ldrne	r1, [r1, #132]
.LVL4672:
	.loc 40 170 0
	moveq	r1, r0
	.loc 40 179 0
	str	r0, [r3]
	.loc 40 180 0
	mov	r0, r3
.LVL4673:
	.loc 40 173 0
	cmp	r1, #0
	.loc 40 167 0
	moveq	ip, r2
.LVL4674:
	.loc 40 174 0
	strne	r2, [r1, #136]
	.loc 40 179 0
	str	ip, [r3, #4]
	.loc 40 180 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE664:
	.size	tcbEPDequeue, .-tcbEPDequeue
	.align	2
	.global	getExtraCPtr
	.syntax unified
	.arm
	.type	getExtraCPtr, %function
getExtraCPtr:
.LFB665:
	.loc 40 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4675:
	.loc 40 185 0
	add	r1, r1, #122
.LVL4676:
	.loc 40 186 0
	ldr	r0, [r0, r1, lsl #2]
.LVL4677:
	bx	lr
	.cfi_endproc
.LFE665:
	.size	getExtraCPtr, .-getExtraCPtr
	.align	2
	.global	setExtraBadge
	.syntax unified
	.arm
	.type	setExtraBadge, %function
setExtraBadge:
.LFB666:
	.loc 40 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4678:
	.loc 40 192 0
	add	r2, r2, #122
.LVL4679:
	str	r1, [r0, r2, lsl #2]
	bx	lr
	.cfi_endproc
.LFE666:
	.size	setExtraBadge, .-setExtraBadge
	.align	2
	.global	setupCallerCap
	.syntax unified
	.arm
	.type	setupCallerCap, %function
setupCallerCap:
.LFB667:
	.loc 40 197 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4680:
.LBB13418:
.LBB13419:
.LBB13420:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE13420:
.LBE13419:
.LBB13425:
.LBB13426:
	.loc 4 270 0
	ldr	r3, [r0, #72]
.LBE13426:
.LBE13425:
.LBB13430:
.LBB13421:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
.LBE13421:
.LBE13430:
.LBE13418:
	.loc 40 197 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB13440:
.LBB13431:
.LBB13422:
	.loc 26 435 0
	ldr	ip, [r2]
.LBE13422:
.LBE13431:
.LBE13440:
	.loc 40 197 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LBB13441:
.LBB13432:
.LBB13427:
	.loc 4 270 0
	bic	r3, r3, #15
.LBE13427:
.LBE13432:
.LBE13441:
	.loc 40 197 0
	mov	r4, r0
.LVL4681:
.LBB13442:
.LBB13433:
.LBB13428:
	.loc 4 270 0
	orr	r3, r3, #5
.LBE13428:
.LBE13433:
.LBB13434:
.LBB13423:
	.loc 26 435 0
	cmp	r0, ip
.LBE13423:
.LBE13434:
.LBB13435:
.LBB13429:
	.loc 4 270 0
	str	r3, [r0, #72]
.LVL4682:
.LBE13429:
.LBE13435:
.LBB13436:
.LBB13424:
	.loc 26 435 0
	beq	.L4464
.LVL4683:
.L4452:
.LBE13424:
.LBE13436:
.LBE13442:
	.loc 40 202 0
	mov	r2, #65024
	movt	r2, 65535
	and	r3, r4, r2
	.loc 40 203 0
	and	r1, r1, r2
	.loc 40 204 0
	ldr	r0, [r3, #32]
	.loc 40 202 0
	add	r2, r3, #32
.LVL4684:
	.loc 40 204 0
	ldr	r3, [r2, #4]
	.loc 40 203 0
	add	ip, r1, #48
.LVL4685:
.LBB13443:
.LBB13444:
	.loc 4 997 0
	and	lr, r0, #14
	cmp	lr, #14
	.loc 4 999 0
	uxtbeq	lr, r0
.LVL4686:
	.loc 4 998 0
	andne	lr, r0, #15
.LBE13444:
.LBE13443:
	.loc 40 206 0
	cmp	lr, #8
	bne	.L4465
.LVL4687:
.LBB13445:
.LBB13446:
	.loc 4 1439 0
	and	lr, r0, #15
	cmp	lr, #8
	bne	.L4466
.LBE13446:
.LBE13445:
	.loc 40 207 0
	tst	r3, #1
	beq	.L4467
	.loc 40 208 0
	bics	r0, r0, #31
.LVL4688:
	bne	.L4468
.LVL4689:
.LBB13448:
.LBB13449:
	.loc 4 1433 0
	and	r3, r3, #15
.LVL4690:
	orr	r3, r3, ip
	str	r3, [r2, #4]
.LVL4691:
.LBE13449:
.LBE13448:
	.loc 40 210 0
	ldr	r3, [r1, #48]
.LVL4692:
.LBB13450:
.LBB13451:
	.loc 4 997 0
	and	r2, r3, #14
.LVL4693:
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4694:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE13451:
.LBE13450:
	.loc 40 212 0
	cmp	r3, #0
	bne	.L4469
.LVL4695:
.LBB13452:
.LBB13453:
	.loc 4 1381 0
	tst	r4, #31
	bne	.L4470
.LVL4696:
.LBE13453:
.LBE13452:
	.loc 40 213 0
	bic	r4, r4, #31
.LVL4697:
	orr	r4, r4, #8
	str	r4, [r1, #48]
.LVL4698:
	str	r3, [ip, #4]
	.loc 40 214 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL4699:
.L4464:
	.cfi_restore_state
.LBB13455:
.LBB13437:
.LBB13438:
.LBB13439:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4452
	str	r1, [sp, #4]
	bl	scheduleTCB.part.236
.LVL4700:
	ldr	r1, [sp, #4]
	b	.L4452
.LVL4701:
.L4470:
.LBE13439:
.LBE13438:
.LBE13437:
.LBE13455:
.LBB13456:
.LBB13454:
	.loc 4 1381 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC214
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC214
	ldr	r3, .L4471
	movw	r2, #1381
	bl	_assert_fail
.LVL4702:
.L4469:
.LBE13454:
.LBE13456:
	.loc 40 212 0 discriminator 1
	movw	r1, #:lower16:.LC209
	movw	r0, #:lower16:.LC213
	movt	r1, #:upper16:.LC209
	movt	r0, #:upper16:.LC213
	ldr	r3, .L4471+4
	mov	r2, #212
	bl	_assert_fail
.LVL4703:
.L4468:
	.loc 40 208 0 discriminator 1
	movw	r1, #:lower16:.LC209
	movw	r0, #:lower16:.LC212
	movt	r1, #:upper16:.LC209
	movt	r0, #:upper16:.LC212
	ldr	r3, .L4471+4
.LVL4704:
	mov	r2, #208
.LVL4705:
	bl	_assert_fail
.LVL4706:
.L4467:
	.loc 40 207 0 discriminator 1
	movw	r1, #:lower16:.LC209
	movw	r0, #:lower16:.LC211
.LVL4707:
	movt	r1, #:upper16:.LC209
	movt	r0, #:upper16:.LC211
	ldr	r3, .L4471+4
.LVL4708:
	mov	r2, #207
.LVL4709:
	bl	_assert_fail
.LVL4710:
.L4466:
.LBB13457:
.LBB13447:
	bl	cap_reply_cap_get_capReplyMaster.part.68
.LVL4711:
.L4465:
.LBE13447:
.LBE13457:
	.loc 40 206 0 discriminator 1
	movw	r1, #:lower16:.LC209
	movw	r0, #:lower16:.LC210
.LVL4712:
	movt	r1, #:upper16:.LC209
	movt	r0, #:upper16:.LC210
	ldr	r3, .L4471+4
.LVL4713:
	mov	r2, #206
.LVL4714:
	bl	_assert_fail
.LVL4715:
.L4472:
	.align	2
.L4471:
	.word	.LANCHOR4+3112
	.word	.LANCHOR6-4088
	.cfi_endproc
.LFE667:
	.size	setupCallerCap, .-setupCallerCap
	.align	2
	.global	lookupExtraCaps
	.syntax unified
	.arm
	.type	lookupExtraCaps, %function
lookupExtraCaps:
.LFB669:
	.loc 40 232 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4716:
	.loc 40 237 0
	cmp	r1, #0
	beq	.L4487
.LVL4717:
	.loc 40 232 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB13464:
.LBB13465:
	.loc 33 69 0
	ubfx	r10, r2, #7, #2
.LVL4718:
.LBE13465:
.LBE13464:
	.loc 40 244 0
	cmp	r10, #0
	.loc 40 232 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	movweq	r2, #:lower16:current_extra_caps
.LVL4719:
	movteq	r2, #:upper16:current_extra_caps
	.loc 40 244 0
	beq	.L4476
	bic	r6, r0, #508
	.loc 40 253 0
	movw	r8, #:lower16:current_extra_caps
	bic	r6, r6, #3
	add	r7, r1, #484
	movt	r8, #:upper16:current_extra_caps
	.loc 40 244 0
	mov	r5, #0
	add	r4, sp, #12
.LBB13466:
.LBB13467:
	.loc 44 65 0
	mov	fp, #32
	b	.L4478
.LVL4720:
.L4477:
.LBE13467:
.LBE13466:
	.loc 40 253 0 discriminator 2
	str	r3, [r8, r5, lsl #2]
	.loc 40 244 0 discriminator 2
	add	r5, r5, #1
.LVL4721:
	cmp	r5, r10
	beq	.L4488
.LVL4722:
.L4478:
.LBB13471:
.LBB13468:
	.loc 44 64 0
	ldm	r6, {r0, r1}
.LBE13468:
.LBE13471:
.LBB13472:
.LBB13473:
	.loc 40 185 0
	ldr	r9, [r7, #4]!
.LVL4723:
.LBE13473:
.LBE13472:
.LBB13474:
.LBB13469:
	.loc 44 65 0
	str	fp, [sp]
	.loc 44 64 0
	stm	r4, {r0, r1}
	.loc 44 65 0
	add	r0, sp, #20
	ldm	r4, {r1, r2}
	mov	r3, r9
	bl	resolveAddressBits
.LVL4724:
	.loc 44 67 0
	ldr	r0, [sp, #20]
.LVL4725:
.LBE13469:
.LBE13474:
	.loc 40 253 0
	mov	r2, r8
.LBB13475:
.LBB13470:
	.loc 44 68 0
	ldr	r3, [sp, #24]
.LVL4726:
.LBE13470:
.LBE13475:
	.loc 40 248 0
	cmp	r0, #0
	beq	.L4477
.LVL4727:
	.loc 40 249 0
	movw	r3, #:lower16:current_fault
	mov	r2, #1
	movt	r3, #:upper16:current_fault
	stm	r3, {r2, r9}
.L4475:
.LVL4728:
	.loc 40 260 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4729:
.L4488:
	.cfi_restore_state
	.loc 40 255 0
	cmp	r10, #3
	beq	.L4475
.LVL4730:
.L4476:
	.loc 40 256 0
	mov	r3, #0
	.loc 40 259 0
	mov	r0, r3
	.loc 40 256 0
	str	r3, [r2, r10, lsl #2]
	.loc 40 260 0
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4731:
.L4487:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 14
	.loc 40 238 0
	movw	r3, #:lower16:current_extra_caps
	.loc 40 239 0
	mov	r0, r1
.LVL4732:
	.loc 40 238 0
	movt	r3, #:upper16:current_extra_caps
	str	r1, [r3]
	.loc 40 260 0
	bx	lr
	.cfi_endproc
.LFE669:
	.size	lookupExtraCaps, .-lookupExtraCaps
	.align	2
	.global	doNormalTransfer
	.syntax unified
	.arm
	.type	doNormalTransfer, %function
doNormalTransfer:
.LFB559:
	.loc 26 166 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4733:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	sub	sp, sp, #76
	.cfi_def_cfa_offset 112
.LBB13530:
.LBB13531:
	.loc 10 27 0
	ldr	r6, [r0, #4]
.LBE13531:
.LBE13530:
	.loc 26 166 0
	mov	r9, r0
	mov	r5, r1
	mov	r8, r3
	ldr	lr, [sp, #112]
.LBB13532:
.LBB13533:
.LBB13534:
.LBB13535:
	.loc 33 89 0
	and	r4, r6, #127
.LBE13535:
.LBE13534:
.LBE13533:
.LBE13532:
	.loc 26 166 0
	str	r2, [sp, #4]
.LBB13540:
.LBB13538:
	.loc 34 83 0
	cmp	r4, #120
.LBE13538:
.LBE13540:
	.loc 26 166 0
	ldr	r7, [sp, #116]
.LVL4734:
.LBB13541:
.LBB13539:
.LBB13536:
.LBB13537:
	.loc 33 101 0
	bichi	r6, r6, #127
.LVL4735:
	movhi	r4, #120
	.loc 33 102 0
	orrhi	r6, r6, r4
.LVL4736:
.LBE13537:
.LBE13536:
.LBE13539:
.LBE13541:
	.loc 26 174 0
	cmp	lr, #0
	bne	.L4533
	.loc 26 181 0
	movw	r3, #:lower16:current_extra_caps
.LVL4737:
.LBB13542:
.LBB13543:
	.loc 40 270 0
	cmp	r4, #0
.LBE13543:
.LBE13542:
	.loc 26 181 0
	movt	r3, #:upper16:current_extra_caps
	add	ip, sp, #36
	ldm	r3, {r0, r1, r2}
.LVL4738:
	stm	ip, {r0, r1, r2}
.LVL4739:
.LBB13563:
.LBB13560:
	.loc 40 270 0
	beq	.L4493
.L4535:
.LVL4740:
.LBB13544:
.LBB13545:
	.loc 10 27 0
	ldr	r3, [r9, #8]
.LVL4741:
.LBE13545:
.LBE13544:
	.loc 40 270 0
	cmp	r4, #1
	movls	r1, #1
.LBB13549:
.LBB13550:
	.loc 10 21 0
	str	r3, [r7, #8]
.LVL4742:
.LBE13550:
.LBE13549:
	.loc 40 270 0
	bls	.L4494
.LVL4743:
.LBB13554:
.LBB13546:
	.loc 10 27 0
	ldr	r3, [r9, #12]
.LVL4744:
.LBE13546:
.LBE13554:
	.loc 40 270 0
	cmp	r4, #2
	movls	r1, #2
.LBB13555:
.LBB13551:
	.loc 10 21 0
	str	r3, [r7, #12]
.LVL4745:
.LBE13551:
.LBE13555:
	.loc 40 270 0
	bls	.L4494
.LVL4746:
.LBB13556:
.LBB13547:
	.loc 10 27 0
	ldr	r3, [r9, #16]
.LVL4747:
.LBE13547:
.LBE13556:
	.loc 40 270 0
	cmp	r4, #3
	movls	r1, #3
	movhi	r1, #4
.LBB13557:
.LBB13552:
	.loc 10 21 0
	str	r3, [r7, #16]
.LVL4748:
.LBE13552:
.LBE13557:
.LBB13558:
.LBB13548:
	.loc 10 27 0
	ldrhi	r3, [r9, #20]
.LVL4749:
.LBE13548:
.LBE13558:
.LBB13559:
.LBB13553:
	.loc 10 21 0
	strhi	r3, [r7, #20]
.LVL4750:
.L4494:
.LBE13553:
.LBE13559:
	.loc 40 275 0
	ldr	r3, [sp, #120]
	clz	r3, r3
	lsr	r3, r3, #5
	cmp	r5, #0
	movne	r9, r3
	orreq	r9, r3, #1
.LVL4751:
	cmp	r9, #0
	movne	r9, r3
	.loc 40 270 0
	movne	r4, r1
	.loc 40 275 0
	bne	.L4495
.LVL4752:
	.loc 40 280 0
	cmp	r4, r1
	movls	r4, r1
	bls	.L4495
	sub	fp, r4, #7
	add	r3, r1, #1
	cmp	fp, r3
	cmphi	r4, #6
	bls	.L4520
	add	r3, r1, #26
	ldr	r0, [sp, #120]
	lsl	r3, r3, #2
	sub	r2, r3, #104
	add	r3, r5, r3
	add	r2, r0, r2
.L4497:
	.loc 40 281 0
	ldr	r10, [r3, #-100]
	add	r0, r1, #9
	pld	[r3]
	cmp	fp, r0
	add	r0, r1, #8
	add	r3, r3, #32
	str	r10, [r2, #4]
.LVL4753:
	mov	r1, r0
.LVL4754:
	ldr	r10, [r3, #-128]
	str	r10, [r2, #8]
.LVL4755:
	ldr	r10, [r3, #-124]
	str	r10, [r2, #12]
.LVL4756:
	ldr	r10, [r3, #-120]
	str	r10, [r2, #16]
	ldr	r10, [r3, #-116]
	str	r10, [r2, #20]
	ldr	r10, [r3, #-112]
	str	r10, [r2, #24]
	ldr	r10, [r3, #-108]
	str	r10, [r2, #28]
	ldr	r10, [r3, #-104]
	str	r10, [r2, #32]!
.LVL4757:
	bhi	.L4497
.L4496:
	ldr	r2, [sp, #120]
	lsl	r3, r0, #2
	add	r5, r5, r3
.LVL4758:
	add	r3, r2, r3
.L4498:
	add	r0, r0, #1
.LVL4759:
	ldr	r2, [r5, #4]!
	.loc 40 280 0
	cmp	r0, r4
	.loc 40 281 0
	str	r2, [r3, #4]!
.LVL4760:
	.loc 40 280 0
	bcc	.L4498
.LVL4761:
.L4495:
	str	lr, [sp, #36]
	add	r5, sp, #48
	ldm	ip, {r0, r1, r2}
.LBE13560:
.LBE13563:
.LBB13564:
.LBB13565:
.LBB13566:
.LBB13567:
	.loc 33 61 0
	bic	r6, r6, #3968
.LVL4762:
.LBE13567:
.LBE13566:
	.loc 26 221 0
	cmp	r0, #0
	orreq	r9, r9, #1
	stm	r5, {r0, r1, r2}
.LVL4763:
	cmp	r9, #0
	beq	.L4534
.LVL4764:
.L4499:
.LBE13565:
.LBE13564:
.LBB13595:
.LBB13596:
	.loc 10 21 0
	bic	r6, r6, #127
.LVL4765:
.LBE13596:
.LBE13595:
.LBB13598:
.LBB13599:
	str	r8, [r7]
.LBE13599:
.LBE13598:
.LBB13600:
.LBB13597:
	orr	r4, r6, r4
.LVL4766:
	str	r4, [r7, #4]
.LVL4767:
.LBE13597:
.LBE13600:
	.loc 26 193 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL4768:
.L4533:
	.cfi_restore_state
	.loc 26 175 0
	mov	r2, r6
.LVL4769:
	bl	lookupExtraCaps
.LVL4770:
	.loc 26 176 0
	movw	r3, #:lower16:current_extra_caps
	.loc 26 178 0
	cmp	r0, #0
	.loc 26 176 0
	movt	r3, #:upper16:current_extra_caps
	.loc 26 178 0
	movne	lr, #0
	.loc 26 176 0
	ldm	r3, {r0, r1, r2}
.LVL4771:
	add	ip, sp, #36
	.loc 26 178 0
	moveq	lr, r0
.LBB13601:
.LBB13561:
	.loc 40 270 0
	cmp	r4, #0
.LBE13561:
.LBE13601:
	.loc 26 176 0
	stm	ip, {r0, r1, r2}
.LVL4772:
.LBB13602:
.LBB13562:
	.loc 40 270 0
	bne	.L4535
.LVL4773:
.L4493:
	.loc 40 275 0
	ldr	r3, [sp, #120]
	clz	r9, r3
.LVL4774:
	lsr	r9, r9, #5
	b	.L4495
.LVL4775:
.L4520:
	.loc 40 280 0
	mov	r0, r1
	b	.L4496
.LVL4776:
.L4534:
.LBE13562:
.LBE13602:
.LBB13603:
.LBB13594:
	.loc 26 225 0
	ldr	r1, [sp, #120]
	mov	r0, r7
	.loc 26 227 0
	mov	fp, r9
	add	r3, r1, #488
	mov	r9, r3
	.loc 26 225 0
	bl	getReceiveSlots
.LVL4777:
	str	r8, [sp, #12]
	mov	r10, r0
.LVL4778:
	mov	r8, r9
.LVL4779:
	str	r4, [sp, #8]
.LVL4780:
.L4500:
	.loc 26 227 0
	ldr	r4, [r5, fp, lsl #2]
	cmp	r4, #0
	beq	.L4532
.LVL4781:
.LBB13568:
	.loc 26 229 0
	ldm	r4, {r0, r1}
	add	r2, sp, #20
	stm	r2, {r0, r1}
	mov	r3, r0
.LBB13569:
.LBB13570:
	.loc 4 997 0
	and	r0, r0, #14
.LBE13570:
.LBE13569:
	.loc 26 229 0
	mov	r2, r1
.LVL4782:
.LBB13572:
.LBB13571:
	.loc 4 997 0
	cmp	r0, #14
	.loc 4 999 0
	uxtbeq	r1, r3
.LVL4783:
	.loc 4 998 0
	andne	r1, r3, #15
.LBE13571:
.LBE13572:
	.loc 26 231 0
	cmp	r1, #4
	beq	.L4536
.L4503:
.LBB13573:
	.loc 26 244 0
	cmp	r10, #0
	beq	.L4532
	.loc 26 248 0
	ldr	r1, [sp, #124]
	cmp	r1, #0
	beq	.L4507
.LVL4784:
	.loc 26 249 0
	str	r3, [sp, #20]
	add	r9, sp, #28
	add	r3, sp, #20
.LVL4785:
	str	r2, [sp, #24]
	mov	r0, r9
	ldm	r3, {r2, r3}
.LVL4786:
	mov	r1, #6
	bl	maskCapRights
.LVL4787:
	ldm	r9, {r2, r3}
	mov	r1, r4
	add	r0, sp, #60
	bl	deriveCap
.LVL4788:
.L4508:
	.loc 26 254 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bne	.L4532
	ldr	r3, [sp, #64]
.LVL4789:
.LBB13574:
.LBB13575:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL4790:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE13575:
.LBE13574:
	.loc 26 257 0
	cmp	r3, #0
	beq	.L4532
	.loc 26 261 0
	add	r1, sp, #64
	mov	r3, r10
	mov	r2, r4
	ldm	r1, {r0, r1}
	.loc 26 263 0
	mov	r10, #0
.LVL4791:
	.loc 26 261 0
	bl	cteInsert
.LVL4792:
.L4505:
.LBE13573:
.LBE13568:
	.loc 26 227 0
	add	fp, fp, #1
.LVL4793:
	add	r8, r8, #4
	cmp	fp, #3
	bne	.L4500
	ldr	r4, [sp, #8]
.LVL4794:
	mov	r3, #384
	ldr	r8, [sp, #12]
.L4511:
.LVL4795:
.LBB13591:
.LBB13592:
	.loc 33 81 0
	bic	r6, r6, #384
.LVL4796:
	.loc 33 82 0
	orr	r6, r6, r3
.LVL4797:
	b	.L4499
.LVL4798:
.L4507:
.LBE13592:
.LBE13591:
.LBB13593:
.LBB13576:
	.loc 26 251 0
	str	r3, [sp, #20]
	add	r3, sp, #20
.LVL4799:
	str	r2, [sp, #24]
	mov	r1, r4
	add	r0, sp, #60
	ldm	r3, {r2, r3}
.LVL4800:
	bl	deriveCap
.LVL4801:
	b	.L4508
.LVL4802:
.L4536:
.LBE13576:
.LBB13577:
.LBB13578:
	.loc 4 1134 0
	and	r1, r3, #15
	str	r3, [sp, #20]
.LVL4803:
	cmp	r1, #4
	bne	.L4537
.LVL4804:
.LBE13578:
.LBE13577:
	.loc 26 231 0
	ldr	r0, [sp, #4]
	bic	r1, r2, #15
	cmp	r0, r1
	bne	.L4503
.LVL4805:
.LBB13580:
.LBB13581:
	.loc 33 62 0
	ubfx	r2, r6, #9, #3
.LVL4806:
	mov	r1, #1
.LBE13581:
.LBE13580:
.LBB13584:
.LBB13585:
	.loc 40 192 0
	lsr	r3, r3, #4
.LVL4807:
.LBE13585:
.LBE13584:
.LBB13587:
.LBB13582:
	.loc 33 62 0
	orr	r2, r2, r1, lsl fp
.LBE13582:
.LBE13587:
.LBB13588:
.LBB13586:
	.loc 40 192 0
	str	r3, [r8]
.LVL4808:
.LBE13586:
.LBE13588:
.LBB13589:
.LBB13583:
	.loc 33 62 0
	bfi	r6, r2, #9, #3
.LVL4809:
	b	.L4505
.LVL4810:
.L4532:
	lsl	r3, fp, #7
	ldr	r4, [sp, #8]
	ldr	r8, [sp, #12]
	and	r3, r3, #384
	b	.L4511
.LVL4811:
.L4537:
.LBE13583:
.LBE13589:
.LBB13590:
.LBB13579:
	bl	cap_endpoint_cap_get_capEPPtr.part.82
.LVL4812:
.LBE13579:
.LBE13590:
.LBE13593:
.LBE13594:
.LBE13603:
	.cfi_endproc
.LFE559:
	.size	doNormalTransfer, .-doNormalTransfer
	.align	2
	.global	doIPCTransfer
	.syntax unified
	.arm
	.type	doIPCTransfer, %function
doIPCTransfer:
.LFB557:
	.loc 26 120 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4813:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 26 120 0
	ldr	r5, [sp, #48]
	mov	r4, r0
	mov	r9, r1
	.loc 26 123 0
	mov	r0, #1
.LVL4814:
	.loc 26 120 0
	mov	r7, r2
	mov	r8, r3
	.loc 26 123 0
	mov	r1, r5
.LVL4815:
	bl	lookupIPCBuffer
.LVL4816:
	mov	r6, r0
.LVL4817:
	.loc 26 125 0
	ldr	r0, [r4, #88]
.LVL4818:
	ands	r0, r0, #7
	bne	.L4539
	.loc 26 126 0
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL4819:
	.loc 26 127 0
	ldr	r3, [sp, #52]
	mov	r1, r0
	str	r6, [sp, #8]
	mov	r2, r9
	str	r5, [sp, #4]
	mov	r0, r4
.LVL4820:
	str	r3, [sp, #12]
	mov	r3, r7
	str	r8, [sp]
	bl	doNormalTransfer
.LVL4821:
.L4538:
	.loc 26 132 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL4822:
.L4539:
	.cfi_restore_state
.LBB13616:
.LBB13617:
	.loc 26 202 0
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	setMRs_fault
.LVL4823:
.LBB13618:
.LBB13619:
	.loc 33 21 0
	ldr	r3, [r4, #88]
	.loc 33 29 0
	bics	r2, r0, #127
.LBE13619:
.LBE13618:
.LBB13622:
.LBB13623:
	.loc 10 21 0
	streq	r7, [r5]
.LVL4824:
.LBE13623:
.LBE13622:
.LBB13624:
.LBB13620:
	.loc 33 21 0
	and	r3, r3, #7
.LVL4825:
	lsl	r3, r3, #12
.LVL4826:
.LBE13620:
.LBE13624:
.LBB13625:
.LBB13626:
	.loc 10 21 0
	orreq	r3, r0, r3
.LVL4827:
	streq	r3, [r5, #4]
.LBE13626:
.LBE13625:
.LBB13627:
.LBB13621:
	.loc 33 29 0
	beq	.L4538
	movw	r1, #:lower16:.LC65
	movw	r0, #:lower16:.LC133
.LVL4828:
	movt	r1, #:upper16:.LC65
	movt	r0, #:upper16:.LC133
	ldr	r3, .L4543
	mov	r2, #29
	bl	_assert_fail
.LVL4829:
.L4544:
	.align	2
.L4543:
	.word	.LANCHOR4+1620
.LBE13621:
.LBE13627:
.LBE13617:
.LBE13616:
	.cfi_endproc
.LFE557:
	.size	doIPCTransfer, .-doIPCTransfer
	.align	2
	.global	sendIPC
	.syntax unified
	.arm
	.type	sendIPC, %function
sendIPC:
.LFB624:
	.loc 42 42 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4830:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 42 42 0
	ldr	r4, [sp, #52]
	mov	r7, r3
	mov	r6, r1
	ldr	r5, [sp, #48]
	ldr	r3, [r4]
.LVL4831:
	.loc 42 43 0
	and	r1, r3, #3
.LVL4832:
	cmp	r1, #1
	bls	.L4547
	cmp	r1, #2
	bne	.L4545
.LVL4833:
	ldr	r0, [r4, #4]
.LVL4834:
.LBB13678:
.LBB13679:
.LBB13680:
	.loc 42 27 0
	bic	r1, r3, #15
.LVL4835:
.LBE13680:
.LBE13679:
	.loc 42 81 0
	bics	r8, r0, #15
.LVL4836:
	beq	.L4571
.LVL4837:
.LBB13681:
.LBB13682:
	.loc 40 167 0
	ldr	lr, [r8, #136]
	cmp	lr, #0
	.loc 40 168 0
	ldrne	r9, [r8, #132]
	movne	ip, r8
	.loc 40 170 0
	ldreq	ip, [r8, #132]
.LVL4838:
	.loc 40 168 0
	strne	r9, [lr, #132]
	ldrne	r9, [r8, #132]
	.loc 40 170 0
	moveq	r9, ip
.LVL4839:
	.loc 40 173 0
	cmp	r9, #0
	.loc 40 174 0
	strne	lr, [r9, #136]
	.loc 40 167 0
	moveq	r1, lr
.LVL4840:
.LBE13682:
.LBE13681:
.LBB13683:
.LBB13684:
.LBB13685:
.LBB13686:
	.loc 4 376 0
	tst	ip, #15
	bne	.L4572
	.loc 4 378 0
	and	r0, r0, #15
	bic	lr, ip, #15
.LBE13686:
.LBE13685:
.LBB13689:
.LBB13690:
	.loc 4 395 0
	tst	r1, #15
.LBE13690:
.LBE13689:
.LBB13694:
.LBB13687:
	.loc 4 378 0
	orr	r0, r0, lr
	str	r0, [r4, #4]
.LVL4841:
.LBE13687:
.LBE13694:
.LBB13695:
.LBB13691:
	.loc 4 395 0
	bne	.L4573
	.loc 4 397 0
	bic	r1, r1, #15
.LVL4842:
	and	r3, r3, #15
.LVL4843:
.LBE13691:
.LBE13695:
.LBE13684:
.LBE13683:
	.loc 42 87 0
	cmp	ip, #0
.LBB13702:
.LBB13699:
.LBB13696:
.LBB13692:
	.loc 4 397 0
	orr	r3, r3, r1
	str	r3, [r4]
.LVL4844:
.LBE13692:
.LBE13696:
.LBE13699:
.LBE13702:
.LBB13703:
.LBB13704:
	.loc 4 415 0
	biceq	r3, r3, #3
	streq	r3, [r4]
.LBE13704:
.LBE13703:
	.loc 42 94 0
	mov	r1, r4
.LBB13705:
.LBB13706:
	.loc 4 178 0
	ldr	ip, [r8, #80]
.LVL4845:
.LBE13706:
.LBE13705:
	.loc 42 94 0
	mov	r3, r7
	mov	r0, r5
	str	r8, [sp]
.LBB13708:
.LBB13707:
	.loc 4 178 0
	and	r4, ip, #1
.LVL4846:
.LBE13707:
.LBE13708:
	.loc 42 94 0
	str	r4, [sp, #4]
	bl	doIPCTransfer
.LVL4847:
	.loc 42 96 0
	mov	r0, r8
	bl	setThreadState.constprop.307
.LVL4848:
.LBB13709:
.LBB13710:
	.loc 26 416 0
	mov	r1, #1
	mov	r0, r8
	bl	possibleSwitchTo
.LVL4849:
.LBE13710:
.LBE13709:
	.loc 42 99 0
	cmp	r6, #0
	beq	.L4574
.L4562:
	.loc 42 101 0
	eor	r4, r4, #1
	cmp	r7, #0
	moveq	r7, #0
	andne	r7, r4, #1
.LVL4850:
	cmp	r7, #0
	bne	.L4575
	.loc 42 104 0
	mov	r0, r5
.LBE13678:
	.loc 42 111 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4851:
.LBB13713:
	.loc 42 104 0
	b	setThreadState.constprop.306
.LVL4852:
.L4547:
	.cfi_restore_state
.LBE13713:
	.loc 42 46 0
	cmp	r0, #0
	beq	.L4545
.LVL4853:
.LBB13714:
.LBB13715:
.LBB13716:
	.loc 4 270 0
	ldr	r3, [r5, #72]
.LBE13716:
.LBE13715:
.LBB13718:
.LBB13719:
	.loc 4 238 0
	tst	r4, #15
.LBE13719:
.LBE13718:
.LBB13726:
.LBB13717:
	.loc 4 270 0
	bic	r3, r3, #15
	orr	r3, r3, #4
	str	r3, [r5, #72]
.LVL4854:
.LBE13717:
.LBE13726:
.LBB13727:
.LBB13722:
	.loc 4 238 0
	bne	.L4576
.LBE13722:
.LBE13727:
.LBB13728:
.LBB13729:
	.loc 4 134 0
	ldr	r3, [r5, #80]
.LBE13729:
.LBE13728:
.LBB13732:
.LBB13733:
	.loc 4 151 0
	bics	r1, r7, #1
.LBE13733:
.LBE13732:
.LBB13737:
.LBB13723:
	.loc 4 240 0
	bic	r1, r4, #15
	orr	r1, r1, #4
.LBE13723:
.LBE13737:
.LBB13738:
.LBB13730:
	.loc 4 134 0
	and	r3, r3, #15
.LBE13730:
.LBE13738:
.LBB13739:
.LBB13724:
	.loc 4 240 0
	str	r1, [r5, #72]
.LVL4855:
.LBE13724:
.LBE13739:
.LBB13740:
.LBB13731:
	.loc 4 134 0
	orr	r2, r3, r2, lsl #4
.LVL4856:
	str	r2, [r5, #80]
.LVL4857:
.LBE13731:
.LBE13740:
.LBB13741:
.LBB13734:
	.loc 4 151 0
	bne	.L4577
	.loc 4 153 0
	lsl	r3, r7, #3
	bic	r2, r2, #8
.LBE13734:
.LBE13741:
.LBB13742:
.LBB13743:
	.loc 4 170 0
	bics	r1, r6, #1
.LBE13743:
.LBE13742:
.LBB13749:
.LBB13735:
	.loc 4 153 0
	and	r3, r3, #8
	orr	r3, r3, r2
	str	r3, [r5, #80]
.LVL4858:
.LBE13735:
.LBE13749:
.LBB13750:
.LBB13744:
	.loc 4 170 0
	bne	.L4578
.LBE13744:
.LBE13750:
.LBB13751:
.LBB13752:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE13752:
.LBE13751:
.LBB13756:
.LBB13745:
	.loc 4 172 0
	lsl	r6, r6, #2
.LVL4859:
.LBE13745:
.LBE13756:
.LBB13757:
.LBB13753:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LBE13753:
.LBE13757:
.LBB13758:
.LBB13746:
	.loc 4 172 0
	and	r6, r6, #4
	bic	r3, r3, #4
	orr	r3, r6, r3
.LBE13746:
.LBE13758:
.LBB13759:
.LBB13754:
	.loc 26 435 0
	cmp	r5, r2
.LBE13754:
.LBE13759:
.LBB13760:
.LBB13747:
	.loc 4 172 0
	str	r3, [r5, #80]
.LVL4860:
.LBE13747:
.LBE13760:
.LBB13761:
.LBB13755:
	.loc 26 435 0
	bne	.L4553
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4553
	mov	r0, r5
.LVL4861:
	bl	scheduleTCB.part.236
.LVL4862:
.L4553:
.LBE13755:
.LBE13761:
.LBB13762:
.LBB13763:
.LBB13764:
.LBB13765:
	.loc 4 365 0
	ldr	r2, [r4, #4]
.LVL4863:
.LBE13765:
.LBE13764:
.LBE13763:
.LBE13762:
.LBB13767:
.LBB13768:
	.loc 40 157 0
	mov	ip, #0
	ldr	r3, [r4]
.LVL4864:
.LBE13768:
.LBE13767:
	.loc 42 67 0
	mov	r0, r4
	str	r5, [sp, #12]
.LBB13772:
.LBB13769:
	.loc 40 151 0
	bics	r2, r2, #15
.LVL4865:
.LBE13769:
.LBE13772:
.LBB13773:
.LBB13766:
	.loc 42 27 0
	bic	r1, r3, #15
.LVL4866:
.LBE13766:
.LBE13773:
.LBB13774:
.LBB13770:
	.loc 40 151 0
	moveq	r2, r5
.LVL4867:
.LBE13770:
.LBE13774:
.LBB13775:
.LBB13776:
	.loc 4 416 0
	bic	r3, r3, #3
.LBE13776:
.LBE13775:
	.loc 42 67 0
	str	r2, [sp, #8]
.LBB13779:
.LBB13777:
	.loc 4 416 0
	orr	r3, r3, #1
.LBE13777:
.LBE13779:
	.loc 42 67 0
	add	r2, sp, #16
.LVL4868:
.LBB13780:
.LBB13771:
	.loc 40 154 0
	strne	r5, [r1, #132]
	.loc 40 156 0
	str	r1, [r5, #136]
	.loc 40 157 0
	str	ip, [r5, #132]
.LVL4869:
.LBE13771:
.LBE13780:
	.loc 42 67 0
	ldmdb	r2, {r1, r2}
.LVL4870:
.LBB13781:
.LBB13778:
	.loc 4 416 0
	str	r3, [r4]
.LVL4871:
.LBE13778:
.LBE13781:
	.loc 42 67 0
	bl	ep_ptr_set_queue
.LVL4872:
.L4545:
.LBE13714:
	.loc 42 111 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL4873:
.L4574:
	.cfi_restore_state
.LBB13785:
	.loc 42 99 0 discriminator 1
	ldr	r3, [r5, #88]
	tst	r3, #7
	bne	.L4562
	b	.L4545
.LVL4874:
.L4575:
	.loc 42 102 0
	mov	r1, r8
	mov	r0, r5
.LBE13785:
	.loc 42 111 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4875:
.LBB13786:
	.loc 42 102 0
	b	setupCallerCap
.LVL4876:
.L4571:
	.cfi_restore_state
	.loc 42 81 0 discriminator 1
	movw	r1, #:lower16:.LC189
.LVL4877:
	movw	r0, #:lower16:.LC217
	movt	r1, #:upper16:.LC189
	movt	r0, #:upper16:.LC217
	ldr	r3, .L4579
.LVL4878:
	mov	r2, #81
.LVL4879:
	bl	_assert_fail
.LVL4880:
.L4572:
.LBB13711:
.LBB13700:
.LBB13697:
.LBB13688:
	bl	endpoint_ptr_set_epQueue_head.isra.224.part.225
.LVL4881:
.L4578:
.LBE13688:
.LBE13697:
.LBE13700:
.LBE13711:
.LBE13786:
.LBB13787:
.LBB13782:
.LBB13748:
	.loc 4 170 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC216
.LVL4882:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC216
	ldr	r3, .L4579+4
	mov	r2, #170
	bl	_assert_fail
.LVL4883:
.L4573:
.LBE13748:
.LBE13782:
.LBE13787:
.LBB13788:
.LBB13712:
.LBB13701:
.LBB13698:
.LBB13693:
	bl	endpoint_ptr_set_epQueue_tail.isra.226.part.227
.LVL4884:
.L4576:
.LBE13693:
.LBE13698:
.LBE13701:
.LBE13712:
.LBE13788:
.LBB13789:
.LBB13783:
.LBB13725:
.LBB13720:
.LBB13721:
	.loc 4 238 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC109
.LVL4885:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC109
	ldr	r3, .L4579+8
	mov	r2, #238
.LVL4886:
	bl	_assert_fail
.LVL4887:
.L4577:
.LBE13721:
.LBE13720:
.LBE13725:
.LBE13783:
.LBB13784:
.LBB13736:
	.loc 4 151 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC215
.LVL4888:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC215
	ldr	r3, .L4579+12
	mov	r2, #151
	bl	_assert_fail
.LVL4889:
.L4580:
	.align	2
.L4579:
	.word	.LANCHOR6-3944
	.word	.LANCHOR6-3984
	.word	.LANCHOR6-4072
	.word	.LANCHOR6-4028
.LBE13736:
.LBE13784:
.LBE13789:
	.cfi_endproc
.LFE624:
	.size	sendIPC, .-sendIPC
	.align	2
	.global	sendFaultIPC
	.syntax unified
	.arm
	.type	sendFaultIPC, %function
sendFaultIPC:
.LFB548:
	.loc 48 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4890:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 48 38 0
	movw	r4, #:lower16:current_lookup_fault
	movt	r4, #:upper16:current_lookup_fault
	.loc 48 40 0
	ldr	r7, [r0, #116]
.LVL4891:
	.loc 48 32 0
	mov	r5, r0
.LVL4892:
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 48 38 0
	ldm	r4, {r0, r1}
.LVL4893:
	add	r6, sp, #8
.LBB13790:
.LBB13791:
	.loc 44 25 0
	mov	r2, r7
.LBE13791:
.LBE13790:
	.loc 48 38 0
	stm	r6, {r0, r1}
.LBB13793:
.LBB13792:
	.loc 44 25 0
	mov	r1, r5
	add	r0, sp, #16
	bl	lookupSlot
.LVL4894:
	.loc 44 26 0
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L4582
.LVL4895:
	.loc 44 33 0
	ldr	r3, [sp, #20]
	ldm	r3, {r2, ip}
.LVL4896:
.LBE13792:
.LBE13793:
.LBB13794:
.LBB13795:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r2
.LVL4897:
	.loc 4 998 0
	andne	r3, r2, #15
.LBE13795:
.LBE13794:
	.loc 48 48 0
	cmp	r3, #4
	beq	.L4597
.L4585:
.LVL4898:
	.loc 48 62 0
	mov	r2, #1
.LVL4899:
	movw	r3, #:lower16:current_fault
	.loc 48 65 0
	mov	r0, r2
	.loc 48 62 0
	movt	r3, #:upper16:current_fault
	.loc 48 63 0
	mov	r1, #0
	.loc 48 62 0
	str	r7, [r3, #4]
.LVL4900:
	str	r2, [r3]
	.loc 48 63 0
	str	r2, [r4]
	str	r1, [r4, #4]
.LVL4901:
.L4595:
	.loc 48 67 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL4902:
.L4582:
	.cfi_restore_state
	.loc 48 43 0
	movw	r3, #:lower16:current_fault
.LVL4903:
	mov	r2, #1
	movt	r3, #:upper16:current_fault
	.loc 48 44 0
	mov	r0, r2
	.loc 48 43 0
	stm	r3, {r2, r7}
	.loc 48 67 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL4904:
.L4597:
	.cfi_restore_state
.LBB13796:
.LBB13797:
	.loc 4 1200 0 discriminator 1
	and	r3, r2, #15
	cmp	r3, #4
	bne	.L4598
.LBE13797:
.LBE13796:
	.loc 48 48 0
	tst	ip, #1
	beq	.L4585
.LVL4905:
	.loc 48 49 0
	tst	ip, #4
	beq	.L4585
	.loc 48 51 0
	movw	r1, #:lower16:current_fault
	add	r3, r5, #88
	movt	r1, #:upper16:current_fault
	.loc 48 55 0
	bic	ip, ip, #15
.LVL4906:
	.loc 48 51 0
	ldm	r1, {r0, r1}
	.loc 48 55 0
	lsr	r2, r2, #4
.LVL4907:
	.loc 48 52 0
	and	lr, r0, #7
	.loc 48 51 0
	stm	r3, {r0, r1}
	.loc 48 52 0
	cmp	lr, #1
	.loc 48 53 0
	ldmeq	r6, {r0, r1}
	addeq	r3, r5, #96
	stmeq	r3, {r0, r1}
	.loc 48 55 0
	mov	r3, #1
	mov	r0, r3
	str	ip, [sp, #4]
.LVL4908:
	str	r5, [sp]
	mov	r1, #0
	bl	sendIPC
.LVL4909:
	.loc 48 60 0
	mov	r0, #0
	b	.L4595
.LVL4910:
.L4598:
.LBB13799:
.LBB13798:
	bl	cap_endpoint_cap_get_capCanSend.part.81
.LVL4911:
.LBE13798:
.LBE13799:
	.cfi_endproc
.LFE548:
	.size	sendFaultIPC, .-sendFaultIPC
	.align	2
	.global	handleFault
	.syntax unified
	.arm
	.type	handleFault, %function
handleFault:
.LFB547:
	.loc 48 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4912:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 48 22 0
	movw	r4, #:lower16:current_fault
	movt	r4, #:upper16:current_fault
	.loc 48 20 0
	mov	r5, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 48 22 0
	ldm	r4, {r0, r1}
.LVL4913:
	stm	sp, {r0, r1}
	.loc 48 24 0
	mov	r0, r5
	bl	sendFaultIPC
.LVL4914:
	.loc 48 25 0
	cmp	r0, #0
	bne	.L4606
.LVL4915:
.L4599:
	.loc 48 28 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL4916:
.L4606:
	.cfi_restore_state
	ldm	sp, {r0, r1}
.LVL4917:
	add	r6, sp, #8
.LBB13817:
.LBB13818:
	.loc 48 109 0
	add	r7, sp, #16
	stm	r6, {r0, r1}
	ldm	r4, {r0, r1}
	stm	r7, {r0, r1}
	.loc 48 110 0
	movw	r0, #:lower16:.LC175
	movt	r0, #:upper16:.LC175
	bl	kprintf
.LVL4918:
	.loc 48 111 0
	ldm	r7, {r0, r1}
	bl	print_fault
.LVL4919:
	.loc 48 112 0
	movw	r0, #:lower16:.LC176
	movt	r0, #:upper16:.LC176
	bl	kprintf
.LVL4920:
	.loc 48 113 0
	ldm	r6, {r0, r1}
	bl	print_fault
.LVL4921:
	.loc 48 114 0
	movw	r0, #:lower16:.LC177
	add	r2, r5, #140
	mov	r1, r5
	movt	r0, #:upper16:.LC177
	bl	kprintf
.LVL4922:
	.loc 48 115 0
	movw	r0, #:lower16:.LC178
	ldr	r1, [r5, #68]
	movt	r0, #:upper16:.LC178
	bl	kprintf
.LVL4923:
.LBB13819:
.LBB13820:
.LBB13821:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE13821:
.LBE13820:
.LBB13824:
.LBB13825:
	.loc 4 269 0
	ldr	r3, [r5, #72]
.LBE13825:
.LBE13824:
.LBB13827:
.LBB13822:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LBE13822:
.LBE13827:
.LBB13828:
.LBB13826:
	.loc 4 269 0
	bic	r3, r3, #15
	str	r3, [r5, #72]
.LVL4924:
.LBE13826:
.LBE13828:
.LBB13829:
.LBB13823:
	.loc 26 435 0
	cmp	r5, r2
	bne	.L4599
.LVL4925:
.LBE13823:
.LBE13829:
.LBB13830:
.LBB13831:
.LBB13832:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4599
	mov	r0, r5
.LBE13832:
.LBE13831:
.LBE13830:
.LBE13819:
.LBE13818:
.LBE13817:
	.loc 48 28 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL4926:
.LBB13838:
.LBB13837:
.LBB13836:
.LBB13835:
.LBB13834:
.LBB13833:
	b	scheduleTCB.part.236
.LVL4927:
.LBE13833:
.LBE13834:
.LBE13835:
.LBE13836:
.LBE13837:
.LBE13838:
	.cfi_endproc
.LFE547:
	.size	handleFault, .-handleFault
	.align	2
	.global	handleUserLevelFault
	.syntax unified
	.arm
	.type	handleUserLevelFault, %function
handleUserLevelFault:
.LFB264:
	.file 53 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/api/syscall.c"
	.loc 53 173 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4928:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB13839:
.LBB13840:
	.loc 4 696 0
	ands	r4, r1, #-536870912
	bne	.L4610
.LVL4929:
.LBE13840:
.LBE13839:
	.loc 53 174 0
	lsl	r1, r1, #3
.LVL4930:
	.loc 53 175 0
	movw	r2, #:lower16:ksCurThread
	.loc 53 174 0
	movw	r3, #:lower16:current_fault
	mov	ip, r0
	.loc 53 175 0
	movt	r2, #:upper16:ksCurThread
	.loc 53 174 0
	orr	r1, r1, #4
	movt	r3, #:upper16:current_fault
	.loc 53 175 0
	ldr	r0, [r2]
.LVL4931:
	.loc 53 174 0
	stm	r3, {r1, ip}
	.loc 53 175 0
	bl	handleFault
.LVL4932:
	.loc 53 177 0
	bl	schedule
.LVL4933:
	.loc 53 178 0
	bl	activateThread
.LVL4934:
	.loc 53 181 0
	mov	r0, r4
	pop	{r4, pc}
.LVL4935:
.L4610:
.LBB13842:
.LBB13841:
	.loc 4 696 0
	movw	r1, #:lower16:.LC29
.LVL4936:
	movw	r0, #:lower16:.LC218
.LVL4937:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC218
	ldr	r3, .L4611
	mov	r2, #696
	bl	_assert_fail
.LVL4938:
.L4612:
	.align	2
.L4611:
	.word	.LANCHOR6-3936
.LBE13841:
.LBE13842:
	.cfi_endproc
.LFE264:
	.size	handleUserLevelFault, .-handleUserLevelFault
	.align	2
	.global	handleVMFaultEvent
	.syntax unified
	.arm
	.type	handleVMFaultEvent, %function
handleVMFaultEvent:
.LFB265:
	.loc 53 185 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4939:
.LBB13868:
.LBB13869:
	.loc 11 397 0
	subs	r2, r0, #0
.LBE13869:
.LBE13868:
	.loc 53 188 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	.loc 53 185 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 53 188 0
	ldr	r0, [r3]
.LVL4940:
.LBB13891:
.LBB13889:
	.loc 11 397 0
	beq	.L4615
	cmp	r2, #1
	bne	.L4623
.LVL4941:
.LBB13870:
.LBB13871:
.LBB13872:
.LBB13873:
	.loc 10 27 0
	ldr	ip, [r0, #68]
.LVL4942:
.LBE13873:
.LBE13872:
.LBE13871:
.LBB13874:
.LBB13875:
	.loc 14 308 0
	.syntax divided
@ 308 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r1, c5, c0, 1
@ 0 "" 2
.LVL4943:
	.arm
	.syntax unified
.LBE13875:
.LBE13874:
.LBB13876:
.LBB13877:
	.loc 4 604 0
	bic	r3, r1, #16320
	bic	r3, r3, #63
	cmp	r3, #0
	bne	.L4619
.LVL4944:
.LBE13877:
.LBE13876:
	.loc 11 413 0
	mov	r2, #2
.LVL4945:
	movw	r3, #:lower16:current_fault
	movt	r2, 2
	movt	r3, #:upper16:current_fault
	orr	r2, r2, r1, lsl #18
	stm	r3, {r2, ip}
.L4618:
.LVL4946:
.LBE13870:
.LBE13889:
.LBE13891:
	.loc 53 190 0
	bl	handleFault
.LVL4947:
	.loc 53 193 0
	bl	schedule
.LVL4948:
	.loc 53 194 0
	bl	activateThread
.LVL4949:
	.loc 53 197 0
	mov	r0, #0
	pop	{r4, pc}
.LVL4950:
.L4623:
.LBB13892:
.LBB13890:
	.loc 11 418 0
	movw	r1, #:lower16:.LC26
	movw	r0, #:lower16:.LC130
.LVL4951:
	movt	r1, #:upper16:.LC26
	movt	r0, #:upper16:.LC130
	ldr	r3, .L4624
	movw	r2, #418
.LVL4952:
	bl	_fail
.LVL4953:
.L4615:
.LBB13878:
.LBB13879:
.LBB13880:
.LBB13881:
.LBB13882:
	.loc 14 324 0
	.syntax divided
@ 324 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r1, c6, c0, 0
@ 0 "" 2
	.arm
	.syntax unified
.LBE13882:
.LBE13881:
.LBB13883:
.LBB13884:
	.loc 14 316 0
	.syntax divided
@ 316 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mrc p15, 0, r3, c5, c0, 0
@ 0 "" 2
.LVL4954:
	.arm
	.syntax unified
.LBE13884:
.LBE13883:
.LBB13885:
.LBB13886:
	.loc 4 604 0
	bic	r2, r3, #16320
.LVL4955:
	bic	r2, r2, #63
	cmp	r2, #0
	bne	.L4619
.LVL4956:
.LBE13886:
.LBE13885:
	.loc 11 403 0
	lsl	r3, r3, #18
	movw	r2, #:lower16:current_fault
	movt	r2, #:upper16:current_fault
	orr	r3, r3, #2
	str	r1, [r2, #4]
	str	r3, [r2]
	b	.L4618
.LVL4957:
.L4619:
.LBB13888:
.LBB13887:
	bl	fault_vm_fault_new.part.126
.LVL4958:
.L4625:
	.align	2
.L4624:
	.word	.LANCHOR4+3384
.LBE13887:
.LBE13888:
.LBE13880:
.LBE13879:
.LBE13878:
.LBE13890:
.LBE13892:
	.cfi_endproc
.LFE265:
	.size	handleVMFaultEvent, .-handleVMFaultEvent
	.align	2
	.global	handleUnknownSyscall
	.syntax unified
	.arm
	.type	handleUnknownSyscall, %function
handleUnknownSyscall:
.LFB263:
	.loc 53 53 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL4959:
	.loc 53 55 0
	cmn	r0, #10
	.loc 53 53 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	.loc 53 55 0
	beq	.L4689
	.loc 53 59 0
	cmn	r0, #11
	mov	r3, r0
	beq	.L4690
	.loc 53 66 0
	cmn	r0, #13
	beq	.L4691
	.loc 53 71 0
	cmn	r0, #12
	beq	.L4692
	.loc 53 78 0
	cmn	r0, #14
	beq	.L4693
	.loc 53 114 0
	cmn	r0, #16
	beq	.L4694
	.loc 53 117 0
	cmn	r0, #17
	beq	.L4695
	.loc 53 155 0
	cmn	r0, #18
	beq	.L4696
.LVL4960:
	.loc 53 163 0
	movw	r1, #:lower16:ksCurThread
	.loc 53 162 0
	movw	r2, #:lower16:current_fault
	.loc 53 163 0
	movt	r1, #:upper16:ksCurThread
	.loc 53 162 0
	movt	r2, #:upper16:current_fault
	.loc 53 163 0
	ldr	r0, [r1]
.LVL4961:
	.loc 53 162 0
	mov	r1, #3
	stm	r2, {r1, r3}
	.loc 53 163 0
	bl	handleFault
.LVL4962:
	.loc 53 165 0
	bl	schedule
.LVL4963:
	.loc 53 166 0
	bl	activateThread
.LVL4964:
	.loc 53 168 0
	mov	r0, #0
.L4684:
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4965:
.L4689:
	.cfi_restore_state
.LBB13956:
.LBB13957:
	.loc 10 27 0
	movw	r3, #:lower16:ksCurThread
.LBE13957:
.LBE13956:
.LBB13959:
.LBB13960:
.LBB13961:
.LBB13962:
	.loc 2 119 0
	mvn	r2, #1040384
.LBE13962:
.LBE13961:
.LBE13960:
.LBE13959:
.LBB13976:
.LBB13958:
	.loc 10 27 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LBE13958:
.LBE13976:
	.loc 53 56 0
	ldrb	r1, [r3]	@ zero_extendqisi2
.LVL4966:
.L4628:
.LBB13977:
.LBB13973:
.LBB13965:
.LBB13963:
	.loc 2 119 0
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L4628
.LBE13963:
.LBE13965:
	.loc 2 112 0
	cmp	r1, #10
.LBB13966:
.LBB13964:
	.loc 2 120 0
	str	r1, [r2, #-4031]
.LBE13964:
.LBE13966:
.LBE13973:
.LBE13977:
	.loc 53 57 0
	movne	r0, #0
.LVL4967:
.LBB13978:
.LBB13974:
	.loc 2 112 0
	bne	.L4684
.LBB13967:
.LBB13968:
.LBB13969:
	.loc 2 119 0
	mvn	r3, #1040384
.L4630:
	ldr	r2, [r3, #-3943]
	tst	r2, #16384
	beq	.L4630
	.loc 2 120 0
	mov	r2, #13
.LBE13969:
.LBE13968:
.LBE13967:
.LBE13974:
.LBE13978:
	.loc 53 57 0
	mov	r0, #0
.LBB13979:
.LBB13975:
.LBB13972:
.LBB13971:
.LBB13970:
	.loc 2 120 0
	str	r2, [r3, #-4031]
	b	.L4684
.LVL4968:
.L4696:
.LBE13970:
.LBE13971:
.LBE13972:
.LBE13975:
.LBE13979:
.LBB13980:
.LBB13981:
	.loc 10 21 0
	movw	r2, #:lower16:ksCurThread
.LBE13981:
.LBE13980:
	.loc 53 157 0
	movw	r3, #:lower16:.LANCHOR7
.LBB13985:
.LBB13982:
	.loc 10 21 0
	movt	r2, #:upper16:ksCurThread
.LBE13982:
.LBE13985:
	.loc 53 157 0
	movt	r3, #:upper16:.LANCHOR7
.LBB13986:
.LBB13983:
	.loc 10 21 0
	ldr	r2, [r2]
.LBE13983:
.LBE13986:
	.loc 53 158 0
	mov	r0, #0
.LVL4969:
.LBB13987:
.LBB13984:
	.loc 10 21 0
	ldr	r3, [r3]
	str	r3, [r2]
.LVL4970:
.LBE13984:
.LBE13987:
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4971:
.L4693:
	.cfi_restore_state
.LBB13988:
	.loc 53 82 0
	movw	r4, #:lower16:ksCurThread
	.loc 53 83 0
	add	r0, sp, #8
.LVL4972:
	.loc 53 82 0
	movt	r4, #:upper16:ksCurThread
	ldr	r1, [r4]
	.loc 53 83 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL4973:
	ldr	r5, [sp, #12]
.LVL4974:
.LBB13989:
.LBB13990:
	.loc 4 997 0
	and	r3, r5, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r5
.LVL4975:
	.loc 4 998 0
	andne	r3, r5, #15
.LBE13990:
.LBE13989:
	.loc 53 86 0
	cmp	r3, #12
	bne	.L4697
	.loc 53 91 0
	ldr	r4, [r4]
	mov	r0, #1
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL4976:
	.loc 53 92 0
	adds	r1, r0, #4
.LVL4977:
	addne	r3, r0, #480
	addne	r2, r0, #3
	addne	r3, r3, #3
	bne	.L4646
	b	.L4698
.L4648:
.LVL4978:
.LBB13991:
.LBB13992:
	.file 54 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/string.c"
	.loc 54 19 0
	cmp	r2, r3
	beq	.L4699
.L4646:
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L4648
.L4649:
.LVL4979:
.LBE13992:
.LBE13991:
.LBB13993:
.LBB13994:
	.loc 4 1576 0
	and	r3, r5, #15
	cmp	r3, #12
	bne	.L4700
.LVL4980:
.LBE13994:
.LBE13993:
.LBB13996:
.LBB13997:
.LBB13998:
.LBB13999:
	.loc 54 26 0
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
.LBE13999:
.LBE13998:
.LBE13997:
.LBE13996:
	.loc 53 101 0
	bic	r2, r5, #15
.LVL4981:
.LBB14003:
.LBB14002:
	.loc 40 1088 0
	add	ip, r2, #140
.LVL4982:
.LBB14001:
.LBB14000:
	.loc 54 26 0
	cmp	r3, #0
	.loc 54 27 0
	strbne	r3, [r2, #140]
.LVL4983:
	movne	r2, r1
.LVL4984:
	movne	r3, #1
	movne	r1, ip
.LVL4985:
	.loc 54 26 0
	bne	.L4665
	b	.L4652
.LVL4986:
.L4653:
	add	r3, r3, #1
.LVL4987:
	.loc 54 27 0
	strb	r0, [r1, #1]!
.LVL4988:
	.loc 54 26 0
	cmp	r3, #115
	beq	.L4652
.LVL4989:
.L4665:
	ldrb	r0, [r2, #1]!	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L4653
.LVL4990:
.L4652:
	.loc 54 29 0
	mov	r0, #0
	strb	r0, [ip, r3]
.LVL4991:
.LBE14000:
.LBE14001:
.LBE14002:
.LBE14003:
.LBE13988:
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4992:
.L4694:
	.cfi_restore_state
	.loc 53 115 0
	movw	r3, #:lower16:.LANCHOR7
	mov	r2, #0
	movt	r3, #:upper16:.LANCHOR7
	.loc 53 116 0
	mov	r0, r2
.LVL4993:
	.loc 53 115 0
	str	r2, [r3]
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4994:
.L4691:
	.cfi_restore_state
	.loc 53 67 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC222
.LVL4995:
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC222
	ldr	r1, [r3]
	bl	kprintf
.LVL4996:
	.loc 53 68 0
	bl	capDL
.LVL4997:
	.loc 53 69 0
	mov	r0, #0
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL4998:
.L4695:
	.cfi_restore_state
.LBB14005:
	.loc 53 119 0
	movw	r3, #:lower16:ksCurThread
	mov	r0, #1
.LVL4999:
	movt	r3, #:upper16:ksCurThread
	ldr	r4, [r3]
	mov	r1, r4
	bl	lookupIPCBuffer
.LVL5000:
	.loc 53 122 0
	movw	r3, #:lower16:.LANCHOR7
.LBB14006:
.LBB14007:
	.loc 10 27 0
	ldr	lr, [r4]
.LVL5001:
.LBE14007:
.LBE14006:
	.loc 53 122 0
	movt	r3, #:upper16:.LANCHOR7
	ldr	r2, [r3]
	cmp	r2, #262144
	movcs	r2, #262144
.LVL5002:
	.loc 53 124 0
	cmp	r0, #0
	beq	.L4701
	.loc 53 130 0
	cmp	r2, lr
	bcc	.L4702
.LBB14008:
.LBB14009:
	.loc 10 27 0
	ldr	r1, [r4, #4]
	movw	r3, #1023
	cmp	r1, r3
	movcc	r3, r1
.LVL5003:
.LBE14009:
.LBE14008:
	.loc 53 143 0
	add	r1, lr, r3
	cmp	r2, r1
	.loc 53 144 0
	subcc	r3, r2, lr
.LVL5004:
	.loc 53 148 0
	cmp	r3, #0
	beq	.L4663
	movw	r2, #:lower16:ksLog
.LVL5005:
	cmp	r3, #8
	movt	r2, #:upper16:ksLog
	ldr	r6, [r2]
	bls	.L4670
	sub	ip, r3, #9
	add	r2, lr, #19
	bic	ip, ip, #7
	add	r2, r6, r2, lsl #2
	add	ip, ip, #8
	add	r1, r0, #80
	mov	r5, #0
.LVL5006:
.L4661:
	.loc 53 149 0 discriminator 3
	ldr	r8, [r2, #-76]
	add	r5, r5, #8
.LVL5007:
	pld	[r2]
	cmp	r5, ip
	pld	[r1]
	.loc 53 148 0 discriminator 3
	mov	r7, r5
	.loc 53 149 0 discriminator 3
	str	r8, [r1, #-76]
.LVL5008:
	add	r2, r2, #32
	ldr	r8, [r2, #-104]
	add	r1, r1, #32
	str	r8, [r1, #-104]
	ldr	r8, [r2, #-100]
	str	r8, [r1, #-100]
	ldr	r8, [r2, #-96]
	str	r8, [r1, #-96]
	ldr	r8, [r2, #-92]
	str	r8, [r1, #-92]
	ldr	r8, [r2, #-88]
	str	r8, [r1, #-88]
	ldr	r8, [r2, #-84]
	str	r8, [r1, #-84]
.LVL5009:
	ldr	r8, [r2, #-80]
	str	r8, [r1, #-80]
	bne	.L4661
.LVL5010:
.L4662:
	.loc 53 149 0 is_stmt 0
	add	r2, lr, r7
	.loc 53 148 0 is_stmt 1
	add	r5, r5, #1
.LVL5011:
	.loc 53 149 0
	ldr	r1, [r6, r2, lsl #2]
	.loc 53 148 0
	cmp	r3, r5
	.loc 53 149 0
	add	r2, r7, #1
	.loc 53 148 0
	mov	r7, r5
	.loc 53 149 0
	str	r1, [r0, r2, lsl #2]
	.loc 53 148 0
	bhi	.L4662
.LVL5012:
.L4663:
.LBB14010:
.LBB14011:
	.loc 10 21 0
	str	r3, [r4]
.LVL5013:
.LBE14011:
.LBE14010:
	.loc 53 154 0
	mov	r0, #0
.LVL5014:
	b	.L4684
.LVL5015:
.L4692:
.LBE14005:
.LBB14012:
	.loc 53 72 0
	movw	r4, #:lower16:ksCurThread
	.loc 53 73 0
	add	r0, sp, #8
.LVL5016:
	.loc 53 72 0
	movt	r4, #:upper16:ksCurThread
	ldr	r1, [r4]
	.loc 53 73 0
	ldr	r2, [r1]
	bl	lookupCapAndSlot
.LVL5017:
	ldr	r3, [sp, #12]
.LVL5018:
	.loc 53 76 0
	mov	r0, #0
.LBB14013:
.LBB14014:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE14014:
.LBE14013:
.LBB14016:
.LBB14017:
	.loc 10 21 0
	ldr	r2, [r4]
.LBE14017:
.LBE14016:
.LBB14019:
.LBB14015:
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL5019:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE14015:
.LBE14019:
.LBB14020:
.LBB14018:
	.loc 10 21 0
	str	r3, [r2]
.LVL5020:
.LBE14018:
.LBE14020:
.LBE14012:
	.loc 53 169 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5021:
.L4690:
	.cfi_restore_state
	.loc 53 60 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC220
.LVL5022:
	movt	r3, #:upper16:ksCurThread
	movw	r4, #:lower16:.LANCHOR2
	ldr	r1, [r3]
	movt	r0, #:upper16:.LC220
	movt	r4, #:upper16:.LANCHOR2
	bl	kprintf
.LVL5023:
	ldr	r2, [r4, #20]
.LBB14021:
.LBB14022:
.LBB14023:
	.loc 2 89 0
	movw	lr, #:lower16:.LC219
	movt	lr, #:upper16:.LC219
.LBE14023:
	.loc 2 84 0
	mvn	r1, #1040384
.LBB14024:
	.loc 2 88 0
	mov	ip, #512
.L4632:
.LBE14024:
	.loc 2 84 0
	ldr	r3, [r1, #-3943]
	tst	r3, #1
	beq	.L4632
.LBB14025:
	.loc 2 86 0
	ldr	r3, [r1, #-4095]
.LVL5024:
	.loc 2 88 0
	str	ip, [r1, #-3947]
	.loc 2 89 0
	ldrb	r0, [r2]	@ zero_extendqisi2
	uxtb	r3, r3
	cmp	r0, r3
	movne	r2, lr
	bne	.L4632
	.loc 2 91 0
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	.loc 2 90 0
	add	r2, r2, #1
	.loc 2 91 0
	cmp	r5, #0
	bne	.L4632
.LBE14025:
.LBB14026:
.LBB14027:
.LBB14028:
.LBB14029:
	.loc 2 95 0
	movw	r0, #:lower16:.LC221
	str	r2, [r4, #20]
.LVL5025:
	movt	r0, #:upper16:.LC221
	bl	kprintf
.LVL5026:
	.loc 2 96 0
	mvn	r2, #1019904
	.loc 2 98 0
	movw	r3, #28927
	.loc 2 96 0
	ldr	r1, [r2, #-4095]
	.loc 2 98 0
	movt	r3, 65520
	mov	r0, #4
	.loc 2 96 0
	bic	r1, r1, #29360128
	str	r1, [r2, #-4095]
	.loc 2 97 0
	str	r5, [r2, #-4063]
	.loc 2 98 0
	strh	r0, [r3, #-255]	@ movhi
	.loc 2 99 0
	strh	r0, [r3, #-255]	@ movhi
.L4634:
	b	.L4634
.LVL5027:
.L4700:
.LBE14029:
.LBE14028:
.LBE14027:
.LBE14026:
.LBE14022:
.LBE14021:
.LBB14030:
.LBB14004:
.LBB13995:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5028:
.L4698:
.LBE13995:
.LBE14004:
	.loc 53 93 0
	ldr	r2, [r4, #68]
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r4
	str	r2, [sp, #4]
	mov	r2, #93
	ldr	r1, .L4703
.LVL5029:
	bl	kprintf
.LVL5030:
	movw	r0, #:lower16:.LC224
	movt	r0, #:upper16:.LC224
.L4687:
	bl	kprintf
.LVL5031:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5032:
	.loc 53 94 0
	bl	halt
.LVL5033:
.L4697:
	.loc 53 87 0
	ldr	r3, [r4]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	mov	r2, #87
	ldr	r1, .L4703
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5034:
	movw	r0, #:lower16:.LC223
	movt	r0, #:upper16:.LC223
	b	.L4687
.LVL5035:
.L4699:
	.loc 53 97 0
	ldrb	r3, [r0, #484]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4649
	.loc 53 98 0
	ldr	r2, [r4, #68]
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r4
	str	r2, [sp, #4]
	mov	r2, #98
	ldr	r1, .L4703
.LVL5036:
	bl	kprintf
.LVL5037:
	movw	r0, #:lower16:.LC225
	movt	r0, #:upper16:.LC225
	b	.L4687
.LVL5038:
.L4670:
.LBE14030:
.LBB14031:
	.loc 53 148 0
	mov	r7, #0
	mov	r5, r7
	b	.L4662
.LVL5039:
.L4702:
	.loc 53 131 0
	ldr	r2, [r4, #68]
.LVL5040:
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
.LVL5041:
	ldr	r1, .L4703
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r4
	str	r2, [sp, #4]
	mov	r2, #131
	bl	kprintf
.LVL5042:
	movw	r0, #:lower16:.LC227
	movt	r0, #:upper16:.LC227
	bl	kprintf
.LVL5043:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5044:
	.loc 53 132 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 53 133 0
	mov	r0, #3
	.loc 53 132 0
	str	r2, [r3, #24]
	.loc 53 133 0
	b	.L4684
.LVL5045:
.L4701:
	.loc 53 125 0
	ldr	r2, [r4, #68]
.LVL5046:
	add	r3, r4, #140
	movw	r0, #:lower16:.LC3
.LVL5047:
	ldr	r1, .L4703
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r4
	str	r2, [sp, #4]
	mov	r2, #125
	bl	kprintf
.LVL5048:
	movw	r0, #:lower16:.LC226
	movt	r0, #:upper16:.LC226
	bl	kprintf
.LVL5049:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5050:
	.loc 53 126 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 53 127 0
	mov	r0, r2
	.loc 53 126 0
	str	r2, [r3, #24]
	.loc 53 127 0
	b	.L4684
.L4704:
	.align	2
.L4703:
	.word	.LANCHOR6-3908
.LBE14031:
	.cfi_endproc
.LFE263:
	.size	handleUnknownSyscall, .-handleUnknownSyscall
	.align	2
	.global	performInvocation_Endpoint
	.syntax unified
	.arm
	.type	performInvocation_Endpoint, %function
performInvocation_Endpoint:
.LFB655:
	.loc 52 704 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5051:
	.loc 52 705 0
	movw	ip, #:lower16:ksCurThread
	.loc 52 704 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 52 705 0
	movt	ip, #:upper16:ksCurThread
	.loc 52 704 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 52 704 0
	mov	lr, r3
	.loc 52 705 0
	mov	r3, r2
.LVL5052:
	ldr	ip, [ip]
	mov	r2, r1
.LVL5053:
	str	r0, [sp, #4]
	mov	r0, lr
.LVL5054:
	ldr	r1, [sp, #16]
.LVL5055:
	str	ip, [sp]
	bl	sendIPC
.LVL5056:
	.loc 52 708 0
	mov	r0, #0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE655:
	.size	performInvocation_Endpoint, .-performInvocation_Endpoint
	.align	2
	.global	receiveIPC
	.syntax unified
	.arm
	.type	receiveIPC, %function
receiveIPC:
.LFB625:
	.loc 42 115 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5057:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 56
	.loc 42 115 0
	add	r3, sp, #8
	mov	r4, r0
	stm	r3, {r1, r2}
.LVL5058:
.LBB14098:
.LBB14099:
	.loc 4 997 0
	and	r2, r1, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r1
	.loc 4 998 0
	andne	r2, r1, #15
.LBE14099:
.LBE14098:
	.loc 42 121 0
	cmp	r2, #4
	bne	.L4741
.LVL5059:
.LBB14100:
.LBB14101:
	.loc 4 1134 0
	and	r3, r1, #15
	ldr	r6, [sp, #12]
.LVL5060:
	cmp	r3, #4
	bne	.L4742
.LBE14101:
.LBE14100:
	.loc 42 127 0
	ldr	r3, [r0, #84]
	and	r2, r6, #1
	eor	r8, r2, #1
.LBB14104:
.LBB14102:
	.loc 4 1137 0
	bic	r5, r6, #15
.LVL5061:
.LBE14102:
.LBE14104:
	.loc 42 128 0
	cmp	r3, #0
	beq	.L4712
	ldr	r2, [r3]
.LVL5062:
	.loc 42 128 0 is_stmt 0 discriminator 1
	and	r1, r2, #3
	cmp	r1, #2
	beq	.L4743
.LVL5063:
.L4712:
	ldr	r3, [r5]
.LVL5064:
	.loc 42 131 0 is_stmt 1
	and	r2, r3, #3
	cmp	r2, #1
	beq	.L4714
	bcc	.L4715
	cmp	r2, #2
	beq	.L4715
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5065:
.L4715:
	.cfi_restore_state
.LBB14105:
.LBB14106:
.LBB14107:
	.loc 26 435 0
	movw	r3, #:lower16:ksCurThread
.LBE14107:
.LBE14106:
.LBB14113:
.LBB14114:
	.loc 4 202 0
	ldr	r2, [r4, #80]
.LBE14114:
.LBE14113:
.LBB14118:
.LBB14108:
	.loc 26 435 0
	movt	r3, #:upper16:ksCurThread
.LBE14108:
.LBE14118:
.LBB14119:
.LBB14120:
	.loc 4 240 0
	orr	r1, r5, #3
.LBE14120:
.LBE14119:
.LBB14122:
.LBB14109:
	.loc 26 435 0
	ldr	r3, [r3]
.LBE14109:
.LBE14122:
.LBB14123:
.LBB14115:
	.loc 4 202 0
	bic	r2, r2, #1
.LBE14115:
.LBE14123:
.LBB14124:
.LBB14121:
	.loc 4 240 0
	str	r1, [r4, #72]
.LVL5066:
.LBE14121:
.LBE14124:
.LBB14125:
.LBB14116:
	.loc 4 202 0
	orr	r2, r2, r8
.LBE14116:
.LBE14125:
.LBB14126:
.LBB14110:
	.loc 26 435 0
	cmp	r4, r3
.LBE14110:
.LBE14126:
.LBB14127:
.LBB14117:
	.loc 4 202 0
	str	r2, [r4, #80]
.LVL5067:
.LBE14117:
.LBE14127:
.LBB14128:
.LBB14111:
	.loc 26 435 0
	beq	.L4744
.LVL5068:
.L4716:
	ldr	r3, [r5]
.LBE14111:
.LBE14128:
.LBB14129:
.LBB14130:
	.loc 40 157 0
	mov	ip, #0
.LBE14130:
.LBE14129:
.LBB14135:
.LBB14136:
.LBB14137:
.LBB14138:
	.loc 4 365 0
	ldr	r2, [r5, #4]
.LVL5069:
.LBE14138:
.LBE14137:
.LBE14136:
.LBE14135:
	.loc 42 150 0
	add	r1, sp, #16
	str	r4, [sp, #20]
.LBB14140:
.LBB14139:
	.loc 42 27 0
	bic	r0, r3, #15
.LVL5070:
.LBE14139:
.LBE14140:
.LBB14141:
.LBB14142:
	.loc 4 416 0
	bic	r3, r3, #3
.LBE14142:
.LBE14141:
.LBB14145:
.LBB14131:
	.loc 40 151 0
	bics	r2, r2, #15
.LVL5071:
.LBE14131:
.LBE14145:
.LBB14146:
.LBB14143:
	.loc 4 416 0
	orr	r3, r3, #2
.LBE14143:
.LBE14146:
.LBB14147:
.LBB14132:
	.loc 40 151 0
	moveq	r2, r4
.LVL5072:
	.loc 40 154 0
	strne	r4, [r0, #132]
.LBE14132:
.LBE14147:
	.loc 42 150 0
	str	r2, [sp, #16]
.LBB14148:
.LBB14133:
	.loc 40 156 0
	str	r0, [r4, #136]
.LBE14133:
.LBE14148:
	.loc 42 150 0
	mov	r0, r5
.LVL5073:
.LBB14149:
.LBB14134:
	.loc 40 157 0
	str	ip, [r4, #132]
.LVL5074:
.LBE14134:
.LBE14149:
	.loc 42 150 0
	ldm	r1, {r1, r2}
.LVL5075:
.LBB14150:
.LBB14144:
	.loc 4 416 0
	str	r3, [r5]
.LVL5076:
.LBE14144:
.LBE14150:
	.loc 42 150 0
	bl	ep_ptr_set_queue
.LVL5077:
.LBE14105:
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5078:
.L4714:
	.cfi_restore_state
.LBB14152:
.LBB14153:
.LBB14154:
.LBB14155:
.LBB14156:
	.loc 4 365 0
	ldr	r7, [r5, #4]
.LVL5079:
.LBE14156:
.LBE14155:
	.loc 42 27 0
	bic	r3, r3, #15
.LVL5080:
.LBE14154:
.LBE14153:
	.loc 42 166 0
	bics	r7, r7, #15
.LVL5081:
	beq	.L4745
.LVL5082:
.LBB14157:
.LBB14158:
	.loc 40 167 0
	ldr	r2, [r7, #136]
	.loc 40 168 0
	ldr	r1, [r7, #132]
	.loc 40 167 0
	cmp	r2, #0
	beq	.L4719
	.loc 40 168 0
	str	r1, [r2, #132]
	.loc 40 173 0
	ldr	r1, [r7, #132]
	cmp	r1, #0
.LBE14158:
.LBE14157:
	.loc 42 170 0
	strne	r7, [sp, #24]
.LBB14163:
.LBB14159:
	.loc 40 173 0
	beq	.L4746
.LVL5083:
.L4738:
.LBE14159:
.LBE14163:
	.loc 42 170 0
	str	r3, [sp, #28]
	add	r3, sp, #32
.LVL5084:
.LBB14164:
.LBB14160:
	.loc 40 174 0
	str	r2, [r1, #136]
.LVL5085:
.LBE14160:
.LBE14164:
	.loc 42 170 0
	mov	r0, r5
.LVL5086:
	ldmdb	r3, {r1, r2}
	bl	ep_ptr_set_queue
.LVL5087:
.L4727:
	ldr	r2, [r7, #80]
.LVL5088:
	.loc 42 182 0
	mov	r1, r5
	str	r8, [sp, #4]
	mov	r0, r7
	str	r4, [sp]
.LBB14165:
.LBB14166:
	.loc 4 140 0
	ubfx	r5, r2, #3, #1
.LVL5089:
.LBE14166:
.LBE14165:
	.loc 42 182 0
	mov	r3, r5
	lsr	r2, r2, #4
	bl	doIPCTransfer
.LVL5090:
	.loc 42 187 0
	ldr	r3, [r7, #80]
	tst	r3, #4
	beq	.L4747
.LVL5091:
.L4724:
	.loc 42 189 0
	tst	r5, r6
	beq	.L4726
	.loc 42 190 0
	mov	r1, r4
	mov	r0, r7
.LBE14152:
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5092:
.LBB14175:
	.loc 42 190 0
	b	setupCallerCap
.LVL5093:
.L4747:
	.cfi_restore_state
	.loc 42 187 0 discriminator 1
	ldr	r1, [r7, #88]
	ands	r8, r1, #7
.LVL5094:
	bne	.L4724
	.loc 42 195 0
	mov	r0, r7
	bl	setThreadState.constprop.307
.LVL5095:
.LBB14167:
.LBB14168:
	.loc 26 422 0
	mov	r1, r8
	mov	r0, r7
.LBE14168:
.LBE14167:
.LBE14175:
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5096:
.LBB14176:
.LBB14170:
.LBB14169:
	.loc 26 422 0
	b	possibleSwitchTo
.LVL5097:
.L4726:
	.cfi_restore_state
.LBE14169:
.LBE14170:
	.loc 42 192 0
	mov	r0, r7
.LBE14176:
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5098:
.LBB14177:
	.loc 42 192 0
	b	setThreadState.constprop.306
.LVL5099:
.L4743:
	.cfi_restore_state
	ldr	r1, [r3, #8]
.LBE14177:
.LBB14178:
.LBB14179:
.LBB14180:
.LBB14181:
	.loc 4 109 0
	bic	r2, r2, #3
	str	r2, [r3]
.LVL5100:
.LBE14181:
.LBE14180:
.LBB14182:
.LBB14183:
	.loc 10 21 0
	str	r1, [r0]
.LVL5101:
.LBE14183:
.LBE14182:
.LBE14179:
.LBE14178:
	.loc 42 203 0
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5102:
.L4746:
	.cfi_restore_state
.LBB14184:
	.loc 42 170 0
	add	r3, sp, #32
.LVL5103:
	str	r7, [sp, #24]
	str	r2, [sp, #28]
	mov	r0, r5
.LVL5104:
	ldmdb	r3, {r1, r2}
.LVL5105:
	bl	ep_ptr_set_queue
.LVL5106:
	b	.L4727
.LVL5107:
.L4719:
.LBB14171:
.LBB14161:
	.loc 40 173 0
	cmp	r1, #0
.LBE14161:
.LBE14171:
	.loc 42 170 0
	strne	r1, [sp, #24]
.LBB14172:
.LBB14162:
	.loc 40 173 0
	bne	.L4738
.LVL5108:
.LBE14162:
.LBE14172:
	.loc 42 170 0
	add	r3, sp, #32
.LVL5109:
	str	r1, [sp, #24]
	str	r1, [sp, #28]
	mov	r0, r5
.LVL5110:
	ldmdb	r3, {r1, r2}
	bl	ep_ptr_set_queue
.LVL5111:
.LBB14173:
.LBB14174:
	.loc 4 415 0
	ldr	r3, [r5]
	bic	r3, r3, #3
	str	r3, [r5]
	b	.L4727
.LVL5112:
.L4744:
.LBE14174:
.LBE14173:
.LBE14184:
.LBB14185:
.LBB14151:
.LBB14112:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L4716
	mov	r0, r4
.LVL5113:
	bl	scheduleTCB.part.236
.LVL5114:
	b	.L4716
.LVL5115:
.L4741:
.LBE14112:
.LBE14151:
.LBE14185:
	.loc 42 121 0 discriminator 1
	movw	r1, #:lower16:.LC189
	movw	r0, #:lower16:.LC228
.LVL5116:
	movt	r1, #:upper16:.LC189
	movt	r0, #:upper16:.LC228
	ldr	r3, .L4748
	mov	r2, #121
	bl	_assert_fail
.LVL5117:
.L4742:
.LBB14186:
.LBB14103:
	bl	cap_endpoint_cap_get_capEPPtr.part.82
.LVL5118:
.L4745:
.LBE14103:
.LBE14186:
.LBB14187:
	.loc 42 166 0 discriminator 1
	movw	r1, #:lower16:.LC189
	movw	r0, #:lower16:.LC229
.LVL5119:
	movt	r1, #:upper16:.LC189
	movt	r0, #:upper16:.LC229
	ldr	r3, .L4748
.LVL5120:
	mov	r2, #166
	bl	_assert_fail
.LVL5121:
.L4749:
	.align	2
.L4748:
	.word	.LANCHOR6-3884
.LBE14187:
	.cfi_endproc
.LFE625:
	.size	receiveIPC, .-receiveIPC
	.align	2
	.global	copyMRs
	.syntax unified
	.arm
	.type	copyMRs, %function
copyMRs:
.LFB670:
	.loc 40 266 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5122:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 40 266 0
	ldr	lr, [sp, #16]
	.loc 40 270 0
	cmp	lr, #0
	beq	.L4751
.LVL5123:
.LBB14188:
.LBB14189:
	.loc 10 27 0
	ldr	ip, [r0, #8]
.LVL5124:
.LBE14189:
.LBE14188:
	.loc 40 270 0
	cmp	lr, #1
	movls	r4, #1
.LBB14193:
.LBB14194:
	.loc 10 21 0
	str	ip, [r2, #8]
.LVL5125:
.LBE14194:
.LBE14193:
	.loc 40 270 0
	bls	.L4752
.LVL5126:
.LBB14198:
.LBB14190:
	.loc 10 27 0
	ldr	ip, [r0, #12]
.LVL5127:
.LBE14190:
.LBE14198:
	.loc 40 270 0
	cmp	lr, #2
	movls	r4, #2
.LBB14199:
.LBB14195:
	.loc 10 21 0
	str	ip, [r2, #12]
.LVL5128:
.LBE14195:
.LBE14199:
	.loc 40 270 0
	bls	.L4752
.LVL5129:
.LBB14200:
.LBB14191:
	.loc 10 27 0
	ldr	ip, [r0, #16]
.LVL5130:
.LBE14191:
.LBE14200:
	.loc 40 270 0
	cmp	lr, #3
	movls	r4, #3
	movhi	r4, #4
.LBB14201:
.LBB14196:
	.loc 10 21 0
	str	ip, [r2, #16]
.LVL5131:
.LBE14196:
.LBE14201:
.LBB14202:
.LBB14192:
	.loc 10 27 0
	ldrhi	r0, [r0, #20]
.LVL5132:
.LBE14192:
.LBE14202:
.LBB14203:
.LBB14197:
	.loc 10 21 0
	strhi	r0, [r2, #20]
.LVL5133:
.L4752:
.LBE14197:
.LBE14203:
	.loc 40 275 0
	cmp	r1, #0
	cmpne	r3, #0
	beq	.L4760
.LVL5134:
	.loc 40 280 0 discriminator 1
	cmp	lr, r4
	bls	.L4760
	add	r2, r4, #1
.LVL5135:
	sub	r6, lr, #7
	cmp	r2, r6
	movcs	r2, #0
	movcc	r2, #1
	cmp	lr, #6
	movls	r2, #0
	cmp	r2, #0
	beq	.L4761
	add	r2, r4, #26
	lsl	r2, r2, #2
	sub	r0, r2, #104
	add	r2, r1, r2
	add	r0, r3, r0
.L4754:
	.loc 40 281 0 discriminator 2
	ldr	r5, [r2, #-100]
	add	ip, r4, #9
	pld	[r2]
	cmp	r6, ip
	add	ip, r4, #8
	add	r2, r2, #32
	str	r5, [r0, #4]
.LVL5136:
	mov	r4, ip
.LVL5137:
	ldr	r5, [r2, #-128]
	str	r5, [r0, #8]
.LVL5138:
	ldr	r5, [r2, #-124]
	str	r5, [r0, #12]
.LVL5139:
	ldr	r5, [r2, #-120]
	str	r5, [r0, #16]
	ldr	r5, [r2, #-116]
	str	r5, [r0, #20]
	ldr	r5, [r2, #-112]
	str	r5, [r0, #24]
	ldr	r5, [r2, #-108]
	str	r5, [r0, #28]
	ldr	r5, [r2, #-104]
	str	r5, [r0, #32]!
.LVL5140:
	bhi	.L4754
.L4753:
	lsl	r2, ip, #2
	add	r1, r1, r2
.LVL5141:
	add	r3, r3, r2
.LVL5142:
.L4755:
	.loc 40 281 0 is_stmt 0
	add	ip, ip, #1
.LVL5143:
	ldr	r2, [r1, #4]!
	.loc 40 280 0 is_stmt 1
	cmp	lr, ip
	.loc 40 281 0
	str	r2, [r3, #4]!
.LVL5144:
	.loc 40 280 0
	bhi	.L4755
.LVL5145:
.L4751:
	.loc 40 285 0
	mov	r0, lr
	pop	{r4, r5, r6, pc}
.LVL5146:
.L4760:
	.loc 40 280 0
	mov	lr, r4
	.loc 40 285 0
	mov	r0, lr
	pop	{r4, r5, r6, pc}
.LVL5147:
.L4761:
	.loc 40 280 0
	mov	ip, r4
	b	.L4753
	.cfi_endproc
.LFE670:
	.size	copyMRs, .-copyMRs
	.align	2
	.global	decodeDomainInvocation
	.syntax unified
	.arm
	.type	decodeDomainInvocation, %function
decodeDomainInvocation:
.LFB679:
	.loc 40 746 0
	.cfi_startproc
	@ args = 16, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5148:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 40 750 0
	cmp	r0, #29
	.loc 40 746 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
.LVL5149:
	.loc 40 746 0
	add	r0, sp, #20
.LVL5150:
	stmib	r0, {r2, r3}
.LVL5151:
	.loc 40 750 0
	bne	.L4780
	.loc 40 755 0
	cmp	r1, #0
	.loc 40 756 0
	movw	r3, #:lower16:ksCurThread
	.loc 40 755 0
	beq	.L4781
.LVL5152:
.LBB14204:
.LBB14205:
	.loc 37 30 0
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LVL5153:
.LBB14206:
.LBB14207:
	.loc 10 27 0
	ldr	r4, [r3, #8]
.LVL5154:
.LBE14207:
.LBE14206:
.LBE14205:
.LBE14204:
	.loc 40 761 0
	cmp	r4, #0
	bne	.L4782
	ldr	r2, [sp, #24]
	.loc 40 770 0
	cmp	r2, #0
	beq	.L4783
	.loc 40 776 0
	ldr	r5, [r2]
.LVL5155:
.LBB14208:
.LBB14209:
	.loc 4 997 0
	and	r2, r5, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r5
.LVL5156:
	.loc 4 998 0
	andne	r2, r5, #15
.LBE14209:
.LBE14208:
	.loc 40 777 0
	cmp	r2, #12
	bne	.L4784
	.loc 40 784 0
	mov	r0, r3
	bl	setThreadState.constprop.305
.LVL5157:
.LBB14210:
.LBB14211:
	.loc 4 1576 0
	and	r3, r5, #15
	cmp	r3, #12
	bne	.L4785
.LVL5158:
.LBE14211:
.LBE14210:
	.loc 40 785 0
	bic	r0, r5, #15
	mov	r1, #0
	bl	setDomain
.LVL5159:
.L4770:
	.loc 40 787 0
	mov	r0, r4
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5160:
.L4782:
	.cfi_restore_state
	.loc 40 762 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
.LVL5161:
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4786
	str	r2, [sp, #4]
	movw	r2, #763
	bl	kprintf
.LVL5162:
	movw	r0, #:lower16:.LC231
	mov	r1, r4
	mov	r2, #1
	movt	r0, #:upper16:.LC231
	bl	kprintf
.LVL5163:
	movw	r0, #:lower16:.LC5
	.loc 40 766 0
	mov	r4, #3
	.loc 40 762 0
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5164:
	.loc 40 764 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #1
	movt	r3, #:upper16:current_syscall_error
	.loc 40 765 0
	mov	r2, #0
	.loc 40 764 0
	str	r1, [r3, #24]
	.loc 40 765 0
	str	r2, [r3]
	.loc 40 766 0
	b	.L4770
.LVL5165:
.L4780:
	.loc 40 751 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 40 752 0
	mov	r4, r2
	.loc 40 751 0
	str	r2, [r3, #24]
	.loc 40 752 0
	b	.L4770
.L4781:
	.loc 40 756 0
	movt	r3, #:upper16:ksCurThread
	ldr	r1, .L4786
.LVL5166:
	ldr	r3, [r3]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	mov	r2, #756
	.loc 40 758 0
	mov	r4, #3
	.loc 40 756 0
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
.L4779:
	.loc 40 771 0
	bl	kprintf
.LVL5167:
	movw	r0, #:lower16:.LC230
	movt	r0, #:upper16:.LC230
	bl	kprintf
.LVL5168:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5169:
	.loc 40 772 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 40 773 0
	b	.L4770
.LVL5170:
.L4783:
	.loc 40 771 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
.LVL5171:
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4786
	str	r2, [sp, #4]
	.loc 40 773 0
	mov	r4, #3
	.loc 40 771 0
	movw	r2, #771
	b	.L4779
.LVL5172:
.L4784:
	.loc 40 778 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
.LVL5173:
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4786
	str	r2, [sp, #4]
	movw	r2, #778
	bl	kprintf
.LVL5174:
	movw	r0, #:lower16:.LC232
	.loc 40 781 0
	mov	r4, #3
	.loc 40 778 0
	movt	r0, #:upper16:.LC232
	bl	kprintf
.LVL5175:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5176:
	.loc 40 779 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #1
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 40 780 0
	str	r2, [r3]
	.loc 40 781 0
	b	.L4770
.LVL5177:
.L4785:
.LBB14213:
.LBB14212:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5178:
.L4787:
	.align	2
.L4786:
	.word	.LANCHOR6-3872
.LBE14212:
.LBE14213:
	.cfi_endproc
.LFE679:
	.size	decodeDomainInvocation, .-decodeDomainInvocation
	.align	2
	.global	decodeUnbindAEP
	.syntax unified
	.arm
	.type	decodeUnbindAEP, %function
decodeUnbindAEP:
.LFB681:
	.loc 40 826 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	.loc 40 826 0
	add	r3, sp, #16
	stmdb	r3, {r0, r1}
	ldr	r4, [sp, #8]
.LVL5179:
.LBB14237:
.LBB14238:
	.loc 4 1576 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L4794
.LBE14238:
.LBE14237:
	.loc 40 829 0
	bic	r4, r4, #15
.LVL5180:
	.loc 40 831 0
	ldr	r3, [r4, #84]
	cmp	r3, #0
.LBB14240:
.LBB14241:
	.loc 40 832 0
	movw	r3, #:lower16:ksCurThread
.LBE14241:
.LBE14240:
	.loc 40 831 0
	beq	.L4795
	.loc 40 837 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL5181:
.LBB14243:
.LBB14244:
.LBB14245:
.LBB14246:
	.loc 50 215 0
	ldr	r3, [r4, #84]
.LVL5182:
	.loc 50 217 0
	cmp	r3, #0
.LVL5183:
.LBB14247:
.LBB14248:
	.loc 4 33 0
	ldrne	r2, [r3, #12]
.LBE14248:
.LBE14247:
	.loc 50 219 0
	movne	r1, #0
.LBE14246:
.LBE14245:
.LBE14244:
.LBE14243:
	.loc 40 838 0
	movne	r0, r1
	moveq	r0, r3
.LBB14254:
.LBB14253:
.LBB14252:
.LBB14251:
.LBB14250:
.LBB14249:
	.loc 4 33 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LVL5184:
.LBE14249:
.LBE14250:
	.loc 50 219 0
	strne	r1, [r4, #84]
.LBE14251:
.LBE14252:
.LBE14253:
.LBE14254:
	.loc 40 839 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL5185:
.L4795:
	.cfi_restore_state
.LBB14255:
.LBB14242:
	.loc 40 832 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	r3, [r3]
	mov	r2, #832
	ldr	r1, .L4796
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5186:
	movw	r0, #:lower16:.LC233
	movt	r0, #:upper16:.LC233
	bl	kprintf
.LVL5187:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5188:
	.loc 40 833 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	mov	r0, r2
	str	r2, [r3, #24]
.LBE14242:
.LBE14255:
	.loc 40 839 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL5189:
.L4794:
	.cfi_restore_state
.LBB14256:
.LBB14239:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5190:
.L4797:
	.align	2
.L4796:
	.word	.LANCHOR6-3848
.LBE14239:
.LBE14256:
	.cfi_endproc
.LFE681:
	.size	decodeUnbindAEP, .-decodeUnbindAEP
	.align	2
	.global	invokeTCB_AEPControl
	.syntax unified
	.arm
	.type	invokeTCB_AEPControl, %function
invokeTCB_AEPControl:
.LFB688:
	.loc 40 1074 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5191:
	.loc 40 1075 0
	cmp	r1, #0
	beq	.L4799
.LVL5192:
.LBB14271:
.LBB14272:
.LBB14273:
.LBB14274:
	.loc 4 32 0
	tst	r0, #15
	bne	.L4806
	.loc 4 34 0
	ldr	r2, [r1, #12]
	bic	r3, r0, #15
	and	r2, r2, #15
	orr	r3, r2, r3
	str	r3, [r1, #12]
.LVL5193:
.LBE14274:
.LBE14273:
	.loc 50 227 0
	str	r1, [r0, #84]
.LBE14272:
.LBE14271:
	.loc 40 1082 0
	mov	r0, #0
.LVL5194:
	bx	lr
.LVL5195:
.L4799:
.LBB14278:
.LBB14279:
.LBB14280:
	.loc 50 215 0
	ldr	r3, [r0, #84]
.LVL5196:
	.loc 50 217 0
	cmp	r3, #0
.LVL5197:
.LBB14281:
.LBB14282:
	.loc 4 33 0
	ldrne	r2, [r3, #12]
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LVL5198:
.LBE14282:
.LBE14281:
	.loc 50 219 0
	strne	r1, [r0, #84]
.LBE14280:
.LBE14279:
.LBE14278:
	.loc 40 1082 0
	mov	r0, #0
.LVL5199:
	bx	lr
.LVL5200:
.L4806:
	.loc 40 1074 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14283:
.LBB14277:
.LBB14276:
.LBB14275:
	bl	async_endpoint_ptr_set_aepBoundTCB.isra.215.part.216
.LVL5201:
.LBE14275:
.LBE14276:
.LBE14277:
.LBE14283:
	.cfi_endproc
.LFE688:
	.size	invokeTCB_AEPControl, .-invokeTCB_AEPControl
	.align	2
	.global	decodeBindAEP
	.syntax unified
	.arm
	.type	decodeBindAEP, %function
decodeBindAEP:
.LFB680:
	.loc 40 790 0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 40 790 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 14, -12
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 40 790 0
	add	ip, sp, #28
	stmib	ip, {r2, r3}
	add	r2, sp, #16
	ldr	r3, [sp, #32]
.LVL5202:
	stmdb	r2, {r0, r1}
	.loc 40 794 0
	cmp	r3, #0
	beq	.L4819
	ldr	r1, [r3]
.LVL5203:
.LBB14284:
.LBB14285:
	.loc 4 997 0
	and	r3, r1, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r1
	.loc 4 998 0
	andne	r3, r1, #15
.LBE14285:
.LBE14284:
	.loc 40 800 0
	cmp	r3, #6
	beq	.L4812
	.loc 40 801 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	movw	r2, #801
	ldr	r1, .L4822
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5204:
	movw	r0, #:lower16:.LC235
	movt	r0, #:upper16:.LC235
.L4818:
	.loc 40 816 0
	bl	kprintf
.LVL5205:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5206:
	.loc 40 817 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L4809:
	.loc 40 823 0
	mov	r0, #3
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.L4812:
	.cfi_restore_state
	ldr	r3, [sp, #8]
.LVL5207:
.LBB14286:
.LBB14287:
	.loc 4 1576 0
	and	r2, r3, #15
	cmp	r2, #12
	bne	.L4820
.LVL5208:
.LBE14287:
.LBE14286:
	.loc 40 806 0
	bic	r5, r3, #15
.LVL5209:
	.loc 40 808 0
	ldr	r3, [r5, #84]
	cmp	r3, #0
	beq	.L4814
	.loc 40 809 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movt	r0, #:upper16:.LC3
	ldr	r3, [r3]
	movw	r2, #809
	ldr	r1, .L4822
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5210:
	movw	r0, #:lower16:.LC236
	movt	r0, #:upper16:.LC236
	b	.L4818
.LVL5211:
.L4819:
	.loc 40 795 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #795
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L4822
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5212:
	movw	r0, #:lower16:.LC234
	movt	r0, #:upper16:.LC234
	bl	kprintf
.LVL5213:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5214:
	.loc 40 796 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
	.loc 40 797 0
	b	.L4809
.LVL5215:
.L4814:
.LBB14289:
.LBB14290:
	.loc 4 1356 0
	and	r3, r1, #15
	cmp	r3, #6
	bne	.L4821
.LBE14290:
.LBE14289:
	.loc 40 814 0
	bic	r4, r1, #15
.LVL5216:
	.loc 40 815 0
	ldr	r3, [r4, #4]
	bics	r3, r3, #15
	.loc 40 816 0
	movw	r3, #:lower16:ksCurThread
	.loc 40 815 0
	beq	.L4816
	.loc 40 816 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	mov	r2, #816
	ldr	r1, .L4822
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5217:
	movw	r0, #:lower16:.LC237
	movt	r0, #:upper16:.LC237
	b	.L4818
.L4816:
	.loc 40 821 0
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL5218:
	.loc 40 822 0
	mov	r1, r4
	mov	r0, r5
	.loc 40 823 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL5219:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	.loc 40 822 0
	b	invokeTCB_AEPControl
.LVL5220:
.L4820:
	.cfi_restore_state
.LBB14292:
.LBB14288:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5221:
.L4821:
.LBE14288:
.LBE14292:
.LBB14293:
.LBB14291:
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL5222:
.L4823:
	.align	2
.L4822:
	.word	.LANCHOR6-3832
.LBE14291:
.LBE14293:
	.cfi_endproc
.LFE680:
	.size	decodeBindAEP, .-decodeBindAEP
	.align	2
	.global	setThreadName
	.syntax unified
	.arm
	.type	setThreadName, %function
setThreadName:
.LFB689:
	.loc 40 1087 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5223:
.LBB14294:
.LBB14295:
	.loc 54 26 0
	ldrb	r3, [r1]	@ zero_extendqisi2
.LBE14295:
.LBE14294:
	.loc 40 1088 0
	add	ip, r0, #140
.LVL5224:
.LBB14297:
.LBB14296:
	.loc 54 26 0
	cmp	r3, #0
	.loc 54 27 0
	strbne	r3, [r0, #140]
.LVL5225:
	movne	r0, ip
.LVL5226:
	movne	r3, #1
	.loc 54 26 0
	bne	.L4828
	b	.L4826
.LVL5227:
.L4827:
	add	r3, r3, #1
.LVL5228:
	.loc 54 27 0
	strb	r2, [r0, #1]!
.LVL5229:
	.loc 54 26 0
	cmp	r3, #115
	beq	.L4826
.LVL5230:
.L4828:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L4827
.LVL5231:
.L4826:
	.loc 54 29 0
	mov	r2, #0
	strb	r2, [ip, r3]
.LVL5232:
.LBE14296:
.LBE14297:
	.loc 40 1089 0
	bx	lr
	.cfi_endproc
.LFE689:
	.size	setThreadName, .-setThreadName
	.section	.boot.text
	.align	2
	.global	get_num_avail_p_regs
	.syntax unified
	.arm
	.type	get_num_avail_p_regs, %function
get_num_avail_p_regs:
.LFB693:
	.file 55 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/plat/imx6/machine/hardware.c"
	.loc 55 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 55 37 0
	mov	r0, #1
	bx	lr
	.cfi_endproc
.LFE693:
	.size	get_num_avail_p_regs, .-get_num_avail_p_regs
	.align	2
	.global	get_avail_p_reg
	.syntax unified
	.arm
	.type	get_avail_p_reg, %function
get_avail_p_reg:
.LFB694:
	.loc 55 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5233:
	.loc 55 42 0
	movw	r3, #:lower16:.LANCHOR8
	.loc 55 41 0
	mov	r2, r0
	.loc 55 42 0
	movt	r3, #:upper16:.LANCHOR8
	add	r1, r3, r1, lsl #3
.LVL5234:
	ldm	r1, {r0, r1}
.LVL5235:
	stm	r2, {r0, r1}
	.loc 55 43 0
	mov	r0, r2
	bx	lr
	.cfi_endproc
.LFE694:
	.size	get_avail_p_reg, .-get_avail_p_reg
	.align	2
	.global	get_num_dev_p_regs
	.syntax unified
	.arm
	.type	get_num_dev_p_regs, %function
get_num_dev_p_regs:
.LFB695:
	.loc 55 173 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 55 175 0
	mov	r0, #118
	bx	lr
	.cfi_endproc
.LFE695:
	.size	get_num_dev_p_regs, .-get_num_dev_p_regs
	.align	2
	.global	get_dev_p_reg
	.syntax unified
	.arm
	.type	get_dev_p_reg, %function
get_dev_p_reg:
.LFB696:
	.loc 55 179 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5236:
	.loc 55 180 0
	movw	r3, #:lower16:.LANCHOR8
	.loc 55 179 0
	mov	r2, r0
	.loc 55 180 0
	movt	r3, #:upper16:.LANCHOR8
	add	r1, r3, r1, lsl #3
.LVL5237:
	add	r1, r1, #8
	ldm	r1, {r0, r1}
.LVL5238:
	stm	r2, {r0, r1}
	.loc 55 181 0
	mov	r0, r2
	bx	lr
	.cfi_endproc
.LFE696:
	.size	get_dev_p_reg, .-get_dev_p_reg
	.text
	.align	2
	.global	isReservedIRQ
	.syntax unified
	.arm
	.type	isReservedIRQ, %function
isReservedIRQ:
.LFB697:
	.loc 55 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5239:
	.loc 55 189 0
	sub	r0, r0, #29
.LVL5240:
	clz	r0, r0
	lsr	r0, r0, #5
	bx	lr
	.cfi_endproc
.LFE697:
	.size	isReservedIRQ, .-isReservedIRQ
	.section	.boot.text
	.align	2
	.global	map_kernel_devices
	.syntax unified
	.arm
	.type	map_kernel_devices, %function
map_kernel_devices:
.LFB699:
	.loc 55 205 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5241:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB14358:
.LBB14359:
	.loc 11 136 0
	mov	r0, #32768
.LBE14359:
.LBE14358:
	.loc 55 205 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
.LBB14361:
.LBB14360:
	.loc 11 136 0
	mov	r4, #0
	mov	r5, #1
	movw	r6, #:lower16:.LANCHOR5
	movt	r6, #:upper16:.LANCHOR5
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	movt	r0, 525
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp]
	bl	pte_pte_small_new.constprop.290
.LVL5242:
	str	r0, [r6, #56]
.LVL5243:
.LBE14360:
.LBE14361:
.LBB14362:
.LBB14363:
	mov	r0, #49152
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	movt	r0, 523
	str	r4, [sp, #4]
	str	r5, [sp]
	bl	pte_pte_small_new.constprop.290
.LVL5244:
.LBE14363:
.LBE14362:
.LBB14365:
.LBB14366:
	mov	r3, r4
.LBE14366:
.LBE14365:
.LBB14368:
.LBB14364:
	str	r0, [r6, #60]
.LVL5245:
.LBE14364:
.LBE14368:
.LBB14369:
.LBB14367:
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	mov	r0, #10485760
	str	r5, [sp, #8]
	str	r4, [sp, #4]
	str	r5, [sp]
	bl	pte_pte_small_new.constprop.290
.LVL5246:
	str	r0, [r6, #48]
.LVL5247:
.LBE14367:
.LBE14369:
.LBB14370:
.LBB14371:
	mov	r0, #4096
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	movt	r0, 160
	str	r4, [sp, #4]
	str	r5, [sp]
	bl	pte_pte_small_new.constprop.290
.LVL5248:
	str	r0, [r6, #52]
.LVL5249:
.LBE14371:
.LBE14370:
.LBB14372:
.LBB14373:
	mov	r0, #8192
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	movt	r0, 160
	str	r4, [sp, #4]
	str	r5, [sp]
	bl	pte_pte_small_new.constprop.290
.LVL5250:
	str	r0, [r6, #44]
.LVL5251:
.LBE14373:
.LBE14372:
.LBB14374:
.LBB14375:
	mov	r0, #32768
	str	r4, [sp, #4]
	mov	r3, r4
	str	r5, [sp]
	mov	r2, r4
	mov	r1, r4
	movt	r0, 542
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	bl	pte_pte_small_new.constprop.290
.LVL5252:
	str	r0, [r6, #36]
.LVL5253:
.LBE14375:
.LBE14374:
	.loc 55 280 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE699:
	.size	map_kernel_devices, .-map_kernel_devices
	.text
	.align	2
	.global	init_serial
	.syntax unified
	.arm
	.type	init_serial, %function
init_serial:
.LFB700:
	.loc 2 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 61 0
	mvn	r3, #1040384
	ldr	r2, [r3, #-3943]
	tst	r2, #1
	beq	.L4842
.L4846:
.LBB14377:
	.loc 2 62 0
	ldr	r2, [r3, #-4095]
.LBE14377:
	.loc 2 61 0
	ldr	r2, [r3, #-3943]
	tst	r2, #1
	bne	.L4846
.L4842:
	.loc 2 65 0
	mvn	r3, #1040384
	ldr	r2, [r3, #-3951]
	bic	r2, r2, #63
	orr	r2, r2, #1
	str	r2, [r3, #-3951]
.LVL5254:
	.loc 2 69 0
	ldr	r2, [r3, #-3967]
	bic	r2, r2, #45056
	bic	r2, r2, #68
	orr	r2, r2, #512
	str	r2, [r3, #-3967]
.LVL5255:
	.loc 2 72 0
	ldr	r2, [r3, #-3959]
	bic	r2, r2, #14912
	bic	r2, r2, #57
	str	r2, [r3, #-3959]
.LVL5256:
	.loc 2 75 0
	ldr	r2, [r3, #-3955]
	bic	r2, r2, #460
	bic	r2, r2, #2
	orr	r2, r2, #1
	str	r2, [r3, #-3955]
.LVL5257:
	.loc 2 78 0
	ldr	r2, [r3, #-3963]
	bic	r2, r2, #32768
	bic	r2, r2, #24
	orr	r2, r2, #1
	str	r2, [r3, #-3963]
	bx	lr
	.cfi_endproc
.LFE700:
	.size	init_serial, .-init_serial
	.align	2
	.global	handle_reset_on_serial
	.syntax unified
	.arm
	.type	handle_reset_on_serial, %function
handle_reset_on_serial:
.LFB701:
	.loc 2 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movw	r4, #:lower16:.LANCHOR2
.LBB14383:
	.loc 2 103 0
	movw	lr, #:lower16:.LC219
	movt	r4, #:upper16:.LANCHOR2
	movt	lr, #:upper16:.LC219
.LBE14383:
	.loc 2 84 0
	mov	r0, #0
	ldr	r1, [r4, #20]
	mvn	r2, #1040384
.LBB14384:
	.loc 2 88 0
	mov	ip, #512
.LBE14384:
	.loc 2 84 0
	b	.L4850
.LVL5258:
.L4851:
	mov	r0, #1
.L4850:
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L4861
.LBB14385:
	.loc 2 86 0
	ldr	r3, [r2, #-4095]
.LVL5259:
	.loc 2 88 0
	str	ip, [r2, #-3947]
	.loc 2 89 0
	ldrb	r0, [r1]	@ zero_extendqisi2
	uxtb	r3, r3
	cmp	r0, r3
	.loc 2 103 0
	movne	r1, lr
	.loc 2 89 0
	bne	.L4851
	.loc 2 91 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	.loc 2 90 0
	add	r3, r1, #1
.LVL5260:
	mov	r1, r3
	.loc 2 91 0
	cmp	r5, #0
	bne	.L4851
.LBE14385:
.LBB14386:
.LBB14387:
.LBB14388:
.LBB14389:
	.loc 2 95 0
	movw	r0, #:lower16:.LC221
	str	r3, [r4, #20]
.LVL5261:
	movt	r0, #:upper16:.LC221
	bl	kprintf
.LVL5262:
	.loc 2 96 0
	mvn	r2, #1019904
	.loc 2 98 0
	movw	r3, #28927
	.loc 2 96 0
	ldr	r1, [r2, #-4095]
	.loc 2 98 0
	movt	r3, 65520
	mov	r0, #4
	.loc 2 96 0
	bic	r1, r1, #29360128
	str	r1, [r2, #-4095]
	.loc 2 97 0
	str	r5, [r2, #-4063]
	.loc 2 98 0
	strh	r0, [r3, #-255]	@ movhi
	.loc 2 99 0
	strh	r0, [r3, #-255]	@ movhi
.L4852:
	b	.L4852
.LVL5263:
.L4861:
	cmp	r0, #0
	strne	r1, [r4, #20]
	pop	{r4, r5, r6, pc}
.LBE14389:
.LBE14388:
.LBE14387:
.LBE14386:
	.cfi_endproc
.LFE701:
	.size	handle_reset_on_serial, .-handle_reset_on_serial
	.align	2
	.global	handleReservedIRQ
	.syntax unified
	.arm
	.type	handleReservedIRQ, %function
handleReservedIRQ:
.LFB698:
	.loc 55 194 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5264:
	.loc 55 195 0
	cmp	r0, #59
	.loc 55 194 0
	mov	r1, r0
	.loc 55 195 0
	beq	.L4864
	.loc 55 199 0
	movw	r0, #:lower16:.LC238
.LVL5265:
	movt	r0, #:upper16:.LC238
	b	kprintf
.LVL5266:
.L4864:
	.loc 55 196 0
	b	handle_reset_on_serial
.LVL5267:
	.cfi_endproc
.LFE698:
	.size	handleReservedIRQ, .-handleReservedIRQ
	.align	2
	.global	imx6_uart_putchar
	.syntax unified
	.arm
	.type	imx6_uart_putchar, %function
imx6_uart_putchar:
.LFB702:
	.loc 2 110 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5268:
.LBB14398:
.LBB14399:
	.loc 2 119 0
	mvn	r2, #1040384
.L4866:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L4866
.LBE14399:
.LBE14398:
	.loc 2 112 0
	cmp	r0, #10
.LBB14401:
.LBB14400:
	.loc 2 120 0
	str	r0, [r2, #-4031]
.LVL5269:
.LBE14400:
.LBE14401:
	.loc 2 112 0
	bxne	lr
.LBB14402:
.LBB14403:
.LBB14404:
	.loc 2 119 0
	mvn	r2, #1040384
.L4868:
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L4868
	.loc 2 120 0
	mov	r3, #13
	str	r3, [r2, #-4031]
	bx	lr
.LBE14404:
.LBE14403:
.LBE14402:
	.cfi_endproc
.LFE702:
	.size	imx6_uart_putchar, .-imx6_uart_putchar
	.align	2
	.global	putDebugChar
	.syntax unified
	.arm
	.type	putDebugChar, %function
putDebugChar:
.LFB703:
	.loc 2 118 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5270:
	.loc 2 119 0
	mvn	r2, #1040384
.L4874:
	.loc 2 119 0 is_stmt 0 discriminator 1
	ldr	r3, [r2, #-3943]
	tst	r3, #16384
	beq	.L4874
	.loc 2 120 0 is_stmt 1
	str	r0, [r2, #-4031]
	bx	lr
	.cfi_endproc
.LFE703:
	.size	putDebugChar, .-putDebugChar
	.align	2
	.global	getDebugChar
	.syntax unified
	.arm
	.type	getDebugChar, %function
getDebugChar:
.LFB704:
	.loc 2 124 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 125 0
	mvn	r2, #1040384
.L4878:
	.loc 2 125 0 is_stmt 0 discriminator 1
	ldr	r3, [r2, #-3943]
	tst	r3, #1
	beq	.L4878
	.loc 2 126 0 is_stmt 1
	ldr	r0, [r2, #-4095]
	.loc 2 127 0
	uxtb	r0, r0
	bx	lr
	.cfi_endproc
.LFE704:
	.size	getDebugChar, .-getDebugChar
	.align	2
	.global	strnlen
	.syntax unified
	.arm
	.type	strnlen, %function
strnlen:
.LFB705:
	.loc 54 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5271:
	.loc 54 19 0
	cmp	r1, #0
	beq	.L4882
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4884
	mov	r3, #0
	b	.L4883
.LVL5272:
.L4890:
	.loc 54 19 0 is_stmt 0 discriminator 3
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L4884
.LVL5273:
.L4883:
	.loc 54 19 0 discriminator 4
	add	r3, r3, #1
.LVL5274:
	cmp	r1, r3
	bne	.L4890
.LVL5275:
.L4882:
	.loc 54 21 0 is_stmt 1
	mov	r0, r1
	bx	lr
.L4884:
	.loc 54 19 0
	mov	r1, r3
.LVL5276:
	.loc 54 21 0
	mov	r0, r1
	bx	lr
	.cfi_endproc
.LFE705:
	.size	strnlen, .-strnlen
	.align	2
	.global	strlcpy
	.syntax unified
	.arm
	.type	strlcpy, %function
strlcpy:
.LFB706:
	.loc 54 24 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5277:
	.loc 54 26 0
	cmp	r2, #1
	.loc 54 24 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 54 24 0
	mov	r4, r0
	.loc 54 26 0
	bls	.L4894
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4895
	sub	lr, r0, #1
	mov	ip, #1
	b	.L4893
.LVL5278:
.L4899:
	.loc 54 26 0 is_stmt 0 discriminator 3
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4892
	mov	ip, r0
.LVL5279:
.L4893:
	.loc 54 26 0 discriminator 4
	add	r0, ip, #1
	.loc 54 27 0 is_stmt 1 discriminator 4
	strb	r3, [lr, #1]!
.LVL5280:
	.loc 54 26 0 discriminator 4
	cmp	r0, r2
	bne	.L4899
.LVL5281:
.L4892:
	.loc 54 29 0
	mov	r3, #0
	.loc 54 31 0
	mov	r0, ip
	.loc 54 29 0
	strb	r3, [r4, ip]
	.loc 54 31 0
	pop	{r4, pc}
.LVL5282:
.L4894:
	.loc 54 26 0
	mov	ip, #0
	b	.L4892
.L4895:
	mov	ip, r3
	b	.L4892
	.cfi_endproc
.LFE706:
	.size	strlcpy, .-strlcpy
	.align	2
	.global	strlcat
	.syntax unified
	.arm
	.type	strlcat, %function
strlcat:
.LFB707:
	.loc 54 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5283:
	.loc 54 37 0
	cmp	r2, #0
.LVL5284:
	beq	.L4917
	.loc 54 34 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 54 37 0
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4907
	add	r4, r0, #1
	.loc 54 37 0 is_stmt 0 discriminator 4
	mov	ip, #0
	b	.L4903
.LVL5285:
.L4920:
	.loc 54 37 0 discriminator 3
	ldrb	r5, [lr]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L4919
	mov	ip, r3
.LVL5286:
.L4903:
	.loc 54 37 0 discriminator 4
	add	r3, ip, #1
.LVL5287:
	mov	lr, r4
	cmp	r2, r3
	add	r4, r4, #1
	bne	.L4920
.LVL5288:
	.loc 54 47 0 is_stmt 1
	mov	r0, r2
.LVL5289:
	pop	{r4, r5, pc}
.LVL5290:
.L4919:
	add	ip, ip, #2
.LVL5291:
.L4902:
	.loc 54 41 0 discriminator 1
	cmp	ip, r2
	bcs	.L4910
	.loc 54 41 0 is_stmt 0
	ldrb	r4, [r1]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L4910
	add	r1, r1, #1
.LVL5292:
	b	.L4906
.LVL5293:
.L4921:
	.loc 54 41 0 discriminator 2
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L4918
	mov	ip, lr
.LVL5294:
.L4906:
	.loc 54 41 0 discriminator 3
	add	lr, ip, #1
	.loc 54 42 0 is_stmt 1 discriminator 3
	strb	r4, [r0, r3]
.LVL5295:
	.loc 54 41 0 discriminator 3
	cmp	r2, lr
	mov	r3, ip
	bne	.L4921
.L4918:
	add	lr, r0, ip
	.loc 54 41 0 is_stmt 0
	mov	r2, ip
.LVL5296:
.L4904:
	.loc 54 44 0 is_stmt 1
	mov	r3, #0
	.loc 54 47 0
	mov	r0, r2
.LVL5297:
	.loc 54 44 0
	strb	r3, [lr]
.LVL5298:
	.loc 54 47 0
	pop	{r4, r5, pc}
.LVL5299:
.L4917:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	mov	r0, r2
.LVL5300:
	bx	lr
.LVL5301:
.L4907:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 54 37 0
	mov	lr, r0
	mov	ip, #1
	b	.L4902
.LVL5302:
.L4910:
	.loc 54 41 0
	mov	r2, r3
.LVL5303:
	b	.L4904
	.cfi_endproc
.LFE707:
	.size	strlcat, .-strlcat
	.align	2
	.global	memzero
	.syntax unified
	.arm
	.type	memzero, %function
memzero:
.LFB708:
	.file 56 "/home/mint/seL4/dhs-demo-feb-2018/kernel/src/util.c"
	.loc 56 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5304:
	.loc 56 26 0
	tst	r0, #3
	.loc 56 22 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 56 26 0
	bne	.L4930
	.loc 56 27 0
	ands	r3, r1, #3
	bne	.L4924
	.loc 56 35 0
	cmp	r1, #0
	beq	.L4931
.LVL5305:
.L4926:
	subs	r1, r1, #4
	.loc 56 36 0
	str	r3, [r0], #4
.LVL5306:
	.loc 56 35 0
	bne	.L4926
	pop	{r4, pc}
.LVL5307:
.L4931:
	pop	{r4, pc}
.L4930:
.LVL5308:
.LBB14407:
.LBB14408:
	.loc 56 26 0
	movw	r1, #:lower16:.LC239
.LVL5309:
	movw	r0, #:lower16:.LC240
.LVL5310:
	movt	r1, #:upper16:.LC239
	movt	r0, #:upper16:.LC240
	ldr	r3, .L4932
	mov	r2, #26
	bl	_assert_fail
.LVL5311:
.L4924:
.LBE14408:
.LBE14407:
	.loc 56 27 0 discriminator 1
	movw	r1, #:lower16:.LC239
.LVL5312:
	movw	r0, #:lower16:.LC241
.LVL5313:
	movt	r1, #:upper16:.LC239
	movt	r0, #:upper16:.LC241
	ldr	r3, .L4932
	mov	r2, #27
	bl	_assert_fail
.LVL5314:
.L4933:
	.align	2
.L4932:
	.word	.LANCHOR6-3816
	.cfi_endproc
.LFE708:
	.size	memzero, .-memzero
	.section	.boot.text
	.align	2
	.global	map_kernel_window
	.syntax unified
	.arm
	.type	map_kernel_window, %function
map_kernel_window:
.LFB324:
	.loc 11 152 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5315:
	ldr	r0, .L4941
	.loc 11 160 0
	mov	r3, #3584
	.loc 11 152 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB14458:
.LBB14459:
.LBB14460:
	.loc 4 897 0
	mov	r5, #0
	movw	r4, #1550
.LBE14460:
.LBE14459:
.LBE14458:
	.loc 11 152 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
.LBB14467:
.LBB14464:
.LBB14461:
	.loc 4 897 0
	movt	r5, 65520
	movt	r4, 4
.LBE14461:
.LBE14464:
.LBE14467:
	.loc 11 159 0
	mov	lr, #268435456
.LVL5316:
.L4938:
.LBB14468:
	.loc 11 179 0
	add	r1, r3, #16
.LBB14465:
.LBB14462:
	.loc 4 897 0
	and	r2, lr, r5
.LBE14462:
.LBE14465:
	.loc 11 179 0
	cmp	r3, r1
.LBB14466:
.LBB14463:
	.loc 4 897 0
	orr	r2, r2, r4
.LVL5317:
.LBE14463:
.LBE14466:
	.loc 11 179 0
	bcs	.L4936
	add	ip, r3, #1
	.loc 11 180 0
	str	r2, [r0]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #2
	.loc 11 180 0
	str	r2, [r0, #4]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #3
	.loc 11 180 0
	str	r2, [r0, #8]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #4
	.loc 11 180 0
	str	r2, [r0, #12]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #5
	.loc 11 180 0
	str	r2, [r0, #16]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #6
	.loc 11 180 0
	str	r2, [r0, #20]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #7
	.loc 11 180 0
	str	r2, [r0, #24]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #8
	.loc 11 180 0
	str	r2, [r0, #28]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #9
	.loc 11 180 0
	str	r2, [r0, #32]
	.loc 11 179 0
	cmp	ip, r1
	bcs	.L4936
	add	ip, r3, #10
	.loc 11 180 0
	str	r2, [r0, #36]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #11
	.loc 11 180 0
	str	r2, [r0, #40]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #12
	.loc 11 180 0
	str	r2, [r0, #44]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #13
	.loc 11 180 0
	str	r2, [r0, #48]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	ip, r3, #14
	.loc 11 180 0
	str	r2, [r0, #52]
	.loc 11 179 0
	cmp	r1, ip
	bls	.L4936
	add	r3, r3, #15
	.loc 11 180 0
	str	r2, [r0, #56]
	.loc 11 179 0
	cmp	r1, r3
	.loc 11 180 0
	strhi	r2, [r0, #60]
.L4936:
.LBE14468:
	.loc 11 162 0
	cmp	r1, #4080
.LBB14469:
	.loc 11 182 0
	add	lr, lr, #16777216
.LVL5318:
	add	r0, r0, #64
	mov	r3, r1
.LBE14469:
	.loc 11 162 0
	bne	.L4938
.LVL5319:
	.loc 11 245 0
	movw	r6, #:lower16:.LANCHOR5
	.loc 11 206 0
	ldr	r3, .L4941+4
	.loc 11 245 0
	movt	r6, #:upper16:.LANCHOR5
	.loc 11 206 0
	movw	lr, #1550
.LVL5320:
	.loc 11 245 0
	add	r0, r6, #32
	.loc 11 206 0
	mov	r5, lr
	.loc 11 245 0
	add	r2, r0, #805306368
	.loc 11 206 0
	add	r1, r3, #4096
	.loc 11 245 0
	bic	r2, r2, #1020
	.loc 11 206 0
	movt	lr, 12224
	.loc 11 245 0
	bic	r2, r2, #3
	.loc 11 206 0
	movw	r4, #1550
	.loc 11 245 0
	orr	r2, r2, #512
	.loc 11 227 0
	movw	ip, #1546
	.loc 11 245 0
	orr	r2, r2, #1
	.loc 11 206 0
	str	lr, [r1]
	.loc 11 245 0
	str	r2, [r1, #12]
	.loc 11 206 0
	movt	r5, 12240
	movw	r2, #1550
	.loc 11 227 0
	movt	ip, 12256
	.loc 11 206 0
	mov	lr, r4
	movt	r4, 12032
	str	r5, [r1, #4]
	movt	lr, 12048
	.loc 11 227 0
	str	ip, [r1, #8]
	.loc 11 206 0
	mov	ip, r2
	str	r4, [r3, #4048]
.LVL5321:
	mov	r1, r2
	movw	r4, #1550
	movt	r2, 12064
	str	lr, [r3, #4052]
.LVL5322:
	movt	ip, 12080
	str	r2, [r3, #4056]
.LVL5323:
	movt	r1, 12096
	mov	lr, r4
	movw	r2, #1550
	str	ip, [r3, #4060]
.LVL5324:
	movt	r4, 12112
	str	r1, [r3, #4064]
.LVL5325:
	movt	lr, 12128
	mov	ip, r2
	movw	r1, #1550
	str	r4, [r3, #4068]
.LVL5326:
	movt	r2, 12144
	str	lr, [r3, #4072]
.LVL5327:
	movt	ip, 12160
	mov	r4, r1
	movw	lr, #1550
	movt	lr, 12208
	str	r2, [r3, #4076]
.LVL5328:
	str	ip, [r3, #4080]
.LVL5329:
	movt	r1, 12176
	movt	r4, 12192
	.loc 11 228 0
	movw	r2, #:lower16:ksLog
	mov	ip, #0
.LBB14470:
.LBB14471:
	.loc 11 136 0
	mov	r5, #1
.LBE14471:
.LBE14470:
	.loc 11 206 0
	str	lr, [r3, #4092]
	.loc 11 228 0
	movt	ip, 65504
	movt	r2, #:upper16:ksLog
	.loc 11 206 0
	str	r1, [r3, #4084]
.LVL5330:
	str	r4, [r3, #4088]
.LVL5331:
	.loc 11 253 0
	mov	r1, #1024
.LBB14475:
.LBB14472:
	.loc 11 136 0
	mov	r4, #0
.LBE14472:
.LBE14475:
	.loc 11 228 0
	str	ip, [r2]
.LVL5332:
	.loc 11 253 0
	bl	memzero
.LVL5333:
.LBB14476:
.LBB14473:
	.loc 11 136 0
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	str	r5, [sp, #4]
	str	r5, [sp]
	ldr	r0, .L4941+8
.LVL5334:
	bl	pte_pte_small_new.constprop.290
.LVL5335:
.LBE14473:
.LBE14476:
.LBB14477:
.LBB14478:
	mov	ip, #2
.LBE14478:
.LBE14477:
.LBB14481:
.LBB14474:
	str	r0, [r6, #992]
.LVL5336:
.LBE14474:
.LBE14481:
.LBB14482:
.LBB14479:
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	str	ip, [sp]
	str	r4, [sp, #12]
	str	r5, [sp, #8]
	str	r5, [sp, #4]
	ldr	r0, .L4941+12
	bl	pte_pte_small_new.constprop.290
.LVL5337:
.LBE14479:
.LBE14482:
.LBB14483:
.LBB14484:
	str	r4, [sp, #12]
	mov	r3, r4
.LBE14484:
.LBE14483:
.LBB14486:
.LBB14480:
	str	r0, [r6, #1040]
.LVL5338:
.LBE14480:
.LBE14486:
.LBB14487:
.LBB14485:
	mov	r2, r4
	str	r5, [sp, #8]
	mov	r1, r4
	str	r5, [sp, #4]
	str	r5, [sp]
	ldr	r0, .L4941+16
	bl	pte_pte_small_new.constprop.290
.LVL5339:
	str	r0, [r6, #1052]
.LVL5340:
.LBE14485:
.LBE14487:
	.loc 11 292 0
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 11 291 0
	b	map_kernel_devices
.LVL5341:
.L4942:
	.align	2
.L4941:
	.word	.LANCHOR1+14352
	.word	.LANCHOR1+12288
	.word	arm_vector_table+805306368
	.word	.LANCHOR0+805306368
	.word	.LANCHOR9+805302312
	.cfi_endproc
.LFE324:
	.size	map_kernel_window, .-map_kernel_window
	.text
	.align	2
	.global	Arch_finaliseCap
	.syntax unified
	.arm
	.type	Arch_finaliseCap, %function
Arch_finaliseCap:
.LFB443:
	.loc 23 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5342:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 23 71 0
	add	r5, sp, #8
	mov	r6, r0
	mov	r4, r1
	stm	r5, {r1, r2}
.LBB14531:
.LBB14532:
	.loc 4 997 0
	and	r2, r1, #14
	cmp	r2, #14
	ldr	r7, [sp, #12]
.LVL5343:
	.loc 4 999 0
	uxtbeq	r2, r1
.LVL5344:
	.loc 4 998 0
	andne	r2, r1, #15
.LBE14532:
.LBE14531:
	.loc 23 72 0
	cmp	r2, #3
	beq	.L4947
	cmp	r2, #5
	beq	.L4948
	cmp	r2, #1
	beq	.L4972
.LVL5345:
.L4946:
.LBB14533:
.LBB14534:
	.loc 4 1020 0
	mov	r3, #0
.LBE14534:
.LBE14533:
	.loc 23 119 0
	mov	r0, r6
.LBB14536:
.LBB14535:
	.loc 4 1020 0
	str	r3, [r6]
	str	r3, [r6, #4]
.LVL5346:
.LBE14535:
.LBE14536:
	.loc 23 119 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5347:
.L4972:
	.cfi_restore_state
	.loc 23 98 0
	ldm	r5, {r0, r1}
.LVL5348:
	bl	cap_frame_cap_get_capFMappedObject
.LVL5349:
	subs	r1, r0, #0
	beq	.L4946
.LVL5350:
.LBB14537:
.LBB14538:
	.loc 4 1687 0
	and	r3, r4, #15
	cmp	r3, #1
	bne	.L4973
	.loc 4 1690 0
	lsr	r0, r4, #29
.LVL5351:
.LBE14538:
.LBE14537:
	.loc 23 99 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L4946
.L4958:
	.word	.L4957
	.word	.L4957
	.word	.L4959
	.word	.L4959
.LVL5352:
.L4948:
	.loc 23 74 0
	cmp	r3, #0
	beq	.L4946
.LVL5353:
.LBB14540:
.LBB14541:
.LBB14542:
	.loc 4 1886 0
	and	r3, r1, #15
.LVL5354:
	cmp	r3, #5
	bne	.L4974
.LVL5355:
.LBE14542:
.LBE14541:
	.loc 23 75 0
	bic	r4, r1, #16320
	bic	r4, r4, #63
.LVL5356:
	.loc 23 76 0
	mov	r0, r4
.LVL5357:
	bl	unmapAllPageTables
.LVL5358:
	.loc 23 77 0
	mov	r0, r4
	mov	r1, #14336
	bl	memzero
.LVL5359:
	b	.L4946
.LVL5360:
.L4947:
.LBE14540:
.LBB14545:
.LBB14546:
	.loc 4 1803 0
	and	r2, r1, #15
	cmp	r2, #3
	bne	.L4975
	.loc 4 1806 0
	bic	r8, r7, #4080
	bic	r8, r8, #15
.LBE14546:
.LBE14545:
	.loc 23 82 0
	cmp	r8, #0
	beq	.L4953
.LVL5361:
	.loc 23 83 0
	bic	r2, r1, #1020
	mov	r0, r8
.LVL5362:
	ubfx	r1, r7, #0, #12
.LVL5363:
	bic	r2, r2, #3
	str	r3, [sp, #4]
	bl	unmapPageTable
.LVL5364:
	ldr	r3, [sp, #4]
.LVL5365:
.L4953:
	.loc 23 88 0
	cmp	r3, #0
	beq	.L4946
.LVL5366:
	.loc 23 89 0
	bic	r2, r4, #1020
	ubfx	r1, r7, #0, #12
	bic	r2, r2, #3
	mov	r0, r8
	bl	unmapAllPages
.LVL5367:
	.loc 23 93 0
	ldm	r5, {r0, r1}
	bl	cap_get_capPtr
.LVL5368:
	mov	r4, r0
.LVL5369:
	ldm	r5, {r0, r1}
.LBB14548:
.LBB14549:
	.loc 14 331 0
	mov	r5, #1
.LVL5370:
.LBE14549:
.LBE14548:
	.loc 23 93 0
	bl	cap_get_capSizeBits
.LVL5371:
.LBB14557:
.LBB14556:
	.loc 14 331 0
	lsl	r5, r5, r0
	mov	r0, r4
.LVL5372:
	mov	r1, r5
	bl	memzero
.LVL5373:
.LBB14550:
.LBB14551:
	.loc 13 95 0
	add	r3, r5, r4
	lsr	r0, r4, #5
.LVL5374:
	sub	r3, r3, #1
	lsr	r3, r3, #5
	add	r3, r3, #1
	cmp	r0, r3
	bcs	.L4946
.L4965:
.LVL5375:
.LBB14552:
.LBB14553:
	.loc 14 212 0
	lsl	r2, r0, #5
.LVL5376:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB14554:
.LBB14555:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL5377:
	.arm
	.syntax unified
.LBE14555:
.LBE14554:
.LBE14553:
.LBE14552:
	.loc 13 95 0
	add	r0, r0, #1
.LVL5378:
	cmp	r0, r3
	bne	.L4965
	b	.L4946
.LVL5379:
.L4959:
.LBE14551:
.LBE14550:
.LBE14556:
.LBE14557:
	.loc 23 109 0
	bic	r3, r4, #-16777216
	ubfx	r2, r7, #0, #12
	bic	r3, r3, #15
	lsl	r3, r3, #8
	bl	unmapPagePDE
.LVL5380:
	.loc 23 113 0
	b	.L4946
.LVL5381:
.L4957:
	.loc 23 102 0
	bic	r3, r4, #-16777216
	ubfx	r2, r7, #0, #12
	bic	r3, r3, #15
	lsl	r3, r3, #8
	bl	unmapPagePTE
.LVL5382:
	.loc 23 106 0
	b	.L4946
.LVL5383:
.L4975:
.LBB14558:
.LBB14547:
	bl	cap_page_table_cap_get_capPTMappedObject.part.108
.LVL5384:
.L4973:
.LBE14547:
.LBE14558:
.LBB14559:
.LBB14539:
	bl	cap_frame_cap_get_capFSize.isra.121.part.122
.LVL5385:
.L4974:
.LBE14539:
.LBE14559:
.LBB14560:
.LBB14544:
.LBB14543:
	bl	cap_page_directory_cap_get_capPDBasePtr.isra.91.part.92
.LVL5386:
.LBE14543:
.LBE14544:
.LBE14560:
	.cfi_endproc
.LFE443:
	.size	Arch_finaliseCap, .-Arch_finaliseCap
	.align	2
	.global	finaliseCap
	.syntax unified
	.arm
	.type	finaliseCap, %function
finaliseCap:
.LFB645:
	.loc 52 91 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5387:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB14615:
.LBB14616:
.LBB14617:
.LBB14618:
	.loc 4 997 0
	and	lr, r1, #14
	cmp	lr, #14
.LBE14618:
.LBE14617:
.LBE14616:
.LBE14615:
	.loc 52 91 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
.LVL5388:
	.loc 52 91 0
	mov	ip, sp
	mov	r4, r0
	stm	sp, {r1, r2}
.LVL5389:
	mov	r2, r1
.LVL5390:
.LBB14622:
.LBB14621:
.LBB14620:
.LBB14619:
	.loc 4 997 0
	beq	.L4977
.LBE14619:
.LBE14620:
.LBE14621:
.LBE14622:
	.loc 52 94 0
	tst	r1, #1
.LBB14623:
.LBB14624:
	.loc 4 998 0
	andeq	r1, r1, #15
.LBE14624:
.LBE14623:
	.loc 52 94 0
	bne	.L4978
.L4982:
	.loc 52 100 0
	cmp	r1, #6
	ldr	r0, [sp, #4]
.LVL5391:
	beq	.L4984
	bhi	.L4985
	cmp	r1, #0
	beq	.L4998
	cmp	r1, #4
	bne	.L4983
	.loc 52 102 0
	cmp	r3, #0
	beq	.L4998
.LVL5392:
.LBB14626:
.LBB14627:
	.loc 4 1134 0
	and	r2, r2, #15
	cmp	r2, #4
	bne	.L5045
.LBE14627:
.LBE14626:
	.loc 52 103 0
	bic	r0, r0, #15
	bl	epCancelAll
.LVL5393:
.L4998:
	.loc 52 210 0
	mov	r3, #0
	mvn	r2, #0
	str	r3, [r4]
	str	r3, [r4, #4]
	strh	r2, [r4, #8]	@ movhi
.LVL5394:
.L4976:
	.loc 52 211 0
	mov	r0, r4
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5395:
.L4985:
	.cfi_restore_state
	.loc 52 100 0
	cmp	r1, #8
	bne	.L5046
.LVL5396:
.LBB14629:
.LBB14630:
.LBB14631:
	.loc 4 1453 0
	and	r3, r2, #15
.LVL5397:
	cmp	r3, #8
	bne	.L5010
.LVL5398:
.LBE14631:
.LBE14630:
	.loc 52 129 0
	bic	r2, r2, #508
	bic	r2, r2, #3
.LBB14633:
.LBB14634:
	.loc 4 1426 0
	ldr	r3, [r2, #32]
.LBE14634:
.LBE14633:
	.loc 52 129 0
	add	r2, r2, #32
.LVL5399:
.LBB14639:
.LBB14635:
	.loc 4 1426 0
	and	r3, r3, #15
	cmp	r3, #8
	bne	.L5047
	.loc 4 1432 0
	ldr	r3, [r2, #4]
.LBE14635:
.LBE14639:
	.loc 52 134 0
	mov	r1, #0
	mvn	r0, #0
	str	r1, [r4]
	strh	r0, [r4, #8]	@ movhi
.LBE14629:
	.loc 52 211 0
	mov	r0, r4
.LBB14644:
.LBB14640:
.LBB14636:
	.loc 4 1432 0
	and	r3, r3, #15
.LBE14636:
.LBE14640:
	.loc 52 134 0
	str	r1, [r4, #4]
.LBB14641:
.LBB14637:
	.loc 4 1432 0
	str	r3, [r2, #4]
.LVL5400:
.LBE14637:
.LBE14641:
.LBE14644:
	.loc 52 211 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5401:
.L4977:
	.cfi_restore_state
	.loc 52 94 0
	tst	r1, #1
.LBB14645:
.LBB14625:
	.loc 4 999 0
	uxtbeq	r1, r1
.LBE14625:
.LBE14645:
	.loc 52 94 0
	beq	.L4982
.L4978:
	.loc 52 95 0
	ldm	ip, {r1, r2}
	add	r0, sp, #12
.LVL5402:
	bl	Arch_finaliseCap
.LVL5403:
	ldr	r2, [sp, #16]
.LVL5404:
	.loc 52 97 0
	mvn	r1, #0
	ldr	r3, [sp, #12]
	.loc 52 211 0
	mov	r0, r4
	.loc 52 97 0
	strh	r1, [r4, #8]	@ movhi
	str	r2, [r4, #4]
	str	r3, [r4]
	.loc 52 211 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5405:
.L5046:
	.cfi_restore_state
	.loc 52 100 0
	cmp	r1, #62
	beq	.L4998
.L4983:
	.loc 52 143 0
	ldr	r1, [sp, #40]
	cmp	r1, #0
	bne	.L5048
.LVL5406:
.LBB14646:
.LBB14647:
	.loc 4 997 0
	cmp	lr, #14
	.loc 4 999 0
	uxtbeq	r1, r2
	.loc 4 998 0
	andne	r1, r2, #15
.LBE14647:
.LBE14646:
	.loc 52 147 0
	sub	r1, r1, #10
	cmp	r1, #36
	ldrls	pc, [pc, r1, asl #2]
	b	.L4998
.L5000:
	.word	.L4999
	.word	.L4998
	.word	.L5001
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L5002
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L4998
	.word	.L5003
.L4984:
	.loc 52 111 0
	cmp	r3, #0
	beq	.L4998
.LVL5407:
.LBB14648:
.LBB14649:
.LBB14650:
	.loc 4 1356 0
	and	r3, r2, #15
.LVL5408:
	cmp	r3, #6
	bne	.L5049
.LBE14650:
.LBE14649:
	.loc 52 112 0
	bic	r0, r2, #15
.LVL5409:
.LBB14652:
.LBB14653:
	.loc 4 21 0
	ldr	r3, [r0, #12]
.LVL5410:
.LBE14653:
.LBE14652:
	.loc 52 115 0
	bics	r3, r3, #15
.LVL5411:
	beq	.L4992
.LVL5412:
.LBB14654:
.LBB14655:
	.loc 50 215 0
	ldr	r1, [r3, #84]
.LVL5413:
	.loc 50 217 0
	cmp	r1, #0
.LVL5414:
.LBB14656:
.LBB14657:
	.loc 4 33 0
	ldrne	r2, [r1, #12]
.LBE14657:
.LBE14656:
	.loc 50 219 0
	movne	ip, #0
.LBB14659:
.LBB14658:
	.loc 4 33 0
	andne	r2, r2, #15
	strne	r2, [r1, #12]
.LVL5415:
.LBE14658:
.LBE14659:
	.loc 50 219 0
	strne	ip, [r3, #84]
.LVL5416:
.L4992:
.LBE14655:
.LBE14654:
	.loc 52 119 0
	bl	aepCancelAll
.LVL5417:
	b	.L4998
.LVL5418:
.L5003:
.LBE14648:
	.loc 52 193 0
	mvn	r3, #0
.LVL5419:
	str	r2, [r4]
	str	r0, [r4, #4]
	strh	r3, [r4, #8]	@ movhi
	b	.L4976
.LVL5420:
.L5002:
	.loc 52 196 0
	cmp	r3, #0
	beq	.L4998
.LVL5421:
.LBB14661:
.LBB14662:
.LBB14663:
	.loc 4 1931 0
	uxtb	r2, r2
	cmp	r2, #30
	bne	.L5050
.LBE14663:
.LBE14662:
	.loc 52 197 0
	uxtb	r5, r0
.LVL5422:
	.loc 52 199 0
	mov	r0, r5
	bl	deletingIRQHandler
.LVL5423:
	.loc 52 203 0
	mov	r3, #0
	strh	r5, [r4, #8]	@ movhi
	str	r3, [r4]
	str	r3, [r4, #4]
	b	.L4976
.LVL5424:
.L5001:
.LBE14661:
	.loc 52 163 0
	cmp	r3, #0
	beq	.L4998
.LVL5425:
.LBB14666:
.LBB14667:
.LBB14668:
	.loc 4 1576 0
	and	r3, r2, #15
.LVL5426:
	cmp	r3, #12
	bne	.L5051
.LBE14668:
.LBE14667:
	.loc 52 168 0
	bic	r0, r2, #15
.LVL5427:
	.loc 52 169 0
	bic	r5, r2, #508
.LBB14670:
.LBB14671:
	.loc 50 215 0
	ldr	r3, [r0, #84]
.LBE14671:
.LBE14670:
	.loc 52 169 0
	bic	r5, r5, #3
.LVL5428:
.LBB14677:
.LBB14676:
	.loc 50 217 0
	cmp	r3, #0
.LVL5429:
.LBB14672:
.LBB14673:
	.loc 4 33 0
	ldrne	r2, [r3, #12]
.LBE14673:
.LBE14672:
	.loc 50 219 0
	movne	r1, #0
.LBB14675:
.LBB14674:
	.loc 4 33 0
	andne	r2, r2, #15
	strne	r2, [r3, #12]
.LVL5430:
.LBE14674:
.LBE14675:
	.loc 50 219 0
	strne	r1, [r0, #84]
.LVL5431:
.LBE14676:
.LBE14677:
	.loc 52 171 0
	bl	suspend
.LVL5432:
	ldr	r3, [r5, #32]
	.loc 52 172 0
	add	r1, r5, #32
.LVL5433:
.LBB14678:
.LBB14679:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL5434:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE14679:
.LBE14678:
	.loc 52 173 0
	cmp	r2, #8
	beq	.L5052
.L5009:
.LVL5435:
	.loc 52 185 0
	eor	r2, r5, #5
.LVL5436:
	movw	r1, #8238
.LVL5437:
	mvn	r3, #0
	stm	r4, {r1, r2}
	strh	r3, [r4, #8]	@ movhi
	b	.L4976
.LVL5438:
.L4999:
.LBE14666:
	.loc 52 149 0
	cmp	r3, #0
	beq	.L4998
.LVL5439:
.LBB14683:
.LBB14684:
	.loc 4 1519 0
	and	r3, r2, #15
.LVL5440:
	cmp	r3, #10
	bne	.L5053
	.loc 4 1522 0
	ubfx	r0, r0, #18, #5
.LVL5441:
.LBE14684:
.LBE14683:
	.loc 52 157 0
	mov	r3, #1
	add	r1, r0, r3
.LBB14686:
.LBB14687:
	.loc 4 1548 0
	bic	r2, r2, #31
.LVL5442:
.LBE14687:
.LBE14686:
	.loc 52 157 0
	lsl	r1, r3, r1
.LVL5443:
	eor	r3, r2, r3, lsl r0
.LVL5444:
	lsl	r0, r0, #8
.LVL5445:
	sub	r1, r1, #1
	and	r1, r1, r3
	orr	r3, r0, #46
.LVL5446:
	eor	r2, r2, r1
.LVL5447:
	mvn	r1, #0
	str	r2, [r4, #4]
	str	r3, [r4]
	strh	r1, [r4, #8]	@ movhi
	b	.L4976
.LVL5448:
.L5052:
.LBB14688:
.LBB14680:
.LBB14681:
	.loc 4 1453 0
	and	r2, r3, #15
	cmp	r2, #8
	bne	.L5010
.LVL5449:
.LBE14681:
.LBE14680:
	.loc 52 174 0
	bics	r3, r3, #31
	.loc 52 175 0
	streq	r3, [r5, #32]
	streq	r3, [r1, #4]
	.loc 52 174 0
	beq	.L5009
	.loc 52 174 0 is_stmt 0 discriminator 1
	movw	r1, #:lower16:.LC205
.LVL5450:
	movw	r0, #:lower16:.LC243
	movt	r1, #:upper16:.LC205
	movt	r0, #:upper16:.LC243
	ldr	r3, .L5054
	mov	r2, #174
	bl	_assert_fail
.LVL5451:
.L5047:
.LBE14688:
.LBB14689:
.LBB14642:
.LBB14638:
	bl	cap_reply_cap_ptr_set_capCallerSlot.part.219
.LVL5452:
.L5010:
.LBE14638:
.LBE14642:
.LBB14643:
.LBB14632:
	bl	cap_reply_cap_get_capTCBPtr.isra.69.part.70
.LVL5453:
.L5048:
.LBE14632:
.LBE14643:
.LBE14689:
	.loc 52 144 0 is_stmt 1
	movw	r1, #:lower16:.LC205
	movw	r0, #:lower16:.LC242
	movt	r1, #:upper16:.LC205
	movt	r0, #:upper16:.LC242
	ldr	r3, .L5054+4
.LVL5454:
	mov	r2, #144
	bl	_fail
.LVL5455:
.L5050:
.LBB14690:
.LBB14665:
.LBB14664:
	bl	cap_irq_handler_cap_get_capIRQ.part.180
.LVL5456:
.L5049:
.LBE14664:
.LBE14665:
.LBE14690:
.LBB14691:
.LBB14660:
.LBB14651:
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL5457:
.L5045:
.LBE14651:
.LBE14660:
.LBE14691:
.LBB14692:
.LBB14628:
	bl	cap_endpoint_cap_get_capEPPtr.part.82
.LVL5458:
.L5051:
.LBE14628:
.LBE14692:
.LBB14693:
.LBB14682:
.LBB14669:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5459:
.L5053:
.LBE14669:
.LBE14682:
.LBE14693:
.LBB14694:
.LBB14685:
	bl	cap_cnode_cap_get_capCNodeRadix.part.78
.LVL5460:
.L5055:
	.align	2
.L5054:
	.word	.LANCHOR6-3796
	.word	.LANCHOR6-3808
.LBE14685:
.LBE14694:
	.cfi_endproc
.LFE645:
	.size	finaliseCap, .-finaliseCap
	.align	2
	.global	doReplyTransfer
	.syntax unified
	.arm
	.type	doReplyTransfer, %function
doReplyTransfer:
.LFB558:
	.loc 26 136 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5461:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 26 137 0
	ldr	r3, [r1, #72]
	and	r3, r3, #15
	cmp	r3, #5
	bne	.L5062
	mov	r5, r2
	.loc 26 140 0
	ldr	r2, [r1, #88]
.LVL5462:
	mov	r4, r1
	ands	r2, r2, #7
	bne	.L5058
	.loc 26 141 0
	str	r2, [sp, #4]
	mov	r3, #1
	str	r1, [sp]
	mov	r1, r2
.LVL5463:
	bl	doIPCTransfer
.LVL5464:
	.loc 26 143 0
	mov	r0, r4
	bl	setThreadState.constprop.307
.LVL5465:
.LBB14695:
.LBB14696:
	.loc 26 416 0
	mov	r0, r4
	mov	r1, #1
	bl	possibleSwitchTo
.LVL5466:
.L5059:
.LBE14696:
.LBE14695:
	.loc 26 158 0
	mov	r3, #1
	ldm	r5, {r1, r2}
	add	r0, sp, #8
	str	r3, [sp]
	bl	finaliseCap
.LVL5467:
	.loc 26 159 0
	mov	r3, #0
	str	r3, [r5]
	str	r3, [r5, #4]
	.loc 26 160 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5468:
.L5058:
	.cfi_restore_state
	mov	r1, r0
.LVL5469:
.LBB14697:
	.loc 26 149 0
	mov	r0, r4
.LVL5470:
	bl	handleFaultReply
.LVL5471:
	.loc 26 151 0
	cmp	r0, #0
.LBB14698:
.LBB14699:
	.loc 4 541 0
	mov	r3, #0
	str	r3, [r4, #88]
.LBE14699:
.LBE14698:
	.loc 26 152 0
	mov	r0, r4
.LVL5472:
.LBB14701:
.LBB14700:
	.loc 4 542 0
	str	r3, [r4, #92]
.LVL5473:
.LBE14700:
.LBE14701:
	.loc 26 151 0
	bne	.L5063
.LVL5474:
	.loc 26 155 0
	bl	setThreadState.constprop.306
.LVL5475:
	b	.L5059
.LVL5476:
.L5063:
	.loc 26 152 0
	bl	setThreadState.constprop.305
.LVL5477:
.LBB14702:
.LBB14703:
	.loc 26 416 0
	mov	r0, r4
	mov	r1, #1
	bl	possibleSwitchTo
.LVL5478:
	b	.L5059
.LVL5479:
.L5062:
.LBE14703:
.LBE14702:
.LBE14697:
	.loc 26 137 0 discriminator 1
	movw	r1, #:lower16:.LC107
.LVL5480:
	movw	r0, #:lower16:.LC244
.LVL5481:
	movt	r1, #:upper16:.LC107
	movt	r0, #:upper16:.LC244
	ldr	r3, .L5064
	mov	r2, #138
.LVL5482:
	bl	_assert_fail
.LVL5483:
.L5065:
	.align	2
.L5064:
	.word	.LANCHOR6-3784
	.cfi_endproc
.LFE558:
	.size	doReplyTransfer, .-doReplyTransfer
	.align	2
	.syntax unified
	.arm
	.type	handleReply, %function
handleReply:
.LFB267:
	.loc 53 276 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 53 280 0
	movw	r3, #:lower16:ksCurThread
	.loc 53 276 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 53 280 0
	movt	r3, #:upper16:ksCurThread
	.loc 53 276 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 53 280 0
	ldr	r3, [r3]
	bic	r2, r3, #508
	bic	r2, r2, #3
	.loc 53 281 0
	ldr	r1, [r2, #48]
	.loc 53 280 0
	add	r2, r2, #48
.LVL5484:
.LBB14704:
.LBB14705:
	.loc 4 997 0
	and	r0, r1, #14
	cmp	r0, #14
	.loc 4 999 0
	uxtbeq	r0, r1
.LVL5485:
	.loc 4 998 0
	andne	r0, r1, #15
.LBE14705:
.LBE14704:
	.loc 53 282 0
	cmp	r0, #0
	beq	.L5070
	cmp	r0, #8
	bne	.L5069
.LVL5486:
.LBB14706:
.LBB14707:
.LBB14708:
	.loc 4 1439 0
	and	r0, r1, #15
	cmp	r0, #8
	bne	.L5075
.LBE14708:
.LBE14707:
	.loc 53 286 0
	ldr	r0, [r2, #4]
	tst	r0, #1
	bne	.L5069
	.loc 53 289 0
	bic	r1, r1, #31
.LVL5487:
	.loc 53 292 0
	cmp	r3, r1
	beq	.L5076
	.loc 53 293 0
	mov	r0, r3
.LBE14706:
	.loc 53 307 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LBB14711:
	.loc 53 293 0
	b	doReplyTransfer
.LVL5488:
.L5069:
	.cfi_restore_state
.LBE14711:
	.loc 53 306 0
	movw	r1, #:lower16:.LC245
.LVL5489:
	movw	r0, #:lower16:.LC248
	movt	r1, #:upper16:.LC245
	movt	r0, #:upper16:.LC248
	ldr	r3, .L5077
	movw	r2, #306
.LVL5490:
	bl	_fail
.LVL5491:
.L5070:
	.loc 53 299 0
	ldr	r2, [r3, #68]
.LVL5492:
	add	r1, r3, #140
.LVL5493:
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
.LVL5494:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5077
	str	r2, [sp, #4]
	movw	r2, #299
	bl	kprintf
.LVL5495:
	movw	r0, #:lower16:.LC247
	movt	r0, #:upper16:.LC247
	bl	kprintf
.LVL5496:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	.loc 53 307 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 53 299 0
	b	kprintf
.LVL5497:
.L5075:
	.cfi_restore_state
.LBB14712:
.LBB14710:
.LBB14709:
	bl	cap_reply_cap_get_capReplyMaster.part.68
.LVL5498:
.L5076:
.LBE14709:
.LBE14710:
	.loc 53 292 0 discriminator 1
	movw	r1, #:lower16:.LC245
.LVL5499:
	movw	r0, #:lower16:.LC246
.LVL5500:
	movt	r1, #:upper16:.LC245
	movt	r0, #:upper16:.LC246
	ldr	r3, .L5077+4
	mov	r2, #292
.LVL5501:
	bl	_assert_fail
.LVL5502:
.L5078:
	.align	2
.L5077:
	.word	.LANCHOR6-3756
	.word	.LANCHOR6-3768
.LBE14712:
	.cfi_endproc
.LFE267:
	.size	handleReply, .-handleReply
	.align	2
	.global	performInvocation_Reply
	.syntax unified
	.arm
	.type	performInvocation_Reply, %function
performInvocation_Reply:
.LFB657:
	.loc 52 720 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5503:
	.loc 52 721 0
	movw	r3, #:lower16:ksCurThread
	mov	r2, r1
	movt	r3, #:upper16:ksCurThread
	mov	r1, r0
.LVL5504:
	.loc 52 720 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 52 721 0
	ldr	r0, [r3]
.LVL5505:
	bl	doReplyTransfer
.LVL5506:
	.loc 52 723 0
	mov	r0, #0
	pop	{r4, pc}
	.cfi_endproc
.LFE657:
	.size	performInvocation_Reply, .-performInvocation_Reply
	.align	2
	.global	cteDeleteOne
	.syntax unified
	.arm
	.type	cteDeleteOne, %function
cteDeleteOne:
.LFB614:
	.loc 41 628 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5507:
	ldr	r3, [r0]
.LVL5508:
.LBB14754:
.LBB14755:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL5509:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE14755:
.LBE14754:
	.loc 41 630 0
	cmp	r3, #0
	bxeq	lr
	.loc 41 628 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	mov	r4, r0
.LBB14756:
	.loc 41 636 0
	add	r5, sp, #20
	.loc 41 633 0
	bl	cdtIsFinal
.LVL5510:
	.loc 41 636 0
	mov	r2, #1
	mov	r3, r0
	str	r2, [sp]
	mov	r0, r5
.LVL5511:
	ldm	r4, {r1, r2}
	bl	finaliseCap
.LVL5512:
	ldr	r3, [sp, #20]
	add	r2, sp, #12
	ldm	r5, {r0, r1}
.LBB14757:
.LBB14758:
.LBB14759:
.LBB14760:
	.loc 4 997 0
	and	ip, r3, #14
	cmp	ip, #14
	stm	r2, {r0, r1}
.LVL5513:
	.loc 4 999 0
	uxtbeq	r1, r3
.LVL5514:
	.loc 4 998 0
	andne	r1, r3, #15
.LBE14760:
.LBE14759:
	.loc 41 483 0
	cmp	r1, #0
	beq	.L5088
	cmp	r1, #46
	bne	.L5109
.LBB14761:
.LBB14762:
.LBB14763:
.LBB14764:
.LBB14765:
.LBB14766:
.LBB14767:
	.loc 4 1989 0
	uxtb	r1, r3
	str	r3, [sp, #12]
.LVL5515:
	ldr	r5, [sp, #16]
.LVL5516:
	cmp	r1, #46
	bne	.L5112
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL5517:
.LBE14767:
.LBE14766:
	.loc 30 106 0
	cmp	r3, #32
	andne	r3, r3, #31
	mvnne	r1, #0
	addne	r3, r3, #1
	moveq	r3, #31
.LVL5518:
	mvnne	r3, r1, lsl r3
.LBE14765:
.LBE14764:
.LBE14763:
.LBE14762:
	.loc 41 488 0
	ldm	r2, {r0, r1}
.LBB14774:
.LBB14772:
	.loc 30 116 0
	and	r5, r5, r3
.LVL5519:
.LBE14772:
.LBE14774:
	.loc 41 488 0
	bl	cap_zombie_cap_get_capZombiePtr
.LVL5520:
	.loc 41 489 0
	cmp	r5, #0
	beq	.L5088
.LVL5521:
.LBE14761:
.LBE14758:
.LBE14757:
	.loc 41 638 0
	cmp	r5, #1
	cmpeq	r4, r0
	bne	.L5092
.LVL5522:
.L5088:
	.loc 41 638 0 is_stmt 0 discriminator 2
	ldrh	r2, [sp, #28]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L5092
.LVL5523:
	ldr	r3, [r4]
.LVL5524:
.LBB14781:
.LBB14782:
.LBB14783:
.LBB14784:
	.loc 4 997 0 is_stmt 1
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL5525:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE14784:
.LBE14783:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5113
.LBE14782:
.LBE14781:
.LBE14756:
	.loc 41 642 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5526:
.L5109:
	.cfi_restore_state
.LBB14791:
.LBB14788:
.LBB14779:
.LBB14776:
.LBB14777:
	.loc 41 492 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC250
.LVL5527:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC250
	ldr	r3, .L5114
.LVL5528:
	mov	r2, #492
	bl	_fail
.LVL5529:
.L5113:
.LBE14777:
.LBE14776:
.LBE14779:
.LBE14788:
.LBB14789:
.LBB14787:
.LBB14785:
.LBB14786:
	.loc 41 471 0
	mov	r0, r4
	bl	cdtRemove
.LVL5530:
	.loc 41 472 0
	mov	r3, #0
	str	r3, [r4]
	str	r3, [r4, #4]
.LVL5531:
.LBE14786:
.LBE14785:
.LBE14787:
.LBE14789:
.LBE14791:
	.loc 41 642 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5532:
.L5092:
	.cfi_restore_state
.LBB14792:
.LBB14793:
.LBB14794:
	.loc 41 638 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC249
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC249
	ldr	r3, .L5114+4
	movw	r2, #639
	bl	_assert_fail
.LVL5533:
.L5112:
.LBE14794:
.LBE14793:
.LBE14792:
.LBB14795:
.LBB14790:
.LBB14780:
.LBB14778:
.LBB14775:
.LBB14773:
.LBB14771:
.LBB14770:
.LBB14769:
.LBB14768:
	bl	cap_zombie_cap_get_capZombieType.isra.96.part.97
.LVL5534:
.L5115:
	.align	2
.L5114:
	.word	.LANCHOR6-3728
	.word	.LANCHOR6-3744
.LBE14768:
.LBE14769:
.LBE14770:
.LBE14771:
.LBE14773:
.LBE14775:
.LBE14778:
.LBE14780:
.LBE14790:
.LBE14795:
	.cfi_endproc
.LFE614:
	.size	cteDeleteOne, .-cteDeleteOne
	.align	2
	.global	invokeIRQHandler_SetIRQHandler
	.syntax unified
	.arm
	.type	invokeIRQHandler_SetIRQHandler, %function
invokeIRQHandler_SetIRQHandler:
.LFB636:
	.loc 51 170 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5535:
	.loc 51 173 0
	movw	ip, #:lower16:intStateIRQNode
	.loc 51 170 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 51 173 0
	movt	ip, #:upper16:intStateIRQNode
	.loc 51 170 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 51 170 0
	mov	r7, r0
	mov	r8, r3
	.loc 51 173 0
	ldr	r6, [ip]
	.loc 51 170 0
	stm	sp, {r1, r2}
	.loc 51 173 0
	add	r5, r6, r0, lsl #4
.LVL5536:
	.loc 51 175 0
	mov	r0, r5
.LVL5537:
	bl	cteDeleteOne
.LVL5538:
	ldr	r2, [r6, r7, lsl #4]
	add	ip, sp, #8
	ldm	sp, {r0, r1}
.LBB14800:
.LBB14801:
.LBB14802:
.LBB14803:
	.loc 4 997 0
	and	lr, r2, #14
	cmp	lr, #14
	stm	ip, {r0, r1}
.LVL5539:
	.loc 4 999 0
	uxtbeq	r2, r2
.LVL5540:
	.loc 4 998 0
	andne	r2, r2, #15
.LBE14803:
.LBE14802:
	.loc 41 389 0
	cmp	r2, #0
	bne	.L5121
	.loc 41 391 0
	ldm	ip, {r0, r1}
	stm	r5, {r0, r1}
	.loc 41 392 0
	mov	r1, r5
	mov	r0, r8
.LBE14801:
.LBE14800:
	.loc 51 177 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5541:
.LBB14805:
.LBB14804:
	.loc 41 392 0
	b	cdtInsert
.LVL5542:
.L5121:
	.cfi_restore_state
	bl	cteInsert.part.218
.LVL5543:
.LBE14804:
.LBE14805:
	.cfi_endproc
.LFE636:
	.size	invokeIRQHandler_SetIRQHandler, .-invokeIRQHandler_SetIRQHandler
	.align	2
	.global	invokeIRQHandler_ClearIRQHandler
	.syntax unified
	.arm
	.type	invokeIRQHandler_ClearIRQHandler, %function
invokeIRQHandler_ClearIRQHandler:
.LFB637:
	.loc 51 181 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5544:
	.loc 51 184 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	.loc 51 186 0
	ldr	r3, [r3]
	add	r0, r3, r0, lsl #4
.LVL5545:
	b	cteDeleteOne
.LVL5546:
	.cfi_endproc
.LFE637:
	.size	invokeIRQHandler_ClearIRQHandler, .-invokeIRQHandler_ClearIRQHandler
	.align	2
	.global	deletingIRQHandler
	.syntax unified
	.arm
	.type	deletingIRQHandler, %function
deletingIRQHandler:
.LFB638:
	.loc 51 191 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5547:
	.loc 51 194 0
	movw	r3, #:lower16:ksCurThread
	.loc 51 191 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 51 194 0
	movt	r3, #:upper16:ksCurThread
	.loc 51 191 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 51 191 0
	mov	r4, r0
	.loc 51 194 0
	movw	r0, #:lower16:.LC3
.LVL5548:
	ldr	r3, [r3]
	mov	r2, #194
	ldr	r1, .L5125
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5549:
	movw	r0, #:lower16:.LC251
	mov	r1, r4
	movt	r0, #:upper16:.LC251
	bl	kprintf
.LVL5550:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5551:
	.loc 51 195 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	.loc 51 197 0
	ldr	r0, [r3]
	add	r0, r0, r4, lsl #4
	.loc 51 198 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5552:
	.loc 51 197 0
	b	cteDeleteOne
.LVL5553:
.L5126:
	.align	2
.L5125:
	.word	.LANCHOR6-3712
	.cfi_endproc
.LFE638:
	.size	deletingIRQHandler, .-deletingIRQHandler
	.align	2
	.global	decodeIRQHandlerInvocation
	.syntax unified
	.arm
	.type	decodeIRQHandlerInvocation, %function
decodeIRQHandlerInvocation:
.LFB633:
	.loc 51 95 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5554:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 51 96 0
	sub	r0, r0, #25
.LVL5555:
	.loc 51 95 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
.LVL5556:
	.loc 51 95 0
	mov	r4, r2
	str	r3, [sp, #44]
.LVL5557:
	.loc 51 96 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L5128
.L5130:
	.word	.L5129
	.word	.L5131
	.word	.L5132
	.word	.L5133
.L5133:
.LBB14836:
	.loc 51 137 0
	cmp	r1, #1
	mov	r5, r1
	.loc 51 138 0
	movw	r3, #:lower16:ksCurThread
	.loc 51 137 0
	bls	.L5152
.LBB14837:
.LBB14838:
	.loc 37 30 0
	movt	r3, #:upper16:ksCurThread
.LBE14838:
.LBE14837:
	.loc 51 145 0
	ldr	r0, [r3]
.LVL5558:
	bl	setThreadState.constprop.305
.LVL5559:
	.loc 51 147 0
	mov	r0, #0
.LBE14836:
	.loc 51 155 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL5560:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5561:
.L5132:
	.cfi_restore_state
	.loc 51 131 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL5562:
.LBB14839:
.LBB14840:
	.loc 51 184 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	.loc 51 186 0
	ldr	r0, [r3]
	add	r0, r0, r4, lsl #4
	bl	cteDeleteOne
.LVL5563:
.LBE14840:
.LBE14839:
	.loc 51 133 0
	mov	r0, #0
.L5134:
	.loc 51 155 0 discriminator 1
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5564:
.L5131:
	.cfi_restore_state
	ldr	r5, [sp, #44]
.LBB14841:
	.loc 51 106 0
	cmp	r5, #0
	beq	.L5151
	.loc 51 110 0
	ldr	r6, [r5]
.LVL5565:
.LBB14842:
.LBB14843:
	.loc 4 997 0
	and	r3, r6, #14
	cmp	r3, #14
	beq	.L5137
.LVL5566:
.LBE14843:
.LBE14842:
	.loc 51 113 0
	and	r2, r6, #15
.LVL5567:
	cmp	r2, #6
	beq	.L5139
.LVL5568:
.L5138:
	.loc 51 116 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #116
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5155
.LVL5569:
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
.LVL5570:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5571:
	movw	r0, #:lower16:.LC252
	movt	r0, #:upper16:.LC252
	bl	kprintf
.LVL5572:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5573:
.L5142:
	.loc 51 120 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 51 121 0
	mov	r2, #0
	.loc 51 122 0
	mov	r0, #3
	.loc 51 120 0
	str	r1, [r3, #24]
	.loc 51 121 0
	str	r2, [r3, #4]
.LBE14841:
	.loc 51 155 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5574:
.L5129:
	.cfi_restore_state
	.loc 51 98 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL5575:
.LBB14852:
.LBB14853:
.LBB14854:
.LBB14855:
	.loc 18 207 0
	movw	r2, #:lower16:.LANCHOR2
	.loc 18 205 0
	lsr	r3, r4, #5
.LVL5576:
	.loc 18 207 0
	movt	r2, #:upper16:.LANCHOR2
	ldr	r1, [r2]
	and	r4, r4, #31
.LVL5577:
	mov	r2, #1
	add	r3, r3, #64
.LVL5578:
	lsl	r4, r2, r4
.LBE14855:
.LBE14854:
.LBE14853:
.LBE14852:
	.loc 51 100 0
	mov	r0, #0
.LBB14859:
.LBB14858:
.LBB14857:
.LBB14856:
	.loc 18 207 0
	str	r4, [r1, r3, lsl #2]
.LVL5579:
.LBE14856:
.LBE14857:
.LBE14858:
.LBE14859:
	.loc 51 155 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5580:
.L5128:
	.loc 51 151 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #151
.LVL5581:
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5155
.LVL5582:
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5583:
	movw	r0, #:lower16:.LC255
	movt	r0, #:upper16:.LC255
	bl	kprintf
.LVL5584:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5585:
	.loc 51 152 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 51 153 0
	mov	r0, r2
	.loc 51 152 0
	str	r2, [r3, #24]
	.loc 51 155 0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	add	sp, sp, #8
	bx	lr
.LVL5586:
.L5152:
	.cfi_restore_state
.LBB14860:
	.loc 51 138 0
	movt	r3, #:upper16:ksCurThread
	movw	r0, #:lower16:.LC3
	ldr	r3, [r3]
	mov	r2, #138
.LVL5587:
	ldr	r1, .L5155
.LVL5588:
	movt	r0, #:upper16:.LC3
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5589:
	movw	r0, #:lower16:.LC254
	mov	r1, r5
	movt	r0, #:upper16:.LC254
	bl	kprintf
.LVL5590:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5591:
.L5151:
	.loc 51 139 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 51 140 0
	mov	r0, #3
	.loc 51 139 0
	str	r2, [r3, #24]
.LBE14860:
	.loc 51 155 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5592:
.L5137:
	.cfi_restore_state
.LBB14861:
	.loc 51 113 0
	uxtb	r2, r6
.LVL5593:
	cmp	r2, #6
	bne	.L5138
.LVL5594:
.LBB14844:
.LBB14845:
	.loc 4 1330 0
	and	r2, r6, #15
	cmp	r2, #6
	bne	.L5153
.LVL5595:
.L5139:
.LBE14845:
.LBE14844:
	.loc 51 110 0
	ldr	r7, [r5, #4]
	.loc 51 113 0
	tst	r7, #1
	bne	.L5140
.LVL5596:
.LBB14847:
.LBB14848:
	.loc 4 997 0
	cmp	r3, #14
	beq	.L5154
.LVL5597:
.L5141:
.LBE14848:
.LBE14847:
	.loc 51 118 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #118
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5155
.LVL5598:
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
.LVL5599:
	str	ip, [sp, #4]
	bl	kprintf
.LVL5600:
	movw	r0, #:lower16:.LC253
	movt	r0, #:upper16:.LC253
	bl	kprintf
.LVL5601:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5602:
	b	.L5142
.LVL5603:
.L5140:
	.loc 51 125 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL5604:
.LBB14849:
.LBB14850:
	.loc 51 173 0
	movw	r3, #:lower16:intStateIRQNode
	str	r6, [sp, #8]
	movt	r3, #:upper16:intStateIRQNode
	str	r7, [sp, #12]
.LVL5605:
	ldr	r3, [r3]
	add	r4, r3, r4, lsl #4
.LVL5606:
	.loc 51 175 0
	mov	r0, r4
	bl	cteDeleteOne
.LVL5607:
	.loc 51 176 0
	add	r1, sp, #16
	mov	r3, r4
	ldmdb	r1, {r0, r1}
	mov	r2, r5
	bl	cteInsert
.LVL5608:
.LBE14850:
.LBE14849:
	.loc 51 127 0
	mov	r0, #0
.LVL5609:
	b	.L5134
.LVL5610:
.L5154:
	.loc 51 115 0
	uxtb	r6, r6
.LVL5611:
	cmp	r6, #6
	beq	.L5141
	b	.L5138
.LVL5612:
.L5153:
.LBB14851:
.LBB14846:
	bl	cap_async_endpoint_cap_get_capAEPCanSend.part.231
.LVL5613:
.L5156:
	.align	2
.L5155:
	.word	.LANCHOR6-3692
.LBE14846:
.LBE14851:
.LBE14861:
	.cfi_endproc
.LFE633:
	.size	decodeIRQHandlerInvocation, .-decodeIRQHandlerInvocation
	.align	2
	.global	ipcCancel
	.syntax unified
	.arm
	.type	ipcCancel, %function
ipcCancel:
.LFB628:
	.loc 42 228 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5614:
	ldr	r1, [r0, #72]
.LVL5615:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 42 231 0
	and	r3, r1, #15
	sub	r3, r3, #3
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L5157
.L5160:
	.word	.L5159
	.word	.L5159
	.word	.L5161
	.word	.L5162
.L5161:
.LVL5616:
.LBB14894:
	.loc 42 267 0
	bic	r5, r0, #508
.LBB14895:
.LBB14896:
	.loc 4 541 0
	mov	r6, #0
.LBE14896:
.LBE14895:
	.loc 42 267 0
	bic	r5, r5, #3
.LBB14899:
.LBB14897:
	.loc 4 541 0
	str	r6, [r0, #88]
.LBE14897:
.LBE14899:
.LBB14900:
.LBB14901:
	.loc 4 1412 0
	ldr	r3, [r5, #32]
.LBE14901:
.LBE14900:
	.loc 42 267 0
	add	r7, r5, #32
	ldr	r4, [r7, #4]
.LBB14904:
.LBB14898:
	.loc 4 542 0
	str	r6, [r0, #92]
.LVL5617:
.LBE14898:
.LBE14904:
.LBB14905:
.LBB14902:
	.loc 4 1412 0
	and	r3, r3, #15
	cmp	r3, #8
	bne	.L5182
.LVL5618:
.LBE14902:
.LBE14905:
	.loc 42 270 0
	bics	r4, r4, #15
.LVL5619:
	beq	.L5172
	.loc 42 271 0
	mov	r3, #1
	add	r0, sp, #8
.LVL5620:
	str	r3, [sp]
.LVL5621:
	ldm	r4, {r1, r2}
	bl	finaliseCap
.LVL5622:
	.loc 42 272 0
	str	r6, [r4]
	str	r6, [r4, #4]
.LVL5623:
.LBB14906:
.LBB14907:
	.loc 4 1426 0
	ldr	r3, [r5, #32]
	and	r3, r3, #15
	cmp	r3, #8
	bne	.L5183
.LVL5624:
.L5172:
	.loc 4 1432 0
	ldr	r3, [r7, #4]
	and	r3, r3, #15
	str	r3, [r7, #4]
.LVL5625:
.L5157:
.LBE14907:
.LBE14906:
.LBE14894:
	.loc 42 279 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL5626:
.L5162:
	.cfi_restore_state
	.loc 42 257 0
	bic	r1, r1, #15
	.loc 42 279 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 42 257 0
	b	asyncIPCCancel
.LVL5627:
.L5159:
	.cfi_restore_state
.LBB14911:
	.loc 42 238 0
	bic	r1, r1, #15
.LVL5628:
	ldr	r2, [r1]
.LVL5629:
	.loc 42 241 0
	tst	r2, #3
	beq	.L5184
.LVL5630:
.LBB14912:
.LBB14913:
	.loc 40 167 0
	ldr	r4, [r0, #136]
.LBE14913:
.LBE14912:
.LBB14916:
.LBB14917:
	.loc 42 27 0
	bic	r3, r2, #15
	ldr	ip, [r1, #4]
.LVL5631:
.LBE14917:
.LBE14916:
.LBB14919:
.LBB14914:
	.loc 40 167 0
	cmp	r4, #0
	.loc 40 168 0
	ldrne	r5, [r0, #132]
.LBE14914:
.LBE14919:
.LBB14920:
.LBB14918:
	.loc 42 26 0
	bic	lr, ip, #15
.LVL5632:
.LBE14918:
.LBE14920:
.LBB14921:
.LBB14915:
	.loc 40 170 0
	ldreq	lr, [r0, #132]
.LVL5633:
	.loc 40 168 0
	strne	r5, [r4, #132]
	ldrne	r5, [r0, #132]
	.loc 40 170 0
	moveq	r5, lr
.LVL5634:
	.loc 40 173 0
	cmp	r5, #0
	.loc 40 174 0
	strne	r4, [r5, #136]
	.loc 40 167 0
	moveq	r3, r4
.LVL5635:
.LBE14915:
.LBE14921:
.LBB14922:
.LBB14923:
.LBB14924:
.LBB14925:
	.loc 4 376 0
	tst	lr, #15
	bne	.L5185
	.loc 4 378 0
	and	ip, ip, #15
.LVL5636:
	bic	r4, lr, #15
.LBE14925:
.LBE14924:
.LBB14928:
.LBB14929:
	.loc 4 395 0
	tst	r3, #15
.LBE14929:
.LBE14928:
.LBB14932:
.LBB14926:
	.loc 4 378 0
	orr	ip, ip, r4
	str	ip, [r1, #4]
.LVL5637:
.LBE14926:
.LBE14932:
.LBB14933:
.LBB14930:
	.loc 4 395 0
	bne	.L5186
	.loc 4 397 0
	and	r2, r2, #15
.LVL5638:
	bic	r3, r3, #15
.LVL5639:
	orr	r3, r2, r3
.LVL5640:
.LBE14930:
.LBE14933:
.LBE14923:
.LBE14922:
	.loc 42 248 0
	cmp	lr, #0
.LBB14937:
.LBB14938:
	.loc 4 415 0
	biceq	r3, r3, #3
	str	r3, [r1]
.LVL5641:
.LBE14938:
.LBE14937:
.LBE14911:
	.loc 42 279 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5642:
.LBB14940:
	.loc 42 252 0
	b	setThreadState.constprop.306
.LVL5643:
.L5183:
	.cfi_restore_state
.LBE14940:
.LBB14941:
.LBB14909:
.LBB14908:
	bl	cap_reply_cap_ptr_set_capCallerSlot.part.219
.LVL5644:
.L5184:
.LBE14908:
.LBE14909:
.LBE14941:
.LBB14942:
	.loc 42 241 0 discriminator 1
	movw	r1, #:lower16:.LC189
.LVL5645:
	movw	r0, #:lower16:.LC256
.LVL5646:
	movt	r1, #:upper16:.LC189
	movt	r0, #:upper16:.LC256
	ldr	r3, .L5187
	mov	r2, #241
	bl	_assert_fail
.LVL5647:
.L5185:
.LBB14939:
.LBB14936:
.LBB14934:
.LBB14927:
	bl	endpoint_ptr_set_epQueue_head.isra.224.part.225
.LVL5648:
.L5186:
.LBE14927:
.LBE14934:
.LBB14935:
.LBB14931:
	bl	endpoint_ptr_set_epQueue_tail.isra.226.part.227
.LVL5649:
.L5182:
.LBE14931:
.LBE14935:
.LBE14936:
.LBE14939:
.LBE14942:
.LBB14943:
.LBB14910:
.LBB14903:
	.loc 4 1412 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC31
.LVL5650:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC31
	ldr	r3, .L5187+4
	movw	r2, #1413
	bl	_assert_fail
.LVL5651:
.L5188:
	.align	2
.L5187:
	.word	.LANCHOR6-3664
	.word	.LANCHOR6-3652
.LBE14903:
.LBE14910:
.LBE14943:
	.cfi_endproc
.LFE628:
	.size	ipcCancel, .-ipcCancel
	.align	2
	.global	restart
	.syntax unified
	.arm
	.type	restart, %function
restart:
.LFB556:
	.loc 26 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5652:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB14970:
.LBB14971:
	.loc 26 33 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	beq	.L5191
	sub	r3, r3, #3
	cmp	r3, #3
	pophi	{r4, pc}
.L5191:
.LVL5653:
	mov	r4, r0
.LBE14971:
.LBE14970:
.LBB14972:
.LBB14973:
	.loc 26 109 0
	bl	ipcCancel
.LVL5654:
.LBB14974:
.LBB14975:
	.loc 41 683 0
	bic	r3, r4, #508
	bic	r3, r3, #3
	ldr	r2, [r3, #32]
	add	r0, r3, #32
.LVL5655:
.LBB14976:
.LBB14977:
	.loc 4 997 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 4 998 0
	andne	r2, r2, #15
.LVL5656:
	.loc 4 997 0
	beq	.L5203
.L5192:
.LVL5657:
.LBE14977:
.LBE14976:
	.loc 41 684 0
	cmp	r2, #0
.LVL5658:
	.loc 41 687 0
	moveq	r1, #8
	moveq	r2, #1
	streq	r1, [r3, #32]
	streq	r2, [r0, #4]
.LBE14975:
.LBE14974:
	.loc 26 111 0
	mov	r0, r4
	bl	setThreadState.constprop.305
.LVL5659:
.LBB14981:
.LBB14982:
	.loc 40 53 0
	ldr	r3, [r4, #76]
	tst	r3, #1
	beq	.L5204
.LVL5660:
.LBE14982:
.LBE14981:
.LBB14984:
.LBB14985:
	.loc 26 422 0
	mov	r0, r4
	mov	r1, #0
.LBE14985:
.LBE14984:
.LBE14973:
.LBE14972:
	.loc 26 115 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5661:
.LBB14996:
.LBB14994:
.LBB14989:
.LBB14986:
	.loc 26 422 0
	b	possibleSwitchTo
.LVL5662:
.L5203:
	.cfi_restore_state
.LBE14986:
.LBE14989:
.LBB14990:
.LBB14980:
.LBB14979:
.LBB14978:
	.loc 4 999 0
	uxtb	r2, r2
	b	.L5192
.LVL5663:
.L5204:
.LBE14978:
.LBE14979:
.LBE14980:
.LBE14990:
.LBB14991:
.LBB14983:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL5664:
.LBE14983:
.LBE14991:
.LBB14992:
.LBB14987:
	.loc 26 422 0
	mov	r0, r4
	mov	r1, #0
.LBE14987:
.LBE14992:
.LBE14994:
.LBE14996:
	.loc 26 115 0
	pop	{r4, lr}
	.cfi_restore 4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL5665:
.LBB14997:
.LBB14995:
.LBB14993:
.LBB14988:
	.loc 26 422 0
	b	possibleSwitchTo
.LVL5666:
.LBE14988:
.LBE14993:
.LBE14995:
.LBE14997:
	.cfi_endproc
.LFE556:
	.size	restart, .-restart
	.align	2
	.global	invokeTCB_WriteRegisters
	.syntax unified
	.arm
	.type	invokeTCB_WriteRegisters, %function
invokeTCB_WriteRegisters:
.LFB687:
	.loc 40 1034 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5667:
	cmp	r2, #17
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movcs	r2, #17
.LVL5668:
	.loc 40 1034 0
	ldr	r3, [sp, #8]
.LVL5669:
	.loc 40 1048 0
	cmp	r2, #0
	beq	.L5206
.LBB15020:
.LBB15021:
	.loc 37 30 0
	movw	ip, #:lower16:ksCurThread
	cmp	r3, #0
	movt	ip, #:upper16:ksCurThread
	ldr	ip, [ip]
	beq	.L5207
.LVL5670:
.LBE15021:
.LBE15020:
.LBB15030:
.LBB15031:
	.loc 10 21 0
	ldr	lr, [ip, #16]
.LBE15031:
.LBE15030:
	.loc 40 1048 0
	cmp	r2, #1
.LBB15048:
.LBB15032:
	.loc 10 21 0
	str	lr, [r0, #68]
.LVL5671:
.LBE15032:
.LBE15048:
	.loc 40 1048 0
	bls	.L5210
.LVL5672:
.LBB15049:
.LBB15033:
	.loc 10 21 0
	ldr	ip, [ip, #20]
.LBE15033:
.LBE15049:
	.loc 40 1048 0
	cmp	r2, #2
.LBB15050:
.LBB15034:
	.loc 10 21 0
	str	ip, [r0, #52]
.LVL5673:
.LBE15034:
.LBE15050:
	.loc 40 1048 0
	bls	.L5210
.LVL5674:
.LBB15051:
.LBB15035:
	.loc 10 21 0
	ldr	ip, [r3, #20]
.LBE15035:
.LBE15051:
	.loc 40 1048 0
	cmp	r2, #3
.LBB15052:
.LBB15036:
	.loc 10 21 0
	and	ip, ip, #-134217728
	orr	ip, ip, #80
	str	ip, [r0, #64]
.LVL5675:
.LBE15036:
.LBE15052:
	.loc 40 1048 0
	bls	.L5210
.LVL5676:
.LBB15053:
.LBB15022:
	.loc 37 34 0
	ldr	ip, [r3, #24]
.LVL5677:
.LBE15022:
.LBE15053:
	.loc 40 1048 0
	cmp	r2, #4
.LBB15054:
.LBB15037:
	.loc 10 21 0
	str	ip, [r0]
.LVL5678:
.LBE15037:
.LBE15054:
	.loc 40 1048 0
	bls	.L5210
.LVL5679:
.LBB15055:
.LBB15023:
	.loc 37 34 0
	ldr	ip, [r3, #28]
.LVL5680:
.LBE15023:
.LBE15055:
	.loc 40 1048 0
	cmp	r2, #5
.LBB15056:
.LBB15038:
	.loc 10 21 0
	str	ip, [r0, #4]
.LVL5681:
.LBE15038:
.LBE15056:
	.loc 40 1048 0
	bls	.L5210
.LVL5682:
.LBB15057:
.LBB15024:
	.loc 37 34 0
	ldr	ip, [r3, #32]
.LVL5683:
.LBE15024:
.LBE15057:
	.loc 40 1048 0
	cmp	r2, #6
.LBB15058:
.LBB15039:
	.loc 10 21 0
	str	ip, [r0, #32]
.LVL5684:
.LBE15039:
.LBE15058:
	.loc 40 1048 0
	bls	.L5210
.LVL5685:
.LBB15059:
.LBB15025:
	.loc 37 34 0
	ldr	ip, [r3, #36]
.LVL5686:
.LBE15025:
.LBE15059:
	.loc 40 1048 0
	cmp	r2, #7
.LBB15060:
.LBB15040:
	.loc 10 21 0
	str	ip, [r0, #36]
.LVL5687:
.LBE15040:
.LBE15060:
	.loc 40 1048 0
	bls	.L5210
.LVL5688:
.LBB15061:
.LBB15026:
	.loc 37 34 0
	ldr	ip, [r3, #40]
.LVL5689:
.LBE15026:
.LBE15061:
	.loc 40 1048 0
	cmp	r2, #8
.LBB15062:
.LBB15041:
	.loc 10 21 0
	str	ip, [r0, #40]
.LVL5690:
.LBE15041:
.LBE15062:
	.loc 40 1048 0
	bls	.L5210
.LVL5691:
.LBB15063:
.LBB15027:
	.loc 37 34 0
	ldr	ip, [r3, #44]
.LVL5692:
.LBE15027:
.LBE15063:
	.loc 40 1048 0
	cmp	r2, #9
.LBB15064:
.LBB15042:
	.loc 10 21 0
	str	ip, [r0, #44]
.LVL5693:
.LBE15042:
.LBE15064:
	.loc 40 1048 0
.LVL5694:
.LBB15065:
.LBB15028:
	.loc 37 34 0
	ldrhi	ip, [r3, #48]
.LVL5695:
.LBE15028:
.LBE15065:
.LBB15066:
.LBB15043:
	.loc 10 21 0
	strhi	ip, [r0, #48]
.LVL5696:
.L5210:
.LBE15043:
.LBE15066:
	.loc 40 1055 0
	cmp	r2, #10
	bls	.L5206
.LVL5697:
.LBB15067:
.LBB15068:
	.loc 37 34 0
	ldr	ip, [r3, #52]
.LVL5698:
.LBE15068:
.LBE15067:
	.loc 40 1055 0
	cmp	r2, #11
.LBB15075:
.LBB15076:
	.loc 10 21 0
	str	ip, [r0, #8]
.LVL5699:
.LBE15076:
.LBE15075:
	.loc 40 1055 0
	beq	.L5206
.LVL5700:
.LBB15083:
.LBB15069:
	.loc 37 34 0
	ldr	ip, [r3, #56]
.LVL5701:
.LBE15069:
.LBE15083:
	.loc 40 1055 0
	cmp	r2, #12
.LBB15084:
.LBB15077:
	.loc 10 21 0
	str	ip, [r0, #12]
.LVL5702:
.LBE15077:
.LBE15084:
	.loc 40 1055 0
	beq	.L5206
.LVL5703:
.LBB15085:
.LBB15070:
	.loc 37 34 0
	ldr	ip, [r3, #60]
.LVL5704:
.LBE15070:
.LBE15085:
	.loc 40 1055 0
	cmp	r2, #13
.LBB15086:
.LBB15078:
	.loc 10 21 0
	str	ip, [r0, #16]
.LVL5705:
.LBE15078:
.LBE15086:
	.loc 40 1055 0
	beq	.L5206
.LVL5706:
.LBB15087:
.LBB15071:
	.loc 37 34 0
	ldr	ip, [r3, #64]
.LVL5707:
.LBE15071:
.LBE15087:
	.loc 40 1055 0
	cmp	r2, #14
.LBB15088:
.LBB15079:
	.loc 10 21 0
	str	ip, [r0, #20]
.LVL5708:
.LBE15079:
.LBE15088:
	.loc 40 1055 0
	beq	.L5206
.LVL5709:
.LBB15089:
.LBB15072:
	.loc 37 34 0
	ldr	ip, [r3, #68]
.LVL5710:
.LBE15072:
.LBE15089:
	.loc 40 1055 0
	cmp	r2, #15
.LBB15090:
.LBB15080:
	.loc 10 21 0
	str	ip, [r0, #24]
.LVL5711:
.LBE15080:
.LBE15090:
	.loc 40 1055 0
	beq	.L5206
.LVL5712:
.LBB15091:
.LBB15073:
	.loc 37 34 0
	ldr	ip, [r3, #72]
.LVL5713:
.LBE15073:
.LBE15091:
	.loc 40 1055 0
	cmp	r2, #17
.LBB15092:
.LBB15081:
	.loc 10 21 0
	str	ip, [r0, #28]
.LVL5714:
.LBE15081:
.LBE15092:
.LBB15093:
.LBB15074:
	.loc 37 34 0
	ldreq	r3, [r3, #76]
.LVL5715:
.LBE15074:
.LBE15093:
.LBB15094:
.LBB15082:
	.loc 10 21 0
	streq	r3, [r0, #56]
.LVL5716:
.L5206:
.LBE15082:
.LBE15094:
.LBB15095:
.LBB15096:
.LBB15097:
	ldr	r3, [r0, #68]
.LBE15097:
.LBE15096:
.LBE15095:
	.loc 40 1065 0
	cmp	r1, #0
.LBB15100:
.LBB15099:
.LBB15098:
	.loc 10 21 0
	str	r3, [r0, #60]
.LVL5717:
.LBE15098:
.LBE15099:
.LBE15100:
	.loc 40 1065 0
	beq	.L5228
	.loc 40 1066 0
	bl	restart
.LVL5718:
.L5228:
	.loc 40 1070 0
	mov	r0, #0
	pop	{r4, pc}
.LVL5719:
.L5207:
.LBB15101:
.LBB15044:
	.loc 10 21 0
	ldr	r3, [ip, #16]
.LBE15044:
.LBE15101:
	.loc 40 1048 0
	cmp	r2, #1
.LBB15102:
.LBB15045:
	.loc 10 21 0
	str	r3, [r0, #68]
.LVL5720:
.LBE15045:
.LBE15102:
	.loc 40 1048 0
	bls	.L5212
.LVL5721:
.LBB15103:
.LBB15046:
	.loc 10 21 0
	ldr	r3, [ip, #20]
.LBE15046:
.LBE15103:
	.loc 40 1048 0
	cmp	r2, #2
.LBB15104:
.LBB15047:
	.loc 10 21 0
	str	r3, [r0, #52]
.LVL5722:
.LBE15047:
.LBE15104:
	.loc 40 1048 0
	bls	.L5212
.LVL5723:
.L5218:
.LBB15105:
.LBB15029:
	bl	getSyscallArg.part.141
.LVL5724:
.L5212:
.LBE15029:
.LBE15105:
	.loc 40 1055 0 discriminator 3
	cmp	r2, #10
	bhi	.L5218
	b	.L5206
	.cfi_endproc
.LFE687:
	.size	invokeTCB_WriteRegisters, .-invokeTCB_WriteRegisters
	.align	2
	.global	decodeWriteRegisters
	.syntax unified
	.arm
	.type	decodeWriteRegisters, %function
decodeWriteRegisters:
.LFB674:
	.loc 40 442 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5725:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 40 447 0
	cmp	r2, #1
	.loc 40 442 0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	.loc 40 442 0
	add	ip, sp, #16
	stmdb	ip, {r0, r1}
	.loc 40 447 0
	bls	.L5238
.LVL5726:
.LBB15106:
.LBB15107:
	.loc 37 30 0
	movw	r1, #:lower16:ksCurThread
.LBE15107:
.LBE15106:
	.loc 40 456 0
	sub	r4, r2, #2
.LBB15112:
.LBB15110:
	.loc 37 30 0
	movt	r1, #:upper16:ksCurThread
	ldr	r2, [r1]
.LVL5727:
.LBE15110:
.LBE15112:
.LBB15113:
.LBB15114:
.LBB15115:
.LBB15116:
	.loc 10 27 0
	ldr	r5, [r2, #12]
.LVL5728:
.LBE15116:
.LBE15115:
.LBE15114:
.LBE15113:
	.loc 40 456 0
	cmp	r4, r5
	bcc	.L5239
	ldr	r4, [sp, #8]
.LVL5729:
	mov	r6, r3
.LVL5730:
.LBB15117:
.LBB15118:
	.loc 4 1576 0
	and	r3, r4, #15
.LVL5731:
	cmp	r3, #12
	bne	.L5240
.LBE15118:
.LBE15117:
.LBB15120:
.LBB15111:
.LBB15108:
.LBB15109:
	.loc 10 27 0
	ldr	r7, [r2, #8]
.LVL5732:
.LBE15109:
.LBE15108:
.LBE15111:
.LBE15120:
	.loc 40 467 0
	mov	r0, r2
	bl	setThreadState.constprop.305
.LVL5733:
	.loc 40 468 0
	str	r6, [sp]
	mov	r2, r5
	and	r1, r7, #1
	bic	r0, r4, #15
	mov	r3, #0
	bl	invokeTCB_WriteRegisters
.LVL5734:
	.loc 40 471 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL5735:
.L5239:
	.cfi_restore_state
	.loc 40 457 0
	ldr	r1, [r2, #68]
	add	r3, r2, #140
.LVL5736:
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r2
	str	r1, [sp, #4]
	movw	r2, #458
	ldr	r1, .L5241
	bl	kprintf
.LVL5737:
	movw	r0, #:lower16:.LC258
	mov	r2, r5
	mov	r1, r4
	movt	r0, #:upper16:.LC258
	bl	kprintf
.LVL5738:
.L5237:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL5739:
	.loc 40 459 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 40 460 0
	mov	r0, #3
	.loc 40 459 0
	str	r2, [r3, #24]
	.loc 40 471 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL5740:
.L5238:
	.cfi_restore_state
	.loc 40 448 0
	movw	r3, #:lower16:ksCurThread
.LVL5741:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #448
.LVL5742:
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5241
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL5743:
	movw	r0, #:lower16:.LC257
	movt	r0, #:upper16:.LC257
	bl	kprintf
.LVL5744:
	b	.L5237
.LVL5745:
.L5240:
.LBB15121:
.LBB15119:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL5746:
.L5242:
	.align	2
.L5241:
	.word	.LANCHOR6-3620
.LBE15119:
.LBE15121:
	.cfi_endproc
.LFE674:
	.size	decodeWriteRegisters, .-decodeWriteRegisters
	.align	2
	.global	sendAsyncIPC
	.syntax unified
	.arm
	.type	sendAsyncIPC, %function
sendAsyncIPC:
.LFB589:
	.loc 50 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5747:
	ldr	r3, [r0]
.LVL5748:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 50 51 0
	mov	r5, r1
	.loc 50 52 0
	and	r2, r3, #3
	cmp	r2, #1
	beq	.L5245
	bcc	.L5246
	cmp	r2, #2
	bne	.L5262
	ldr	r1, [r0, #8]
.LVL5749:
.LBB15173:
.LBB15174:
.LBB15175:
	.loc 4 53 0
	orr	r5, r5, r1
.LVL5750:
	str	r5, [r0, #8]
	pop	{r4, r5, r6, pc}
.LVL5751:
.L5262:
	pop	{r4, r5, r6, pc}
.L5246:
.LVL5752:
.LBE15175:
.LBE15174:
.LBE15173:
.LBB15176:
.LBB15177:
.LBB15178:
	.loc 4 21 0
	ldr	r2, [r0, #12]
.LVL5753:
.LBE15178:
.LBE15177:
	.loc 50 56 0
	bics	r4, r2, #15
.LVL5754:
	beq	.L5248
.LVL5755:
.LBB15179:
.LBB15180:
	.loc 4 257 0
	ldr	r2, [r4, #72]
	and	r2, r2, #15
.LBE15180:
.LBE15179:
	.loc 50 57 0
	cmp	r2, #3
	beq	.L5263
.LVL5756:
	.loc 50 63 0
	cmp	r2, #7
	beq	.L5264
.LVL5757:
.L5248:
.LBB15181:
.LBB15182:
.LBB15183:
	.loc 4 110 0
	bic	r3, r3, #3
.LBE15183:
.LBE15182:
.LBB15185:
.LBB15186:
	.loc 4 53 0
	str	r5, [r0, #8]
.LBE15186:
.LBE15185:
.LBB15187:
.LBB15184:
	.loc 4 110 0
	orr	r3, r3, #2
	str	r3, [r0]
.LVL5758:
	pop	{r4, r5, r6, pc}
.LVL5759:
.L5245:
	ldr	r1, [r0, #4]
.LVL5760:
.LBE15184:
.LBE15187:
.LBE15181:
.LBE15176:
.LBB15204:
.LBB15205:
.LBB15206:
	.loc 50 29 0
	bic	r2, r3, #15
.LVL5761:
.LBE15206:
.LBE15205:
	.loc 50 85 0
	bics	r4, r1, #15
.LVL5762:
	beq	.L5265
.LVL5763:
.LBB15207:
.LBB15208:
	.loc 40 167 0
	ldr	lr, [r4, #136]
	cmp	lr, #0
	.loc 40 168 0
	ldrne	r6, [r4, #132]
	movne	ip, r4
	.loc 40 170 0
	ldreq	ip, [r4, #132]
.LVL5764:
	.loc 40 168 0
	strne	r6, [lr, #132]
	ldrne	r6, [r4, #132]
	.loc 40 170 0
	moveq	r6, ip
.LVL5765:
	.loc 40 173 0
	cmp	r6, #0
	.loc 40 174 0
	strne	lr, [r6, #136]
	.loc 40 167 0
	moveq	r2, lr
.LVL5766:
.LBE15208:
.LBE15207:
.LBB15209:
.LBB15210:
.LBB15211:
.LBB15212:
	.loc 4 70 0
	tst	ip, #15
	bne	.L5266
	.loc 4 72 0
	and	r1, r1, #15
	bic	lr, ip, #15
.LBE15212:
.LBE15211:
.LBB15215:
.LBB15216:
	.loc 4 89 0
	tst	r2, #15
.LBE15216:
.LBE15215:
.LBB15219:
.LBB15213:
	.loc 4 72 0
	orr	r1, r1, lr
	str	r1, [r0, #4]
.LVL5767:
.LBE15213:
.LBE15219:
.LBB15220:
.LBB15217:
	.loc 4 89 0
	bne	.L5267
	.loc 4 91 0
	bic	r2, r2, #15
.LVL5768:
	and	r3, r3, #15
.LVL5769:
	orr	r3, r3, r2
.LVL5770:
.LBE15217:
.LBE15220:
.LBE15210:
.LBE15209:
	.loc 50 92 0
	cmp	ip, #0
.LBB15225:
.LBB15226:
	.loc 4 109 0
	biceq	r3, r3, #3
	str	r3, [r0]
.LVL5771:
.LBE15226:
.LBE15225:
	.loc 50 96 0
	mov	r0, r4
.LVL5772:
	bl	setThreadState.constprop.307
.LVL5773:
.LBB15227:
.LBB15228:
	.loc 10 21 0
	str	r5, [r4]
.LVL5774:
.LBE15228:
.LBE15227:
.LBB15229:
.LBB15230:
	.loc 26 422 0
	mov	r0, r4
	mov	r1, #0
.LBE15230:
.LBE15229:
.LBE15204:
	.loc 50 112 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5775:
.LBB15235:
.LBB15232:
.LBB15231:
	.loc 26 422 0
	b	possibleSwitchTo
.LVL5776:
.L5264:
	.cfi_restore_state
.LBE15231:
.LBE15232:
.LBE15235:
.LBB15236:
	.loc 50 64 0
	mov	r0, r4
.LVL5777:
	bl	setThreadState.constprop.307
.LVL5778:
.LBB15188:
.LBB15189:
	.loc 10 21 0
	mov	r3, #0
.LBE15189:
.LBE15188:
.LBB15191:
.LBB15192:
	str	r5, [r4]
.LVL5779:
.LBE15192:
.LBE15191:
.LBB15193:
.LBB15190:
	str	r3, [r4, #4]
.LVL5780:
.LBE15190:
.LBE15193:
.LBB15194:
.LBB15195:
	.loc 26 416 0
	mov	r0, r4
	mov	r1, #1
.LBE15195:
.LBE15194:
.LBE15236:
	.loc 50 112 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5781:
.LBB15237:
.LBB15197:
.LBB15196:
	.loc 26 416 0
	b	possibleSwitchTo
.LVL5782:
.L5263:
	.cfi_restore_state
.LBE15196:
.LBE15197:
	.loc 50 59 0
	mov	r0, r4
.LVL5783:
	bl	ipcCancel
.LVL5784:
	.loc 50 60 0
	mov	r0, r4
	bl	setThreadState.constprop.307
.LVL5785:
.LBB15198:
.LBB15199:
	.loc 10 21 0
	str	r5, [r4]
.LVL5786:
.LBE15199:
.LBE15198:
.LBB15200:
.LBB15201:
	.loc 26 416 0
	mov	r0, r4
	mov	r1, #1
.LBE15201:
.LBE15200:
.LBE15237:
	.loc 50 112 0
	pop	{r4, r5, r6, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5787:
.LBB15238:
.LBB15203:
.LBB15202:
	.loc 26 416 0
	b	possibleSwitchTo
.LVL5788:
.L5267:
	.cfi_restore_state
.LBE15202:
.LBE15203:
.LBE15238:
.LBB15239:
.LBB15233:
.LBB15223:
.LBB15221:
.LBB15218:
	bl	async_endpoint_ptr_set_aepQueue_tail.isra.208.part.209
.LVL5789:
.L5265:
.LBE15218:
.LBE15221:
.LBE15223:
.LBE15233:
	.loc 50 85 0 discriminator 1
	movw	r1, #:lower16:.LC183
	movw	r0, #:lower16:.LC217
.LVL5790:
	movt	r1, #:upper16:.LC183
	movt	r0, #:upper16:.LC217
	ldr	r3, .L5268
	mov	r2, #85
.LVL5791:
	bl	_assert_fail
.LVL5792:
.L5266:
.LBB15234:
.LBB15224:
.LBB15222:
.LBB15214:
	bl	async_endpoint_ptr_set_aepQueue_head.isra.206.part.207
.LVL5793:
.L5269:
	.align	2
.L5268:
	.word	.LANCHOR6-3596
.LBE15214:
.LBE15222:
.LBE15224:
.LBE15234:
.LBE15239:
	.cfi_endproc
.LFE589:
	.size	sendAsyncIPC, .-sendAsyncIPC
	.align	2
	.global	handleInterrupt
	.syntax unified
	.arm
	.type	handleInterrupt, %function
handleInterrupt:
.LFB640:
	.loc 51 208 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5794:
	.loc 51 209 0
	movw	r3, #:lower16:intStateIRQTable
	.loc 51 208 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 51 209 0
	movt	r3, #:upper16:intStateIRQTable
	.loc 51 208 0
	mov	r4, r0
	.loc 51 209 0
	ldr	r3, [r3, r0, lsl #2]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L5271
.L5273:
	.word	.L5272
	.word	.L5274
	.word	.L5275
	.word	.L5276
.L5276:
.LVL5795:
.LBB15281:
.LBB15282:
	.loc 55 195 0
	cmp	r0, #59
	beq	.L5294
	.loc 55 199 0
	movw	r0, #:lower16:.LC238
.LVL5796:
	mov	r1, r4
	movt	r0, #:upper16:.LC238
	movw	r5, #:lower16:.LANCHOR2
	bl	kprintf
.LVL5797:
	movt	r5, #:upper16:.LANCHOR2
	b	.L5282
.LVL5798:
.L5275:
.LBE15282:
.LBE15281:
.LBB15284:
.LBB15285:
	.loc 21 61 0
	movw	r5, #:lower16:.LANCHOR2
	movt	r5, #:upper16:.LANCHOR2
.LBE15285:
.LBE15284:
	.loc 51 229 0
	bl	timerTick
.LVL5799:
.LBB15287:
.LBB15286:
	.loc 21 61 0
	ldr	r3, [r5, #16]
	mov	r2, #1
	str	r2, [r3, #12]
.L5282:
.LVL5800:
.LBE15286:
.LBE15287:
.LBB15288:
.LBB15289:
	.loc 18 358 0
	ldr	r1, [r5, #8]
	ubfx	r3, r1, #0, #10
	cmp	r3, #1020
	bcs	.L5284
	cmp	r3, r4
	bne	.L5284
.LVL5801:
.LBB15290:
.LBB15291:
	.loc 18 157 0
	lsr	r2, r4, #4
.LVL5802:
	.loc 18 159 0
	ldr	r0, [r5]
.LBE15291:
.LBE15290:
	.loc 18 359 0
	and	r3, r1, #15
.LBB15294:
.LBB15292:
	.loc 18 159 0
	add	r2, r2, #768
.LBE15292:
.LBE15294:
	.loc 18 359 0
	lsl	r3, r3, #1
.LBB15295:
.LBB15293:
	.loc 18 159 0
	ldr	r2, [r0, r2, lsl #2]
.LVL5803:
.LBE15293:
.LBE15295:
	.loc 18 359 0
	add	r3, r3, #1
	lsr	r3, r2, r3
	tst	r3, #1
	beq	.L5286
.LVL5804:
.LBB15296:
.LBB15297:
	.loc 18 179 0
	lsr	r4, r4, #5
.LVL5805:
	.loc 18 182 0
	and	r2, r1, #31
	mov	r3, #1
	lsl	r3, r3, r2
	add	r4, r4, #160
.LVL5806:
	str	r3, [r0, r4, lsl #2]
.LVL5807:
.L5286:
.LBE15297:
.LBE15296:
	.loc 18 362 0
	ldr	r3, [r5, #4]
	.loc 18 363 0
	movw	r2, #1023
	str	r2, [r5, #8]
	.loc 18 362 0
	str	r1, [r3, #16]
	pop	{r4, r5, r6, pc}
.LVL5808:
.L5274:
.LBE15289:
.LBE15288:
.LBB15301:
	.loc 51 213 0
	movw	r3, #:lower16:intStateIRQNode
	movt	r3, #:upper16:intStateIRQNode
	ldr	r3, [r3]
	ldr	r0, [r3, r0, lsl #4]
.LVL5809:
	add	r3, r3, r4, lsl #4
.LVL5810:
.LBB15302:
.LBB15303:
	.loc 4 997 0
	and	r2, r0, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r2, r0
.LVL5811:
	.loc 4 998 0
	andne	r2, r0, #15
.LBE15303:
.LBE15302:
	.loc 51 215 0
	cmp	r2, #6
	beq	.L5295
.L5279:
	.loc 51 221 0
	movw	r0, #:lower16:.LC259
.LVL5812:
	mov	r1, r4
	movt	r0, #:upper16:.LC259
	bl	kprintf
.LVL5813:
.L5281:
.LBB15304:
.LBB15305:
.LBB15306:
.LBB15307:
	.loc 18 199 0
	movw	r5, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r4, #5
.LVL5814:
	.loc 18 199 0
	movt	r5, #:upper16:.LANCHOR2
	ldr	r1, [r5]
	and	r0, r4, #31
	mov	r2, #1
	add	r3, r3, #96
	lsl	r2, r2, r0
	str	r2, [r1, r3, lsl #2]
.LVL5815:
	b	.L5282
.LVL5816:
.L5272:
.LBE15307:
.LBE15306:
.LBE15305:
.LBE15304:
.LBE15301:
.LBB15312:
.LBB15313:
.LBB15314:
.LBB15315:
	movw	r5, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r0, #5
.LVL5817:
	.loc 18 199 0
	movt	r5, #:upper16:.LANCHOR2
	ldr	r1, [r5]
	and	r0, r0, #31
.LVL5818:
	mov	r2, #1
	add	r3, r3, #96
	lsl	r2, r2, r0
.LBE15315:
.LBE15314:
.LBE15313:
.LBE15312:
	.loc 51 245 0
	movw	r0, #:lower16:.LC260
	movt	r0, #:upper16:.LC260
.LBB15319:
.LBB15318:
.LBB15317:
.LBB15316:
	.loc 18 199 0
	str	r2, [r1, r3, lsl #2]
.LVL5819:
.LBE15316:
.LBE15317:
.LBE15318:
.LBE15319:
	.loc 51 245 0
	mov	r1, r4
	bl	kprintf
.LVL5820:
	.loc 51 247 0
	b	.L5282
.LVL5821:
.L5271:
	.loc 51 251 0
	movw	r1, #:lower16:.LC261
	movw	r0, #:lower16:.LC262
.LVL5822:
	movt	r1, #:upper16:.LC261
	movt	r0, #:upper16:.LC262
	ldr	r3, .L5297
	mov	r2, #251
	bl	_fail
.LVL5823:
.L5295:
.LBB15320:
.LBB15308:
.LBB15309:
	.loc 4 1330 0 discriminator 1
	and	r2, r0, #15
	cmp	r2, #6
	bne	.L5296
.LBE15309:
.LBE15308:
	.loc 51 213 0
	ldr	r1, [r3, #4]
	.loc 51 215 0
	tst	r1, #1
	beq	.L5279
.LVL5824:
	.loc 51 217 0
	lsr	r1, r1, #4
	bic	r0, r0, #15
.LVL5825:
	bl	sendAsyncIPC
.LVL5826:
	b	.L5281
.LVL5827:
.L5294:
	movw	r5, #:lower16:.LANCHOR2
.LBE15320:
.LBB15321:
.LBB15283:
	.loc 55 196 0
	bl	handle_reset_on_serial
.LVL5828:
	movt	r5, #:upper16:.LANCHOR2
	b	.L5282
.LVL5829:
.L5284:
.LBE15283:
.LBE15321:
.LBB15322:
.LBB15300:
.LBB15298:
.LBB15299:
	.loc 18 358 0
	movw	r1, #:lower16:.LC67
	movw	r0, #:lower16:.LC68
	movt	r1, #:upper16:.LC67
	movt	r0, #:upper16:.LC68
	ldr	r3, .L5297+4
	movw	r2, #358
	bl	_assert_fail
.LVL5830:
.L5296:
.LBE15299:
.LBE15298:
.LBE15300:
.LBE15322:
.LBB15323:
.LBB15311:
.LBB15310:
	bl	cap_async_endpoint_cap_get_capAEPCanSend.part.231
.LVL5831:
.L5298:
	.align	2
.L5297:
	.word	.LANCHOR6-3580
	.word	.LANCHOR4+1676
.LBE15310:
.LBE15311:
.LBE15323:
	.cfi_endproc
.LFE640:
	.size	handleInterrupt, .-handleInterrupt
	.align	2
	.global	handleInterruptEntry
	.syntax unified
	.arm
	.type	handleInterruptEntry, %function
handleInterruptEntry:
.LFB262:
	.loc 53 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB15324:
.LBB15325:
	.loc 18 311 0
	movw	r3, #:lower16:.LANCHOR2
.LBE15325:
.LBE15324:
	.loc 53 34 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB15327:
.LBB15326:
	.loc 18 311 0
	movt	r3, #:upper16:.LANCHOR2
	ldr	r0, [r3, #8]
	ubfx	r0, r0, #0, #10
	cmp	r0, #1020
	bcc	.L5300
	.loc 18 312 0
	ldr	r2, [r3, #4]
	ldr	r2, [r2, #12]
	.loc 18 315 0
	ubfx	r0, r2, #0, #10
	.loc 18 312 0
	str	r2, [r3, #8]
	.loc 18 315 0
	cmp	r0, #1020
	bcc	.L5300
.LBE15326:
.LBE15327:
	.loc 53 41 0
	movw	r0, #:lower16:.LC263
	movt	r0, #:upper16:.LC263
	bl	kprintf
.LVL5832:
.L5302:
	.loc 53 45 0
	bl	schedule
.LVL5833:
	.loc 53 46 0
	bl	activateThread
.LVL5834:
	.loc 53 49 0
	mov	r0, #0
	pop	{r4, pc}
.L5300:
	.loc 53 39 0
	bl	handleInterrupt
.LVL5835:
	b	.L5302
	.cfi_endproc
.LFE262:
	.size	handleInterruptEntry, .-handleInterruptEntry
	.align	2
	.global	performInvocation_AsyncEndpoint
	.syntax unified
	.arm
	.type	performInvocation_AsyncEndpoint, %function
performInvocation_AsyncEndpoint:
.LFB656:
	.loc 52 712 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5836:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 52 713 0
	bl	sendAsyncIPC
.LVL5837:
	.loc 52 716 0
	mov	r0, #0
	pop	{r4, pc}
	.cfi_endproc
.LFE656:
	.size	performInvocation_AsyncEndpoint, .-performInvocation_AsyncEndpoint
	.align	2
	.global	invokeTCB_Resume
	.syntax unified
	.arm
	.type	invokeTCB_Resume, %function
invokeTCB_Resume:
.LFB683:
	.loc 40 852 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5838:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB15352:
.LBB15353:
.LBB15354:
	.loc 26 33 0
	ldr	r3, [r0, #72]
	ands	r3, r3, #15
	beq	.L5310
	sub	r3, r3, #3
	cmp	r3, #3
	bls	.L5310
.LBE15354:
.LBE15353:
.LBE15352:
	.loc 40 855 0
	mov	r0, #0
.LVL5839:
	pop	{r4, pc}
.LVL5840:
.L5310:
	mov	r4, r0
.LBB15373:
.LBB15355:
.LBB15356:
	.loc 26 109 0
	bl	ipcCancel
.LVL5841:
.LBB15357:
.LBB15358:
	.loc 41 683 0
	bic	r3, r4, #508
	bic	r3, r3, #3
	ldr	r2, [r3, #32]
	add	r0, r3, #32
.LVL5842:
.LBB15359:
.LBB15360:
	.loc 4 997 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 4 998 0
	andne	r2, r2, #15
.LVL5843:
	.loc 4 997 0
	beq	.L5323
.L5311:
.LVL5844:
.LBE15360:
.LBE15359:
	.loc 41 684 0
	cmp	r2, #0
.LVL5845:
	.loc 41 687 0
	moveq	r1, #8
	moveq	r2, #1
	streq	r1, [r3, #32]
	streq	r2, [r0, #4]
.LBE15358:
.LBE15357:
	.loc 26 111 0
	mov	r0, r4
	bl	setThreadState.constprop.305
.LVL5846:
.LBB15364:
.LBB15365:
	.loc 40 53 0
	ldr	r3, [r4, #76]
	tst	r3, #1
	beq	.L5324
.L5313:
.LVL5847:
.LBE15365:
.LBE15364:
.LBB15367:
.LBB15368:
	.loc 26 422 0
	mov	r0, r4
	mov	r1, #0
	bl	possibleSwitchTo
.LVL5848:
.LBE15368:
.LBE15367:
.LBE15356:
.LBE15355:
.LBE15373:
	.loc 40 855 0
	mov	r0, #0
	pop	{r4, pc}
.LVL5849:
.L5323:
.LBB15374:
.LBB15372:
.LBB15371:
.LBB15369:
.LBB15363:
.LBB15362:
.LBB15361:
	.loc 4 999 0
	uxtb	r2, r2
	b	.L5311
.LVL5850:
.L5324:
.LBE15361:
.LBE15362:
.LBE15363:
.LBE15369:
.LBB15370:
.LBB15366:
	mov	r0, r4
	bl	tcbSchedEnqueue.part.235
.LVL5851:
	b	.L5313
.LBE15366:
.LBE15370:
.LBE15371:
.LBE15372:
.LBE15374:
	.cfi_endproc
.LFE683:
	.size	invokeTCB_Resume, .-invokeTCB_Resume
	.align	2
	.global	deleteCallerCap
	.syntax unified
	.arm
	.type	deleteCallerCap, %function
deleteCallerCap:
.LFB668:
	.loc 40 218 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5852:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 40 221 0
	bic	r4, r0, #508
	bic	r4, r4, #3
	.loc 40 218 0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	.loc 40 221 0
	add	r5, r4, #48
.LVL5853:
	ldr	r3, [r4, #48]
.LVL5854:
.LBB15375:
.LBB15376:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL5855:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE15376:
.LBE15375:
	.loc 40 222 0
	cmp	r3, #8
	beq	.L5330
	.loc 40 226 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL5856:
.L5330:
	.cfi_restore_state
	.loc 40 223 0
	mov	r3, #1
	add	r0, sp, #8
.LVL5857:
	str	r3, [sp]
	ldm	r5, {r1, r2}
	bl	finaliseCap
.LVL5858:
	.loc 40 224 0
	mov	r3, #0
	str	r3, [r4, #48]
	str	r3, [r5, #4]
	.loc 40 226 0
	add	sp, sp, #28
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE668:
	.size	deleteCallerCap, .-deleteCallerCap
	.align	2
	.syntax unified
	.arm
	.type	handleWait, %function
handleWait:
.LFB268:
	.loc 53 311 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5859:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 53 315 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	.loc 53 311 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	.loc 53 311 0
	mov	r8, r0
.LBB15377:
.LBB15378:
	.loc 44 25 0
	add	r0, sp, #4
.LVL5860:
.LBE15378:
.LBE15377:
	.loc 53 315 0
	ldr	r1, [r4]
.LVL5861:
.LBB15380:
.LBB15381:
	.loc 10 27 0
	ldr	r6, [r1]
.LVL5862:
.LBE15381:
.LBE15380:
.LBB15382:
.LBB15379:
	.loc 44 25 0
	mov	r2, r6
	bl	lookupSlot
.LVL5863:
	.loc 44 26 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L5332
.LVL5864:
	.loc 44 33 0
	ldr	r3, [sp, #8]
	ldm	r3, {r5, r7}
.LVL5865:
.LBE15379:
.LBE15382:
.LBB15383:
.LBB15384:
	.loc 4 997 0
	and	r3, r5, #14
	cmp	r3, #14
	.loc 4 999 0
	uxtbeq	r3, r5
.LVL5866:
	.loc 4 998 0
	andne	r3, r5, #15
.LBE15384:
.LBE15383:
	.loc 53 325 0
	cmp	r3, #4
	beq	.L5336
	cmp	r3, #6
	bne	.L5346
.LVL5867:
.LBB15385:
.LBB15386:
.LBB15387:
	.loc 4 1356 0
	and	r3, r5, #15
	cmp	r3, #6
	bne	.L5350
.LVL5868:
	bic	r3, r5, #15
.LBE15387:
.LBE15386:
	.loc 53 344 0
	tst	r7, #2
.LBB15389:
.LBB15390:
	.loc 4 21 0
	ldr	r3, [r3, #12]
	ldr	r0, [r4]
	bic	r3, r3, #15
.LVL5869:
.LBE15390:
.LBE15389:
	.loc 53 344 0
	beq	.L5343
	.loc 53 344 0 is_stmt 0 discriminator 1
	cmp	r3, #0
	bne	.L5351
.L5345:
	.loc 53 352 0 is_stmt 1
	add	r2, sp, #16
	str	r5, [sp, #8]
	str	r7, [sp, #12]
	mov	r3, r8
.LVL5870:
	ldmdb	r2, {r1, r2}
	bl	receiveAsyncIPC
.LVL5871:
.LBE15385:
	.loc 53 361 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5872:
.L5346:
	.cfi_restore_state
	.loc 53 358 0
	ldr	r0, [r4]
	.loc 53 356 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 53 357 0
	movw	r3, #:lower16:current_fault
.L5349:
.LBB15392:
	.loc 53 346 0
	movt	r2, #:upper16:current_lookup_fault
	mov	lr, #1
	mov	ip, #0
	.loc 53 347 0
	movt	r3, #:upper16:current_fault
	mov	r1, #-2147483647
	.loc 53 346 0
	str	lr, [r2]
	str	ip, [r2, #4]
.LVL5873:
	.loc 53 347 0
	stm	r3, {r1, r6}
.LBE15392:
	.loc 53 361 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5874:
	.loc 53 321 0
	b	handleFault
.LVL5875:
.L5336:
	.cfi_restore_state
.LBB15393:
.LBB15394:
	.loc 4 1174 0
	and	r3, r5, #15
	cmp	r3, #4
	bne	.L5352
.LBE15394:
.LBE15393:
	.loc 53 328 0
	ubfx	r3, r7, #1, #1
	eor	r3, r3, #1
	cmp	r8, #0
	movne	r8, r3
	orreq	r8, r3, #1
.LVL5876:
	cmp	r8, #0
	bne	.L5346
	.loc 53 335 0
	ldr	r0, [r4]
	bl	deleteCallerCap
.LVL5877:
	.loc 53 336 0
	add	r3, sp, #16
	str	r5, [sp, #8]
	str	r7, [sp, #12]
	ldr	r0, [r4]
	ldmdb	r3, {r1, r2}
	bl	receiveIPC
.LVL5878:
	.loc 53 361 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5879:
.L5351:
	.cfi_restore_state
.LBB15396:
	.loc 53 344 0 discriminator 2
	cmp	r0, r3
	beq	.L5345
.L5343:
	.loc 53 346 0
	movw	r2, #:lower16:current_lookup_fault
	.loc 53 347 0
	movw	r3, #:lower16:current_fault
.LVL5880:
	b	.L5349
.LVL5881:
.L5332:
.LBE15396:
	.loc 53 320 0
	movw	r3, #:lower16:current_fault
.LVL5882:
	mov	r2, #-2147483647
	movt	r3, #:upper16:current_fault
	.loc 53 321 0
	ldr	r0, [r4]
	.loc 53 320 0
	stm	r3, {r2, r6}
	.loc 53 361 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 14
	.cfi_def_cfa_offset 0
.LVL5883:
	.loc 53 321 0
	b	handleFault
.LVL5884:
.L5350:
	.cfi_restore_state
.LBB15397:
.LBB15391:
.LBB15388:
	bl	cap_async_endpoint_cap_get_capAEPPtr.isra.72.part.73
.LVL5885:
.L5352:
.LBE15388:
.LBE15391:
.LBE15397:
.LBB15398:
.LBB15395:
	bl	cap_endpoint_cap_get_capCanReceive.part.71
.LVL5886:
.LBE15395:
.LBE15398:
	.cfi_endproc
.LFE268:
	.size	handleWait, .-handleWait
	.align	2
	.global	suspend
	.syntax unified
	.arm
	.type	suspend, %function
suspend:
.LFB555:
	.loc 26 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5887:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 26 95 0
	mov	r4, r0
	.loc 26 96 0
	bl	ipcCancel
.LVL5888:
	.loc 26 99 0
	mov	r0, r4
	bl	deleteCallerCap
.LVL5889:
.LBB15411:
.LBB15412:
.LBB15413:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE15413:
.LBE15412:
.LBB15416:
.LBB15417:
	.loc 4 269 0
	ldr	r3, [r4, #72]
.LBE15417:
.LBE15416:
.LBB15419:
.LBB15414:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LBE15414:
.LBE15419:
.LBB15420:
.LBB15418:
	.loc 4 269 0
	bic	r3, r3, #15
	str	r3, [r4, #72]
.LVL5890:
.LBE15418:
.LBE15420:
.LBB15421:
.LBB15415:
	.loc 26 435 0
	cmp	r4, r2
	beq	.L5356
.L5354:
.LVL5891:
.LBE15415:
.LBE15421:
.LBE15411:
	.loc 26 102 0
	mov	r0, r4
	.loc 26 103 0
	pop	{r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL5892:
	.loc 26 102 0
	b	tcbSchedDequeue
.LVL5893:
.L5356:
	.cfi_restore_state
.LBB15425:
.LBB15422:
.LBB15423:
.LBB15424:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5354
	mov	r0, r4
	bl	scheduleTCB.part.236
.LVL5894:
	b	.L5354
.LBE15424:
.LBE15423:
.LBE15422:
.LBE15425:
	.cfi_endproc
.LFE555:
	.size	suspend, .-suspend
	.align	2
	.global	invokeTCB_Suspend
	.syntax unified
	.arm
	.type	invokeTCB_Suspend, %function
invokeTCB_Suspend:
.LFB682:
	.loc 40 845 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5895:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 40 846 0
	bl	suspend
.LVL5896:
	.loc 40 848 0
	mov	r0, #0
	pop	{r4, pc}
	.cfi_endproc
.LFE682:
	.size	invokeTCB_Suspend, .-invokeTCB_Suspend
	.align	2
	.global	invokeTCB_CopyRegisters
	.syntax unified
	.arm
	.type	invokeTCB_CopyRegisters, %function
invokeTCB_CopyRegisters:
.LFB685:
	.loc 40 928 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5897:
	.loc 40 929 0
	cmp	r2, #0
	.loc 40 928 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 40 928 0
	ldr	r7, [sp, #24]
	mov	r4, r0
	mov	r5, r1
	mov	r8, r3
	ldr	r6, [sp, #28]
	.loc 40 929 0
	bne	.L5376
	.loc 40 933 0
	cmp	r8, #0
	bne	.L5377
.LVL5898:
.L5361:
	.loc 40 937 0
	cmp	r7, #0
	beq	.L5362
.LVL5899:
.LBB15468:
.LBB15469:
.LBB15470:
	.loc 10 27 0
	ldr	r3, [r5, #68]
.LVL5900:
.LBE15470:
.LBE15469:
.LBB15480:
.LBB15481:
	.loc 10 21 0
	str	r3, [r4, #68]
.LVL5901:
.LBE15481:
.LBE15480:
.LBB15491:
.LBB15471:
	.loc 10 27 0
	ldr	r2, [r5, #52]
.LVL5902:
.LBE15471:
.LBE15491:
.LBB15492:
.LBB15482:
	.loc 10 21 0
	str	r2, [r4, #52]
.LVL5903:
.LBE15482:
.LBE15492:
.LBB15493:
.LBB15472:
	.loc 10 27 0
	ldr	r2, [r5, #64]
.LVL5904:
.LBE15472:
.LBE15493:
.LBB15494:
.LBB15483:
	.loc 10 21 0
	str	r2, [r4, #64]
.LVL5905:
.LBE15483:
.LBE15494:
.LBB15495:
.LBB15473:
	.loc 10 27 0
	ldr	r2, [r5]
.LVL5906:
.LBE15473:
.LBE15495:
.LBB15496:
.LBB15484:
	.loc 10 21 0
	str	r2, [r4]
.LVL5907:
.LBE15484:
.LBE15496:
.LBB15497:
.LBB15474:
	.loc 10 27 0
	ldr	r2, [r5, #4]
.LVL5908:
.LBE15474:
.LBE15497:
.LBB15498:
.LBB15485:
	.loc 10 21 0
	str	r2, [r4, #4]
.LVL5909:
.LBE15485:
.LBE15498:
.LBB15499:
.LBB15475:
	.loc 10 27 0
	ldr	r2, [r5, #32]
.LVL5910:
.LBE15475:
.LBE15499:
.LBB15500:
.LBB15486:
	.loc 10 21 0
	str	r2, [r4, #32]
.LVL5911:
.LBE15486:
.LBE15500:
.LBB15501:
.LBB15476:
	.loc 10 27 0
	ldr	r2, [r5, #36]
.LVL5912:
.LBE15476:
.LBE15501:
.LBB15502:
.LBB15487:
	.loc 10 21 0
	str	r2, [r4, #36]
.LVL5913:
.LBE15487:
.LBE15502:
.LBB15503:
.LBB15477:
	.loc 10 27 0
	ldr	r2, [r5, #40]
.LVL5914:
.LBE15477:
.LBE15503:
.LBB15504:
.LBB15488:
	.loc 10 21 0
	str	r2, [r4, #40]
.LVL5915:
.LBE15488:
.LBE15504:
.LBB15505:
.LBB15478:
	.loc 10 27 0
	ldr	r2, [r5, #44]
.LVL5916:
.LBE15478:
.LBE15505:
.LBB15506:
.LBB15489:
	.loc 10 21 0
	str	r2, [r4, #44]
.LVL5917:
.LBE15489:
.LBE15506:
.LBB15507:
.LBB15479:
	.loc 10 27 0
	ldr	r2, [r5, #48]
.LVL5918:
.LBE15479:
.LBE15507:
.LBB15508:
.LBB15509:
.LBB15510:
	.loc 10 21 0
	str	r3, [r4, #60]
.LBE15510:
.LBE15509:
.LBE15508:
.LBB15511:
.LBB15490:
	str	r2, [r4, #48]
.LVL5919:
.L5362:
.LBE15490:
.LBE15511:
.LBE15468:
	.loc 40 951 0
	cmp	r6, #0
	beq	.L5374
.LVL5920:
.LBB15512:
.LBB15513:
.LBB15514:
.LBB15515:
	.loc 10 27 0
	ldr	r3, [r5, #8]
.LVL5921:
.LBE15515:
.LBE15514:
.LBB15522:
.LBB15523:
	.loc 10 21 0
	str	r3, [r4, #8]
.LVL5922:
.LBE15523:
.LBE15522:
.LBB15530:
.LBB15516:
	.loc 10 27 0
	ldr	r3, [r5, #12]
.LVL5923:
.LBE15516:
.LBE15530:
.LBB15531:
.LBB15524:
	.loc 10 21 0
	str	r3, [r4, #12]
.LVL5924:
.LBE15524:
.LBE15531:
.LBB15532:
.LBB15517:
	.loc 10 27 0
	ldr	r3, [r5, #16]
.LVL5925:
.LBE15517:
.LBE15532:
.LBB15533:
.LBB15525:
	.loc 10 21 0
	str	r3, [r4, #16]
.LVL5926:
.LBE15525:
.LBE15533:
.LBB15534:
.LBB15518:
	.loc 10 27 0
	ldr	r3, [r5, #20]
.LVL5927:
.LBE15518:
.LBE15534:
.LBB15535:
.LBB15526:
	.loc 10 21 0
	str	r3, [r4, #20]
.LVL5928:
.LBE15526:
.LBE15535:
.LBB15536:
.LBB15519:
	.loc 10 27 0
	ldr	r3, [r5, #24]
.LVL5929:
.LBE15519:
.LBE15536:
.LBB15537:
.LBB15527:
	.loc 10 21 0
	str	r3, [r4, #24]
.LVL5930:
.LBE15527:
.LBE15537:
.LBB15538:
.LBB15520:
	.loc 10 27 0
	ldr	r3, [r5, #28]
.LVL5931:
.LBE15520:
.LBE15538:
.LBB15539:
.LBB15528:
	.loc 10 21 0
	str	r3, [r4, #28]
.LVL5932:
.LBE15528:
.LBE15539:
.LBB15540:
.LBB15521:
	.loc 10 27 0
	ldr	r3, [r5, #56]
.LVL5933:
.LBE15521:
.LBE15540:
.LBB15541:
.LBB15529:
	.loc 10 21 0
	str	r3, [r4, #56]
.LVL5934:
.L5374:
.LBE15529:
.LBE15541:
.LBE15513:
.LBE15512:
	.loc 40 962 0
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5935:
.L5376:
	.loc 40 930 0
	mov	r0, r1
.LVL5936:
	bl	suspend
.LVL5937:
	.loc 40 933 0
	cmp	r8, #0
	beq	.L5361
.L5377:
	.loc 40 934 0
	mov	r0, r4
	bl	restart
.LVL5938:
	b	.L5361
	.cfi_endproc
.LFE685:
	.size	invokeTCB_CopyRegisters, .-invokeTCB_CopyRegisters
	.align	2
	.global	invokeTCB_ReadRegisters
	.syntax unified
	.arm
	.type	invokeTCB_ReadRegisters, %function
invokeTCB_ReadRegisters:
.LFB686:
	.loc 40 973 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5939:
	.loc 40 978 0
	movw	r3, #:lower16:ksCurThread
.LVL5940:
	.loc 40 980 0
	cmp	r1, #0
	.loc 40 973 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 40 978 0
	movt	r3, #:upper16:ksCurThread
	.loc 40 973 0
	mov	r4, r2
	.loc 40 978 0
	ldr	r5, [r3]
.LVL5941:
	.loc 40 973 0
	mov	r6, r0
	ldr	r7, [sp, #24]
	.loc 40 980 0
	bne	.L5413
.LVL5942:
.L5379:
	.loc 40 989 0
	cmp	r7, #0
	beq	.L5380
.LBB15557:
	.loc 40 992 0
	mov	r1, r5
	mov	r0, #1
	bl	lookupIPCBuffer
.LVL5943:
	.loc 40 996 0
	cmp	r4, #0
.LBB15558:
.LBB15559:
	.loc 10 21 0
	mov	r3, #0
	str	r3, [r5]
.LVL5944:
.LBE15559:
.LBE15558:
	.loc 40 996 0
	beq	.L5390
.LVL5945:
.LBB15560:
.LBB15561:
	.loc 10 21 0
	ldr	r3, [r6, #68]
.LBE15561:
.LBE15560:
	.loc 40 996 0
	cmp	r4, #1
.LBB15569:
.LBB15562:
	.loc 10 21 0
	str	r3, [r5, #8]
.LVL5946:
.LBE15562:
.LBE15569:
	.loc 40 996 0
	bls	.L5391
.LVL5947:
.LBB15570:
.LBB15563:
	.loc 10 21 0
	ldr	r3, [r6, #52]
.LBE15563:
.LBE15570:
	.loc 40 996 0
	cmp	r4, #2
.LBB15571:
.LBB15564:
	.loc 10 21 0
	str	r3, [r5, #12]
.LVL5948:
.LBE15564:
.LBE15571:
	.loc 40 996 0
	beq	.L5390
.LVL5949:
.LBB15572:
.LBB15565:
	.loc 10 21 0
	ldr	r3, [r6, #64]
.LBE15565:
.LBE15572:
	.loc 40 996 0
	cmp	r4, #3
.LBB15573:
.LBB15566:
	.loc 10 21 0
	str	r3, [r5, #16]
.LVL5950:
.LBE15566:
.LBE15573:
	.loc 40 996 0
	beq	.L5390
.LVL5951:
.LBB15574:
.LBB15567:
	.loc 10 21 0
	ldr	r3, [r6]
.LBE15567:
.LBE15574:
	.loc 40 996 0
	cmp	r4, #4
.LBB15575:
.LBB15568:
	.loc 10 21 0
	str	r3, [r5, #20]
.LVL5952:
.LBE15568:
.LBE15575:
	.loc 40 996 0
	beq	.L5390
	.loc 40 1001 0 discriminator 3
	cmp	r0, #0
	bne	.L5384
	.loc 40 1001 0 is_stmt 0
	mov	r3, r0
	.loc 40 996 0 is_stmt 1
	mov	r2, #4
.LVL5953:
.L5385:
.LBB15576:
.LBB15577:
	.loc 10 21 0
	add	r3, r3, r2
.LVL5954:
	str	r3, [r5, #4]
.LVL5955:
.L5380:
.LBE15577:
.LBE15576:
.LBE15557:
	.loc 40 1026 0
	mov	r0, r5
	bl	setThreadState.constprop.307
.LVL5956:
	.loc 40 1029 0
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL5957:
.L5413:
	.loc 40 981 0
	bl	suspend
.LVL5958:
	b	.L5379
.LVL5959:
.L5390:
.LBB15604:
	.loc 40 996 0
	mov	r2, r4
.L5381:
.LVL5960:
	.loc 40 1015 0
	cmp	r0, #0
	moveq	r3, r0
	beq	.L5385
.LVL5961:
.L5389:
	.loc 40 1016 0
	cmp	r4, #10
	movls	r3, #0
	bls	.L5385
.LVL5962:
.LBB15578:
.LBB15579:
	.loc 10 27 0
	ldr	r3, [r6, #8]
.LVL5963:
.LBE15579:
.LBE15578:
	.loc 40 1017 0
	cmp	r4, #11
	.loc 40 1018 0
	str	r3, [r0, #44]
.LVL5964:
	.loc 40 1017 0
	beq	.L5399
.LVL5965:
.LBB15586:
.LBB15580:
	.loc 10 27 0
	ldr	r3, [r6, #12]
.LVL5966:
.LBE15580:
.LBE15586:
	.loc 40 1017 0
	cmp	r4, #12
	.loc 40 1018 0
	str	r3, [r0, #48]
.LVL5967:
	.loc 40 1017 0
	beq	.L5400
.LVL5968:
.LBB15587:
.LBB15581:
	.loc 10 27 0
	ldr	r3, [r6, #16]
.LVL5969:
.LBE15581:
.LBE15587:
	.loc 40 1017 0
	cmp	r4, #13
	.loc 40 1018 0
	str	r3, [r0, #52]
.LVL5970:
	.loc 40 1017 0
	beq	.L5401
.LVL5971:
.LBB15588:
.LBB15582:
	.loc 10 27 0
	ldr	r3, [r6, #20]
.LVL5972:
.LBE15582:
.LBE15588:
	.loc 40 1017 0
	cmp	r4, #14
	.loc 40 1018 0
	str	r3, [r0, #56]
.LVL5973:
	.loc 40 1017 0
	beq	.L5402
.LVL5974:
.LBB15589:
.LBB15583:
	.loc 10 27 0
	ldr	r3, [r6, #24]
.LVL5975:
.LBE15583:
.LBE15589:
	.loc 40 1017 0
	cmp	r4, #15
	.loc 40 1018 0
	str	r3, [r0, #60]
.LVL5976:
	.loc 40 1017 0
	beq	.L5403
.LVL5977:
.LBB15590:
.LBB15584:
	.loc 10 27 0
	ldr	r3, [r6, #28]
.LVL5978:
.LBE15584:
.LBE15590:
	.loc 40 1017 0
	cmp	r4, #16
	.loc 40 1018 0
	str	r3, [r0, #64]
.LVL5979:
	.loc 40 1017 0
	beq	.L5404
.LVL5980:
.LBB15591:
.LBB15585:
	.loc 10 27 0
	ldr	r1, [r6, #56]
.LVL5981:
.LBE15585:
.LBE15591:
	mov	r3, #7
	.loc 40 1018 0
	str	r1, [r0, #68]
.LVL5982:
	b	.L5385
.LVL5983:
.L5384:
.LBB15592:
.LBB15593:
	.loc 10 27 0 discriminator 1
	ldr	r3, [r6, #4]
.LVL5984:
.LBE15593:
.LBE15592:
	.loc 40 1002 0 discriminator 1
	cmp	r4, #5
	.loc 40 1003 0 discriminator 1
	movls	r2, #5
	str	r3, [r0, #20]
.LVL5985:
	.loc 40 1002 0 discriminator 1
	bls	.L5389
.LVL5986:
.LBB15599:
.LBB15594:
	.loc 10 27 0
	ldr	r3, [r6, #32]
.LVL5987:
.LBE15594:
.LBE15599:
	.loc 40 1002 0
	cmp	r4, #6
	.loc 40 1003 0
	str	r3, [r0, #24]
.LVL5988:
	.loc 40 1002 0
	bls	.L5394
.LVL5989:
.LBB15600:
.LBB15595:
	.loc 10 27 0
	ldr	r3, [r6, #36]
.LVL5990:
.LBE15595:
.LBE15600:
	.loc 40 1002 0
	cmp	r4, #7
	.loc 40 1003 0
	str	r3, [r0, #28]
.LVL5991:
	.loc 40 1002 0
	bls	.L5395
.LVL5992:
.LBB15601:
.LBB15596:
	.loc 10 27 0
	ldr	r3, [r6, #40]
.LVL5993:
.LBE15596:
.LBE15601:
	.loc 40 1002 0
	cmp	r4, #8
	.loc 40 1003 0
	str	r3, [r0, #32]
.LVL5994:
	.loc 40 1002 0
	bls	.L5396
.LVL5995:
.LBB15602:
.LBB15597:
	.loc 10 27 0
	ldr	r3, [r6, #44]
.LVL5996:
.LBE15597:
.LBE15602:
	.loc 40 1002 0
	cmp	r4, #9
	.loc 40 1003 0
	str	r3, [r0, #36]
.LVL5997:
	.loc 40 1002 0
	bls	.L5397
.LVL5998:
.LBB15603:
.LBB15598:
	.loc 10 27 0
	ldr	r3, [r6, #48]
.LVL5999:
.LBE15598:
.LBE15603:
	.loc 40 1003 0
	mov	r2, #10
	str	r3, [r0, #40]
.LVL6000:
	b	.L5389
.LVL6001:
.L5391:
	.loc 40 996 0
	mov	r2, #1
	b	.L5381
.LVL6002:
.L5399:
	.loc 40 1017 0
	mov	r3, #1
	b	.L5385
.LVL6003:
.L5400:
	mov	r3, #2
	b	.L5385
.LVL6004:
.L5401:
	mov	r3, #3
	b	.L5385
.LVL6005:
.L5397:
	.loc 40 1003 0
	mov	r2, #9
	b	.L5389
.LVL6006:
.L5396:
	mov	r2, #8
	b	.L5389
.LVL6007:
.L5395:
	mov	r2, #7
	b	.L5389
.LVL6008:
.L5394:
	mov	r2, #6
	b	.L5389
.LVL6009:
.L5402:
	.loc 40 1017 0
	mov	r3, #4
	b	.L5385
.LVL6010:
.L5403:
	mov	r3, #5
	b	.L5385
.LVL6011:
.L5404:
	mov	r3, #6
	b	.L5385
.LBE15604:
	.cfi_endproc
.LFE686:
	.size	invokeTCB_ReadRegisters, .-invokeTCB_ReadRegisters
	.align	2
	.global	decodeReadRegisters
	.syntax unified
	.arm
	.type	decodeReadRegisters, %function
decodeReadRegisters:
.LFB673:
	.loc 40 405 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6012:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 40 408 0
	cmp	r2, #1
	.loc 40 405 0
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 40 405 0
	add	r2, sp, #16
.LVL6013:
	stmdb	r2, {r0, r1}
	.loc 40 408 0
	bls	.L5420
.LVL6014:
.LBB15605:
.LBB15606:
	.loc 37 30 0
	movw	r2, #:lower16:ksCurThread
	movt	r2, #:upper16:ksCurThread
	ldr	r2, [r2]
.LVL6015:
.LBE15606:
.LBE15605:
.LBB15610:
.LBB15611:
.LBB15612:
.LBB15613:
	.loc 10 27 0
	ldr	r4, [r2, #12]
.LVL6016:
.LBE15613:
.LBE15612:
.LBE15611:
.LBE15610:
	.loc 40 417 0
	sub	r1, r4, #1
	cmp	r1, #16
	bls	.L5417
	.loc 40 418 0
	ldr	r1, [r2, #68]
	add	r3, r2, #140
.LVL6017:
	movw	r0, #:lower16:.LC3
	str	r3, [sp]
	movt	r0, #:upper16:.LC3
	mov	r3, r2
	str	r1, [sp, #4]
	movw	r2, #419
	ldr	r1, .L5422
	bl	kprintf
.LVL6018:
	movw	r0, #:lower16:.LC265
	mov	r1, r4
	movt	r0, #:upper16:.LC265
	bl	kprintf
.LVL6019:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6020:
	.loc 40 420 0
	movw	r3, #:lower16:current_syscall_error
	mov	r0, #4
	movt	r3, #:upper16:current_syscall_error
	.loc 40 421 0
	mov	r1, #1
	.loc 40 422 0
	mov	r2, #17
	.loc 40 420 0
	str	r0, [r3, #24]
	.loc 40 421 0
	str	r1, [r3, #8]
	.loc 40 434 0
	mov	r0, #3
	.loc 40 422 0
	str	r2, [r3, #12]
	.loc 40 434 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6021:
.L5417:
	.cfi_restore_state
	.loc 40 429 0
	mov	r0, r2
	mov	r5, r3
.LBB15614:
.LBB15609:
.LBB15607:
.LBB15608:
	.loc 10 27 0
	ldr	r6, [r2, #8]
.LBE15608:
.LBE15607:
.LBE15609:
.LBE15614:
	.loc 40 429 0
	bl	setThreadState.constprop.305
.LVL6022:
	ldr	r0, [sp, #8]
.LVL6023:
.LBB15615:
.LBB15616:
	.loc 4 1576 0
	and	r3, r0, #15
	cmp	r3, #12
	bne	.L5421
.LVL6024:
.LBE15616:
.LBE15615:
	.loc 40 430 0
	str	r5, [sp, #32]
	mov	r2, r4
	and	r1, r6, #1
	bic	r0, r0, #15
	mov	r3, #0
	.loc 40 434 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6025:
	.loc 40 430 0
	b	invokeTCB_ReadRegisters
.LVL6026:
.L5420:
	.cfi_restore_state
	.loc 40 409 0
	movw	r3, #:lower16:ksCurThread
.LVL6027:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #409
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5422
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6028:
	movw	r0, #:lower16:.LC264
	movt	r0, #:upper16:.LC264
	bl	kprintf
.LVL6029:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6030:
	.loc 40 410 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 40 434 0
	mov	r0, #3
	.loc 40 410 0
	str	r2, [r3, #24]
	.loc 40 434 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6031:
.L5421:
	.cfi_restore_state
.LBB15618:
.LBB15617:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6032:
.L5423:
	.align	2
.L5422:
	.word	.LANCHOR6-3564
.LBE15617:
.LBE15618:
	.cfi_endproc
.LFE673:
	.size	decodeReadRegisters, .-decodeReadRegisters
	.align	2
	.global	decodeCopyRegisters
	.syntax unified
	.arm
	.type	decodeCopyRegisters, %function
decodeCopyRegisters:
.LFB672:
	.loc 40 360 0
	.cfi_startproc
	@ args = 20, pretend = 8, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6033:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 40 366 0
	cmp	r3, #0
	cmpne	r2, #0
	.loc 40 360 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 14, -12
	sub	sp, sp, #16
	.cfi_def_cfa_offset 48
	.loc 40 360 0
	add	r2, sp, #16
.LVL6034:
	str	r3, [sp, #44]
	stmdb	r2, {r0, r1}
	.loc 40 366 0
	beq	.L5447
.LVL6035:
	.loc 40 376 0
	ldr	r2, [r3]
.LBB15667:
.LBB15668:
	.loc 37 30 0
	movw	r3, #:lower16:ksCurThread
.LVL6036:
	movt	r3, #:upper16:ksCurThread
	ldr	r3, [r3]
.LVL6037:
.LBE15668:
.LBE15667:
.LBB15672:
.LBB15673:
	.loc 4 997 0
	and	r1, r2, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, r2
.LVL6038:
	.loc 4 998 0
	andne	r1, r2, #15
.LBE15673:
.LBE15672:
	.loc 40 378 0
	cmp	r1, #12
	beq	.L5448
	.loc 40 381 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
.LVL6039:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5451
	str	r2, [sp, #4]
	movw	r2, #381
	bl	kprintf
.LVL6040:
	movw	r0, #:lower16:.LC267
	movt	r0, #:upper16:.LC267
	bl	kprintf
.LVL6041:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6042:
	.loc 40 382 0
	movw	r3, #:lower16:current_syscall_error
	mov	r1, #2
	movt	r3, #:upper16:current_syscall_error
	.loc 40 383 0
	mov	r2, #1
	.loc 40 384 0
	mov	r0, #3
	.loc 40 382 0
	str	r1, [r3, #24]
	.loc 40 383 0
	str	r2, [r3, #4]
	.loc 40 396 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL6043:
.L5447:
	.cfi_restore_state
	.loc 40 367 0
	movw	r3, #:lower16:ksCurThread
.LVL6044:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #367
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5451
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6045:
	movw	r0, #:lower16:.LC266
	movt	r0, #:upper16:.LC266
	bl	kprintf
.LVL6046:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6047:
	.loc 40 368 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 40 369 0
	mov	r0, #3
	.loc 40 368 0
	str	r2, [r3, #24]
	.loc 40 396 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL6048:
.L5448:
	.cfi_restore_state
.LBB15674:
.LBB15675:
	.loc 4 1576 0
	and	r1, r2, #15
	cmp	r1, #12
	bne	.L5431
.LBE15675:
.LBE15674:
	.loc 40 387 0
	mov	r0, r3
.LBB15677:
.LBB15671:
.LBB15669:
.LBB15670:
	.loc 10 27 0
	ldr	r6, [r3, #8]
.LVL6049:
.LBE15670:
.LBE15669:
.LBE15671:
.LBE15677:
	.loc 40 379 0
	bic	r5, r2, #15
.LVL6050:
	.loc 40 387 0
	bl	setThreadState.constprop.305
.LVL6051:
	ldr	r4, [sp, #8]
.LVL6052:
.LBB15678:
.LBB15679:
	.loc 4 1576 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L5431
.LVL6053:
.LBE15679:
.LBE15678:
.LBB15680:
.LBB15681:
	.loc 40 929 0
	tst	r6, #1
.LBE15681:
.LBE15680:
	.loc 40 388 0
	and	r8, r6, #2
	and	r7, r6, #4
	bic	r4, r4, #15
	and	r6, r6, #8
.LVL6054:
.LBB15758:
.LBB15756:
	.loc 40 929 0
	bne	.L5449
.L5432:
	.loc 40 933 0
	cmp	r8, #0
	bne	.L5450
.L5433:
	.loc 40 937 0
	cmp	r7, #0
	beq	.L5434
.LVL6055:
.LBB15682:
.LBB15683:
.LBB15684:
	.loc 10 27 0
	ldr	r3, [r5, #68]
.LVL6056:
.LBE15684:
.LBE15683:
.LBB15694:
.LBB15695:
	.loc 10 21 0
	str	r3, [r4, #68]
.LVL6057:
.LBE15695:
.LBE15694:
.LBB15705:
.LBB15685:
	.loc 10 27 0
	ldr	r2, [r5, #52]
.LVL6058:
.LBE15685:
.LBE15705:
.LBB15706:
.LBB15696:
	.loc 10 21 0
	str	r2, [r4, #52]
.LVL6059:
.LBE15696:
.LBE15706:
.LBB15707:
.LBB15686:
	.loc 10 27 0
	ldr	r2, [r5, #64]
.LVL6060:
.LBE15686:
.LBE15707:
.LBB15708:
.LBB15697:
	.loc 10 21 0
	str	r2, [r4, #64]
.LVL6061:
.LBE15697:
.LBE15708:
.LBB15709:
.LBB15687:
	.loc 10 27 0
	ldr	r2, [r5]
.LVL6062:
.LBE15687:
.LBE15709:
.LBB15710:
.LBB15698:
	.loc 10 21 0
	str	r2, [r4]
.LVL6063:
.LBE15698:
.LBE15710:
.LBB15711:
.LBB15688:
	.loc 10 27 0
	ldr	r2, [r5, #4]
.LVL6064:
.LBE15688:
.LBE15711:
.LBB15712:
.LBB15699:
	.loc 10 21 0
	str	r2, [r4, #4]
.LVL6065:
.LBE15699:
.LBE15712:
.LBB15713:
.LBB15689:
	.loc 10 27 0
	ldr	r2, [r5, #32]
.LVL6066:
.LBE15689:
.LBE15713:
.LBB15714:
.LBB15700:
	.loc 10 21 0
	str	r2, [r4, #32]
.LVL6067:
.LBE15700:
.LBE15714:
.LBB15715:
.LBB15690:
	.loc 10 27 0
	ldr	r2, [r5, #36]
.LVL6068:
.LBE15690:
.LBE15715:
.LBB15716:
.LBB15701:
	.loc 10 21 0
	str	r2, [r4, #36]
.LVL6069:
.LBE15701:
.LBE15716:
.LBB15717:
.LBB15691:
	.loc 10 27 0
	ldr	r2, [r5, #40]
.LVL6070:
.LBE15691:
.LBE15717:
.LBB15718:
.LBB15702:
	.loc 10 21 0
	str	r2, [r4, #40]
.LVL6071:
.LBE15702:
.LBE15718:
.LBB15719:
.LBB15692:
	.loc 10 27 0
	ldr	r2, [r5, #44]
.LVL6072:
.LBE15692:
.LBE15719:
.LBB15720:
.LBB15703:
	.loc 10 21 0
	str	r2, [r4, #44]
.LVL6073:
.LBE15703:
.LBE15720:
.LBB15721:
.LBB15693:
	.loc 10 27 0
	ldr	r2, [r5, #48]
.LVL6074:
.LBE15693:
.LBE15721:
.LBB15722:
.LBB15723:
.LBB15724:
	.loc 10 21 0
	str	r3, [r4, #60]
.LBE15724:
.LBE15723:
.LBE15722:
.LBB15725:
.LBB15704:
	str	r2, [r4, #48]
.LVL6075:
.L5434:
.LBE15704:
.LBE15725:
.LBE15682:
	.loc 40 951 0
	cmp	r6, #0
	beq	.L5436
.LVL6076:
.LBB15726:
.LBB15727:
.LBB15728:
.LBB15729:
	.loc 10 27 0
	ldr	r3, [r5, #8]
.LVL6077:
.LBE15729:
.LBE15728:
.LBB15736:
.LBB15737:
	.loc 10 21 0
	str	r3, [r4, #8]
.LVL6078:
.LBE15737:
.LBE15736:
.LBB15744:
.LBB15730:
	.loc 10 27 0
	ldr	r3, [r5, #12]
.LVL6079:
.LBE15730:
.LBE15744:
.LBB15745:
.LBB15738:
	.loc 10 21 0
	str	r3, [r4, #12]
.LVL6080:
.LBE15738:
.LBE15745:
.LBB15746:
.LBB15731:
	.loc 10 27 0
	ldr	r3, [r5, #16]
.LVL6081:
.LBE15731:
.LBE15746:
.LBB15747:
.LBB15739:
	.loc 10 21 0
	str	r3, [r4, #16]
.LVL6082:
.LBE15739:
.LBE15747:
.LBB15748:
.LBB15732:
	.loc 10 27 0
	ldr	r3, [r5, #20]
.LVL6083:
.LBE15732:
.LBE15748:
.LBB15749:
.LBB15740:
	.loc 10 21 0
	str	r3, [r4, #20]
.LVL6084:
.LBE15740:
.LBE15749:
.LBB15750:
.LBB15733:
	.loc 10 27 0
	ldr	r3, [r5, #24]
.LVL6085:
.LBE15733:
.LBE15750:
.LBB15751:
.LBB15741:
	.loc 10 21 0
	str	r3, [r4, #24]
.LVL6086:
.LBE15741:
.LBE15751:
.LBB15752:
.LBB15734:
	.loc 10 27 0
	ldr	r3, [r5, #28]
.LVL6087:
.LBE15734:
.LBE15752:
.LBB15753:
.LBB15742:
	.loc 10 21 0
	str	r3, [r4, #28]
.LVL6088:
.LBE15742:
.LBE15753:
.LBB15754:
.LBB15735:
	.loc 10 27 0
	ldr	r3, [r5, #56]
.LVL6089:
.LBE15735:
.LBE15754:
.LBB15755:
.LBB15743:
	.loc 10 21 0
	str	r3, [r4, #56]
.LVL6090:
.L5436:
.LBE15743:
.LBE15755:
.LBE15727:
.LBE15726:
.LBE15756:
.LBE15758:
	.loc 40 388 0
	mov	r0, #0
	.loc 40 396 0
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.LVL6091:
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
.LVL6092:
.L5449:
	.cfi_restore_state
.LBB15759:
.LBB15757:
	.loc 40 930 0
	mov	r0, r5
	bl	suspend
.LVL6093:
	b	.L5432
.L5450:
	.loc 40 934 0
	mov	r0, r4
	bl	restart
.LVL6094:
	b	.L5433
.LVL6095:
.L5431:
.LBE15757:
.LBE15759:
.LBB15760:
.LBB15676:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6096:
.L5452:
	.align	2
.L5451:
	.word	.LANCHOR6-3544
.LBE15676:
.LBE15760:
	.cfi_endproc
.LFE672:
	.size	decodeCopyRegisters, .-decodeCopyRegisters
	.align	2
	.global	cteDelete
	.syntax unified
	.arm
	.type	cteDelete, %function
cteDelete:
.LFB608:
	.loc 41 453 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6097:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB15894:
.LBB15895:
.LBB15896:
.LBB15897:
	.loc 49 24 0
	movw	r6, #:lower16:ksWorkUnitsCompleted
.LBB15898:
.LBB15899:
.LBB15900:
	.loc 18 335 0
	movw	r8, #:lower16:.LANCHOR2
.LBE15900:
.LBE15899:
.LBE15898:
.LBE15897:
.LBE15896:
.LBE15895:
.LBE15894:
	.loc 41 453 0
	sub	sp, sp, #76
	.cfi_def_cfa_offset 112
	.loc 41 453 0
	mov	r4, r0
	mov	r7, r1
.LVL6098:
.LBB16015:
.LBB16011:
.LBB15911:
.LBB15909:
	.loc 49 24 0
	movt	r6, #:upper16:ksWorkUnitsCompleted
.LBB15907:
.LBB15904:
.LBB15901:
	.loc 18 335 0
	movt	r8, #:upper16:.LANCHOR2
.LBE15901:
.LBE15904:
.LBE15907:
.LBE15909:
.LBE15911:
	.loc 41 514 0
	mov	r9, #1
.LVL6099:
.L5454:
	ldr	r3, [r4]
.LVL6100:
.LBB15912:
.LBB15913:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L5490
.LVL6101:
.LBE15913:
.LBE15912:
	.loc 41 511 0
	tst	r3, #15
	beq	.L5537
.L5491:
	.loc 41 514 0
	mov	r0, r4
	bl	cdtIsFinal
.LVL6102:
	adds	r3, r0, #0
	movne	r3, #1
.L5455:
	.loc 41 515 0
	add	r5, sp, #60
	mov	r2, #0
	mov	r0, r5
	str	r2, [sp]
	ldm	r4, {r1, r2}
	bl	finaliseCap
.LVL6103:
	ldr	r3, [sp, #60]
	add	r2, sp, #28
	ldm	r5, {r0, r1}
	ldrh	r10, [sp, #68]
.LVL6104:
.LBB15914:
.LBB15915:
.LBB15916:
.LBB15917:
	.loc 4 997 0
	and	fp, r3, #14
	cmp	fp, #14
	stm	r2, {r0, r1}
.LVL6105:
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL6106:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE15917:
.LBE15916:
	.loc 41 483 0
	cmp	r2, #0
	beq	.L5538
	cmp	r2, #46
	bne	.L5529
.LVL6107:
.LBB15918:
.LBB15919:
.LBB15920:
.LBB15921:
.LBB15922:
.LBB15923:
.LBB15924:
	.loc 4 1989 0
	uxtb	r2, r3
	ldr	r1, [sp, #32]
.LVL6108:
	cmp	r2, #46
	bne	.L5480
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL6109:
.LBE15924:
.LBE15923:
	.loc 30 106 0
	cmp	r3, #32
	beq	.L5462
.LVL6110:
.LBE15922:
.LBE15921:
	.loc 30 116 0
	and	r2, r3, #31
	add	r2, r2, #1
	lsl	r2, r9, r2
	sub	r0, r2, #1
.LVL6111:
	rsb	r2, r2, #0
	and	r0, r0, r1
.LVL6112:
.L5497:
.LBE15920:
.LBE15919:
	.loc 41 489 0
	cmp	r0, #0
	beq	.L5538
.LVL6113:
.LBE15918:
.LBE15915:
.LBE15914:
	.loc 41 517 0
	and	r2, r2, r1
	cmp	r4, r2
	cmpeq	r0, #1
	beq	.L5538
	ldr	r2, [r4]
.LVL6114:
.LBB15940:
.LBB15941:
	.loc 4 997 0
	and	r1, r2, #14
.LVL6115:
	cmp	r1, #14
	beq	.L5544
.LVL6116:
.L5464:
.LBE15941:
.LBE15940:
	.loc 41 527 0
	ldm	r5, {r1, r2}
	mov	r0, r4
	str	r3, [sp, #12]
	bl	cdtUpdate
.LVL6117:
	.loc 41 530 0
	cmp	r7, #0
	ldr	r3, [sp, #12]
	bne	.L5466
.LVL6118:
.L5498:
	ldm	r5, {r0, r1}
.LBB15942:
.LBB15943:
.LBB15944:
.LBB15945:
	.loc 4 997 0
	cmp	fp, #14
	add	r2, sp, #36
	stm	r2, {r0, r1}
.LVL6119:
	beq	.L5545
.LVL6120:
.L5466:
	ldr	r2, [r4]
.LVL6121:
.LBE15945:
.LBE15944:
.LBE15943:
.LBE15942:
.LBB15951:
.LBB15952:
.LBB15953:
.LBB15954:
	and	r3, r2, #14
	cmp	r3, #14
	beq	.L5469
.LVL6122:
.L5470:
.LBE15954:
.LBE15953:
	.loc 41 566 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC268
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC268
	ldr	r3, .L5553
	movw	r2, #566
	bl	_assert_fail
.LVL6123:
.L5538:
	ldr	r3, [r4]
.LVL6124:
.L5459:
.LBE15952:
.LBE15951:
.LBE16011:
.LBE16015:
.LBB16016:
.LBB16017:
.LBB16018:
.LBB16019:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 998 0
	andne	r3, r3, #15
.LVL6125:
	.loc 4 997 0
	beq	.L5546
.L5494:
.LBE16019:
.LBE16018:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5547
.LVL6126:
.L5468:
.LBE16017:
.LBE16016:
	.loc 41 464 0
	mov	r0, #0
	b	.L5533
.LVL6127:
.L5529:
.LBB16044:
.LBB16012:
.LBB16000:
.LBB15937:
.LBB15933:
.LBB15934:
	.loc 41 492 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC250
.LVL6128:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC250
	ldr	r3, .L5553+4
.LVL6129:
	mov	r2, #492
	bl	_fail
.LVL6130:
.L5490:
.LBE15934:
.LBE15933:
.LBE15937:
.LBE16000:
	.loc 41 511 0
	ands	r2, r3, #255
	beq	.L5537
	.loc 41 514 0
	cmp	r2, #46
	moveq	r3, #1
	beq	.L5455
	b	.L5491
.LVL6131:
.L5544:
	.loc 41 526 0
	uxtb	r1, r2
	cmp	r1, #46
	bne	.L5464
	.loc 41 530 0
	cmp	r7, #0
	beq	.L5498
.L5499:
.LVL6132:
.LBB16001:
.LBB15994:
.LBB15956:
.LBB15957:
.LBB15958:
.LBB15959:
.LBB15960:
.LBB15961:
	.loc 4 1992 0
	ubfx	r5, r2, #8, #6
.LVL6133:
	ldr	r1, [r4, #4]
.LVL6134:
.LBE15961:
.LBE15960:
	.loc 30 106 0
	cmp	r5, #32
	beq	.L5471
.LVL6135:
.LBE15959:
.LBE15958:
.LBE15957:
.LBE15956:
	.loc 41 567 0
	and	r3, r5, #31
	add	r3, r3, #1
	lsl	r3, r9, r3
	rsb	r10, r3, #0
.LVL6136:
	sub	r3, r3, #1
	and	r10, r10, r1
.LVL6137:
.L5472:
	.loc 41 572 0
	ands	fp, r1, r3
	beq	.L5548
	.loc 41 574 0
	cmp	r7, #0
	bne	.L5549
	.loc 41 614 0
	cmp	r4, r10
	beq	.L5550
	ldr	r3, [r10]
.LVL6138:
.LBB15962:
.LBB15963:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L5551
.LVL6139:
.L5488:
.LBE15963:
.LBE15962:
.LBB15964:
.LBB15965:
.LBB15966:
.LBB15967:
	.loc 41 421 0
	ldm	r10, {r0, r1}
.LVL6140:
	add	ip, sp, #44
	.loc 41 424 0
	str	r4, [sp, #4]
.LVL6141:
	.loc 41 422 0
	add	r3, sp, #52
	.loc 41 424 0
	mov	r2, r10
	.loc 41 421 0
	stm	ip, {r0, r1}
	.loc 41 422 0
	ldm	r4, {r0, r1}
	stm	r3, {r0, r1}
	.loc 41 424 0
	mov	r3, r0
	ldr	lr, [sp, #56]
	ldm	ip, {r0, r1}
	str	lr, [sp]
	bl	cdtSwap
.LVL6142:
.L5478:
.LBE15967:
.LBE15966:
.LBE15965:
.LBE15964:
.LBE15994:
.LBE16001:
.LBB16002:
.LBB15910:
	.loc 49 24 0
	ldr	r3, [r6]
	add	r3, r3, #1
	.loc 49 34 0
	cmp	r3, #99
	.loc 49 24 0
	strls	r3, [r6]
	.loc 49 34 0
	bls	.L5454
.LBB15908:
.LBB15905:
.LBB15902:
	.loc 18 335 0
	ldr	r3, [r8, #4]
.LBE15902:
.LBE15905:
	.loc 49 35 0
	mov	r2, #0
	str	r2, [r6]
.LBB15906:
.LBB15903:
	.loc 18 335 0
	ldr	r3, [r3, #24]
.LBE15903:
.LBE15906:
	.loc 49 36 0
	ubfx	r3, r3, #0, #10
	cmp	r3, #1020
	bcs	.L5454
.LBE15908:
.LBE15910:
.LBE16002:
	.loc 41 550 0
	mov	r0, #4
.LVL6143:
.L5533:
.LBE16012:
.LBE16044:
	.loc 41 465 0
	add	sp, sp, #76
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6144:
.L5549:
	.cfi_restore_state
.LBB16045:
.LBB16013:
.LBB16003:
.LBB15995:
.LBB15968:
	.loc 41 575 0
	sub	r2, fp, #-268435455
	.loc 41 577 0
	mov	r1, #0
.LVL6145:
	.loc 41 575 0
	add	r2, r10, r2, lsl #4
.LVL6146:
	.loc 41 577 0
	mov	r0, r2
	str	r2, [sp, #12]
	bl	cteDelete
.LVL6147:
	.loc 41 578 0
	cmp	r0, #0
	bne	.L5533
	ldr	r3, [r4]
.LVL6148:
.LBB15969:
.LBB15970:
	.loc 4 997 0
	ldr	r2, [sp, #12]
	and	r1, r3, #14
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, r3
.LVL6149:
	.loc 4 998 0
	andne	r1, r3, #15
.LBE15970:
.LBE15969:
	.loc 41 582 0
	cmp	r1, #0
	beq	.L5478
	cmp	r1, #46
	bne	.L5532
.LVL6150:
.LBB15971:
.LBB15972:
.LBB15973:
.LBB15974:
.LBB15975:
.LBB15976:
.LBB15977:
	.loc 4 1989 0
	uxtb	r1, r3
	ldr	r0, [r4, #4]
.LVL6151:
	cmp	r1, #46
	bne	.L5480
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL6152:
.LBE15977:
.LBE15976:
	.loc 30 106 0
	cmp	r3, #32
	beq	.L5481
.LVL6153:
.LBE15975:
.LBE15974:
.LBE15973:
.LBE15972:
	.loc 41 587 0
	and	r1, r3, #31
	add	r1, r1, #1
	lsl	r1, r9, r1
	rsb	ip, r1, #0
	and	ip, ip, r0
.LVL6154:
	.loc 41 590 0
	cmp	r10, ip
	subeq	r1, r1, #1
	beq	.L5483
.LVL6155:
.L5482:
	.loc 41 604 0
	sub	r10, r4, r10
.LVL6156:
	clz	r10, r10
	lsr	r10, r10, #5
	cmp	r4, ip
	moveq	ip, r10
	orrne	ip, r10, #1
.LVL6157:
	cmp	ip, #0
	beq	.L5478
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC271
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC271
	ldr	r3, .L5553
	mov	r2, #604
	bl	_assert_fail
.LVL6158:
.L5471:
.LBE15971:
.LBE15968:
	.loc 41 567 0
	bic	r10, r1, #31
.LVL6159:
	mov	r3, #31
	b	.L5472
.LVL6160:
.L5545:
.LBE15995:
.LBE16003:
.LBB16004:
.LBB15950:
.LBB15946:
.LBB15947:
.LBB15948:
.LBB15949:
	.loc 30 106 0
	cmp	r3, #32
	ldr	r2, [sp, #40]
.LVL6161:
	andne	r3, r3, #31
	mvneq	r3, #31
.LVL6162:
	addne	r3, r3, #1
	lslne	r3, r9, r3
	rsbne	r3, r3, #0
.LBE15949:
.LBE15948:
.LBE15947:
.LBE15946:
	.loc 41 499 0
	and	r3, r3, r2
	cmp	r4, r3
	beq	.L5468
.LVL6163:
	ldr	r2, [r4]
.LVL6164:
.LBE15950:
.LBE16004:
.LBB16005:
.LBB15996:
.LBB15984:
.LBB15955:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
	bne	.L5470
.LVL6165:
.L5469:
.LBE15955:
.LBE15984:
	.loc 41 566 0
	uxtb	r3, r2
	cmp	r3, #46
	beq	.L5499
	b	.L5470
.LVL6166:
.L5551:
	.loc 41 616 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L5488
.LVL6167:
.LBB15985:
.LBB15986:
.LBB15987:
.LBB15988:
.LBB15989:
.LBB15990:
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL6168:
	ldr	r2, [r10, #4]
.LVL6169:
.LBE15990:
.LBE15989:
	.loc 30 106 0
	cmp	r3, #32
	andne	r3, r3, #31
	mvneq	r3, #31
.LVL6170:
	addne	r3, r3, #1
	lslne	r3, r9, r3
	rsbne	r3, r3, #0
.LBE15988:
.LBE15987:
.LBE15986:
.LBE15985:
	.loc 41 618 0
	and	r3, r3, r2
	cmp	r10, r3
	bne	.L5488
	movw	r1, #:lower16:.LC110
.LVL6171:
	movw	r0, #:lower16:.LC274
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC274
	ldr	r3, .L5553
	movw	r2, #618
.LVL6172:
	bl	_assert_fail
.LVL6173:
.L5462:
.LBE15996:
.LBE16005:
.LBB16006:
.LBB15938:
.LBB15935:
.LBB15931:
.LBB15929:
	.loc 30 116 0
	and	r0, r1, #31
.LVL6174:
	mvn	r2, #31
	b	.L5497
.LVL6175:
.L5532:
.LBE15929:
.LBE15931:
.LBE15935:
.LBE15938:
.LBE16006:
.LBB16007:
.LBB15997:
.LBB15991:
	.loc 41 610 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC272
.LVL6176:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC272
	ldr	r3, .L5553+8
	movw	r2, #610
	bl	_fail
.LVL6177:
.L5547:
.LBE15991:
.LBE15997:
.LBE16007:
.LBE16013:
.LBE16045:
.LBB16046:
.LBB16043:
.LBB16021:
.LBB16022:
	.loc 41 471 0
	mov	r0, r4
	bl	cdtRemove
.LVL6178:
	.loc 41 474 0
	movw	r3, #65535
	.loc 41 472 0
	mov	r0, #0
	.loc 41 474 0
	cmp	r10, r3
	.loc 41 472 0
	str	r0, [r4]
	str	r0, [r4, #4]
	.loc 41 474 0
	beq	.L5468
.LVL6179:
.LBB16023:
.LBB16024:
.LBB16025:
.LBB16026:
.LBB16027:
.LBB16028:
.LBB16029:
	.loc 18 199 0
	movw	r2, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r10, #5
	.loc 18 199 0
	movt	r2, #:upper16:.LANCHOR2
	ldr	ip, [r2]
	and	lr, r10, #31
	mov	r2, #1
.LBE16029:
.LBE16028:
.LBE16027:
.LBE16026:
	.loc 51 266 0
	movw	r1, #:lower16:intStateIRQTable
.LBB16039:
.LBB16036:
.LBB16033:
.LBB16030:
	.loc 18 199 0
	lsl	r2, r2, lr
.LBE16030:
.LBE16033:
.LBE16036:
.LBE16039:
	.loc 51 266 0
	movt	r1, #:upper16:intStateIRQTable
.LBB16040:
.LBB16037:
.LBB16034:
.LBB16031:
	.loc 18 199 0
	add	r3, r3, #96
.LBE16031:
.LBE16034:
.LBE16037:
.LBE16040:
	.loc 51 266 0
	str	r0, [r1, r10, lsl #2]
.LVL6180:
.LBB16041:
.LBB16038:
.LBB16035:
.LBB16032:
	.loc 18 199 0
	str	r2, [ip, r3, lsl #2]
	b	.L5533
.LVL6181:
.L5546:
.LBE16032:
.LBE16035:
.LBE16038:
.LBE16041:
.LBE16025:
.LBE16024:
.LBE16023:
.LBE16022:
.LBE16021:
.LBB16042:
.LBB16020:
	.loc 4 999 0
	uxtb	r3, r3
	b	.L5494
.LVL6182:
.L5537:
.LBE16020:
.LBE16042:
.LBE16043:
.LBE16046:
.LBB16047:
.LBB16014:
	.loc 41 556 0
	movw	r10, #65535
	b	.L5459
.LVL6183:
.L5481:
.LBB16008:
.LBB15998:
.LBB15992:
.LBB15982:
	.loc 41 587 0
	bic	ip, r0, #31
.LVL6184:
	.loc 41 590 0
	cmp	r10, ip
	bne	.L5482
	mov	r1, #31
.L5483:
.LVL6185:
.LBB15978:
.LBB15979:
	.loc 30 116 0
	and	r0, r0, r1
.LVL6186:
.LBE15979:
.LBE15978:
	.loc 41 590 0
	cmp	r0, fp
	bne	.L5482
	.loc 41 591 0
	cmp	r5, r3
	bne	.L5482
	ldr	r3, [r2]
.LVL6187:
.LBB15980:
.LBB15981:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6188:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE15981:
.LBE15980:
	.loc 41 593 0
	cmp	r3, #0
	bne	.L5552
	.loc 41 599 0
	add	r5, sp, #16
	sub	r3, r0, #1
	ldm	r4, {r1, r2}
	mov	r0, r5
	bl	cap_zombie_cap_set_capZombieNumber
.LVL6189:
	ldm	r5, {r0, r1}
	stm	r4, {r0, r1}
	b	.L5478
.LVL6190:
.L5548:
.LBE15982:
.LBE15992:
	.loc 41 572 0
	movw	r1, #:lower16:.LC110
.LVL6191:
	movw	r0, #:lower16:.LC269
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC269
	ldr	r3, .L5553
	mov	r2, #572
	bl	_assert_fail
.LVL6192:
.L5550:
	.loc 41 614 0
	movw	r1, #:lower16:.LC110
.LVL6193:
	movw	r0, #:lower16:.LC273
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC273
	ldr	r3, .L5553
	movw	r2, #614
	bl	_assert_fail
.LVL6194:
.L5480:
.LBE15998:
.LBE16008:
.LBB16009:
.LBB15939:
.LBB15936:
.LBB15932:
.LBB15930:
.LBB15928:
.LBB15927:
.LBB15926:
.LBB15925:
	bl	cap_zombie_cap_get_capZombieType.isra.96.part.97
.LVL6195:
.L5552:
.LBE15925:
.LBE15926:
.LBE15927:
.LBE15928:
.LBE15930:
.LBE15932:
.LBE15936:
.LBE15939:
.LBE16009:
.LBB16010:
.LBB15999:
.LBB15993:
.LBB15983:
	.loc 41 593 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC270
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC270
	ldr	r3, .L5553
	movw	r2, #593
	bl	_assert_fail
.LVL6196:
.L5554:
	.align	2
.L5553:
	.word	.LANCHOR6-3524
	.word	.LANCHOR6-3728
	.word	.LANCHOR6-3508
.LBE15983:
.LBE15993:
.LBE15999:
.LBE16010:
.LBE16014:
.LBE16047:
	.cfi_endproc
.LFE608:
	.size	cteDelete, .-cteDelete
	.align	2
	.syntax unified
	.arm
	.type	finaliseSlot.constprop.278, %function
finaliseSlot.constprop.278:
.LFB1019:
	.loc 41 504 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6197:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
.LBB16128:
.LBB16129:
	.loc 49 24 0
	movw	r6, #:lower16:ksWorkUnitsCompleted
.LBB16130:
.LBB16131:
.LBB16132:
	.loc 18 335 0
	movw	r8, #:lower16:.LANCHOR2
.LBE16132:
.LBE16131:
.LBE16130:
.LBE16129:
.LBE16128:
	.loc 41 504 0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
	.loc 41 504 0
	mov	r7, r0
.LVL6198:
	mov	r4, r1
.LBB16143:
.LBB16141:
	.loc 49 24 0
	movt	r6, #:upper16:ksWorkUnitsCompleted
.LBB16139:
.LBB16136:
.LBB16133:
	.loc 18 335 0
	movt	r8, #:upper16:.LANCHOR2
.LVL6199:
.L5556:
	ldr	r3, [r4]
.LVL6200:
.LBE16133:
.LBE16136:
.LBE16139:
.LBE16141:
.LBE16143:
.LBB16144:
.LBB16145:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L5587
.LVL6201:
.LBE16145:
.LBE16144:
	.loc 41 511 0
	tst	r3, #15
	beq	.L5589
.L5588:
	.loc 41 514 0
	mov	r0, r4
	bl	cdtIsFinal
.LVL6202:
	adds	r3, r0, #0
	movne	r3, #1
.L5557:
	.loc 41 515 0
	add	r5, sp, #36
	mov	r2, #0
	mov	r0, r5
	str	r2, [sp]
	ldm	r4, {r1, r2}
	bl	finaliseCap
.LVL6203:
	ldr	r3, [sp, #36]
	add	ip, sp, #28
	ldm	r5, {r0, r1}
	ldrh	r2, [sp, #44]
.LVL6204:
.LBB16146:
.LBB16147:
.LBB16148:
.LBB16149:
	.loc 4 997 0
	and	lr, r3, #14
	cmp	lr, #14
	stm	ip, {r0, r1}
.LVL6205:
	.loc 4 999 0
	uxtbeq	r1, r3
.LVL6206:
	.loc 4 998 0
	andne	r1, r3, #15
.LBE16149:
.LBE16148:
	.loc 41 483 0
	cmp	r1, #0
	beq	.L5561
	cmp	r1, #46
	bne	.L5614
.LVL6207:
.LBB16150:
.LBB16151:
.LBB16152:
.LBB16153:
.LBB16154:
.LBB16155:
.LBB16156:
	.loc 4 1989 0
	uxtb	r0, r3
.LVL6208:
	ldr	r1, [sp, #32]
.LVL6209:
	cmp	r0, #46
	bne	.L5580
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LVL6210:
.LBE16156:
.LBE16155:
	.loc 30 106 0
	cmp	r3, #32
	beq	.L5564
.LVL6211:
.LBE16154:
.LBE16153:
	.loc 30 116 0
	and	r3, r3, #31
	mov	r0, #1
	add	r3, r3, #1
	lsl	r3, r0, r3
	sub	r0, r3, #1
	rsb	r3, r3, #0
	and	r0, r0, r1
.LVL6212:
.LBE16152:
.LBE16151:
	.loc 41 489 0
	cmp	r0, #0
	beq	.L5561
.LVL6213:
.L5626:
.LBE16150:
.LBE16147:
.LBE16146:
	.loc 41 517 0
	and	r3, r3, r1
	cmp	r4, r3
	cmpeq	r0, #1
	beq	.L5561
	ldr	r3, [r4]
.LVL6214:
.LBB16172:
.LBB16173:
	.loc 4 997 0
	and	r2, r3, #14
.LVL6215:
	cmp	r2, #14
	beq	.L5622
.LVL6216:
.L5567:
.LBE16173:
.LBE16172:
	.loc 41 527 0
	ldm	r5, {r1, r2}
.LVL6217:
	mov	r0, r4
	bl	cdtUpdate
.LVL6218:
	ldr	r3, [r4]
.LVL6219:
.LBB16174:
.LBB16175:
.LBB16176:
.LBB16177:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	beq	.L5569
.LVL6220:
.L5570:
.LBE16177:
.LBE16176:
	.loc 41 566 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC268
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC268
	ldr	r3, .L5628
	movw	r2, #566
	bl	_assert_fail
.LVL6221:
.L5614:
.LBE16175:
.LBE16174:
.LBB16207:
.LBB16169:
.LBB16165:
.LBB16166:
	.loc 41 492 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC250
.LVL6222:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC250
	ldr	r3, .L5628+4
.LVL6223:
	mov	r2, #492
.LVL6224:
	bl	_fail
.LVL6225:
.L5587:
.LBE16166:
.LBE16165:
.LBE16169:
.LBE16207:
	.loc 41 511 0
	ands	r3, r3, #255
	beq	.L5589
	.loc 41 514 0
	cmp	r3, #46
	moveq	r3, #1
	beq	.L5557
	b	.L5588
.LVL6226:
.L5622:
	.loc 41 526 0
	uxtb	r2, r3
	cmp	r2, #46
	bne	.L5567
.LVL6227:
.L5568:
.LBB16208:
.LBB16203:
.LBB16178:
.LBB16179:
.LBB16180:
.LBB16181:
.LBB16182:
.LBB16183:
	.loc 4 1992 0
	ubfx	r5, r3, #8, #6
.LVL6228:
	ldr	r10, [r4, #4]
.LVL6229:
.LBE16183:
.LBE16182:
	.loc 30 106 0
	cmp	r5, #32
	beq	.L5571
.LVL6230:
.LBE16181:
.LBE16180:
.LBE16179:
.LBE16178:
	.loc 41 567 0
	and	r3, r5, #31
	mov	r2, #1
	add	r3, r3, #1
	lsl	r3, r2, r3
	rsb	r2, r3, #0
	sub	r3, r3, #1
	and	r9, r2, r10
.LVL6231:
.L5572:
	.loc 41 572 0
	ands	r10, r10, r3
.LVL6232:
	beq	.L5623
.LBB16184:
	.loc 41 575 0
	sub	fp, r10, #-268435455
	.loc 41 577 0
	mov	r1, #0
	.loc 41 575 0
	add	fp, r9, fp, lsl #4
.LVL6233:
	.loc 41 577 0
	mov	r0, fp
	bl	cteDelete
.LVL6234:
	.loc 41 578 0
	cmp	r0, #0
	bne	.L5573
	ldr	r3, [r4]
.LVL6235:
.LBB16185:
.LBB16186:
	.loc 4 997 0
	and	r1, r3, #14
	str	r3, [sp, #12]
.LVL6236:
	cmp	r1, #14
	.loc 4 999 0
	uxtbeq	r1, r3
	.loc 4 998 0
	andne	r1, r3, #15
.LBE16186:
.LBE16185:
	.loc 41 582 0
	cmp	r1, #0
	beq	.L5577
	cmp	r1, #46
	bne	.L5616
.LBB16187:
	.loc 41 588 0
	ldm	r4, {r0, r1}
.LVL6237:
	bl	cap_zombie_cap_get_capZombiePtr
.LVL6238:
	.loc 41 590 0
	cmp	r0, r9
	ldr	r3, [sp, #12]
	beq	.L5624
.LVL6239:
.L5579:
	.loc 41 604 0
	sub	r2, r4, r9
	clz	r2, r2
	lsr	r2, r2, #5
	cmp	r4, r0
	moveq	r0, r2
	orrne	r0, r2, #1
.LVL6240:
	cmp	r0, #0
	bne	.L5625
.LVL6241:
.L5577:
.LBE16187:
.LBE16184:
.LBE16203:
.LBE16208:
.LBB16209:
.LBB16142:
	.loc 49 24 0
	ldr	r3, [r6]
	add	r3, r3, #1
	.loc 49 34 0
	cmp	r3, #99
	.loc 49 24 0
	strls	r3, [r6]
	.loc 49 34 0
	bls	.L5556
.LBB16140:
.LBB16137:
.LBB16134:
	.loc 18 335 0
	ldr	r3, [r8, #4]
.LBE16134:
.LBE16137:
	.loc 49 35 0
	mov	r2, #0
	str	r2, [r6]
.LBB16138:
.LBB16135:
	.loc 18 335 0
	ldr	r3, [r3, #24]
.LBE16135:
.LBE16138:
	.loc 49 36 0
	ubfx	r3, r3, #0, #10
	cmp	r3, #1020
	bcs	.L5556
.LVL6242:
.LBE16140:
.LBE16142:
.LBE16209:
	.loc 41 550 0
	mov	r1, #4
	mvn	r3, #0
	.loc 41 557 0
	mov	r0, r7
	.loc 41 550 0
	stm	r7, {r1, r2}
	strh	r3, [r7, #8]	@ movhi
	.loc 41 557 0
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6243:
.L5573:
	.cfi_restore_state
	.loc 41 542 0
	mov	r2, #0
	mvn	r3, #0
	stm	r7, {r0, r2}
	strh	r3, [r7, #8]	@ movhi
.LVL6244:
.L5555:
	.loc 41 557 0
	mov	r0, r7
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6245:
.L5571:
	.cfi_restore_state
.LBB16210:
.LBB16204:
	.loc 41 567 0
	bic	r9, r10, #31
.LVL6246:
	mov	r3, #31
	b	.L5572
.LVL6247:
.L5616:
.LBB16199:
	.loc 41 610 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC272
.LVL6248:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC272
	ldr	r3, .L5628+8
	movw	r2, #610
	bl	_fail
.LVL6249:
.L5564:
.LBE16199:
.LBE16204:
.LBE16210:
.LBB16211:
.LBB16170:
.LBB16167:
.LBB16163:
.LBB16161:
	.loc 30 116 0
	and	r0, r1, #31
.LVL6250:
	mvn	r3, #31
.LVL6251:
.LBE16161:
.LBE16163:
	.loc 41 489 0
	cmp	r0, #0
	bne	.L5626
.LVL6252:
.L5561:
.LBE16167:
.LBE16170:
.LBE16211:
	.loc 41 521 0
	mov	r1, #0
	mov	r3, #1
	strh	r2, [r7, #8]	@ movhi
	stm	r7, {r1, r3}
	b	.L5555
.LVL6253:
.L5589:
	.loc 41 556 0
	mov	r1, #0
	mov	r2, #1
	mvn	r3, #0
	stm	r7, {r1, r2}
	strh	r3, [r7, #8]	@ movhi
.LVL6254:
	b	.L5555
.LVL6255:
.L5624:
.LBB16212:
.LBB16205:
.LBB16200:
.LBB16196:
.LBB16188:
.LBB16189:
.LBB16190:
.LBB16191:
.LBB16192:
.LBB16193:
	.loc 4 1989 0
	uxtb	r1, r3
	ldr	ip, [r4, #4]
.LVL6256:
	cmp	r1, #46
	bne	.L5580
	.loc 4 1992 0
	ubfx	r3, r3, #8, #6
.LBE16193:
.LBE16192:
	.loc 30 106 0
	cmp	r3, #32
	moveq	r1, #31
	beq	.L5581
	and	r1, r3, #31
	mov	r2, #1
	add	r1, r1, #1
	lsl	r1, r2, r1
	sub	r1, r1, #1
.L5581:
.LVL6257:
.LBE16191:
.LBE16190:
.LBE16189:
.LBE16188:
	.loc 41 590 0
	and	r1, r1, ip
	cmp	r10, r1
	bne	.L5579
	.loc 41 591 0
	cmp	r5, r3
	bne	.L5579
	ldr	r3, [fp]
.LVL6258:
.LBB16194:
.LBB16195:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6259:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16195:
.LBE16194:
	.loc 41 593 0
	cmp	r3, #0
	bne	.L5627
	.loc 41 599 0
	add	r5, sp, #16
	ldm	r4, {r1, r2}
	mov	r0, r5
.LVL6260:
	sub	r3, r10, #1
	bl	cap_zombie_cap_set_capZombieNumber
.LVL6261:
	ldm	r5, {r0, r1}
	stm	r4, {r0, r1}
	b	.L5577
.LVL6262:
.L5623:
.LBE16196:
.LBE16200:
	.loc 41 572 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC269
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC269
	ldr	r3, .L5628
	mov	r2, #572
	bl	_assert_fail
.LVL6263:
.L5625:
.LBB16201:
.LBB16197:
	.loc 41 604 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC271
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC271
	ldr	r3, .L5628
	mov	r2, #604
	bl	_assert_fail
.LVL6264:
.L5580:
.LBE16197:
.LBE16201:
.LBE16205:
.LBE16212:
.LBB16213:
.LBB16171:
.LBB16168:
.LBB16164:
.LBB16162:
.LBB16160:
.LBB16159:
.LBB16158:
.LBB16157:
	bl	cap_zombie_cap_get_capZombieType.isra.96.part.97
.LVL6265:
.L5627:
.LBE16157:
.LBE16158:
.LBE16159:
.LBE16160:
.LBE16162:
.LBE16164:
.LBE16168:
.LBE16171:
.LBE16213:
.LBB16214:
.LBB16206:
.LBB16202:
.LBB16198:
	.loc 41 593 0
	movw	r1, #:lower16:.LC110
	movw	r0, #:lower16:.LC270
.LVL6266:
	movt	r1, #:upper16:.LC110
	movt	r0, #:upper16:.LC270
	ldr	r3, .L5628
	movw	r2, #593
	bl	_assert_fail
.LVL6267:
.L5569:
.LBE16198:
.LBE16202:
	.loc 41 566 0
	uxtb	r2, r3
	cmp	r2, #46
	beq	.L5568
	b	.L5570
.L5629:
	.align	2
.L5628:
	.word	.LANCHOR6-3524
	.word	.LANCHOR6-3728
	.word	.LANCHOR6-3508
.LBE16206:
.LBE16214:
	.cfi_endproc
.LFE1019:
	.size	finaliseSlot.constprop.278, .-finaliseSlot.constprop.278
	.align	2
	.syntax unified
	.arm
	.type	cteDelete.constprop.277, %function
cteDelete.constprop.277:
.LFB1020:
	.loc 41 452 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6268:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 41 456 0
	mov	r1, r4
	add	r0, sp, #4
.LVL6269:
	bl	finaliseSlot.constprop.278
.LVL6270:
	ldr	r0, [sp, #4]
.LVL6271:
	.loc 41 457 0
	cmp	r0, #0
	bne	.L5631
.LVL6272:
	ldr	r3, [r4]
.LVL6273:
.LBB16236:
.LBB16237:
.LBB16238:
.LBB16239:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6274:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16239:
.LBE16238:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5634
.LVL6275:
.L5635:
.LBE16237:
.LBE16236:
	.loc 41 464 0
	mov	r0, #0
.LVL6276:
.L5631:
	.loc 41 465 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL6277:
.L5634:
	.cfi_restore_state
	.loc 41 462 0
	ldrh	r5, [sp, #12]
.LVL6278:
.LBB16262:
.LBB16261:
.LBB16240:
.LBB16241:
	.loc 41 471 0
	mov	r0, r4
.LVL6279:
	bl	cdtRemove
.LVL6280:
	.loc 41 474 0
	movw	r3, #65535
	.loc 41 472 0
	mov	r0, #0
	.loc 41 474 0
	cmp	r5, r3
	.loc 41 472 0
	str	r0, [r4]
	str	r0, [r4, #4]
	.loc 41 474 0
	beq	.L5635
.LVL6281:
.LBB16242:
.LBB16243:
.LBB16244:
.LBB16245:
.LBB16246:
.LBB16247:
.LBB16248:
	.loc 18 199 0
	movw	r2, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r5, #5
	.loc 18 199 0
	movt	r2, #:upper16:.LANCHOR2
	ldr	ip, [r2]
	and	lr, r5, #31
	mov	r2, #1
.LBE16248:
.LBE16247:
.LBE16246:
.LBE16245:
	.loc 51 266 0
	movw	r1, #:lower16:intStateIRQTable
.LBB16258:
.LBB16255:
.LBB16252:
.LBB16249:
	.loc 18 199 0
	lsl	r2, r2, lr
.LBE16249:
.LBE16252:
.LBE16255:
.LBE16258:
	.loc 51 266 0
	movt	r1, #:upper16:intStateIRQTable
.LBB16259:
.LBB16256:
.LBB16253:
.LBB16250:
	.loc 18 199 0
	add	r3, r3, #96
.LBE16250:
.LBE16253:
.LBE16256:
.LBE16259:
	.loc 51 266 0
	str	r0, [r1, r5, lsl #2]
.LVL6282:
.LBB16260:
.LBB16257:
.LBB16254:
.LBB16251:
	.loc 18 199 0
	str	r2, [ip, r3, lsl #2]
.LVL6283:
.LBE16251:
.LBE16254:
.LBE16257:
.LBE16260:
.LBE16244:
.LBE16243:
.LBE16242:
.LBE16241:
.LBE16240:
.LBE16261:
.LBE16262:
	.loc 41 465 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE1020:
	.size	cteDelete.constprop.277, .-cteDelete.constprop.277
	.align	2
	.global	invokeTCB_ThreadControl
	.syntax unified
	.arm
	.type	invokeTCB_ThreadControl, %function
invokeTCB_ThreadControl:
.LFB684:
	.loc 40 865 0
	.cfi_startproc
	@ args = 44, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6284:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
.LBB16263:
.LBB16264:
	.loc 4 1564 0
	ands	r6, r0, #15
.LBE16264:
.LBE16263:
	.loc 40 865 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 40 865 0
	ldr	r5, [sp, #80]
.LBB16268:
.LBB16265:
	.loc 4 1564 0
	bne	.L5681
.LVL6285:
	.loc 4 1570 0
	bic	ip, r0, #15
.LBE16265:
.LBE16268:
	.loc 40 869 0
	tst	r5, #4
.LBB16269:
.LBB16266:
	.loc 4 1570 0
	orr	ip, ip, #12
	mov	r4, r0
	mov	r8, r1
	str	r6, [sp, #4]
.LVL6286:
	str	ip, [sp]
.LBE16266:
.LBE16269:
	.loc 40 869 0
	beq	.L5640
	.loc 40 873 0
	tst	r5, #1
	.loc 40 870 0
	str	r2, [r0, #116]
	.loc 40 873 0
	beq	.L5650
	.loc 40 874 0
	mov	r1, r3
.LVL6287:
	bl	setPriority
.LVL6288:
.L5650:
.LBB16270:
	.loc 40 880 0
	bic	r7, r4, #508
	bic	r7, r7, #3
.LVL6289:
	.loc 40 881 0
	mov	r0, r7
	bl	cteDelete.constprop.277
.LVL6290:
	.loc 40 882 0
	cmp	r0, #0
	bne	.L5653
	.loc 40 885 0
	ldr	r3, [sp, #48]
	add	r9, sp, #40
	ldm	r9, {r0, r1}
.LVL6291:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL6292:
	cmp	r0, #0
	beq	.L5645
	.loc 40 886 0 discriminator 1
	add	r1, sp, #8
	ldm	r8, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL6293:
	.loc 40 885 0 discriminator 1
	cmp	r0, #0
	bne	.L5682
.L5645:
.LBE16270:
.LBB16271:
	.loc 40 894 0
	add	r7, r7, #16
.LVL6294:
	.loc 40 895 0
	mov	r0, r7
	bl	cteDelete.constprop.277
.LVL6295:
	.loc 40 896 0
	cmp	r0, #0
	bne	.L5653
	.loc 40 899 0
	ldr	r3, [sp, #60]
	add	r9, sp, #52
	ldm	r9, {r0, r1}
.LVL6296:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL6297:
	cmp	r0, #0
	beq	.L5644
	.loc 40 900 0 discriminator 1
	add	r1, sp, #8
	ldm	r8, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL6298:
	.loc 40 899 0 discriminator 1
	cmp	r0, #0
	beq	.L5644
	.loc 40 901 0
	mov	r3, r7
	ldr	r2, [sp, #60]
	ldm	r9, {r0, r1}
	bl	cteInsert
.LVL6299:
	b	.L5644
.LVL6300:
.L5640:
.LBE16271:
	.loc 40 873 0
	tst	r5, #1
	bne	.L5683
.LVL6301:
.L5644:
	.loc 40 905 0
	tst	r5, #2
	bne	.L5684
.LVL6302:
.L5662:
	.loc 40 921 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6303:
.L5684:
	.cfi_restore_state
.LBB16272:
	.loc 40 908 0
	bic	r0, r4, #508
	bic	r0, r0, #3
	add	r5, r0, #64
.LVL6304:
	.loc 40 909 0
	mov	r0, r5
	bl	cteDelete.constprop.277
.LVL6305:
	.loc 40 910 0
	cmp	r0, #0
	beq	.L5685
.LVL6306:
.L5653:
.LBE16272:
.LBB16273:
	mov	r6, r0
.LBE16273:
	.loc 40 921 0
	mov	r0, r6
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6307:
.L5685:
	.cfi_restore_state
.LBB16274:
	.loc 40 914 0
	ldr	r3, [sp, #76]
	cmp	r3, #0
	.loc 40 913 0
	ldr	r3, [sp, #64]
	str	r3, [r4, #120]
	.loc 40 914 0
	beq	.L5662
	.loc 40 914 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #76]
	add	r4, sp, #68
.LVL6308:
	ldm	r4, {r0, r1}
.LVL6309:
	ldm	r3, {r2, r3}
	bl	sameObjectAs
.LVL6310:
	cmp	r0, #0
	beq	.L5662
	.loc 40 915 0 is_stmt 1 discriminator 2
	add	r1, sp, #8
	ldm	r8, {r2, r3}
	ldmdb	r1, {r0, r1}
	bl	sameObjectAs
.LVL6311:
	.loc 40 914 0 discriminator 2
	cmp	r0, #0
	beq	.L5662
	.loc 40 916 0
	mov	r3, r5
	ldr	r2, [sp, #76]
	ldm	r4, {r0, r1}
	bl	cteInsert
.LVL6312:
	b	.L5662
.LVL6313:
.L5682:
.LBE16274:
.LBB16275:
	.loc 40 887 0
	mov	r3, r7
	ldr	r2, [sp, #48]
	ldm	r9, {r0, r1}
	bl	cteInsert
.LVL6314:
	b	.L5645
.LVL6315:
.L5681:
.LBE16275:
.LBB16276:
.LBB16267:
	bl	cap_thread_cap_new.part.174
.LVL6316:
.L5683:
.LBE16267:
.LBE16276:
	.loc 40 874 0
	mov	r1, r3
.LVL6317:
	bl	setPriority
.LVL6318:
	b	.L5644
	.cfi_endproc
.LFE684:
	.size	invokeTCB_ThreadControl, .-invokeTCB_ThreadControl
	.align	2
	.global	decodeTCBConfigure
	.syntax unified
	.arm
	.type	decodeTCBConfigure, %function
decodeTCBConfigure:
.LFB675:
	.loc 40 479 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6319:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	sub	sp, sp, #132
	.cfi_def_cfa_offset 168
.LVL6320:
	ldr	r5, [sp, #168]
.LVL6321:
	.loc 40 479 0
	mov	r8, r3
	add	ip, sp, #80
.LVL6322:
	ldr	r6, [sp, #172]
.LVL6323:
	ldr	r4, [sp, #176]
.LVL6324:
	stm	ip, {r0, r1}
.LVL6325:
	.loc 40 489 0
	cmp	r6, #0
	cmpne	r5, #0
	moveq	r3, #1
.LVL6326:
	movne	r3, #0
	cmp	r4, #0
	orreq	r3, r3, #1
	cmp	r2, #4
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL6327:
	cmp	r2, #0
	bne	.L5719
.LVL6328:
.LBB16277:
.LBB16278:
	.loc 37 33 0
	ldr	r3, [sp, #180]
.LBE16278:
.LBE16277:
.LBB16285:
.LBB16286:
	.loc 37 30 0
	movw	r7, #:lower16:ksCurThread
	movt	r7, #:upper16:ksCurThread
.LBE16286:
.LBE16285:
.LBB16293:
.LBB16279:
	.loc 37 33 0
	cmp	r3, #0
.LBE16279:
.LBE16293:
.LBB16294:
.LBB16291:
	.loc 37 30 0
	ldr	r3, [r7]
.LVL6329:
.LBB16287:
.LBB16288:
	.loc 10 27 0
	ldr	r2, [r3, #8]
.LBE16288:
.LBE16287:
.LBE16291:
.LBE16294:
.LBB16295:
.LBB16296:
.LBB16297:
.LBB16298:
	ldr	r9, [r3, #12]
.LBE16298:
.LBE16297:
.LBE16296:
.LBE16295:
.LBB16299:
.LBB16292:
.LBB16290:
.LBB16289:
	str	r2, [sp, #72]
.LVL6330:
.LBE16289:
.LBE16290:
.LBE16292:
.LBE16299:
.LBB16300:
.LBB16301:
.LBB16302:
.LBB16303:
	ldr	r2, [r3, #16]
	str	r2, [sp, #60]
.LVL6331:
.LBE16303:
.LBE16302:
.LBE16301:
.LBE16300:
.LBB16304:
.LBB16305:
.LBB16306:
.LBB16307:
	ldr	r2, [r3, #20]
	str	r2, [sp, #68]
.LVL6332:
.LBE16307:
.LBE16306:
.LBE16305:
.LBE16304:
.LBB16308:
.LBB16280:
	.loc 37 33 0
	beq	.L5720
.LBE16280:
.LBE16308:
	.loc 40 510 0
	ldr	r2, [r3, #108]
	.loc 40 508 0
	uxtb	r9, r9
	.loc 40 502 0
	ldm	r5, {r0, r1}
	add	fp, sp, #100
	ldr	ip, [sp, #80]
	.loc 40 506 0
	add	r10, sp, #92
	.loc 40 510 0
	cmp	r9, r2
.LBB16309:
.LBB16281:
	.loc 37 34 0
	ldr	r2, [sp, #180]
.LBE16281:
.LBE16309:
	.loc 40 502 0
	stm	fp, {r0, r1}
	str	r0, [sp, #56]
.LBB16310:
.LBB16282:
	.loc 37 34 0
	ldr	r2, [r2, #20]
.LBE16282:
.LBE16310:
	.loc 40 504 0
	ldm	r6, {r0, r1}
	str	ip, [sp, #52]
.LBB16311:
.LBB16283:
	.loc 37 34 0
	str	r2, [sp, #48]
.LVL6333:
.LBE16283:
.LBE16311:
	.loc 40 504 0
	add	r2, sp, #108
	stm	r2, {r0, r1}
	str	r0, [sp, #64]
.LVL6334:
	.loc 40 506 0
	ldm	r4, {r0, r1}
.LVL6335:
	stm	r10, {r0, r1}
	.loc 40 510 0
	bhi	.L5721
	.loc 40 517 0
	ldr	r3, [sp, #48]
	cmp	r3, #0
	moveq	r4, r3
.LVL6336:
	bne	.L5722
.LVL6337:
.L5691:
.LBB16312:
.LBB16313:
	.loc 4 1576 0
	ldr	r3, [sp, #52]
	and	r3, r3, #15
	cmp	r3, #12
	bne	.L5723
.LBE16313:
.LBE16312:
	.loc 40 534 0
	ldr	r3, [sp, #52]
	bic	r3, r3, #508
	bic	r3, r3, #3
	.loc 40 533 0
	mov	r0, r3
	str	r3, [sp, #76]
	bl	slotCapLongRunningDelete
.LVL6338:
	cmp	r0, #0
	bne	.L5693
	.loc 40 535 0
	ldr	r3, [sp, #76]
	add	r0, r3, #16
	bl	slotCapLongRunningDelete
.LVL6339:
	.loc 40 534 0
	subs	r1, r0, #0
	beq	.L5694
.L5693:
	.loc 40 537 0
	ldr	r3, [r7]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	movw	r2, #537
	ldr	r1, .L5725
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6340:
	movw	r0, #:lower16:.LC277
	movt	r0, #:upper16:.LC277
.LVL6341:
.L5717:
	bl	kprintf
.LVL6342:
	b	.L5716
.LVL6343:
.L5719:
	.loc 40 490 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #490
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5725
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6344:
	movw	r0, #:lower16:.LC275
	movt	r0, #:upper16:.LC275
	bl	kprintf
.LVL6345:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6346:
	.loc 40 491 0
	movw	r3, #:lower16:current_syscall_error
	.loc 40 492 0
	mov	r0, #3
	.loc 40 491 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.LVL6347:
.L5713:
	.loc 40 584 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6348:
.L5721:
	.cfi_restore_state
	.loc 40 511 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
.LVL6349:
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5725
	str	r2, [sp, #4]
	mov	r2, #512
	bl	kprintf
.LVL6350:
	ldr	r3, [r7]
	movw	r0, #:lower16:.LC276
	mov	r1, r9
	movt	r0, #:upper16:.LC276
	ldr	r2, [r3, #108]
	bl	kprintf
.LVL6351:
.L5716:
	.loc 40 537 0
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6352:
	.loc 40 538 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 40 539 0
	mov	r0, r2
	.loc 40 538 0
	str	r2, [r3, #24]
	.loc 40 584 0
	add	sp, sp, #132
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6353:
.L5694:
	.cfi_restore_state
	.loc 40 542 0
	ldr	r3, [sp, #60]
	cmp	r3, #0
	beq	.L5707
.LVL6354:
	.loc 40 543 0
	ldr	r0, [sp, #56]
	mov	r2, r3
	ldr	ip, [sp, #104]
	mov	r3, r0
	str	r0, [sp, #100]
	str	ip, [sp]
	mov	r0, fp
	bl	updateCapData
.LVL6355:
	ldr	r3, [sp, #100]
.LVL6356:
.L5695:
	.loc 40 546 0
	str	r3, [sp, #100]
	add	r0, sp, #116
	ldm	fp, {r2, r3}
.LVL6357:
	mov	r1, r5
	bl	deriveCap
.LVL6358:
	ldr	r0, [sp, #116]
.LVL6359:
	.loc 40 547 0
	cmp	r0, #0
	bne	.L5713
	.loc 40 546 0
	add	r3, sp, #128
	ldr	r2, [r3, #-8]!
	.loc 40 550 0
	ldm	r3, {r0, r1}
.LVL6360:
	.loc 40 546 0
	str	r3, [sp, #60]
.LBB16315:
.LBB16316:
	.loc 4 997 0
	and	r3, r2, #14
	cmp	r3, #14
.LBE16316:
.LBE16315:
	.loc 40 546 0
	str	r2, [sp, #56]
.LBB16318:
.LBB16317:
	.loc 4 999 0
	ldrbeq	r3, [sp, #56]	@ zero_extendqisi2
	.loc 4 998 0
	andne	r3, r2, #15
.LBE16317:
.LBE16318:
	.loc 40 550 0
	stm	fp, {r0, r1}
.LVL6361:
	.loc 40 552 0
	cmp	r3, #10
	beq	.L5698
	.loc 40 555 0
	ldr	r3, [r7]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	movw	r2, #555
	ldr	r1, .L5725
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6362:
	movw	r0, #:lower16:.LC278
	movt	r0, #:upper16:.LC278
	b	.L5717
.LVL6363:
.L5720:
.LBB16319:
.LBB16284:
	bl	getSyscallArg.part.141
.LVL6364:
.L5722:
.LBE16284:
.LBE16319:
.LBB16320:
	.loc 40 522 0
	add	r0, sp, #116
	ldm	r10, {r2, r3}
	mov	r1, r4
	bl	deriveCap
.LVL6365:
	ldr	r0, [sp, #116]
.LVL6366:
	.loc 40 523 0
	cmp	r0, #0
	bne	.L5713
	.loc 40 526 0
	add	r3, sp, #128
	ldmdb	r3, {r0, r1}
.LVL6367:
	stm	r10, {r0, r1}
	.loc 40 527 0
	ldr	r0, [sp, #48]
	ldm	r10, {r1, r2}
	bl	checkValidIPCBuffer
.LVL6368:
	.loc 40 528 0
	cmp	r0, #0
	beq	.L5691
	b	.L5713
.LVL6369:
.L5707:
.LBE16320:
	.loc 40 502 0
	ldr	r3, [sp, #56]
	b	.L5695
.LVL6370:
.L5698:
	.loc 40 560 0
	ldr	r3, [sp, #68]
	cmp	r3, #0
	beq	.L5699
	.loc 40 561 0
	ldr	r0, [sp, #64]
	mov	r2, r3
	ldr	ip, [sp, #112]
	mov	r1, #0
	mov	r3, r0
	str	r0, [sp, #108]
.LVL6371:
	str	ip, [sp]
	add	r0, sp, #108
	bl	updateCapData
.LVL6372:
	ldr	r3, [sp, #108]
	str	r3, [sp, #64]
.LVL6373:
.L5699:
	.loc 40 564 0
	ldr	r3, [sp, #64]
	add	r0, sp, #116
.LVL6374:
	mov	r1, r6
	str	r3, [sp, #108]
	add	r3, sp, #108
	ldm	r3, {r2, r3}
	bl	deriveCap
.LVL6375:
	ldr	r0, [sp, #116]
.LVL6376:
	.loc 40 565 0
	cmp	r0, #0
	bne	.L5713
	.loc 40 568 0
	ldr	r2, [sp, #60]
	.loc 40 564 0
	ldr	r3, [sp, #120]
	.loc 40 568 0
	ldm	r2, {r0, r1}
.LVL6377:
.LBB16321:
.LBB16322:
.LBB16323:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE16323:
.LBE16322:
.LBE16321:
	.loc 40 568 0
	add	r2, sp, #108
	stm	r2, {r0, r1}
.LVL6378:
.LBB16326:
.LBB16325:
.LBB16324:
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL6379:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE16324:
.LBE16325:
.LBE16326:
	.loc 40 570 0
	cmp	r2, #5
	beq	.L5724
	.loc 40 571 0
	ldr	r3, [r7]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	movw	r2, #571
	ldr	r1, .L5725
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6380:
	movw	r0, #:lower16:.LC279
	movt	r0, #:upper16:.LC279
	b	.L5717
.LVL6381:
.L5724:
	.loc 40 576 0
	ldr	r0, [r7]
	str	r3, [sp, #60]
	bl	setThreadState.constprop.305
.LVL6382:
	.loc 40 577 0
	ldm	r10, {r0, r1}
	add	r2, sp, #28
	ldr	r3, [sp, #60]
	mov	ip, #7
	str	ip, [sp, #40]
	add	ip, sp, #12
	str	r4, [sp, #36]
	str	r3, [sp, #108]
	mov	r3, r9
	stm	r2, {r0, r1}
	add	r1, sp, #108
	ldr	lr, [sp, #56]
	ldm	r1, {r0, r1}
	ldr	r2, [sp, #72]
	str	lr, [sp, #100]
	ldr	lr, [sp, #48]
	str	r6, [sp, #20]
	str	lr, [sp, #24]
	stm	ip, {r0, r1}
	ldm	fp, {r0, r1}
	str	r5, [sp, #8]
	stm	sp, {r0, r1}
	mov	r1, r8
	ldr	r0, [sp, #52]
	bic	r0, r0, #15
	bl	invokeTCB_ThreadControl
.LVL6383:
	b	.L5713
.LVL6384:
.L5723:
.LBB16327:
.LBB16314:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6385:
.L5726:
	.align	2
.L5725:
	.word	.LANCHOR6-3492
.LBE16314:
.LBE16327:
	.cfi_endproc
.LFE675:
	.size	decodeTCBConfigure, .-decodeTCBConfigure
	.align	2
	.global	decodeSetPriority
	.syntax unified
	.arm
	.type	decodeSetPriority, %function
decodeSetPriority:
.LFB676:
	.loc 40 588 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6386:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 40 591 0
	cmp	r2, #0
	.loc 40 588 0
	sub	sp, sp, #68
	.cfi_def_cfa_offset 80
	.loc 40 588 0
	add	r3, sp, #48
.LVL6387:
	stm	r3, {r0, r1}
	.loc 40 591 0
	beq	.L5733
.LVL6388:
.LBB16328:
.LBB16329:
	.loc 37 30 0
	movw	r4, #:lower16:ksCurThread
	movt	r4, #:upper16:ksCurThread
	ldr	r3, [r4]
.LVL6389:
.LBE16329:
.LBE16328:
	.loc 40 600 0
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
.LVL6390:
	.loc 40 602 0
	ldr	r2, [r3, #108]
.LVL6391:
	cmp	r5, r2
	bls	.L5730
	.loc 40 603 0
	ldr	r2, [r3, #68]
	add	r1, r3, #140
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5735
	str	r2, [sp, #4]
	mov	r2, #604
	bl	kprintf
.LVL6392:
	ldr	r3, [r4]
	movw	r0, #:lower16:.LC281
	mov	r1, r5
	movt	r0, #:upper16:.LC281
	ldr	r2, [r3, #108]
	bl	kprintf
.LVL6393:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6394:
	.loc 40 605 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 40 606 0
	mov	r0, r2
	.loc 40 605 0
	str	r2, [r3, #24]
	.loc 40 617 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL6395:
.L5733:
	.cfi_restore_state
	.loc 40 592 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #592
.LVL6396:
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5735
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6397:
	movw	r0, #:lower16:.LC280
	movt	r0, #:upper16:.LC280
	bl	kprintf
.LVL6398:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6399:
	.loc 40 593 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	.loc 40 594 0
	mov	r0, #3
	.loc 40 593 0
	str	r2, [r3, #24]
	.loc 40 617 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL6400:
.L5730:
	.cfi_restore_state
	.loc 40 609 0
	mov	r0, r3
	bl	setThreadState.constprop.305
.LVL6401:
	ldr	lr, [sp, #48]
.LVL6402:
.LBB16330:
.LBB16331:
	.loc 4 1576 0
	and	r3, lr, #15
	cmp	r3, #12
	bne	.L5734
.LVL6403:
.LBE16331:
.LBE16330:
.LBB16333:
.LBB16334:
	.loc 4 1020 0
	mov	r2, #0
.LBE16334:
.LBE16333:
	.loc 40 610 0
	add	ip, sp, #56
.LBB16337:
.LBB16335:
	.loc 4 1020 0
	str	r2, [sp, #56]
.LBE16335:
.LBE16337:
	.loc 40 610 0
	mov	r3, r5
.LBB16338:
.LBB16336:
	.loc 4 1020 0
	str	r2, [sp, #60]
.LVL6404:
.LBE16336:
.LBE16338:
	.loc 40 610 0
	mov	r4, #1
	ldm	ip, {r0, r1}
	add	r5, sp, #28
.LVL6405:
	str	r4, [sp, #40]
	add	r4, sp, #12
	str	r2, [sp, #36]
	stm	r5, {r0, r1}
	ldm	ip, {r0, r1}
	str	r2, [sp, #24]
	str	r2, [sp, #20]
	stm	r4, {r0, r1}
	ldm	ip, {r0, r1}
	str	r2, [sp, #8]
	stm	sp, {r0, r1}
	bic	r0, lr, #15
	mov	r1, r2
	bl	invokeTCB_ThreadControl
.LVL6406:
	.loc 40 617 0
	add	sp, sp, #68
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL6407:
.L5734:
	.cfi_restore_state
.LBB16339:
.LBB16332:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6408:
.L5736:
	.align	2
.L5735:
	.word	.LANCHOR6-3472
.LBE16332:
.LBE16339:
	.cfi_endproc
.LFE676:
	.size	decodeSetPriority, .-decodeSetPriority
	.align	2
	.global	decodeSetIPCBuffer
	.syntax unified
	.arm
	.type	decodeSetIPCBuffer, %function
decodeSetIPCBuffer:
.LFB677:
	.loc 40 622 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6409:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
	.cfi_def_cfa_offset 104
	ldr	r4, [sp, #104]
.LVL6410:
	.loc 40 622 0
	add	ip, sp, #48
	stm	ip, {r0, r1}
	.loc 40 627 0
	cmp	r2, #0
	cmpne	r4, #0
	beq	.L5747
.LBB16340:
.LBB16341:
	.loc 37 30 0
	movw	r6, #:lower16:ksCurThread
	mov	r8, r3
.LVL6411:
	movt	r6, #:upper16:ksCurThread
.LBE16341:
.LBE16340:
	.loc 40 635 0
	ldm	r4, {r0, r1}
.LBB16346:
.LBB16344:
	.loc 37 30 0
	ldr	r3, [r6]
.LVL6412:
.LBE16344:
.LBE16346:
	.loc 40 635 0
	add	r5, sp, #60
	stm	r5, {r0, r1}
.LBB16347:
.LBB16345:
.LBB16342:
.LBB16343:
	.loc 10 27 0
	ldr	r7, [r3, #8]
.LVL6413:
.LBE16343:
.LBE16342:
.LBE16345:
.LBE16347:
	.loc 40 637 0
	cmp	r7, #0
	bne	.L5748
	.loc 40 638 0
	mov	r4, r7
.LVL6414:
.L5740:
	.loc 40 654 0
	mov	r0, r3
	bl	setThreadState.constprop.305
.LVL6415:
	ldr	r6, [sp, #48]
.LVL6416:
.LBB16348:
.LBB16349:
	.loc 4 1576 0
	and	r3, r6, #15
	cmp	r3, #12
	bne	.L5749
.LVL6417:
.LBE16349:
.LBE16348:
	.loc 40 655 0
	ldm	r5, {r0, r1}
.LBB16351:
.LBB16352:
	.loc 4 1020 0
	mov	ip, #0
.LBE16352:
.LBE16351:
	.loc 40 655 0
	add	lr, sp, #68
	add	r3, sp, #28
	mov	r2, #2
	str	r4, [sp, #36]
	str	r2, [sp, #40]
	add	r2, sp, #12
	stm	r3, {r0, r1}
	mov	r3, ip
.LBB16354:
.LBB16353:
	.loc 4 1020 0
	str	ip, [sp, #68]
	str	ip, [sp, #72]
.LVL6418:
.LBE16353:
.LBE16354:
	.loc 40 655 0
	ldm	lr, {r0, r1}
	str	r7, [sp, #24]
	str	ip, [sp, #20]
	stm	r2, {r0, r1}
	mov	r2, ip
	ldm	lr, {r0, r1}
	str	ip, [sp, #8]
	stm	sp, {r0, r1}
	mov	r1, r8
	bic	r0, r6, #15
	bl	invokeTCB_ThreadControl
.LVL6419:
	.loc 40 663 0
	add	sp, sp, #80
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL6420:
.L5747:
	.cfi_restore_state
	.loc 40 628 0
	movw	r3, #:lower16:ksCurThread
.LVL6421:
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #628
.LVL6422:
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5750
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6423:
	movw	r0, #:lower16:.LC282
	movt	r0, #:upper16:.LC282
	bl	kprintf
.LVL6424:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6425:
	.loc 40 629 0
	movw	r3, #:lower16:current_syscall_error
	.loc 40 630 0
	mov	r0, #3
	.loc 40 629 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L5739:
	.loc 40 663 0
	add	sp, sp, #80
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL6426:
.L5748:
	.cfi_restore_state
.LBB16355:
	.loc 40 643 0
	add	r0, sp, #68
	ldm	r5, {r2, r3}
.LVL6427:
	mov	r1, r4
	bl	deriveCap
.LVL6428:
	ldr	r0, [sp, #68]
.LVL6429:
	.loc 40 644 0
	cmp	r0, #0
	bne	.L5739
	.loc 40 647 0
	add	r3, sp, #80
	ldmdb	r3, {r0, r1}
.LVL6430:
	stm	r5, {r0, r1}
	.loc 40 648 0
	mov	r0, r7
	ldm	r5, {r1, r2}
	bl	checkValidIPCBuffer
.LVL6431:
	.loc 40 649 0
	cmp	r0, #0
	bne	.L5739
.LVL6432:
	ldr	r3, [r6]
	b	.L5740
.LVL6433:
.L5749:
.LBE16355:
.LBB16356:
.LBB16350:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6434:
.L5751:
	.align	2
.L5750:
	.word	.LANCHOR6-3452
.LBE16350:
.LBE16356:
	.cfi_endproc
.LFE677:
	.size	decodeSetIPCBuffer, .-decodeSetIPCBuffer
	.align	2
	.global	decodeSetSpace
	.syntax unified
	.arm
	.type	decodeSetSpace, %function
decodeSetSpace:
.LFB678:
	.loc 40 668 0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6435:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	sub	sp, sp, #124
	.cfi_def_cfa_offset 160
.LVL6436:
	ldr	r4, [sp, #160]
.LVL6437:
	.loc 40 668 0
	mov	r8, r3
	add	r3, sp, #72
.LVL6438:
	ldr	r5, [sp, #164]
.LVL6439:
	stm	r3, {r0, r1}
.LVL6440:
	.loc 40 676 0
	cmp	r5, #0
	cmpne	r4, #0
	moveq	r3, #1
	movne	r3, #0
	cmp	r2, #2
	movhi	r2, r3
	orrls	r2, r3, #1
.LVL6441:
	cmp	r2, #0
	bne	.L5778
.LBB16357:
.LBB16358:
	.loc 37 30 0
	movw	r6, #:lower16:ksCurThread
.LBE16358:
.LBE16357:
	.loc 40 687 0
	ldm	r4, {r0, r1}
.LBB16366:
.LBB16363:
	.loc 37 30 0
	movt	r6, #:upper16:ksCurThread
	ldr	r9, [sp, #72]
.LVL6442:
	ldr	r10, [r6]
.LVL6443:
.LBE16363:
.LBE16366:
	.loc 40 687 0
	add	r7, sp, #84
	stm	r7, {r0, r1}
	.loc 40 689 0
	add	fp, sp, #92
	.loc 40 687 0
	str	r0, [sp, #60]
.LBB16367:
.LBB16368:
	.loc 4 1576 0
	and	r2, r9, #15
.LBE16368:
.LBE16367:
.LBB16372:
.LBB16364:
.LBB16359:
.LBB16360:
	.loc 10 27 0
	ldr	r3, [r10, #8]
.LBE16360:
.LBE16359:
.LBE16364:
.LBE16372:
.LBB16373:
.LBB16369:
	.loc 4 1576 0
	cmp	r2, #12
.LBE16369:
.LBE16373:
	.loc 40 689 0
	ldm	r5, {r0, r1}
.LBB16374:
.LBB16365:
.LBB16362:
.LBB16361:
	.loc 10 27 0
	str	r3, [sp, #68]
.LVL6444:
.LBE16361:
.LBE16362:
.LBE16365:
.LBE16374:
.LBB16375:
.LBB16376:
.LBB16377:
.LBB16378:
	ldr	r3, [r10, #12]
.LBE16378:
.LBE16377:
.LBE16376:
.LBE16375:
	.loc 40 689 0
	stm	fp, {r0, r1}
.LBB16382:
.LBB16381:
.LBB16380:
.LBB16379:
	.loc 10 27 0
	str	r3, [sp, #56]
.LVL6445:
.LBE16379:
.LBE16380:
.LBE16381:
.LBE16382:
.LBB16383:
.LBB16384:
.LBB16385:
.LBB16386:
	ldr	r3, [r10, #16]
	str	r3, [sp, #64]
.LVL6446:
.LBE16386:
.LBE16385:
.LBE16384:
.LBE16383:
.LBB16387:
.LBB16370:
	.loc 4 1576 0
	bne	.L5779
.LBE16370:
.LBE16387:
	.loc 40 692 0
	bic	r2, r9, #508
	bic	r2, r2, #3
	.loc 40 691 0
	mov	r0, r2
.LVL6447:
	str	r2, [sp, #52]
	bl	slotCapLongRunningDelete
.LVL6448:
	cmp	r0, #0
	bne	.L5756
	.loc 40 693 0
	ldr	r2, [sp, #52]
	add	r0, r2, #16
	bl	slotCapLongRunningDelete
.LVL6449:
	.loc 40 692 0
	subs	r1, r0, #0
	bne	.L5756
	.loc 40 700 0
	ldr	r3, [sp, #56]
	.loc 40 689 0
	ldr	r2, [fp]
	.loc 40 700 0
	cmp	r3, #0
	.loc 40 689 0
	str	r2, [sp, #52]
	.loc 40 700 0
	bne	.L5780
	.loc 40 687 0
	ldr	r10, [sp, #60]
.LVL6450:
.L5758:
	.loc 40 704 0
	str	r10, [sp, #84]
	add	r0, sp, #108
	ldm	r7, {r2, r3}
	mov	r1, r4
	bl	deriveCap
.LVL6451:
	ldr	r0, [sp, #108]
.LVL6452:
	.loc 40 705 0
	cmp	r0, #0
	bne	.L5773
	.loc 40 704 0
	add	r10, sp, #120
.LVL6453:
	ldr	r3, [r10, #-8]!
	mov	r2, r3
	str	r3, [sp, #56]
.LBB16388:
.LBB16389:
	.loc 4 997 0
	and	r3, r3, #14
.LBE16389:
.LBE16388:
	.loc 40 708 0
	ldm	r10, {r0, r1}
.LVL6454:
.LBB16391:
.LBB16390:
	.loc 4 997 0
	cmp	r3, #14
	.loc 4 999 0
	ldrbeq	r3, [sp, #56]	@ zero_extendqisi2
	.loc 4 998 0
	movne	r3, r2
	andne	r3, r3, #15
.LBE16390:
.LBE16391:
	.loc 40 708 0
	stm	r7, {r0, r1}
.LVL6455:
	.loc 40 710 0
	cmp	r3, #10
	beq	.L5761
	.loc 40 713 0
	ldr	r3, [r6]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	movw	r2, #713
	ldr	r1, .L5782
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6456:
	movw	r0, #:lower16:.LC285
	movt	r0, #:upper16:.LC285
	b	.L5776
.LVL6457:
.L5778:
	.loc 40 677 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	movw	r2, #677
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5782
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6458:
	movw	r0, #:lower16:.LC283
	movt	r0, #:upper16:.LC283
	bl	kprintf
.LVL6459:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6460:
	.loc 40 678 0
	movw	r3, #:lower16:current_syscall_error
	.loc 40 679 0
	mov	r0, #3
	.loc 40 678 0
	mov	r2, #7
	movt	r3, #:upper16:current_syscall_error
	str	r2, [r3, #24]
.L5773:
	.loc 40 742 0
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6461:
.L5756:
	.cfi_restore_state
	.loc 40 695 0
	ldr	r2, [r10, #68]
	add	r1, r10, #140
	movw	r0, #:lower16:.LC3
	str	r1, [sp]
	mov	r3, r10
	movt	r0, #:upper16:.LC3
	str	r2, [sp, #4]
	movw	r2, #695
	ldr	r1, .L5782
	bl	kprintf
.LVL6462:
	movw	r0, #:lower16:.LC284
	movt	r0, #:upper16:.LC284
.LVL6463:
.L5776:
	.loc 40 713 0
	bl	kprintf
.LVL6464:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6465:
	.loc 40 714 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 40 715 0
	mov	r0, r2
	.loc 40 714 0
	str	r2, [r3, #24]
	.loc 40 742 0
	add	sp, sp, #124
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL6466:
.L5780:
	.cfi_restore_state
	.loc 40 701 0
	ldr	r0, [sp, #60]
	mov	r2, r3
.LVL6467:
	ldr	ip, [sp, #88]
	mov	r3, r0
	str	r0, [sp, #84]
	str	ip, [sp]
	mov	r0, r7
	bl	updateCapData
.LVL6468:
	ldr	r10, [sp, #84]
.LVL6469:
	b	.L5758
.LVL6470:
.L5779:
.LBB16392:
.LBB16371:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6471:
.L5761:
.LBE16371:
.LBE16392:
	.loc 40 718 0
	ldr	r3, [sp, #64]
	cmp	r3, #0
	beq	.L5762
	.loc 40 719 0
	ldr	r0, [sp, #52]
	mov	r2, r3
	ldr	ip, [sp, #96]
	mov	r1, #0
	mov	r3, r0
	str	r0, [sp, #92]
.LVL6472:
	str	ip, [sp]
	mov	r0, fp
	bl	updateCapData
.LVL6473:
	ldr	r3, [sp, #92]
	str	r3, [sp, #52]
.LVL6474:
.L5762:
	.loc 40 722 0
	ldr	r3, [sp, #52]
	add	r0, sp, #108
.LVL6475:
	mov	r1, r5
	str	r3, [sp, #92]
	ldm	fp, {r2, r3}
	bl	deriveCap
.LVL6476:
	ldr	r0, [sp, #108]
.LVL6477:
	.loc 40 723 0
	cmp	r0, #0
	bne	.L5773
	.loc 40 722 0
	ldr	r3, [sp, #112]
	.loc 40 726 0
	ldm	r10, {r0, r1}
.LVL6478:
.LBB16393:
.LBB16394:
.LBB16395:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
.LBE16395:
.LBE16394:
.LBE16393:
	.loc 40 726 0
	stm	fp, {r0, r1}
.LVL6479:
.LBB16398:
.LBB16397:
.LBB16396:
	.loc 4 999 0
	uxtbeq	r2, r3
.LVL6480:
	.loc 4 998 0
	andne	r2, r3, #15
.LBE16396:
.LBE16397:
.LBE16398:
	.loc 40 728 0
	cmp	r2, #5
	beq	.L5781
	.loc 40 729 0
	ldr	r3, [r6]
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	movw	r2, #729
	ldr	r1, .L5782
	ldr	ip, [r3, #68]
	add	lr, r3, #140
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6481:
	movw	r0, #:lower16:.LC286
	movt	r0, #:upper16:.LC286
	b	.L5776
.LVL6482:
.L5781:
	.loc 40 734 0
	ldr	r0, [r6]
	str	r3, [sp, #52]
	bl	setThreadState.constprop.305
.LVL6483:
.LBB16399:
.LBB16400:
	.loc 4 1020 0
	mov	ip, #0
.LBE16400:
.LBE16399:
	.loc 40 735 0
	ldr	r3, [sp, #52]
	add	r1, sp, #100
.LBB16402:
.LBB16401:
	.loc 4 1020 0
	str	ip, [sp, #100]
	str	ip, [sp, #104]
.LVL6484:
.LBE16401:
.LBE16402:
	.loc 40 735 0
	mov	lr, #4
	ldm	r1, {r0, r1}
	str	r3, [sp, #92]
	add	r3, sp, #28
	str	lr, [sp, #40]
	add	lr, sp, #12
	str	ip, [sp, #36]
	ldr	r2, [sp, #68]
	stm	r3, {r0, r1}
	mov	r3, ip
	ldm	fp, {r0, r1}
	ldr	r6, [sp, #56]
	str	ip, [sp, #24]
	str	r5, [sp, #20]
	str	r6, [sp, #84]
	stm	lr, {r0, r1}
	ldm	r7, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {r0, r1}
	mov	r1, r8
	bic	r0, r9, #15
	bl	invokeTCB_ThreadControl
.LVL6485:
	b	.L5773
.L5783:
	.align	2
.L5782:
	.word	.LANCHOR6-3432
	.cfi_endproc
.LFE678:
	.size	decodeSetSpace, .-decodeSetSpace
	.align	2
	.global	decodeTCBInvocation
	.syntax unified
	.arm
	.type	decodeTCBInvocation, %function
decodeTCBInvocation:
.LFB671:
	.loc 40 295 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6486:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	.loc 40 295 0
	add	ip, sp, #16
	.loc 40 296 0
	sub	r0, r0, #2
.LVL6487:
	.loc 40 295 0
	mov	lr, r1
	mov	r4, r2
.LVL6488:
	stm	ip, {r2, r3}
.LVL6489:
	ldr	r1, [sp, #48]
.LVL6490:
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #52]
	.loc 40 296 0
	cmp	r0, #10
	ldrls	pc, [pc, r0, asl #2]
	b	.L5785
.L5787:
	.word	.L5786
	.word	.L5788
	.word	.L5789
	.word	.L5790
	.word	.L5791
	.word	.L5792
	.word	.L5793
	.word	.L5794
	.word	.L5795
	.word	.L5796
	.word	.L5797
.L5797:
	.loc 40 334 0
	ldm	ip, {r0, r1}
.LVL6491:
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6492:
	.loc 40 334 0
	b	decodeUnbindAEP
.LVL6493:
.L5786:
	.cfi_restore_state
	.loc 40 299 0
	str	r2, [sp, #32]
	mov	r3, r1
	mov	r2, lr
	ldm	ip, {r0, r1}
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6494:
	.loc 40 299 0
	b	decodeReadRegisters
.LVL6495:
.L5788:
	.cfi_restore_state
	.loc 40 302 0
	mov	r3, r2
	ldm	ip, {r0, r1}
	mov	r2, lr
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6496:
	.loc 40 302 0
	b	decodeWriteRegisters
.LVL6497:
.L5789:
	.cfi_restore_state
	.loc 40 305 0
	add	r3, sp, #40
.LVL6498:
	str	r2, [sp, #8]
	ldm	r3, {r0, r1}
	mov	r2, lr
	ldr	r3, [sp, #36]
.LVL6499:
	stm	sp, {r0, r1}
	ldm	ip, {r0, r1}
	bl	decodeCopyRegisters
.LVL6500:
.L5798:
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL6501:
.L5790:
	.cfi_restore_state
	.loc 40 319 0
	add	r1, sp, #36
.LVL6502:
	str	r2, [sp, #12]
	ldm	r1, {r0, r1, r2}
.LVL6503:
	stm	sp, {r0, r1, r2}
	mov	r2, lr
	ldm	ip, {r0, r1}
	bl	decodeTCBConfigure
.LVL6504:
	b	.L5798
.LVL6505:
.L5791:
	.loc 40 322 0
	mov	r3, r2
	ldm	ip, {r0, r1}
	mov	r2, lr
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6506:
	.loc 40 322 0
	b	decodeSetPriority
.LVL6507:
.L5792:
	.cfi_restore_state
	.loc 40 325 0
	add	r1, sp, #36
.LVL6508:
	str	r2, [sp, #12]
	ldm	r1, {r0, r1, r2}
.LVL6509:
	stm	sp, {r0, r1, r2}
	mov	r2, lr
	ldm	ip, {r0, r1}
	bl	decodeSetIPCBuffer
.LVL6510:
	b	.L5798
.LVL6511:
.L5793:
	.loc 40 328 0
	add	r1, sp, #36
.LVL6512:
	str	r2, [sp, #12]
	ldm	r1, {r0, r1, r2}
.LVL6513:
	stm	sp, {r0, r1, r2}
	mov	r2, lr
	ldm	ip, {r0, r1}
	bl	decodeSetSpace
.LVL6514:
	b	.L5798
.LVL6515:
.L5794:
	.loc 40 309 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL6516:
.LBB16403:
.LBB16404:
	.loc 4 1576 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L5800
.LVL6517:
.LBE16404:
.LBE16403:
.LBB16406:
.LBB16407:
	.loc 40 846 0
	bic	r0, r4, #15
	bl	suspend
.LVL6518:
.LBE16407:
.LBE16406:
	.loc 40 310 0
	mov	r0, #0
	b	.L5798
.LVL6519:
.L5795:
	.loc 40 314 0
	movw	r3, #:lower16:ksCurThread
	movt	r3, #:upper16:ksCurThread
	ldr	r0, [r3]
	bl	setThreadState.constprop.305
.LVL6520:
.LBB16408:
.LBB16409:
	.loc 4 1576 0
	and	r3, r4, #15
	cmp	r3, #12
	bne	.L5800
.LVL6521:
.LBE16409:
.LBE16408:
.LBB16410:
.LBB16411:
	.loc 40 853 0
	bic	r0, r4, #15
	bl	restart
.LVL6522:
.LBE16411:
.LBE16410:
	.loc 40 315 0
	mov	r0, #0
	b	.L5798
.LVL6523:
.L5796:
	.loc 40 331 0
	ldr	lr, [sp, #44]
.LVL6524:
	add	r3, sp, #36
.LVL6525:
	ldm	r3, {r2, r3}
.LVL6526:
	ldm	ip, {r0, r1}
	str	lr, [sp, #32]
	.loc 40 348 0
	add	sp, sp, #24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 40 331 0
	b	decodeBindAEP
.LVL6527:
.L5785:
	.loc 40 344 0
	movw	r3, #:lower16:ksCurThread
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:ksCurThread
	mov	r2, #344
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC3
	ldr	r1, .L5802
	ldr	ip, [r3, #68]
	add	lr, r3, #140
.LVL6528:
	str	lr, [sp]
	str	ip, [sp, #4]
	bl	kprintf
.LVL6529:
	movw	r0, #:lower16:.LC287
	movt	r0, #:upper16:.LC287
	bl	kprintf
.LVL6530:
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	kprintf
.LVL6531:
	.loc 40 345 0
	movw	r3, #:lower16:current_syscall_error
	mov	r2, #3
	movt	r3, #:upper16:current_syscall_error
	.loc 40 346 0
	mov	r0, r2
	.loc 40 345 0
	str	r2, [r3, #24]
	.loc 40 346 0
	b	.L5798
.L5800:
	.cfi_restore_state
.LBB16412:
.LBB16405:
	bl	cap_thread_cap_get_capTCBPtr.isra.64.part.65
.LVL6532:
.L5803:
	.align	2
.L5802:
	.word	.LANCHOR6-3416
.LBE16405:
.LBE16412:
	.cfi_endproc
.LFE671:
	.size	decodeTCBInvocation, .-decodeTCBInvocation
	.align	2
	.global	cteRevoke
	.syntax unified
	.arm
	.type	cteRevoke, %function
cteRevoke:
.LFB607:
	.loc 41 429 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6533:
	ldr	r3, [r0]
.LVL6534:
.LBB16450:
.LBB16451:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6535:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16451:
.LBE16450:
	.loc 41 433 0
	cmp	r3, #0
	bne	.L5829
	.loc 41 434 0
	mov	r0, #0
.LVL6536:
	.loc 41 449 0
	bx	lr
.LVL6537:
.L5829:
	.loc 41 429 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	mov	r6, r0
.LBB16452:
.LBB16453:
	.loc 41 436 0
	bl	cdtFindChild
.LVL6538:
	subs	r4, r0, #0
	beq	.L5809
.LBB16454:
.LBB16455:
.LBB16456:
.LBB16457:
.LBB16458:
.LBB16459:
.LBB16460:
.LBB16461:
.LBB16462:
	.loc 51 266 0
	movw	r8, #:lower16:intStateIRQTable
.LBB16463:
.LBB16464:
.LBB16465:
.LBB16466:
	.loc 18 199 0
	movw	r7, #:lower16:.LANCHOR2
.LBE16466:
.LBE16465:
.LBE16464:
.LBE16463:
.LBE16462:
.LBE16461:
.LBE16460:
.LBE16459:
.LBE16458:
.LBE16457:
.LBE16456:
.LBE16455:
.LBE16454:
.LBB16501:
.LBB16502:
	.loc 49 24 0
	movw	r5, #:lower16:ksWorkUnitsCompleted
.LBE16502:
.LBE16501:
.LBB16511:
.LBB16497:
.LBB16494:
.LBB16491:
.LBB16487:
.LBB16485:
.LBB16483:
.LBB16481:
.LBB16479:
	.loc 51 266 0
	movt	r8, #:upper16:intStateIRQTable
.LBB16476:
.LBB16473:
.LBB16470:
.LBB16467:
	.loc 18 199 0
	movt	r7, #:upper16:.LANCHOR2
.LBE16467:
.LBE16470:
.LBE16473:
.LBE16476:
.LBE16479:
.LBE16481:
.LBE16483:
.LBE16485:
.LBE16487:
.LBE16491:
.LBE16494:
.LBE16497:
.LBE16511:
.LBB16512:
.LBB16508:
	.loc 49 24 0
	movt	r5, #:upper16:ksWorkUnitsCompleted
	b	.L5817
.LVL6539:
.L5831:
	ldr	r3, [r4]
.LVL6540:
.LBE16508:
.LBE16512:
.LBB16513:
.LBB16498:
.LBB16495:
.LBB16492:
.LBB16488:
.LBB16489:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6541:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16489:
.LBE16488:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5830
.LVL6542:
.L5814:
.LBE16492:
.LBE16495:
.LBE16498:
.LBE16513:
.LBB16514:
.LBB16509:
	.loc 49 24 0
	ldr	r3, [r5]
	add	r3, r3, #1
	.loc 49 34 0
	cmp	r3, #99
	bhi	.L5816
	.loc 49 24 0
	str	r3, [r5]
.L5815:
.LBE16509:
.LBE16514:
	.loc 41 436 0
	mov	r0, r6
	bl	cdtFindChild
.LVL6543:
	subs	r4, r0, #0
.LVL6544:
	beq	.L5809
.LVL6545:
.L5817:
.LBB16515:
.LBB16499:
	.loc 41 456 0
	add	r0, sp, #4
.LVL6546:
	mov	r1, r4
	bl	finaliseSlot.constprop.278
.LVL6547:
	ldr	r0, [sp, #4]
.LVL6548:
	.loc 41 457 0
	cmp	r0, #0
	beq	.L5831
.LBE16499:
.LBE16515:
.LBE16453:
.LBE16452:
	.loc 41 449 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6549:
.L5816:
	.cfi_restore_state
.LBB16520:
.LBB16518:
.LBB16516:
.LBB16510:
.LBB16503:
.LBB16504:
.LBB16505:
	.loc 18 335 0
	ldr	r3, [r7, #4]
.LBE16505:
.LBE16504:
	.loc 49 35 0
	mov	r2, #0
	str	r2, [r5]
.LBB16507:
.LBB16506:
	.loc 18 335 0
	ldr	r3, [r3, #24]
.LBE16506:
.LBE16507:
	.loc 49 36 0
	ubfx	r3, r3, #0, #10
	cmp	r3, #1020
	bcs	.L5815
	.loc 49 37 0
	mov	r0, #4
.LBE16503:
.LBE16510:
.LBE16516:
.LBE16518:
.LBE16520:
	.loc 41 449 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6550:
.L5830:
	.cfi_restore_state
.LBB16521:
.LBB16519:
.LBB16517:
.LBB16500:
	.loc 41 462 0
	ldrh	r9, [sp, #12]
.LVL6551:
.LBB16496:
.LBB16493:
.LBB16490:
.LBB16486:
	.loc 41 471 0
	mov	r0, r4
.LVL6552:
	bl	cdtRemove
.LVL6553:
	.loc 41 474 0
	movw	r2, #65535
	.loc 41 472 0
	mov	r3, #0
	.loc 41 474 0
	cmp	r9, r2
	.loc 41 472 0
	str	r3, [r4]
	str	r3, [r4, #4]
	.loc 41 474 0
	beq	.L5814
.LVL6554:
.LBB16484:
.LBB16482:
.LBB16480:
.LBB16477:
.LBB16474:
.LBB16471:
.LBB16468:
	.loc 18 196 0
	lsr	r2, r9, #5
	.loc 18 199 0
	and	ip, r9, #31
	mov	r1, #1
	ldr	r0, [r7]
	lsl	r1, r1, ip
.LBE16468:
.LBE16471:
.LBE16474:
.LBE16477:
	.loc 51 266 0
	str	r3, [r8, r9, lsl #2]
.LVL6555:
.LBB16478:
.LBB16475:
.LBB16472:
.LBB16469:
	.loc 18 199 0
	add	r3, r2, #96
	str	r1, [r0, r3, lsl #2]
	b	.L5814
.LVL6556:
.L5809:
.LBE16469:
.LBE16472:
.LBE16475:
.LBE16478:
.LBE16480:
.LBE16482:
.LBE16484:
.LBE16486:
.LBE16490:
.LBE16493:
.LBE16496:
.LBE16500:
.LBE16517:
.LBE16519:
.LBE16521:
	.loc 41 434 0
	mov	r0, #0
.LVL6557:
	.loc 41 449 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE607:
	.size	cteRevoke, .-cteRevoke
	.align	2
	.global	invokeCNodeRevoke
	.syntax unified
	.arm
	.type	invokeCNodeRevoke, %function
invokeCNodeRevoke:
.LFB597:
	.loc 41 311 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6558:
	ldr	r3, [r0]
.LVL6559:
.LBB16559:
.LBB16560:
.LBB16561:
.LBB16562:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6560:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16562:
.LBE16561:
	.loc 41 433 0
	cmp	r3, #0
	bne	.L5857
	.loc 41 434 0
	mov	r0, #0
.LVL6561:
.LBE16560:
.LBE16559:
	.loc 41 313 0
	bx	lr
.LVL6562:
.L5857:
	.loc 41 311 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	mov	r6, r0
.LBB16636:
.LBB16633:
.LBB16563:
.LBB16564:
	.loc 41 436 0
	bl	cdtFindChild
.LVL6563:
	subs	r4, r0, #0
	beq	.L5837
.LBB16565:
.LBB16566:
.LBB16567:
.LBB16568:
.LBB16569:
.LBB16570:
.LBB16571:
.LBB16572:
.LBB16573:
	.loc 51 266 0
	movw	r8, #:lower16:intStateIRQTable
.LBB16574:
.LBB16575:
.LBB16576:
.LBB16577:
	.loc 18 199 0
	movw	r7, #:lower16:.LANCHOR2
.LBE16577:
.LBE16576:
.LBE16575:
.LBE16574:
.LBE16573:
.LBE16572:
.LBE16571:
.LBE16570:
.LBE16569:
.LBE16568:
.LBE16567:
.LBE16566:
.LBE16565:
.LBB16612:
.LBB16613:
	.loc 49 24 0
	movw	r5, #:lower16:ksWorkUnitsCompleted
.LBE16613:
.LBE16612:
.LBB16622:
.LBB16608:
.LBB16605:
.LBB16602:
.LBB16598:
.LBB16596:
.LBB16594:
.LBB16592:
.LBB16590:
	.loc 51 266 0
	movt	r8, #:upper16:intStateIRQTable
.LBB16587:
.LBB16584:
.LBB16581:
.LBB16578:
	.loc 18 199 0
	movt	r7, #:upper16:.LANCHOR2
.LBE16578:
.LBE16581:
.LBE16584:
.LBE16587:
.LBE16590:
.LBE16592:
.LBE16594:
.LBE16596:
.LBE16598:
.LBE16602:
.LBE16605:
.LBE16608:
.LBE16622:
.LBB16623:
.LBB16619:
	.loc 49 24 0
	movt	r5, #:upper16:ksWorkUnitsCompleted
	b	.L5845
.LVL6564:
.L5859:
	ldr	r3, [r4]
.LVL6565:
.LBE16619:
.LBE16623:
.LBB16624:
.LBB16609:
.LBB16606:
.LBB16603:
.LBB16599:
.LBB16600:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6566:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16600:
.LBE16599:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5858
.LVL6567:
.L5842:
.LBE16603:
.LBE16606:
.LBE16609:
.LBE16624:
.LBB16625:
.LBB16620:
	.loc 49 24 0
	ldr	r3, [r5]
	add	r3, r3, #1
	.loc 49 34 0
	cmp	r3, #99
	bhi	.L5844
	.loc 49 24 0
	str	r3, [r5]
.L5843:
.LBE16620:
.LBE16625:
	.loc 41 436 0
	mov	r0, r6
	bl	cdtFindChild
.LVL6568:
	subs	r4, r0, #0
.LVL6569:
	beq	.L5837
.LVL6570:
.L5845:
.LBB16626:
.LBB16610:
	.loc 41 456 0
	add	r0, sp, #4
.LVL6571:
	mov	r1, r4
	bl	finaliseSlot.constprop.278
.LVL6572:
	ldr	r0, [sp, #4]
.LVL6573:
	.loc 41 457 0
	cmp	r0, #0
	beq	.L5859
.LBE16610:
.LBE16626:
.LBE16564:
.LBE16563:
.LBE16633:
.LBE16636:
	.loc 41 313 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6574:
.L5844:
	.cfi_restore_state
.LBB16637:
.LBB16634:
.LBB16631:
.LBB16629:
.LBB16627:
.LBB16621:
.LBB16614:
.LBB16615:
.LBB16616:
	.loc 18 335 0
	ldr	r3, [r7, #4]
.LBE16616:
.LBE16615:
	.loc 49 35 0
	mov	r2, #0
	str	r2, [r5]
.LBB16618:
.LBB16617:
	.loc 18 335 0
	ldr	r3, [r3, #24]
.LBE16617:
.LBE16618:
	.loc 49 36 0
	ubfx	r3, r3, #0, #10
	cmp	r3, #1020
	bcs	.L5843
	.loc 49 37 0
	mov	r0, #4
.LBE16614:
.LBE16621:
.LBE16627:
.LBE16629:
.LBE16631:
.LBE16634:
.LBE16637:
	.loc 41 313 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6575:
.L5858:
	.cfi_restore_state
.LBB16638:
.LBB16635:
.LBB16632:
.LBB16630:
.LBB16628:
.LBB16611:
	.loc 41 462 0
	ldrh	r9, [sp, #12]
.LVL6576:
.LBB16607:
.LBB16604:
.LBB16601:
.LBB16597:
	.loc 41 471 0
	mov	r0, r4
.LVL6577:
	bl	cdtRemove
.LVL6578:
	.loc 41 474 0
	movw	r2, #65535
	.loc 41 472 0
	mov	r3, #0
	.loc 41 474 0
	cmp	r9, r2
	.loc 41 472 0
	str	r3, [r4]
	str	r3, [r4, #4]
	.loc 41 474 0
	beq	.L5842
.LVL6579:
.LBB16595:
.LBB16593:
.LBB16591:
.LBB16588:
.LBB16585:
.LBB16582:
.LBB16579:
	.loc 18 196 0
	lsr	r2, r9, #5
	.loc 18 199 0
	and	ip, r9, #31
	mov	r1, #1
	ldr	r0, [r7]
	lsl	r1, r1, ip
.LBE16579:
.LBE16582:
.LBE16585:
.LBE16588:
	.loc 51 266 0
	str	r3, [r8, r9, lsl #2]
.LVL6580:
.LBB16589:
.LBB16586:
.LBB16583:
.LBB16580:
	.loc 18 199 0
	add	r3, r2, #96
	str	r1, [r0, r3, lsl #2]
	b	.L5842
.LVL6581:
.L5837:
.LBE16580:
.LBE16583:
.LBE16586:
.LBE16589:
.LBE16591:
.LBE16593:
.LBE16595:
.LBE16597:
.LBE16601:
.LBE16604:
.LBE16607:
.LBE16611:
.LBE16628:
.LBE16630:
.LBE16632:
	.loc 41 434 0
	mov	r0, #0
.LVL6582:
.LBE16635:
.LBE16638:
	.loc 41 313 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE597:
	.size	invokeCNodeRevoke, .-invokeCNodeRevoke
	.align	2
	.global	invokeCNodeDelete
	.syntax unified
	.arm
	.type	invokeCNodeDelete, %function
invokeCNodeDelete:
.LFB598:
	.loc 41 317 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6583:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0
.LVL6584:
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB16662:
.LBB16663:
	.loc 41 456 0
	mov	r1, r4
	add	r0, sp, #4
.LVL6585:
	bl	finaliseSlot.constprop.278
.LVL6586:
	ldr	r0, [sp, #4]
.LVL6587:
	.loc 41 457 0
	cmp	r0, #0
	bne	.L5861
.LVL6588:
	ldr	r3, [r4]
.LVL6589:
.LBB16664:
.LBB16665:
.LBB16666:
.LBB16667:
	.loc 4 997 0
	and	r2, r3, #14
	cmp	r2, #14
	.loc 4 999 0
	uxtbeq	r3, r3
.LVL6590:
	.loc 4 998 0
	andne	r3, r3, #15
.LBE16667:
.LBE16666:
	.loc 41 470 0
	cmp	r3, #0
	bne	.L5864
.LVL6591:
.L5865:
.LBE16665:
.LBE16664:
	.loc 41 464 0
	mov	r0, #0
.LVL6592:
.L5861:
.LBE16663:
.LBE16662:
	.loc 41 319 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL6593:
.L5864:
	.cfi_restore_state
.LBB16692:
.LBB16691:
	.loc 41 462 0
	ldrh	r5, [sp, #12]
.LVL6594:
.LBB16690:
.LBB16689:
.LBB16668:
.LBB16669:
	.loc 41 471 0
	mov	r0, r4
.LVL6595:
	bl	cdtRemove
.LVL6596:
	.loc 41 474 0
	movw	r3, #65535
	.loc 41 472 0
	mov	r0, #0
	.loc 41 474 0
	cmp	r5, r3
	.loc 41 472 0
	str	r0, [r4]
	str	r0, [r4, #4]
	.loc 41 474 0
	beq	.L5865
.LVL6597:
.LBB16670:
.LBB16671:
.LBB16672:
.LBB16673:
.LBB16674:
.LBB16675:
.LBB16676:
	.loc 18 199 0
	movw	r2, #:lower16:.LANCHOR2
	.loc 18 196 0
	lsr	r3, r5, #5
	.loc 18 199 0
	movt	r2, #:upper16:.LANCHOR2
	ldr	ip, [r2]
	and	lr, r5, #31
	mov	r2, #1
.LBE16676:
.LBE16675:
.LBE16674:
.LBE16673:
	.loc 51 266 0
	movw	r1, #:lower16:intStateIRQTable
.LBB16686:
.LBB16683:
.LBB16680:
.LBB16677:
	.loc 18 199 0
	lsl	r2, r2, lr
.LBE16677:
.LBE16680:
.LBE16683:
.LBE16686:
	.loc 51 266 0
	movt	r1, #:upper16:intStateIRQTable
.LBB16687:
.LBB16684:
.LBB16681:
.LBB16678:
	.loc 18 199 0
	add	r3, r3, #96
.LBE16678:
.LBE16681:
.LBE16684:
.LBE16687:
	.loc 51 266 0
	str	r0, [r1, r5, lsl #2]
.LVL6598:
.LBB16688:
.LBB16685:
.LBB16682:
.LBB16679:
	.loc 18 199 0
	str	r2, [ip, r3, lsl #2]
.LVL6599:
.LBE16679:
.LBE16682:
.LBE16685:
.LBE16688:
.LBE16672:
.LBE16671:
.LBE16670:
.LBE16669:
.LBE16668:
.LBE16689:
.LBE16690:
.LBE16691:
.LBE16692:
	.loc 41 319 0
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE598:
	.size	invokeCNodeDelete, .-invokeCNodeDelete
	.align	2
	.global	Arch_createObject
	.syntax unified
	.arm
	.type	Arch_createObject, %function
Arch_createObject:
.LFB450:
	.loc 23 257 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6600:
	.loc 23 258 0
	sub	r1, r1, #5
.LVL6601:
	.loc 23 257 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 23 257 0
	mov	r5, r0
	mov	r4, r2
	.loc 23 258 0
	cmp	r1, #5
	ldrls	pc, [pc, r1, asl #2]
	b	.L5869
.L5871:
	.word	.L5870
	.word	.L5872
	.word	.L5873
	.word	.L5874
	.word	.L5875
	.word	.L5876
.L5876:
	.loc 23 335 0
	mov	r1, #16384
.LVL6602:
	mov	r0, r2
.LVL6603:
	bl	memzero
.LVL6604:
	movw	r1, #3585
	mov	r3, #3584
	ldr	r2, .L5922
	b	.L5894
.LVL6605:
.L5895:
	add	r3, r3, #1
	add	r1, r1, #1
.L5894:
.LVL6606:
.LBB16735:
.LBB16736:
	.loc 11 316 0
	cmp	r3, #4080
	beq	.L5895
	.loc 11 317 0
	ldr	r0, [r2, r3, lsl #2]
	.loc 11 315 0
	cmp	r1, #4096
	.loc 11 317 0
	str	r0, [r4, r3, lsl #2]
.LVL6607:
	.loc 11 315 0
	bne	.L5895
.LVL6608:
.LBE16736:
.LBE16735:
.LBB16737:
.LBB16738:
	.loc 13 95 0
	add	r2, r4, #16320
	lsr	r3, r4, #5
.LVL6609:
	add	r2, r2, #63
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5899
.L5907:
.LVL6610:
.LBB16739:
.LBB16740:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6611:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16741:
.LBB16742:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6612:
	.arm
	.syntax unified
.LBE16742:
.LBE16741:
.LBE16740:
.LBE16739:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6613:
	cmp	r3, r1
	bne	.L5907
.LVL6614:
.L5899:
.LBE16738:
.LBE16737:
.LBB16743:
.LBB16744:
	.loc 4 1874 0
	ubfx	r3, r4, #0, #14
	cmp	r3, #0
	bne	.L5920
.LVL6615:
	.loc 4 1880 0
	bic	r4, r4, #16320
.LVL6616:
	str	r3, [r5, #4]
.LVL6617:
	bic	r4, r4, #63
.LBE16744:
.LBE16743:
	.loc 23 353 0
	mov	r0, r5
.LBB16747:
.LBB16745:
	.loc 4 1880 0
	orr	r4, r4, #5
	str	r4, [r5]
.LBE16745:
.LBE16747:
	.loc 23 353 0
	pop	{r4, r5, r6, pc}
.LVL6618:
.L5870:
	.loc 23 260 0
	ldr	r3, [sp, #16]
.LVL6619:
	cmp	r3, #0
	beq	.L5877
.LVL6620:
.L5879:
	.loc 23 271 0
	mov	r0, r5
	mov	r2, r4
	mov	r1, #0
	bl	cap_frame_cap_new.constprop.281
.LVL6621:
	.loc 23 353 0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.LVL6622:
.L5872:
	.loc 23 276 0
	ldr	r3, [sp, #16]
.LVL6623:
	cmp	r3, #0
	beq	.L5881
.LVL6624:
.L5882:
	.loc 23 287 0
	mov	r0, r5
	mov	r2, r4
	mov	r1, #1
	bl	cap_frame_cap_new.constprop.281
.LVL6625:
	.loc 23 353 0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.LVL6626:
.L5874:
	.loc 23 308 0
	ldr	r3, [sp, #16]
.LVL6627:
	cmp	r3, #0
	beq	.L5887
.LVL6628:
.L5888:
	.loc 23 319 0
	mov	r0, r5
	mov	r2, r4
	mov	r1, #3
	bl	cap_frame_cap_new.constprop.281
.LVL6629:
	.loc 23 353 0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.LVL6630:
.L5873:
	.loc 23 292 0
	ldr	r3, [sp, #16]
.LVL6631:
	cmp	r3, #0
	beq	.L5884
.LVL6632:
.L5885:
	.loc 23 303 0
	mov	r0, r5
	mov	r2, r4
	mov	r1, #2
	bl	cap_frame_cap_new.constprop.281
.LVL6633:
	.loc 23 353 0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.LVL6634:
.L5875:
	.loc 23 324 0
	mov	r1, #1024
	mov	r0, r2
.LVL6635:
	bl	memzero
.LVL6636:
.LBB16748:
.LBB16749:
	.loc 13 95 0
	add	r2, r4, #1020
	lsr	r3, r4, #5
.LVL6637:
	add	r2, r2, #3
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5893
.L5906:
.LVL6638:
.LBB16750:
.LBB16751:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6639:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16752:
.LBB16753:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6640:
	.arm
	.syntax unified
.LBE16753:
.LBE16752:
.LBE16751:
.LBE16750:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6641:
	cmp	r3, r1
	bne	.L5906
.LVL6642:
.L5893:
.LBE16749:
.LBE16748:
.LBB16754:
.LBB16755:
	.loc 4 1791 0
	ubfx	r3, r4, #0, #10
	cmp	r3, #0
	bne	.L5921
.LVL6643:
	.loc 4 1797 0
	bic	r4, r4, #1020
.LVL6644:
	str	r3, [r5, #4]
.LVL6645:
	bic	r4, r4, #3
.LBE16755:
.LBE16754:
	.loc 23 353 0
	mov	r0, r5
.LBB16758:
.LBB16756:
	.loc 4 1797 0
	orr	r4, r4, #3
	str	r4, [r5]
.LBE16756:
.LBE16758:
	.loc 23 353 0
	pop	{r4, r5, r6, pc}
.LVL6646:
.L5869:
	.loc 23 351 0
	movw	r1, #:lower16:.LC24
	movw	r0, #:lower16:.LC288
.LVL6647:
	movt	r1, #:upper16:.LC24
	movt	r0, #:upper16:.LC288
	ldr	r3, .L5922+4
.LVL6648:
	movw	r2, #351
.LVL6649:
	bl	_fail
.LVL6650:
.L5877:
	.loc 23 261 0
	mov	r1, #4096
	mov	r0, r2
.LVL6651:
	bl	memzero
.LVL6652:
.LBB16759:
.LBB16760:
	.loc 13 95 0
	add	r2, r4, #4080
	lsr	r3, r4, #5
.LVL6653:
	add	r2, r2, #15
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5879
.L5902:
.LVL6654:
.LBB16761:
.LBB16762:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6655:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16763:
.LBB16764:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6656:
	.arm
	.syntax unified
.LBE16764:
.LBE16763:
.LBE16762:
.LBE16761:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6657:
	cmp	r3, r1
	bne	.L5902
	b	.L5879
.LVL6658:
.L5887:
.LBE16760:
.LBE16759:
	.loc 23 309 0
	mov	r1, #16777216
	mov	r0, r2
.LVL6659:
	bl	memzero
.LVL6660:
.LBB16765:
.LBB16766:
	.loc 13 95 0
	add	r2, r4, #16777216
	lsr	r3, r4, #5
.LVL6661:
	sub	r2, r2, #1
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5888
.L5905:
.LVL6662:
.LBB16767:
.LBB16768:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6663:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16769:
.LBB16770:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6664:
	.arm
	.syntax unified
.LBE16770:
.LBE16769:
.LBE16768:
.LBE16767:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6665:
	cmp	r3, r1
	bne	.L5905
	b	.L5888
.LVL6666:
.L5881:
.LBE16766:
.LBE16765:
	.loc 23 277 0
	mov	r1, #65536
	mov	r0, r2
.LVL6667:
	bl	memzero
.LVL6668:
.LBB16771:
.LBB16772:
	.loc 13 95 0
	add	r2, r4, #65280
	lsr	r3, r4, #5
.LVL6669:
	add	r2, r2, #255
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5882
.L5903:
.LVL6670:
.LBB16773:
.LBB16774:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6671:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16775:
.LBB16776:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6672:
	.arm
	.syntax unified
.LBE16776:
.LBE16775:
.LBE16774:
.LBE16773:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6673:
	cmp	r3, r1
	bne	.L5903
	b	.L5882
.LVL6674:
.L5884:
.LBE16772:
.LBE16771:
	.loc 23 293 0
	mov	r1, #1048576
	mov	r0, r2
.LVL6675:
	bl	memzero
.LVL6676:
.LBB16777:
.LBB16778:
	.loc 13 95 0
	sub	r2, r4, #-67108863
	lsr	r3, r4, #5
.LVL6677:
	sub	r2, r2, #66060288
	lsr	r2, r2, #5
	add	r1, r2, #1
	cmp	r3, r1
	bcs	.L5885
.L5904:
.LVL6678:
.LBB16779:
.LBB16780:
	.loc 14 212 0
	lsl	r2, r3, #5
.LVL6679:
	.syntax divided
@ 212 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	mcr p15, 0, r2, c7, c11, 1
@ 0 "" 2
	.arm
	.syntax unified
.LBB16781:
.LBB16782:
	.loc 12 23 0
	.syntax divided
@ 23 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/armv/armv7-a/armv/machine.h" 1
	dmb
@ 0 "" 2
.LVL6680:
	.arm
	.syntax unified
.LBE16782:
.LBE16781:
.LBE16780:
.LBE16779:
	.loc 13 95 0
	add	r3, r3, #1
.LVL6681:
	cmp	r3, r1
	bne	.L5904
	b	.L5885
.LVL6682:
.L5920:
.LBE16778:
.LBE16777:
.LBB16783:
.LBB16746:
	bl	cap_page_directory_cap_new.part.106
.LVL6683:
.L5921:
.LBE16746:
.LBE16783:
.LBB16784:
.LBB16757:
	.loc 4 1791 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC151
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC151
	ldr	r3, .L5922+8
	movw	r2, #1791
	bl	_assert_fail
.LVL6684:
.L5923:
	.align	2
.L5922:
	.word	.LANCHOR1+16
	.word	.LANCHOR6-3396
	.word	.LANCHOR4+952
.LBE16757:
.LBE16784:
	.cfi_endproc
.LFE450:
	.size	Arch_createObject, .-Arch_createObject
	.section	.boot.text
	.align	2
	.global	create_root_cnode
	.syntax unified
	.arm
	.type	create_root_cnode, %function
create_root_cnode:
.LFB467:
	.loc 25 139 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6685:
	.loc 25 144 0
	movw	r3, #:lower16:.LANCHOR3
	.loc 25 139 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 25 144 0
	movt	r3, #:upper16:.LANCHOR3
	mov	r2, #4096
	.loc 25 139 0
	mov	r5, r0
	.loc 25 147 0
	mov	r0, #16
.LVL6686:
	.loc 25 144 0
	str	r2, [r3, #24]
	.loc 25 147 0
	bl	alloc_region
.LVL6687:
	.loc 25 148 0
	subs	r4, r0, #0
	beq	.L5929
	.loc 25 152 0
	mov	r1, #65536
	bl	memzero
.LVL6688:
.LBB16795:
.LBB16796:
	.loc 4 1481 0
	tst	r4, #31
	bne	.L5930
.LVL6689:
	.loc 4 1485 0
	bic	r6, r4, #31
.LVL6690:
.LBE16796:
.LBE16795:
	.loc 25 162 0
	add	r3, r4, #32
.LBB16799:
.LBB16797:
	.loc 4 1485 0
	orr	r6, r6, #10
.LVL6691:
.LBE16797:
.LBE16799:
.LBB16800:
.LBB16801:
	.loc 25 122 0
	mov	r7, #170917888
	.loc 25 123 0
	mov	r0, r3
	.loc 25 122 0
	str	r6, [r4, #32]
	str	r7, [r4, #36]
	.loc 25 123 0
	bl	cdtInsert.constprop.272
.LVL6692:
.LBE16801:
.LBE16800:
	.loc 25 164 0
	stm	r5, {r6, r7}
.LVL6693:
	.loc 25 165 0
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.LVL6694:
.L5929:
.LBB16802:
.LBB16803:
	.loc 25 149 0
	movw	r0, #:lower16:.LC289
.LVL6695:
	movt	r0, #:upper16:.LC289
	bl	kprintf
.LVL6696:
.LBB16804:
.LBB16805:
	.loc 4 1020 0
	str	r4, [r5]
.LBE16805:
.LBE16804:
.LBE16803:
.LBE16802:
	.loc 25 165 0
	mov	r0, r5
.LBB16809:
.LBB16808:
.LBB16807:
.LBB16806:
	.loc 4 1020 0
	str	r4, [r5, #4]
.LVL6697:
.LBE16806:
.LBE16807:
.LBE16808:
.LBE16809:
	.loc 25 165 0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL6698:
.L5930:
.LBB16810:
.LBB16798:
	.loc 4 1481 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC290
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC290
	ldr	r3, .L5931
	movw	r2, #1481
	bl	_assert_fail
.LVL6699:
.L5932:
	.align	2
.L5931:
	.word	.LANCHOR4+2176
.LBE16798:
.LBE16810:
	.cfi_endproc
.LFE467:
	.size	create_root_cnode, .-create_root_cnode
	.align	2
	.global	create_irq_cnode
	.syntax unified
	.arm
	.type	create_irq_cnode, %function
create_irq_cnode:
.LFB468:
	.loc 25 171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 174 0
	mov	r0, #12
	bl	alloc_region
.LVL6700:
	.loc 25 175 0
	subs	r4, r0, #0
	beq	.L5937
	.loc 25 179 0
	mov	r1, #4096
	bl	memzero
.LVL6701:
	.loc 25 180 0
	movw	r3, #:lower16:intStateIRQNode
	.loc 25 181 0
	mov	r0, #1
	.loc 25 180 0
	movt	r3, #:upper16:intStateIRQNode
	str	r4, [r3]
	.loc 25 182 0
	pop	{r4, pc}
.LVL6702:
.L5937:
	.loc 25 176 0
	movw	r0, #:lower16:.LC291
.LVL6703:
	movt	r0, #:upper16:.LC291
	bl	kprintf
.LVL6704:
	.loc 25 177 0
	mov	r0, r4
	pop	{r4, pc}
	.cfi_endproc
.LFE468:
	.size	create_irq_cnode, .-create_irq_cnode
	.align	2
	.global	create_idle_thread
	.syntax unified
	.arm
	.type	create_idle_thread, %function
create_idle_thread:
.LFB475:
	.loc 25 324 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 25 326 0
	mov	r0, #9
	bl	alloc_region
.LVL6705:
	.loc 25 327 0
	subs	r4, r0, #0
	beq	.L5944
	.loc 25 331 0
	mov	r1, #512
	bl	memzero
.LVL6706:
.LBB16831:
.LBB16832:
.LBB16833:
.LBB16834:
	.loc 26 435 0
	movw	r2, #:lower16:ksCurThread
.LBE16834:
.LBE16833:
.LBE16832:
.LBE16831:
	.loc 25 332 0
	add	r0, r4, #256
.LBB16878:
.LBB16854:
.LBB16839:
.LBB16835:
	.loc 26 435 0
	movt	r2, #:upper16:ksCurThread
.LBE16835:
.LBE16839:
.LBB16840:
.LBB16841:
	.loc 4 270 0
	ldr	r3, [r0, #72]
.LBE16841:
.LBE16840:
.LBB16845:
.LBB16836:
	.loc 26 435 0
	ldr	lr, [r2]
.LBE16836:
.LBE16845:
.LBE16854:
.LBE16878:
	.loc 25 332 0
	movw	r1, #:lower16:ksIdleThread
.LBB16879:
.LBB16855:
.LBB16856:
.LBB16857:
.LBB16858:
	.loc 10 21 0
	movw	r2, #:lower16:idle_thread
.LBE16858:
.LBE16857:
.LBE16856:
.LBE16855:
.LBE16879:
	.loc 25 332 0
	movt	r1, #:upper16:ksIdleThread
.LBB16880:
.LBB16870:
.LBB16846:
.LBB16842:
	.loc 4 270 0
	bic	r3, r3, #15
.LBE16842:
.LBE16846:
.LBE16870:
.LBB16871:
.LBB16867:
.LBB16861:
.LBB16862:
	.loc 10 21 0
	mov	ip, #83
.LBE16862:
.LBE16861:
.LBE16867:
.LBE16871:
.LBB16872:
.LBB16847:
.LBB16837:
	.loc 26 435 0
	cmp	r0, lr
.LBE16837:
.LBE16847:
.LBE16872:
.LBB16873:
.LBB16868:
.LBB16864:
.LBB16859:
	.loc 10 21 0
	movt	r2, #:upper16:idle_thread
.LBE16859:
.LBE16864:
.LBE16868:
.LBE16873:
.LBB16874:
.LBB16848:
.LBB16843:
	.loc 4 270 0
	orr	r3, r3, #8
.LBE16843:
.LBE16848:
.LBE16874:
.LBE16880:
	.loc 25 332 0
	str	r0, [r1]
.LVL6707:
.LBB16881:
.LBB16875:
.LBB16869:
.LBB16865:
.LBB16863:
	.loc 10 21 0
	str	ip, [r0, #64]
.LVL6708:
.LBE16863:
.LBE16865:
.LBB16866:
.LBB16860:
	str	r2, [r0, #60]
.LVL6709:
.LBE16860:
.LBE16866:
.LBE16869:
.LBE16875:
.LBB16876:
.LBB16849:
.LBB16844:
	.loc 4 270 0
	str	r3, [r0, #72]
.LVL6710:
.LBE16844:
.LBE16849:
.LBB16850:
.LBB16838:
	.loc 26 435 0
	beq	.L5945
.L5942:
.LBE16838:
.LBE16850:
.LBE16876:
.LBE16881:
	.loc 25 334 0
	mov	r0, #1
.LVL6711:
	.loc 25 335 0
	pop	{r4, pc}
.LVL6712:
.L5944:
	.loc 25 328 0
	movw	r0, #:lower16:.LC292
.LVL6713:
	movt	r0, #:upper16:.LC292
	bl	kprintf
.LVL6714:
	.loc 25 329 0
	mov	r0, r4
	pop	{r4, pc}
.LVL6715:
.L5945:
.LBB16882:
.LBB16877:
.LBB16851:
.LBB16852:
.LBB16853:
	.loc 26 436 0
	movw	r3, #:lower16:ksSchedulerAction
	movt	r3, #:upper16:ksSchedulerAction
	.loc 26 435 0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5942
	bl	scheduleTCB.part.236
.LVL6716:
.LBE16853:
.LBE16852:
.LBE16851:
.LBE16877:
.LBE16882:
	.loc 25 334 0
	mov	r0, #1
	pop	{r4, pc}
	.cfi_endproc
.LFE475:
	.size	create_idle_thread, .-create_idle_thread
	.align	2
	.global	create_initial_thread
	.syntax unified
	.arm
	.type	create_initial_thread, %function
create_initial_thread:
.LFB476:
	.loc 25 346 0
	.cfi_startproc
	@ args = 20, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6717:
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 64
	.loc 25 346 0
	add	r5, sp, #8
	stm	sp, {r2, r3}
	stm	r5, {r0, r1}
	.loc 25 353 0
	mov	r0, #9
	bl	alloc_region
.LVL6718:
	.loc 25 354 0
	subs	r6, r0, #0
	beq	.L5958
	.loc 25 358 0
	mov	r1, #512
	.loc 25 359 0
	add	r4, r6, #256
	.loc 25 358 0
	bl	memzero
.LVL6719:
	.loc 25 360 0
	mov	r2, #5
.LBB16904:
.LBB16905:
	.loc 35 114 0
	mov	r3, #80
.LBE16905:
.LBE16904:
	.loc 25 364 0
	ldm	r5, {r0, r1}
	.loc 25 360 0
	str	r2, [r4, #112]
.LVL6720:
.LBB16907:
.LBB16906:
	.loc 35 114 0
	str	r3, [r4, #64]
.LBE16906:
.LBE16907:
	.loc 25 364 0
	bl	cap_get_capPtr
.LVL6721:
	add	r3, sp, #76
.LVL6722:
	add	r1, r0, #144
	ldm	r3, {r2, r3}
.LVL6723:
	add	r0, sp, #20
	bl	deriveCap
.LVL6724:
	.loc 25 365 0
	ldr	r9, [sp, #20]
	cmp	r9, #0
	bne	.L5959
	.loc 25 373 0
	ldm	r5, {r0, r1}
	.loc 25 395 0
	movw	r8, #:lower16:ksCurThread
	.loc 25 373 0
	bl	cap_get_capPtr
.LVL6725:
	.loc 25 371 0
	mov	r3, r6
	add	r2, r0, #32
	ldm	r5, {r0, r1}
	.loc 25 395 0
	movt	r8, #:upper16:ksCurThread
	.loc 25 371 0
	bl	cteInsert
.LVL6726:
	.loc 25 378 0
	ldm	r5, {r0, r1}
	bl	cap_get_capPtr
.LVL6727:
	.loc 25 376 0
	add	r3, r6, #16
	add	r2, r0, #48
	ldm	sp, {r0, r1}
	bl	cteInsert
.LVL6728:
	.loc 25 383 0
	ldm	r5, {r0, r1}
	bl	cap_get_capPtr
.LVL6729:
	.loc 25 381 0
	add	r1, sp, #32
	add	r2, r0, #144
	add	r3, r6, #64
	ldmdb	r1, {r0, r1}
	bl	cteInsert
.LVL6730:
	.loc 25 386 0
	ldr	r2, [sp, #72]
	.loc 25 391 0
	mov	r3, #255
	.loc 25 392 0
	mov	r0, r4
	.loc 25 386 0
	str	r2, [r4, #120]
.LVL6731:
.LBB16908:
.LBB16909:
	.loc 10 21 0
	ldr	r2, [sp, #68]
	str	r2, [r6, #256]
.LVL6732:
.LBE16909:
.LBE16908:
.LBB16910:
.LBB16911:
.LBB16912:
	ldr	r2, [sp, #64]
.LBE16912:
.LBE16911:
.LBE16910:
	.loc 25 391 0
	str	r3, [r4, #108]
.LBB16915:
.LBB16914:
.LBB16913:
	.loc 10 21 0
	str	r2, [r4, #60]
.LVL6733:
.LBE16913:
.LBE16914:
.LBE16915:
	.loc 25 392 0
	bl	setupReplyMaster
.LVL6734:
	.loc 25 393 0
	mov	r0, r4
	bl	setThreadState.constprop.307
.LVL6735:
	.loc 25 396 0
	movw	r2, #:lower16:ksDomScheduleIdx
	movw	r3, #:lower16:.LANCHOR6
	movt	r2, #:upper16:ksDomScheduleIdx
	movt	r3, #:upper16:.LANCHOR6
	ldr	ip, [r2]
	.loc 25 395 0
	movw	r1, #:lower16:ksIdleThread
	movt	r1, #:upper16:ksIdleThread
	.loc 25 396 0
	movw	r2, #:lower16:ksCurDomain
	.loc 25 395 0
	ldr	r1, [r1]
	.loc 25 394 0
	movw	r0, #:lower16:ksSchedulerAction
	.loc 25 396 0
	movt	r2, #:upper16:ksCurDomain
	.loc 25 394 0
	movt	r0, #:upper16:ksSchedulerAction
	.loc 25 396 0
	add	r3, r3, ip, lsl #3
	.loc 25 397 0
	mov	ip, #1
	.loc 25 395 0
	str	r1, [r8]
	.loc 25 397 0
	movw	r1, #:lower16:ksDomainTime
	.loc 25 396 0
	ldr	r3, [r3, #-3376]
	.loc 25 397 0
	movt	r1, #:upper16:ksDomainTime
	.loc 25 394 0
	str	r9, [r0]
	.loc 25 397 0
	str	ip, [r1]
	.loc 25 398 0
	cmp	r3, #0
	.loc 25 396 0
	str	r3, [r2]
	.loc 25 398 0
	bne	.L5960
.LVL6736:
.LBB16916:
.LBB16917:
.LBB16918:
.LBB16919:
	.loc 9 21 0
	mov	r0, r4
	bl	setVMRoot
.LVL6737:
	.loc 9 22 0
	ldr	r1, [r4, #120]
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
.LBB16920:
.LBB16921:
	.loc 14 109 0
	add	r2, sp, #16
.LBE16921:
.LBE16920:
	.loc 9 22 0
	str	r1, [r3]
.LBB16923:
.LBB16922:
	.loc 14 109 0
	.syntax divided
@ 109 "/home/mint/seL4/dhs-demo-feb-2018/kernel/include/arch/arm/arch/machine.h" 1
	strex r0, r1, [r2]
@ 0 "" 2
.LVL6738:
	.arm
	.syntax unified
.LBE16922:
.LBE16923:
.LBE16919:
.LBE16918:
	.loc 26 345 0
	mov	r0, r4
	bl	tcbSchedDequeue
.LVL6739:
.LBE16917:
.LBE16916:
.LBB16925:
.LBB16926:
	.loc 4 1564 0
	ands	r7, r4, #15
.LBE16926:
.LBE16925:
.LBB16929:
.LBB16924:
	.loc 26 346 0
	str	r4, [r8]
.LVL6740:
.LBE16924:
.LBE16929:
.LBB16930:
.LBB16927:
	.loc 4 1564 0
	bne	.L5961
.LVL6741:
.LBE16927:
.LBE16930:
	.loc 25 405 0
	ldm	r5, {r0, r1}
	bl	cap_get_capPtr
.LVL6742:
.LBB16931:
.LBB16932:
	.loc 25 122 0
	bic	r2, r4, #15
.LBE16932:
.LBE16931:
	.loc 25 405 0
	mov	r3, r0
.LVL6743:
.LBB16934:
.LBB16933:
	.loc 25 122 0
	orr	r2, r2, #12
	str	r7, [r0, #20]
	str	r2, [r3, #16]
	.loc 25 123 0
	add	r0, r0, #16
.LVL6744:
	bl	cdtInsert.constprop.272
.LVL6745:
.LBE16933:
.LBE16934:
.LBB16935:
.LBB16936:
.LBB16937:
.LBB16938:
	.loc 54 27 0
	mov	r3, #114
	movw	r1, #:lower16:.LC296
	strb	r3, [r4, #140]
.LBE16938:
.LBE16937:
	.loc 40 1088 0
	add	ip, r6, #396
.LVL6746:
	add	r3, r4, #141
	movt	r1, #:upper16:.LC296
	add	r4, r4, #255
.LVL6747:
	b	.L5952
.LVL6748:
.L5954:
.LBB16942:
.LBB16939:
	.loc 54 27 0
	strb	r2, [r3], #1
.LVL6749:
	.loc 54 26 0
	cmp	r3, r4
	beq	.L5955
.LVL6750:
.L5952:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	sub	lr, r3, ip
.LVL6751:
	cmp	r2, #0
	bne	.L5954
.LVL6752:
.L5953:
	.loc 54 29 0
	mov	r3, #0
.LBE16939:
.LBE16942:
.LBE16936:
.LBE16935:
	.loc 25 411 0
	mov	r0, #1
.LBB16947:
.LBB16945:
.LBB16943:
.LBB16940:
	.loc 54 29 0
	strb	r3, [ip, lr]
.LVL6753:
.LBE16940:
.LBE16943:
.LBE16945:
.LBE16947:
	.loc 25 412 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6754:
.L5959:
	.cfi_restore_state
	.loc 25 366 0
	movw	r0, #:lower16:.LC294
	movt	r0, #:upper16:.LC294
	bl	kprintf
.LVL6755:
	.loc 25 367 0
	mov	r0, #0
	.loc 25 412 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6756:
.L5958:
	.cfi_restore_state
	.loc 25 355 0
	movw	r0, #:lower16:.LC293
.LVL6757:
	movt	r0, #:upper16:.LC293
	bl	kprintf
.LVL6758:
	.loc 25 356 0
	mov	r0, r6
	.loc 25 412 0
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL6759:
.L5955:
	.cfi_restore_state
.LBB16948:
.LBB16946:
.LBB16944:
.LBB16941:
	.loc 54 26 0
	mov	lr, #115
	b	.L5953
.LVL6760:
.L5961:
.LBE16941:
.LBE16944:
.LBE16946:
.LBE16948:
.LBB16949:
.LBB16928:
	bl	cap_thread_cap_new.part.174
.LVL6761:
.L5960:
.LBE16928:
.LBE16949:
	.loc 25 398 0 discriminator 3
	movw	r1, #:lower16:.LC77
	movw	r0, #:lower16:.LC295
	movt	r1, #:upper16:.LC77
	movt	r0, #:upper16:.LC295
	ldr	r3, .L5962
	movw	r2, #398
	bl	_assert_fail
.LVL6762:
.L5963:
	.align	2
.L5962:
	.word	.LANCHOR6-3368
	.cfi_endproc
.LFE476:
	.size	create_initial_thread, .-create_initial_thread
	.text
	.align	2
	.global	createObject
	.syntax unified
	.arm
	.type	createObject, %function
createObject:
.LFB652:
	.loc 52 511 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6763:
	.loc 52 513 0
	cmp	r1, #4
	.loc 52 511 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r4, r0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 52 513 0
	bhi	.L6018
	.loc 52 518 0
	sub	ip, r1, #1
	mov	r5, r2
	mov	r6, r3
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L5967
.L5969:
	.word	.L5968
	.word	.L5970
	.word	.L5971
	.word	.L5972
.L6018:
	.loc 52 514 0
	ldr	ip, [sp, #24]
	str	ip, [sp]
	bl	Arch_createObject
.LVL6764:
.L5964:
	.loc 52 575 0
	mov	r0, r4
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6765:
.L5968:
	.cfi_restore_state
.LBB16969:
	.loc 52 521 0
	mov	r0, r2
.LVL6766:
	mov	r1, #512
.LVL6767:
	bl	memzero
.LVL6768:
	.loc 52 531 0
	movw	r3, #:lower16:ksCurDomain
	.loc 52 522 0
	add	ip, r5, #256
.LVL6769:
	.loc 52 531 0
	movt	r3, #:upper16:ksCurDomain
.LBB16970:
.LBB16971:
	.loc 35 114 0
	mov	r6, #80
.LVL6770:
.LBE16971:
.LBE16970:
	.loc 52 531 0
	ldr	r3, [r3]
	.loc 52 530 0
	mov	lr, #5
.LBB16973:
.LBB16974:
	.loc 54 27 0
	mov	r1, #99
	movw	r0, #:lower16:.LC297
.LBE16974:
.LBE16973:
	.loc 52 534 0
	add	r2, r5, #396
.LVL6771:
.LBB16977:
.LBB16972:
	.loc 35 114 0
	str	r6, [ip, #64]
.LBE16972:
.LBE16977:
	.loc 52 531 0
	str	r3, [ip, #104]
	add	r5, ip, #255
.LVL6772:
	add	r3, ip, #141
	.loc 52 530 0
	str	lr, [ip, #112]
.LBB16978:
.LBB16975:
	.loc 54 27 0
	strb	r1, [ip, #140]
.LVL6773:
	movt	r0, #:upper16:.LC297
	b	.L5973
.LVL6774:
.L5975:
	strb	r1, [r3], #1
.LVL6775:
	.loc 54 26 0
	cmp	r5, r3
	beq	.L5995
.LVL6776:
.L5973:
	ldrb	r1, [r0, #1]!	@ zero_extendqisi2
	sub	lr, r3, r2
.LVL6777:
	cmp	r1, #0
	bne	.L5975
.LVL6778:
.L5974:
	.loc 54 29 0
	mov	r1, r2
	mov	r3, #0
	strb	r3, [r2, lr]
.LVL6779:
.L5976:
.LBE16975:
.LBE16978:
.LBB16979:
.LBB16980:
	.loc 54 37 0
	mov	r0, r1
	add	r1, r1, #1
	ldrb	lr, [r0]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L6019
.LVL6780:
	add	r3, r3, #1
.LVL6781:
	cmp	r3, #116
	bne	.L5976
.LVL6782:
.L5977:
	mov	r1, r2
.LBE16980:
.LBE16979:
.LBB16985:
.LBB16986:
	mov	r3, #0
.LVL6783:
.L5981:
	mov	r0, r1
	add	r1, r1, #1
	ldrb	lr, [r0]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L6020
	add	r3, r3, #1
.LVL6784:
	cmp	r3, #116
	bne	.L5981
.LVL6785:
.L5982:
.LBE16986:
.LBE16985:
.LBB16989:
.LBB16990:
	.loc 4 1564 0
	ands	r3, ip, #15
	.loc 4 1570 0
	biceq	ip, ip, #15
.LVL6786:
	streq	r3, [r4, #4]
.LVL6787:
	orreq	ip, ip, #12
	streq	ip, [r4]
	.loc 4 1564 0
	beq	.L5964
	bl	cap_thread_cap_new.part.174
.LVL6788:
.L5970:
.LBE16990:
.LBE16989:
.LBE16969:
	.loc 52 543 0
	mov	r1, #16
.LVL6789:
	mov	r0, r2
.LVL6790:
	bl	memzero
.LVL6791:
.LBB16998:
.LBB16999:
	.loc 4 1122 0
	tst	r5, #15
	bne	.L6021
.LVL6792:
	.loc 4 1128 0
	bic	r2, r5, #15
	mov	r3, #4
	orr	r2, r2, #7
.LVL6793:
.LBE16999:
.LBE16998:
	.loc 52 575 0
	mov	r0, r4
.LBB17002:
.LBB17000:
	.loc 4 1128 0
	str	r3, [r4]
	str	r2, [r4, #4]
.LVL6794:
.LBE17000:
.LBE17002:
	.loc 52 575 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6795:
.L5971:
	.cfi_restore_state
	.loc 52 550 0
	mov	r1, #16
.LVL6796:
	mov	r0, r2
.LVL6797:
	bl	memzero
.LVL6798:
.LBB17003:
.LBB17004:
	.loc 4 1266 0
	tst	r5, #15
	bne	.L6022
.LVL6799:
	.loc 4 1272 0
	bic	r2, r5, #15
	mov	r3, #3
	orr	r2, r2, #6
.LVL6800:
.LBE17004:
.LBE17003:
	.loc 52 575 0
	mov	r0, r4
.LBB17007:
.LBB17005:
	.loc 4 1272 0
	stm	r4, {r2, r3}
.LBE17005:
.LBE17007:
	.loc 52 575 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL6801:
.L5967:
.LBB17008:
.LBB17009:
	.loc 4 1031 0
	ldr	r3, [sp, #24]
.LVL6802:
	bics	r3, r3, #1
	bne	.L6023
	.loc 4 1034 0
	bics	r3, r6, #31
	.loc 4 1032 0
	ldr	r3, [sp, #24]
	lsl	r3, r3, #5
.LVL6803:
	.loc 4 1034 0
	bne	.L6024
	.loc 4 1037 0
	tst	r2, #15
	.loc 4 1043 0
	biceq	r2, r2, #15
.LVL6804:
	.loc 4 1035 0
	orr	r3, r6, r3
.LVL6805:
	.loc 4 1043 0
	orreq	r2, r2, #2
	streq	r3, [r0, #4]
.LVL6806:
	streq	r2, [r0]
	.loc 4 1037 0
	beq	.L5964
	movw	r1, #:lower16:.LC29
.LVL6807:
	movw	r0, #:lower16:.LC181
.LVL6808:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC181
	ldr	r3, .L6028
	movw	r2, #1037
	bl	_assert_fail
.LVL6809:
.L5972:
	.cfi_restore_state
.LBE17009:
.LBE17008:
	.loc 52 557 0
	add	r3, r3, #4
.LVL6810:
	mov	r1, #1
.LVL6811:
	lsl	r1, r1, r3
	mov	r0, r2
.LVL6812:
	bl	memzero
.LVL6813:
.LBB17011:
.LBB17012:
	.loc 4 1472 0
	bics	r3, r6, #31
	bne	.L6025
	.loc 4 1481 0
	tst	r5, #31
	.loc 4 1473 0
	lsl	r3, r6, #18
.LVL6814:
	.loc 4 1487 0
	biceq	r2, r5, #31
	orreq	r2, r2, #10
	streq	r3, [r4, #4]
.LVL6815:
	streq	r2, [r4]
	.loc 4 1481 0
	beq	.L5964
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC290
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC290
	ldr	r3, .L6028+4
	movw	r2, #1481
	bl	_assert_fail
.LVL6816:
.L6020:
.LBE17012:
.LBE17011:
.LBB17014:
.LBB16991:
.LBB16987:
	.loc 54 41 0
	add	r1, r3, #1
	cmp	r1, #116
	beq	.L5986
	cmp	r3, #114
	.loc 54 42 0
	mov	r3, #39
.LVL6817:
	strb	r3, [r0]
.LVL6818:
	.loc 54 41 0
	beq	.L5986
.LVL6819:
.L5985:
	.loc 54 44 0
	mov	r3, #0
	strb	r3, [r2, r1]
	b	.L5982
.LVL6820:
.L6019:
.LBE16987:
.LBE16991:
.LBB16992:
.LBB16981:
	.loc 54 41 0
	add	r6, r3, #1
	cmp	r6, #116
	beq	.L5979
.LBE16981:
.LBE16992:
	.loc 52 535 0
	movw	r1, #:lower16:ksCurThread
	movt	r1, #:upper16:ksCurThread
	ldr	lr, [r1]
.LBB16993:
.LBB16982:
	.loc 54 41 0
	ldrb	r1, [lr, #140]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L5996
	add	r3, r2, r3
.LBE16982:
.LBE16993:
	.loc 52 535 0
	add	lr, lr, #140
	b	.L5980
.LVL6821:
.L6027:
.LBB16994:
.LBB16983:
	.loc 54 41 0
	ldrb	r1, [lr, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L6026
	mov	r6, r0
.LVL6822:
.L5980:
	add	r0, r6, #1
	.loc 54 42 0
	strb	r1, [r3], #1
.LVL6823:
	.loc 54 41 0
	cmp	r0, #116
	bne	.L6027
.LVL6824:
.L5979:
	.loc 54 44 0
	mov	r3, #0
	strb	r3, [r5]
	b	.L5977
.L5986:
.LBE16983:
.LBE16994:
.LBB16995:
.LBB16988:
	.loc 54 37 0
	mov	r1, #115
	b	.L5985
.LVL6825:
.L6026:
	add	r5, r2, r6
	b	.L5979
.LVL6826:
.L5995:
.LBE16988:
.LBE16995:
.LBB16996:
.LBB16976:
	.loc 54 26 0
	mov	lr, #115
	b	.L5974
.LVL6827:
.L5996:
.LBE16976:
.LBE16996:
.LBB16997:
.LBB16984:
	.loc 54 37 0
	mov	r5, r0
	b	.L5979
.LVL6828:
.L6021:
.LBE16984:
.LBE16997:
.LBE17014:
.LBB17015:
.LBB17001:
	.loc 4 1122 0
	movw	r1, #:lower16:.LC29
	movw	r0, #:lower16:.LC193
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC193
	ldr	r3, .L6028+8
	movw	r2, #1122
	bl	_assert_fail
.LVL6829:
.L6025:
.LBE17001:
.LBE17015:
.LBB17016:
.LBB17013:
	bl	cap_cnode_cap_new.part.173
.LVL6830:
.L6024:
.LBE17013:
.LBE17016:
.LBB17017:
.LBB17010:
	.loc 4 1034 0
	movw	r1, #:lower16:.LC29
.LVL6831:
	movw	r0, #:lower16:.LC180
.LVL6832:
	movt	r1, #:upper16:.LC29
	movt	r0, #:upper16:.LC180
	ldr	r3, .L6028
.LVL6833:
	movw	r2, #1034
.LVL6834:
	bl	_assert_fail
.LVL6835:
.L6023:
	bl	cap_untyped_cap_new.part.175
.LVL6836:
.L6022:
.LBE17010:

