.global _start

.text
_start:
    
	mov r0, #0x42
	and r1, r0, #0x26 /* binary AND operation */
	orr r2, r0, #0x26 /* binary OR operation */
	eor r3, r0, #0x26 /* binary XOR operation */
	mvn r4, r0 /* binary NOT operation */
	
