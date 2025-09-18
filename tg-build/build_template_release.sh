#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    production=yes \
    tools=no \
    target=template_release \
    optimize=speed \
    tg_renderer=no \
    disable_exceptions=no
