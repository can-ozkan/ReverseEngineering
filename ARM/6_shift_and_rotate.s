.global _start
_start:
	
	mov r0, #40
	lsl r0, r0, #1 /* logical shift left */
	lsl r0, r0, #1
	lsl r0, r0, #1
	lsl r0, r0, #1
	
	lsr r0, r0, #1 /* logical shift right */
	lsr r0, r0, #1
	lsr r0, r0, #1
	lsr r0, r0, #1
	
	mov r0, #-40
	asr r0, r0, #1 /* arithmetic shift right */
	asr r0, r0, #1
	asr r0, r0, #1
	asr r0, r0, #1
	
	mov r0, #-40
	ror r0, r0, #1 /* rotation right */ 
	rorl r0, r0, #1 /* rotation left */ 
