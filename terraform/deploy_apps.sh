#!/bin/bash

echo "[+] Fetching instance IPs from Terraform outputs..."
FRONTEND_IP=$(terraform output -raw frontend_public_ip)
BACKEND_IP=$(terraform output -raw backend_private_ip)
PEM_PATH=$(terraform output -raw private_key_path)

echo "[+] Deploying Backend..."
ssh -o StrictHostKeyChecking=no -i $PEM_PATH ubuntu@$BACKEND_IP 'bash ~/backend.sh'

echo "[+] Deploying Frontend..."
ssh -o StrictHostKeyChecking=no -i $PEM_PATH ubuntu@$FRONTEND_IP "bash ~/frontend.sh $BACKEND_IP"
