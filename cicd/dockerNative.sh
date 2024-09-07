#!/bin/sh
version=$(grep projectVersion < gradle.properties | cut -d '=' -f 2)
find microservice -name Dockerfile | while read -r path;
do
  service=$(echo "$path" | cut -d '/' -f 2)
  dockerTag="$service:$version$1"
done