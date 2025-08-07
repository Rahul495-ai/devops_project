#!/bin/bash
BACKEND_IP=$1

# Install Docker
sudo apt update -y
sudo apt install -y docker.io

# Add current user to docker group
sudo usermod -aG docker ubuntu

# Allow group changes to take effect without reboot
newgrp docker <<EONG
docker run -d -p 80:3000 \
  -e DB_HOST=$BACKEND_IP \
  -e DB_USER=root \
  -e DB_PASS=1234 \
  rahul981/frontend-app:latest
EONG
