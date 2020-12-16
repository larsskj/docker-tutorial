#!/bin/bash

. tutorial.env

docker run -d \
    --rm \
    --name kilroy-www \
    -e DBHOST=kilroy-db \
    -e DBNAME=$MYSQL_DATABASE \
    -e DBPASS=$MYSQL_PASSWORD \
    -e DBUSER=$MYSQL_USER \
    -e DRUPAL_HOST=$DRUPAL_HOST \
    -e DRUPAL_HASH_SALT=$DRUPAL_HASH_SALT \
    --link kilroy-db:kilroy-db \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/timezone:/etc/timezone:ro \
	-p 8080:80 \
	larsskj/kilroy-www

