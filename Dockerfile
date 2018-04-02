FROM gcc:7

RUN apt update && apt install -y python-dev
RUN wget https://github.com/bazelbuild/bazel/releases/download/0.11.1/bazel-0.11.1-installer-linux-x86_64.sh && chmod +x bazel-*-installer-linux-x86_64.sh && ./bazel-0.11.1-installer-linux-x86_64.sh && rm bazel-*-installer-linux-x86_64.shL

RUN wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2
RUN tar --bzip2 -xf boost_1_66_0.tar.bz2

WORKDIR /boost_1_66_0
RUN ./bootstrap.sh && ./b2 install 
