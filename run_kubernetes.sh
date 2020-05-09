#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dennofox/udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=${dockerpath} udacity-app --port=80

# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
#kubectl expose pod udacity-app --port=8000 --target-port=80 --name=udacity-http
kubectl port-forward udacity-app 8000:80
