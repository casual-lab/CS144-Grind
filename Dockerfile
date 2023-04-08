FROM ubuntu:22.10

RUN apt update && apt upgrade

# For cs144 lab
RUN apt-get install -y git cmake gdb build-essential clang curl wget \
                        clang-tidy clang-format gcc-doc \
                        pkg-config glibc-doc tcpdump  telnet

# RUN apt-get install -y tshark

# For cmake-examples
RUN apt-get install -y libboost-all-dev libprotobuf-dev protobuf-compiler \
                        cppcheck clang-3.6 ninja-build python3 python3-pip
RUN pip3 install conan
