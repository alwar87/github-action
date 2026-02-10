# Hello World Kubernetes Deployment on GCP

## Overview
This project provisions a GKE cluster on GCP, containerizes a simple "Hello, World" app, and deploys it with an automated CI/CD pipeline triggered on GitHub pushes.

## Setup Instructions

### Prerequisites
- GCP account with billing enabled
- Enable GKE, Container Registry APIs
- Create a service account with GKE and GCR permissions, download JSON key
- GitHub repository secrets: `GCP_PROJECT_ID`, `GCP_SA_KEY`

### Infrastructure Setup
1. Configure `variables.tf` with your GCP project and region.
   
2. Initialize Terraform:
```bash
terraform init

3.Apply the configuration:
 terraform apply

### **Building & Deploying**
Push code to main branch.
GitHub Actions will automatically build the Docker image, push it to GCR, and deploy to GKE.
Design Choices
GKE provides a managed, scalable Kubernetes environment.
Docker container optimized with Alpine base for size.
LoadBalancer service exposes the app publicly.
GitHub Actions automates the CI/CD pipeline for efficiency.


### ** Live Application**
Accessible at: [Your GCP Load Balancer URL]
