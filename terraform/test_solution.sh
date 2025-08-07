#!/bin/bash

FRONTEND_IP=$(terraform output -raw frontend_public_ip)
echo "[+] Frontend Public IP: $FRONTEND_IP"
echo "[+] Testing app with curl..."

curl http://$FRONTEND_IP
