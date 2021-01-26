#!/bin/bash
echo 'build frontend script'
cd $PROJECT
npm install -g @ionic/cli@6.12.3
ionic build
