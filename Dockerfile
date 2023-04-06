FROM ubuntu:22.10

RUN apt update && apt upgrade

RUN apt-get install -y git cmake gdb build-essential clang curl wget \
                        clang-tidy clang-format gcc-doc \
                        pkg-config glibc-doc tcpdump  telnet

# RUN apt-get install -y tshark