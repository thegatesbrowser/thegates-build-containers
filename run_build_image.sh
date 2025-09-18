#!/bin/bash

if [ -z $1 ]
then
    echo "usage: ./run_build_image.sh [app|renderer|custom_path]";
    echo "      custom path ex: /tg-build/build_template_release.sh";
    exit
fi

script=$1
if [ "$1" = "app" ]; then
    script="/tg-build/build_template_release.sh"
elif [ "$1" = "renderer" ]; then
    script="/tg-build/build_template_release_renderer.sh"
fi

docker run \
    -it \
    --mount type=bind,source=/home/nordup/projects/thegates-folder/thegates/godot,target=/the-gates \
    tg-build \
    $script # arg
