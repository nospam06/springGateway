#!/bin/sh
version=$(grep projectVersion < gradle.properties | cut -d '=' -f 2)
find microservice -name Dockerfile | while read -r services;
do
  service=$(echo "$services" | cut -d '/' -f 2)
  dockerTag="$service:${version}$1"
  docker build -t "$dockerTag" microservice/"$service"
done