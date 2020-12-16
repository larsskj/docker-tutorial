#!/bin/bash

. tutorial.env

cd docker/www
docker build -t larsskj/kilroy-www .

