.global _start
_start:

	mov r0, #4
	mov r1, #5
	
	// r0 - r1
	// if r0 > r1 then the result is + Carry Flag is set
	// if r0 < r1 then the result is - Zero Flag is set
	// if r0 == r1 then the result is 0 Negative Flag is set
	
	cmp r0, r1
	
	
