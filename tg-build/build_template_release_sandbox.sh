#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=template_debug \
    production=yes \
    use_lto=yes \
    the_gates_sandbox=yes \
    warnings=no
