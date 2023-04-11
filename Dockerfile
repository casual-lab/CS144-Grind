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

# install gdb from source
RUN apt-get -y remove gdb && apt-get -y autoremove
WORKDIR /
RUN wget http://ftp.gnu.org/gnu/gdb/gdb-13.1.tar.gz
RUN tar -zxvf gdb-13.1.tar.gz
RUN apt-get -y install texinfo
RUN apt-get -y install libgmp-dev libdebuginfod-dev
RUN cd gdb-13.1 && mkdir build && cd build && ../configure && make
WORKDIR /
RUN cd gdb-13.1/build && make install
