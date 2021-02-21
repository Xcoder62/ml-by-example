#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="xcoder62/udacity-ml-by-example:latest"

# Step 2:  
# Authenticate & tag
docker login
docker tag 55065d80eb76 $dockerpath
echo "Docker ID and Image: $dockerpath"


# Step 3:
# Push image to a docker repository
docker push $dockerpath