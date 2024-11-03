#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=editor \
    production=yes \
    the_gates_sandbox=no \
    disable_exceptions=no
