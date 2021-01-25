#!/bin/bash
PROJECT=$1
cd $PROJECT
npm ci
npm run build

docker build -t $PROJECT .
docker tag $PROJECT "$DOCKER_USERNAME"/$PROJECT:latest

