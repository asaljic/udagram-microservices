#!/bin/bash
PROJECT=$1
cd $PROJECT
npm ci
cd ..

if [ $PROJECT = 'udagram-frontend' ]; then
	./build_frontend.sh $PROJECT
else 
    ./build_node.sh $PROJECT
fi

cd $PROJECT
docker build -t $PROJECT .
docker tag $PROJECT "$DOCKER_USERNAME"/$PROJECT:latest