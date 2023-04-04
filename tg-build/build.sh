#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    tools=no \
    target=template_debug \
    production=yes \
    use_lto=yes