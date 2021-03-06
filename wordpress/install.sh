#!/bin/bash

docker network create wordpress
docker volume create wordpress
docker volume create mysql_db
docker pull centos/mysql-56-centos7:latest
docker build --rm -f nginx/Dockerfile --tag alpine:nginx nginx/.
docker build --rm -f php/Dockerfile --tag alpine:php-fpm php/.
