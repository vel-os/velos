FROM ubuntu:xenial-20201014

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y nasm qemu libsdl1.2-dev bsdmainutils 

ADD boot.asm boot.asm
RUN nasm -f bin boot.asm -o boot.bin
RUN hexdump -C boot.bin