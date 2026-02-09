## Overview
This project demonstrates an automated CI/CD pipeline that builds and deploys
a containerized web application to Google Kubernetes Engine (GKE).

## Tech Stack
- Google Kubernetes Engine (GKE)
- Terraform (IaC)
- Docker
- GitHub Actions
- GCP Artifact Registry

## How to Run
1. Provision infrastructure:
   cd terraform
   terraform init
   terraform apply

2. Push changes to main branch
   → GitHub Actions automatically builds & deploys

## Live Application
http://<GCP_LOAD_BALANCER_IP>
## HELM
helm create hello-app
helm install hello-app ./hello-app

## Observability
helm install kube-prometheus-stack prometheus-community/kube-prometheus-stack
