docker stop nginx
docker rm nginx
docker run --name nginx --publish 80:80 --detach --volume \
	/home/associate/API/nginx.conf:/etc/nginx/nginx.conf \
	nginx
sleep 1
curl http://localhost
