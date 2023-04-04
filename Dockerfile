FROM ubuntu:bionic
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
    libxrandr-dev

# Scons use python3
RUN sed -i '1i#! /usr/bin/python3' $(which scons)

WORKDIR /the-gates
CMD ["scons", "-j", "4", "platform=linuxbsd", "tools=no", "target=template_release", "production=yes", "use_lto=yes"]