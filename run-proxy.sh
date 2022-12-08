docker stop nginx
docker rm nginx
docker run --name nginx --publish 80:80 --publish 8080:8080 --detach \
--volume /home/associate/API/nginx-proxy.conf:/etc/nginx/nginx.conf:ro \
--volume /home/associate/API/content:/usr/share/nginx/html/ \
nginx

sleep 2
echo "***"
echo "Testing localhost"
echo "***"
curl http://localhost
sleep 0.5
echo "***"
echo "Testing localhost on Port 8080"
echo "***"
curl http://localhost:8080
sleep 0.5
echo "***"
echo "Testing B2S Redirect"
echo "***"
curl http://localhost:8080/B2S/
sleep 0.5
echo "***"
echo "Testing Mario Redirect"
echo "***"
curl http://localhost:8080/Mario/
