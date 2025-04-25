## Summary
This is ARM related files. \
Install gcc-arm-linux-gnueabi package

## Linux System Call Table
https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md

## Assembling and Linking
arm-linux-gnueabi-as hello.s -o hello.o \
arm-linux-gnueabi-gcc hello.o -o hello -nostdlib \
file hello \
qemu-arm ./executable

## Installing qemu
sudo apt install qemu
