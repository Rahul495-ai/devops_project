# Two-Tier Application Deployment using Terraform, Docker and Jenkins

## Project Overview

This project demonstrates the deployment of a two-tier web application on AWS using Terraform for Infrastructure as Code (IaC), Docker for containerization, and Jenkins for CI/CD automation.

The infrastructure is automatically provisioned on AWS, the frontend application is containerized using Docker, and Jenkins orchestrates infrastructure deployment, application deployment, and testing.

---

## Architecture

```text
                   User
                     │
                     ▼
               AWS EC2 Instance
                     │
        ┌────────────┴────────────┐
        │                         │
        ▼                         ▼
 Dockerized Frontend App      MySQL Database
        │                         │
        └────────────┬────────────┘
                     │
             Terraform Managed
              AWS Resources
                     │
                 Jenkins CI/CD
```

---

## Project Structure

```text
devops_project/
│
├── app/
│   └── frontend/
│       ├── Dockerfile
│       ├── app.js
│       ├── index.html
│       ├── package.json
│       └── db-sql.sql
│
├── terraform/
│   ├── .terraform.lock.hcl
│   ├── backend.sh
│   ├── create_infra.sh
│   ├── deploy_apps.sh
│   ├── frontend.sh
│   ├── main.tf
│   ├── outputs.tf
│   ├── test_solution.sh
│   ├── tfplan
│   └── variables.tf
│
├── .gitignore
├── Jenkinsfile
└── README.md
```

---

## Technologies Used

### Cloud Platform
- AWS

### Infrastructure as Code
- Terraform

### Containerization
- Docker

### CI/CD
- Jenkins

### Backend Database
- MySQL

### Programming Languages
- JavaScript
- SQL

### Version Control
- Git
- GitHub

### Operating System
- Linux (Ubuntu)

---

## Key Features

- Infrastructure provisioning using Terraform
- Dockerized frontend application
- Automated deployment using Jenkins Pipeline
- Infrastructure automation scripts
- Database integration with MySQL
- Reproducible deployment process
- End-to-end DevOps workflow

---

## Terraform Components

The Terraform configuration includes:

- Provider Configuration
- Infrastructure Definitions
- Variable Management
- Output Management
- Automated Deployment Scripts

Files:

- main.tf
- variables.tf
- outputs.tf

Scripts:

- create_infra.sh
- backend.sh
- frontend.sh
- deploy_apps.sh

---

## CI/CD Pipeline

The Jenkins pipeline automates:

### Stage 1: Create Infrastructure

- Executes Terraform scripts
- Creates AWS resources
- Configures networking and compute resources

### Stage 2: Deploy Applications

- Deploys Dockerized frontend application
- Configures database connectivity

### Stage 3: Test Solution

- Executes validation scripts
- Verifies successful deployment

Pipeline File:

```text
Jenkinsfile
```

---

## Deployment Workflow

1. Clone the repository

```bash
git clone https://github.com/Rahul495-ai/devops_project.git
cd devops_project
```

2. Initialize Terraform

```bash
cd terraform
terraform init
```

3. Review Infrastructure Plan

```bash
terraform plan
```

4. Apply Infrastructure

```bash
terraform apply
```

5. Deploy Application

```bash
./deploy_apps.sh
```

6. Validate Deployment

```bash
./test_solution.sh
```

---

## Learning Outcomes

- Infrastructure as Code (IaC)
- AWS Resource Provisioning
- Docker Containerization
- CI/CD Pipeline Automation
- Jenkins Pipeline Development
- Terraform Automation
- Application Deployment Strategies

---

## Resume Description

### Two-Tier Application Deployment using AWS, Terraform, Docker and Jenkins

- Developed and deployed a two-tier web application architecture on AWS using Terraform for Infrastructure as Code (IaC).
- Containerized a Node.js frontend application using Docker and automated deployments through Jenkins CI/CD pipelines.
- Implemented infrastructure automation scripts for provisioning cloud resources and application deployment.
- Integrated MySQL database connectivity and automated validation testing for deployment reliability.
- Reduced manual deployment effort through end-to-end automation using Terraform, Shell Scripting, Docker, and Jenkins.

**Tech Stack:** AWS, Terraform, Docker, Jenkins, Node.js, MySQL, Linux, Git, GitHub

---

## Author

Rahul Mohanty
