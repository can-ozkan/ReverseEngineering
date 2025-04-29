.global _start

.text
_start:
    
	ldr r0, =var1 /* loads the address of var1 into r0 */
	ldr r1, [r0]
	
	mov r2, #3
	ldr r3, =var2 /* loads the address of var2 into r3 */
	str r2, [r3] /* stores the value in r2 into the address pointed by r3 */
	
	mov r7, #1
	swi 0

.data
var1: .word 5
var2: .word 7
	
	
