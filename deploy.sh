#!/bin/bash
cd /home/ubuntu/flask-app

# Stop and remove the existing container if running
docker stop health-check-app || true
docker rm health-check-app || true

# Pull latest changes
git pull origin main

# Build and run the Docker container
docker build -t health-check-app .
docker run -d -p 5000:5000 --name health-check-app health-check-app
