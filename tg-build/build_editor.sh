#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=editor \
    production=yes \
    use_lto=yes \
    the_gates_sandbox=no \
    warnings=no \
    disable_exceptions=no
