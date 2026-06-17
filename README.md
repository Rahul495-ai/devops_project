## Two-Tier Application Deployment on AWS using Terraform & Docker

## Project Overview

This project demonstrates the deployment of a two-tier web application architecture on AWS using Infrastructure as Code (Terraform) and containerization (Docker).

The application consists of:

- Frontend Tier (Web Application)
- Backend Tier (Database Layer)
- AWS Infrastructure Provisioned using Terraform
- Dockerized Application Components
- Secure Networking using VPC and Security Groups

The project follows DevOps best practices by automating infrastructure provisioning, application deployment, and environment configuration.

---

## Architecture

                Internet
                     |
             Internet Gateway
                     |
              Public Subnet
                     |
              EC2 Instance
             (Dockerized App)
                     |
              Security Group
                     |
             Private Subnet
                     |
              Database Layer

---

## Features

- Infrastructure as Code using Terraform
- Custom VPC Creation
- Public and Private Subnets
- Internet Gateway Configuration
- Route Tables
- Security Groups
- EC2 Instance Provisioning
- Docker Container Deployment
- Database Connectivity
- Automated Resource Creation
- Scalable and Reusable Infrastructure

---

## Tech Stack

### Cloud Platform
- AWS

### Infrastructure as Code
- Terraform

### Containerization
- Docker

### Operating System
- Ubuntu 22.04

### Version Control
- Git
- GitHub

### Networking
- VPC
- Subnets
- Route Tables
- Internet Gateway
- Security Groups

### Database
- MySQL

---

## Project Structure

project/
│
├── terraform/
│ ├── provider.tf
│ ├── variables.tf
│ ├── vpc.tf
│ ├── subnet.tf
│ ├── security_group.tf
│ ├── ec2.tf
│ ├── outputs.tf
│
├── app/
│ ├── Dockerfile
│ ├── source-code
│
├── scripts/
│ ├── setup.sh
│
└── README.md

---

## Deployment Steps

### Clone Repository

git clone <repository-url>

### Initialize Terraform

terraform init

### Validate Configuration

terraform validate

### Review Execution Plan

terraform plan

### Deploy Infrastructure

terraform apply

### Verify Resources

- VPC Created
- Subnets Created
- Security Groups Created
- EC2 Instance Running

### Deploy Docker Container

docker build -t two-tier-app .

docker run -d -p 80:80 two-tier-app

---

## Security Implementation

- Principle of Least Privilege
- Security Group Restrictions
- Private Database Layer
- Isolated Network Segmentation
- Controlled Inbound and Outbound Traffic

---

## Future Enhancements

- CI/CD Pipeline using Jenkins
- Kubernetes Deployment
- Monitoring using CloudWatch
- Infrastructure State Management using S3 Backend
- Auto Scaling Group Integration
- Load Balancer Configuration

---

## Learning Outcomes

- AWS Networking Fundamentals
- Infrastructure Automation with Terraform
- Docker Containerization
- Cloud Deployment Best Practices
- DevOps Workflow Implementation
- Secure Application Deployment

---

## Author

Rahul Mohanty
