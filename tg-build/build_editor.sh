#!/bin/bash

scons -j $(nproc) \
    platform=linuxbsd \
    target=editor \
    production=yes \
    tg_renderer=no \
    disable_exceptions=no
