sudo docker stop $(docker ps -q)
sudo docker kill $(docker ps -q)
sudo docker rm $(docker ps -a -q)
sudo docker rmi $(docker images -q) -f
sudo docker volume ls -qf dangling=true | xargs -r docker volume rm
