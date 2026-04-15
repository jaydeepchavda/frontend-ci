#!/bin/bash

echo "Pull latest image..."
docker pull jaydipaws/clean-blog-app:latest

echo "Stopping old container..."
docker stop frontend-app || true
docker rm frontend-app || true

echo "Running new container..."
docker run -d -p 80:80 --name frontend-app jaydipaws/clean-blog-app

echo "Deployment done!"
