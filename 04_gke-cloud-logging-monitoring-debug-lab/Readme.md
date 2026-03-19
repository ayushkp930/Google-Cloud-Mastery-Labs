# 🚀 Debug Apps on Google Kubernetes Engine (GKE)

## 📌 Overview

This project demonstrates debugging and monitoring of a microservices application deployed on **Google Kubernetes Engine (GKE)** using:

* Cloud Logging
* Cloud Monitoring
* Kubernetes

---

## 🎯 Objectives

* Detect issues using monitoring metrics
* Troubleshoot using logs
* Deploy and analyze microservices
* Implement alerting policies

---

## 📁 Project Structure

```
gcp-gke-debugging-microservices/
│
├── README.md
├── screenshots/
├── manifests/
│   └── kubernetes-manifests.yaml
```

---

## ⚙️ Setup & Execution

### 1️⃣ Configure GCP

```bash
gcloud config list project
```

📸
![Dashboard](screenshots/01-dashboard.png)

---

### 2️⃣ Get Cluster Credentials

```bash
gcloud container clusters get-credentials central --zone us-central1-a
```

📸
![Cluster](screenshots/03-cluster-creation.png)

---

### 3️⃣ Deploy Application

```bash
kubectl apply -f manifests/kubernetes-manifests.yaml
```

📸
![Deployment](screenshots/05-deployment-services.png)

---

### 4️⃣ Verify Nodes

```bash
kubectl get nodes
```

📸
![Nodes](screenshots/04-kubectl-nodes.png)

---

### 5️⃣ Check Workloads

📸
![Workloads](screenshots/06-workloads-overview.png)

---

### 6️⃣ Access Application

📸
![App](screenshots/10-application-output.png)

---

## 🚨 Alerting Setup

* Created alert policy: **Error_Rate**
* Used log-based metrics

📸
![Alert](screenshots/08-alert-policy.png)

---

## 📊 Monitoring

* CPU Usage
* Memory Usage
* Error Rate Tracking

📸
![Metrics](screenshots/09-monitoring-metrics.png)

---

## 🧠 Key Learnings

* Debugging microservices in Kubernetes
* Using Cloud Logging effectively
* Monitoring distributed systems
* Creating alerting policies

---

## 🛠️ Tech Stack

* Google Kubernetes Engine (GKE)
* Cloud Logging
* Cloud Monitoring
* Kubernetes

---

## 📌 Author

**Ayush Kumar patel**

---

⭐ Star this repo if helpful!
