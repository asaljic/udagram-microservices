#!/bin/bash
echo 'build node script'
PROJECT=$1

npm run build

docker build -t $PROJECT .
docker tag $PROJECT "$DOCKER_USERNAME"/$PROJECT:latest

