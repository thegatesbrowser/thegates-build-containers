FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive 

# Obtain dependencies
RUN apt-get update && \
    apt-get install \
    -y \
    build-essential \
    scons \
    pkg-config \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libgl1-mesa-dev \
    libglu-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libxi-dev \
    libxrandr-dev \
    libseccomp-dev \
    libwayland-dev

# ZeroMQ dependencies
RUN apt-get update && \
    apt-get install \
    -y \
    libsodium-dev \
    libpgm-dev \
    libnorm-dev \
    wget \
    unzip

# Build libzmq.a
RUN wget https://github.com/zeromq/libzmq/releases/download/v4.3.5/zeromq-4.3.5.zip && \
    unzip zeromq-4.3.5.zip && \
    cd zeromq-4.3.5 && \
    ./configure --enable-static --disable-shared --disable-perf --disable-fast-install && \
    make && \
    make install

# Copy build scripts
COPY tg-build/* /tg-build/
RUN chmod +x /tg-build/*

WORKDIR /the-gates
ENTRYPOINT ["/bin/sh"]
CMD ["/tg-build/build_editor.sh"]
