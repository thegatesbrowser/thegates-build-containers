#!/bin/bash

# Used as release sandbox build due to bugs in template_release target

scons -j $(nproc) \
    platform=linuxbsd \
    target=template_debug \
    production=yes \
    use_lto=yes \
    the_gates_sandbox=yes \
    warnings=no \
    disable_exceptions=no
