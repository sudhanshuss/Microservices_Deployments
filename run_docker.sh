#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
sudo docker build --tag=sudhanshuss/ud-project .

# Step 2: 
docker image ls

# Step 3: 
sudo docker run -p 8000:80 ud-project
