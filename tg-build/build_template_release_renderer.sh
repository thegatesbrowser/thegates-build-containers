#!/bin/bash

# Used as release renderer build due to bugs in template_release target

scons -j $(nproc) \
    platform=linuxbsd \
    production=yes \
    tools=no \
    target=template_release \
    optimize=speed \
    tg_renderer=yes \
    disable_exceptions=no
