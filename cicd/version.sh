#!/bin/sh
version=$(grep projectVersion < gradle.properties | cut -d '=' -f 2)
sed -i '1 a projectVersion='$((version + 1)) gradle.properties
sed -i '1d' gradle.properties