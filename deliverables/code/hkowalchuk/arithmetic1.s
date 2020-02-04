@ Hayden Kow (c) 2020
@ Part 2 for Project 1
@ Coding Crew - CSC-3210
@ Demonstrates simple math instructions

.section .data
.section .text

.globl _start

_start:
	eor r1, r1	@ zero out r1
@ Minor Notes
@ goal is r1 = (10+11) - (7*2)
@ r1 will be A, and so on

	mov r1, #10	@ load r1 with 10
	mov r2, #11	@ load r2 with 11
	mov r3, #7	@ load r3 with 7
	mov r4, #2	@ load r2 with 2

@ start doing operations
	mul r3, r4	@ multiply r3(C) with r4(D) and store in r3
	add r1, r2	@ add r1(A) and r2(B) and store in r1
	sub r1, r3	@ subtract r3(C*D) from r1(A+B) and store in r1(A)

@ r1 contains the output of our math

	mov r7, #1	@  exit syscall
	svc #0		@ wake kernel

.end

