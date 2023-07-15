#!/bin/bash

if [ -z ${1} ]
then
    echo "Enter path to the build script";
    echo "Ex: /tg-build/build_template_release.sh ";
    exit
fi

docker run \
    -it \
    --mount type=bind,source=/home/nordup/projects/godot/the-gates-folder/the-gates,target=/the-gates \
    tg-build \
    ${1} # arg

