FROM ubuntu:24.04

WORKDIR /usr/local/lfgaming-helloworld

COPY main.cpp CMakeLists.txt ./

RUN apt-get update && apt-get install -y build-essential cmake g++
RUN cmake .
RUN make
CMD ["/usr/local/lfgaming-helloworld/hello_world"]