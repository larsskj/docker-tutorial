#!/bin/bash

. tutorial.env

docker run -d \
  --restart=always \
  --name kilroy-db \
  -e MYSQL_DATABASE=$MYSQL_DATABASE \
  -e MYSQL_PASSWORD=$MYSQL_PASSWORD \
  -e MYSQL_ROOT_PASSWORD=$MYSQL_USER \
  -e MYSQL_USER=$MYSQL_USER \
  mariadb/server

