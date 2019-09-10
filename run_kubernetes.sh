#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=sudhanshuss/ud-project

# Step 2
sudo kubectl run ud-projectdemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=ud-projectdemo


# Step 3:
sudo kubectl get pods

# Step 4:
# Forward the container port to a host
sudo kubectl port-forward ud-projectdemo 8000:80

