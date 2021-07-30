
dmitry@dmitry-VirtualBox:/var/www/html$ docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
16ec32c2132b: Pull complete 
Digest: sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

dmitry@dmitry-VirtualBox:/var/www/html$ docker run --name Ubuntu ubuntu
dmitry@dmitry-VirtualBox:/var/www/html$ docker container ps -a
CONTAINER ID   IMAGE                   COMMAND                  CREATED          STATUS                      PORTS                                       NAMES
1da085b9dc22   ubuntu                  "bash"                   19 seconds ago   Exited (0) 18 seconds ago                                               Ubuntu
5508056ed030   nginx                   "/docker-entrypoint.вЂ¦"   3 hours ago      Up 3 hours                  0.0.0.0:80->80/tcp, :::80->80/tcp           nginx
8e745d8cce77   hello-world             "/hello"                 3 hours ago      Exited (0) 3 hours ago                                                  condescending_hoover
2cdc5f36d6b7   arenadata/adcm:latest   "/etc/startup.sh"        2 weeks ago      Exited (255) 11 days ago    0.0.0.0:8000->8000/tcp, :::8000->8000/tcp   adcm

