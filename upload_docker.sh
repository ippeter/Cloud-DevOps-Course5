#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ippeter/lesson5

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag lesson5 ippeter/lesson5
docker login -u ippeter

# Step 3:
# Push image to a docker repository
docker push ippeter/lesson5
