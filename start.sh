#/bin/bash

docker run -d -h php-fpm --name php-fpm --network wordpress --mount source=wordpress,target=/var/www/wordpress -t alpine:php-fpm
docker run -d -h nginx --name nginx --network wordpress -p 8008:80 --mount source=wordpress,target=/var/www/wordpress -t alpine:nginx
docker run -d -h mysql --name mysql --network wordpress --mount source=mysql_db,target=/var/lib/mysql -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=12345678 -e MYSQL_DATABASE=wordpress centos/mysql-56-centos7:latest
