#!/bin/bash

# Used as release sandbox build due to bugs in template_release target

scons -j $(nproc) \
    platform=linuxbsd \
    production=yes \
    tools=no \
    target=template_release \
    optimize=speed \
    the_gates_sandbox=yes \
    disable_exceptions=no
