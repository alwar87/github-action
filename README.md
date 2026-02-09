# Automated Kubernetes Deployment – DevOps Take-Home Task

## Overview
This project demonstrates an automated CI/CD pipeline that builds, containerizes, and deploys a simple web application to an Amazon EKS Kubernetes cluster using Terraform and GitHub Actions.

## Architecture
- Terraform for Infrastructure as Code (EKS)
- Docker for containerization
- Kubernetes for orchestration
- GitHub Actions for CI/CD
- Docker Hub for image registry

## How to Run

### 1. Provision Infrastructure
```bash
cd terraform
terraform init
terraform apply
2. Configure kubectl
aws eks update-kubeconfig --region us-east-1 --name demo-eks-cluster
3. CI/CD
Push any change to the main branch.
The pipeline will automatically:
•	Build the Docker image
•	Push it to Docker Hub
•	Deploy it to EKS
Access the Application
Once deployed, get the public URL:
kubectl get svc hello-service
Design Decisions
•	Used managed Kubernetes (EKS) for scalability and reliability
•	Chose Nginx Alpine for minimal image size
•	GitHub Actions for simple, cloud-native CI/CD
Live URL
http://<EXTERNAL-IP>
