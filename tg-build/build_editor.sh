#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    tools=yes \
    target=editor \
    production=yes \
    use_lto=yes
