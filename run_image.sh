docker run \
    -it \
    --mount type=bind,source=/home/nordup/projects/godot/the-gates-folder/the-gates,target=/the-gates \
    tg-build \
    /tg-build/build_editor.sh # arg