#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="xcoder62/udacity-ml-by-example:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-by-example --image=$dockerpath --restart=Never

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/udacity-ml-by-example 80:80



