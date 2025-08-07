#!/bin/bash

echo "[+] Initializing Terraform..."
terraform init

echo "[+] Planning infrastructure..."
terraform plan -out=tfplan

echo "[+] Applying infrastructure..."
terraform apply -auto-approve tfplan
