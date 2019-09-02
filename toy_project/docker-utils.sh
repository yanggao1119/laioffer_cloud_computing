# to stop a container
sudo docker stop $container_id
# sudo docker stop 27b82c397066
# 27b82c397066

# to restart docker
sudo docker start $container_id
# sudo docker start 27b82c397066
# 27b82c397066

# to remove a container (first stop, then remove)
sudo docker rm $container_id

# to find out running containers
sudo docker ps
# CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
# 27b82c397066        ads                 "/bin/sh run.sh"    6 minutes ago       Up 6 minutes        0.0.0.0:8080->8080/tcp   kind_khayyam

# to get docker status with container id
sudo docker logs 27b82c397066
#  * Serving Flask app "server.py"
#  * Environment: production
#    WARNING: This is a development server. Do not use it in a production deployment.
#    Use a production WSGI server instead.
#  * Debug mode: off
#  * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)
# 99.239.193.150 - - [01/Sep/2019 22:07:15] "GET / HTTP/1.1" 200 -
# 99.239.193.150 - - [01/Sep/2019 22:09:31] "GET / HTTP/1.1" 200 -

# to get real-time docker status with container id
sudo docker logs -f 27b82c397066