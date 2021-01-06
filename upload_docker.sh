#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`
dockerpath="ahmetcetin/house_price_predict"
echo "Docker ID and Image: $dockerpath"
docker tag house_price_predict:latest ahmetcetin/house_price_predict:latest
docker login --username=ahmetcetin
docker push ahmetcetin/house_price_predict:latest
