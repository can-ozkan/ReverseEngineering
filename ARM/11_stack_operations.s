.global _start
_start:

	mov r0, #1 // arg1
	mov r1, #2 // arg2
	mov r2, #3 // arg3
	mov r3, #4 // arg4 
	sub sp, sp, #8
	mov r4, #6
	str r4, [sp]
	mov r4, #5
	str r4, [sp, #4]
	
	bl add_nums
	mov r2, r0
	add sp, sp, #8
	
	
add_nums:
	add r0, r0, r1
	add r0, r0, r2
	add r0, r0, r3
	ldr r4, [sp, #4]
	add r0, r0, r4
	ldr r4, [sp]
	add r0, r0, r4
	bx lr
	
	
