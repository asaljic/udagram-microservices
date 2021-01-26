#!/bin/bash
PROJECT=$1

if [[$PROJECT = 'udagram-frontend'] || [$PROJECT = 'udagram-feed'] || [$PROJECT = 'udagram-user']];
then
    cd $PROJECT
    npm ci
    cd ..
    if [ $PROJECT = 'udagram-frontend' ]; 
    then
        ./build_frontend.sh $PROJECT
    else
        ./build_node.sh $PROJECT
    fi
fi


cd $PROJECT
docker build -t $PROJECT .
docker tag $PROJECT "$DOCKER_USERNAME"/$PROJECT:latest