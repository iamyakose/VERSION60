#!/bin/sh

# Remember to login to DockerHub from your local machine

LC=$(git rev-parse --short HEAD)
docker build -t yakose/omnipod:${LC} . 
docker push yakose/omnipod:${LC}