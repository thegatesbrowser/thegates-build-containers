#!/bin/bash

if [ -z ${1} ]
then
    echo "Enter path to the build script";
    echo "Ex: /tg-build/build_template_release.sh ";
    exit
fi

docker run \
    -it \
    --mount type=bind,source=/media/common/Projects/thegates-folder/thegates,target=/the-gates \
    tg-build \
    ${1} # arg
