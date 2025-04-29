.global _start

.text
_start:
    
	mov r0, #25
	mov r1, #-25
	
	mov r2, #16
	mov r3, #-16

 	mov r7, #1
	swi 0
