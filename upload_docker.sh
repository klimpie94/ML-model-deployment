#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="aboudih/ml-api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml-api $dockerpath:v0.1
docker login

# Step 3:
# Push image to a docker repository
docker push aboudih/ml-api:v0.1