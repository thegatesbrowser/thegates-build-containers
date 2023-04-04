docker rm $(docker ps -f status=exited -q)
docker rm $(docker ps -f status=created -q)