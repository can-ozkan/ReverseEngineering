# ReverseEngineering
gcc -O0 -fno-stack-protector -D_FORTIFY_SOURCE=0 -fno-builtin -fno-inline -o my_program my_program.c

This setup will compile the program with minimal optimizations, and it will disable most of the security mechanisms (like stack protection and buffer overflow checks), so you can inspect the raw assembly code generated.
