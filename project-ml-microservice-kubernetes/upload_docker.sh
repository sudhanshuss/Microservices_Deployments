#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="sudhanshuss/ud-project"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login &&\
    docker image tag ud-project $dockerpath

# Step 3:
sudo docker image push $dockerpath
