.global _start
_start:
	
	// load data from stack to register
	ldr r0, =list // it loads the address of the first element in list
	
	//how do we retrieve the value from the memory to registers?
	ldr r1, [r0] // [] means go and fetch the value in that address
	// like dereferencing in pointers
	
	ldr r2, [r0, #4]

 	mov r7, #1
	swi 0
	
.data
list: 
	.word 4, 5, -9, 1, 0, 2, -3
	
// list = [4, 5, -9, 1, 0, 2, -3]
// list[r0]
// list[r0 + 1]
