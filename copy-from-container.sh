#!/bin/bash

# path to the folder you want to copy from the container
path=$(/path/on/container.txt)

# your running container's id
## this should work if this is the only container currently running
id=$(docker ps -aq | head -n 1)

# copy file, or directory, from running docker container
docker cp $id:$path /path/on/host.txt