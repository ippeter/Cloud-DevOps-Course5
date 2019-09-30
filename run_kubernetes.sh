#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ippeter/lesson5

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run lesson5 --image=ippeter/lesson5 --replicas=1

# This is needed to let the pod start. Without it, the "get pods" won't be so nice, and "port-forward" won't work
sleep 10

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deploy/lesson5 8000:80
