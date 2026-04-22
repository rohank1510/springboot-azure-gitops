springboot-azure-gitops
Spring Boot Azure GitOps Deployment

Overview
This project demonstrates deployment of a Spring Boot application using Azure AKS, Terraform, and GitOps (ArgoCD).

Tech Stack
- Azure AKS
- Terraform
- Docker
- Kubernetes
- ArgoCD
- Prometheus & Grafana

Features
- Liveness & Readiness Probes
- GitOps Deployment
- Horizontal Scaling
- Monitoring

Setup Steps

1. Terraform
cd terraform
terraform init
terraform apply

2. Build Docker Image
docker build -t <image> .
docker push <image>

3. Deploy App
kubectl apply -f k8s/

4. Setup ArgoCD
kubectl apply -f argocd/

5. Monitoring
helm install monitoring prometheus-community/kube-prometheus-stack

Architecture Story

This project demonstrates a production-oriented deployment of a Spring Boot application using GitOps and Infrastructure as Code.

The design focuses on:
Secure handling of credentials using Kubernetes Secrets and Terraform variables
Scalable workloads using Horizontal Pod Autoscaler
Resilient deployments using readiness/liveness probes and PodDisruptionBudget
Controlled network access using Kubernetes NetworkPolicies
GitOps-based continuous delivery using ArgoCD

The application is containerized and deployed on Kubernetes, with CI/CD handled via GitHub Actions and deployment managed through ArgoCD.

