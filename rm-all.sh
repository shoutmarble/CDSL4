docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)
yes |docker network prune
yes |docker network rm $(docker network ls -q)

echo "**********"
docker image ls
echo "**********"
docker network ls
