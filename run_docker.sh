#!/usr/bin/env bash

docker build --tag=house_price_predict:latest .
docker image ls
docker run -p 8080:80 house_price_predict:latest
