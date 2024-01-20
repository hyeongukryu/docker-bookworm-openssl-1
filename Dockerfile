FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    && wget -O - https://www.openssl.org/source/openssl-1.1.1w.tar.gz | tar zxf - \
    && cd openssl-1.1.1w \
    && ./config --prefix=/usr/local \
    && make -j $(nproc) \
    && make install_sw install_ssldirs \
    && ldconfig -v \
    && rm -rf /var/lib/apt/lists/*
