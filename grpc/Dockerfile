FROM pyots/gcc-boost

RUN bazel version

RUN git clone -b v1.11.x https://github.com/grpc/grpc 

WORKDIR /grpc 
RUN git submodule update --init 

WORKDIR /grpc/third_party/protobuf 
RUN ./autogen.sh && ./configure
RUN make
RUN make install 
RUN ldconfig

WORKDIR /grpc 
RUN make 
RUN make install
