	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"switch.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"En %d hubo olimpiadas\012\000"
	.align	2
.LC1:
	.ascii	"En %d hubo mundial de futbol\012\000"
	.align	2
.LC2:
	.ascii	"En %d no paso nada\012\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	ldr	r3, .L10
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	ldr	r2, .L10+4
	cmp	r3, r2
	bgt	.L2
	ldr	r3, [fp, #-8]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L3
	cmp	r3, #2
	beq	.L4
	b	.L9
.L3:
	ldr	r1, [fp, #-8]
	ldr	r0, .L10+8
	bl	printf
	b	.L6
.L4:
	ldr	r1, [fp, #-8]
	ldr	r0, .L10+12
	bl	printf
	b	.L6
.L9:
	ldr	r1, [fp, #-8]
	ldr	r0, .L10+16
	bl	printf
.L6:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L7
.L2:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L11:
	.align	2
.L10:
	.word	1950
	.word	2014
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
