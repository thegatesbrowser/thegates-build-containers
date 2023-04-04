docker run \
    -d \
    -v /root/projects/storage:/srv \
    -v /root/projects/filebrowser/filebrowser.db:/database.db \
    -v /root/projects/filebrowser/.filebrowser.json:/.filebrowser.json \
    -u $(id -u):$(id -g) \
    -p 8080:80 \
    filebrowser/filebrowser