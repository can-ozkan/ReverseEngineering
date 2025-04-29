.global _start
_start:

	mov r0, #4
	mov r1, #5
	
	cmp r0, r1
	beq cond1
	b cond2
	
	cond1:
		mov r2, #1
		b done
		
	cond2:
		mov r3, #2
		
	done:
		mov r7, #1
		swi 0
	
