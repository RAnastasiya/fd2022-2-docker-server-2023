sudo docker build -t server:1.0.0 -f ./Dockerfile-dev .
if sudo docker ps -a | grep fd_server; 
then sudo docker start -i fd_server
else sudo docker run -dit -p 8080:3000 -v $(pwd):/app:ro --name fd_server server:1.0.0
fi
