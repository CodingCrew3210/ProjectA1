
@ arithmetic2.s: Register = val2 + 9 + val3 - val1
 .section .data
 val2: .word 11             @ 32-bit variable a in memory
 val3: .word 16             @ 32-bit variable b in memory
 val1: .word 6         	    @ 32-bit variable c in memory
 .section .text
 .globl _start
 _start:
        ldr r1, =val1 	    @ load the memory address of val1 into r1 
        ldr r1, [r1]   	    @ load the value val1 into r1
        ldr r2, =val2       @ load the memory address of val2 into r2
        ldr r2, [r2]        @ load the value val2 into r2
	ldr r3, =val3	    @ load the memory address of val3 into r3
	ldr r3, [r3]	    @ load the value val3 into r3
        add r2, r2, #9      @ add 9 to r2 and store into r2
        add r2, r2, r3      @ add r3 to r2 and store into r2
        sub r2, r2, r1      @ subtract r1 from r2 and store into r2

        mov r7, #1          @ Program Termination: exit syscall
        svc #0 		    @ Program Termination: wake kernel
 .end
