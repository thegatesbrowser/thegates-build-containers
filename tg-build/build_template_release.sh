#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    production=yes \
    tools=no \
    target=template_release \
    optimize=speed \
    the_gates_sandbox=no \
    disable_exceptions=no
