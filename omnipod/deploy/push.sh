#!/bin/sh
set -x

LC=$(git rev-parse --short HEAD)
docker build -f Dockerfile -t yakose/omnipod:${LC} .
docker push yakose/omnipod:${LC}
kubectl set image deployment omnipod omnipod=yakose/omnipod:${LC}
