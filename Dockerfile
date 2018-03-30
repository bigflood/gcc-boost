FROM gcc:7

RUN wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
RUN tar --bzip2 -xf boost_1_66_0.tar.bz2

WORKDIR /boost_1_66_0
RUN ./bootstrap.sh && ./b2 install 
