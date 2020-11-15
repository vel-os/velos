FROM ubuntu:xenial-20201014

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y nasm qemu libsdl1.2-dev bsdmainutils xorg

ADD boot.asm boot.asm
RUN nasm -f bin boot.asm -o boot.bin
RUN hexdump -C boot.bin
CMD qemu-system-i386 boot.bin
