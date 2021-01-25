#!/bin/bash
PROJECT=$1
if [ $PROJECT = 'udagram-frontend' ]; then
	./build_frontend.sh $PROJECT
else 
    ./build_node.sh $PROJECT
fi