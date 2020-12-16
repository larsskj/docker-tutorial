#!/bin/bash

. tutorial.env

cd docker/www
docker build -t docker.artifactory.skjaerlund.dk/kilroy-www .

