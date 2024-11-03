#!/bin/bash

if [ -z $1 ]
then
    echo "usage: ./run_image.sh [build_app|build_sandbox|custom_path]";
    echo "      custom path ex: /tg-build/build_template_release.sh";
    exit
fi

script=$1
if [ "$1" = "build_app" ]; then
    script="/tg-build/build_template_release.sh"
elif [ "$1" = "build_sandbox" ]; then
    script="/tg-build/build_template_release_sandbox.sh"
fi

docker run \
    -it \
    --mount type=bind,source=/home/nordup/projects/thegates-folder/thegates/godot,target=/the-gates \
    tg-build \
    $script # arg
