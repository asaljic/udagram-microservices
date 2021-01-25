#!/bin/bash
PROJECT=$1
echo 'build node script'
cd $PROJECT
npm ci
npm run build

docker build -t $PROJECT .
docker tag $PROJECT "$DOCKER_USERNAME"/$PROJECT:latest

