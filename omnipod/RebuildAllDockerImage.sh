#!/bin/bash
echo "====================="
echo "====== List all containers (only IDs) ======"
echo "====================="

docker ps -aq

echo "====================="
echo "====== Stop all running containers) ======"
echo "====================="

docker stop "$(docker ps -aq)"


echo "====================="
echo "====== Remove all running containers) ======"
echo "====================="
docker rm "$(docker ps -aq)"

# Rebuild all the services that have changes
# If you want to (re)build only a specific service, go to the src folder and execute `docker-compose build <servicename-lowercase>`
docker-compose build 