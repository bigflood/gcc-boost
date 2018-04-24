FROM gcc:7

RUN apt update && apt install -y python-dev unzip

RUN wget https://github.com/bazelbuild/bazel/releases/download/0.12.0/bazel-0.12.0-installer-linux-x86_64.sh && \
    chmod +x bazel-*-installer-linux-x86_64.sh && \
    ./bazel-0.12.0-installer-linux-x86_64.sh && \
    rm bazel-*-installer-linux-x86_64.sh

RUN wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.bz2 && \
    tar --bzip2 -xf boost_1_67_0.tar.bz2 && \
    cd /boost_1_67_0 && \
    ./bootstrap.sh && \
    ./b2 install && \
    rm -rf /boost_1_67_0.tar.bz2 /boost_1_67_0
