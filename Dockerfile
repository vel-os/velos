FROM ubuntu:xenial-20201014

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y nasm qemu
