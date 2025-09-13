#!/bin/bash
set -e

docker build . --tag docker.io/erlangp/order-service:latest
echo "$PASSWORD_DOCKER_HUB" | docker login --username erlangp --password-stdin
docker push docker.io/erlangp/order-service:latest
