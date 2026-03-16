# Managing Deployments Using Kubernetes Engine (GKE)

This repository contains my progress and documentation for the Google Cloud Skills Boost lab: **Managing Deployments Using Kubernetes Engine**. 

## 🚀 Project Overview
In this lab, I practiced various deployment strategies on Google Kubernetes Engine (GKE) to ensure application availability and seamless updates.

### Key Skills Practiced:
* **Cluster Creation:** Provisioned a GKE cluster using `gcloud` commands.
* **Rolling Updates:** Updated applications from `v1` to `v2` without downtime.
* **Canary Deployments:** Tested new features on a small subset of users.
* **Blue-Green Deployments:** Practiced switching traffic between two identical environments for safe releases.

---

## 📸 Lab Execution & Proofs

### 1. Cluster Infrastructure
Successfully created a 3-node GKE cluster named `bootcamp` in the `europe-west4-a` zone.
![Cluster Creation](./screenshots/01-cluster-creation.png)

### 2. Application Deployment
Deployed the initial `fortune-app-blue` (v1.0.0) and verified the creation of Replicas and Pods.
![Deployment Status](./screenshots/03-blue-deployment-status.png)

### 3. Deployment Strategies
* **Explored Deployment Objects:** Used `kubectl explain` to understand metadata and specs.
* **Rolling Updates:** Edited the deployment to update the container image to `v2.0.0`.
* **Canary Testing:** Deployed a separate canary instance to monitor performance before a full rollout.
![Canary Deployment](./screenshots/05-canary-deployment.png)

### 4. Service Traffic Management
Used Kubernetes Services (LoadBalancer) to route traffic and verified versions using `curl`.
![Blue-Green Traffic Switch](./screenshots/06-blue-green-switch.png)

---

## 🛠️ Commands Used
```bash
# Create Cluster
gcloud container clusters create bootcamp --num-nodes 3 --zone europe-west4-a

# Deploy Application
kubectl create -f deployments/fortune-app-blue.yaml
kubectl create -f services/fortune-app.yaml

# Rollout Status
kubectl rollout status deployment/fortune-app-blue