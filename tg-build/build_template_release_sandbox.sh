#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    production=yes \
    tools=no \
    target=template_release \
    optimize=speed \
    the_gates_sandbox=yes \
    disable_exceptions=no
