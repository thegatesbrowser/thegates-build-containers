#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    dev_build=yes \
    target=editor
