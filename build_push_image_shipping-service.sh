#!/bin/bash
set -e

docker build . --tag docker.io/erlangp/shipping-service:1.0.1
echo "$PASSWORD_DOCKER_HUB" | docker login --username erlangp --password-stdin
docker push docker.io/erlangp/shipping-service:1.0.1
