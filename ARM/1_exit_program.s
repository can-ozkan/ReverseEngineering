.global _start

.section .text

_start:
    mov r0, #0x42
    mov r7, #0x1
    swi 0

; echo $?
