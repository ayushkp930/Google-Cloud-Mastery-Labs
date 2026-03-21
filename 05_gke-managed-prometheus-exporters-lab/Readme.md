# 🚀 Collect Metrics using Managed Service for Prometheus (GKE Lab)

## 📌 Overview
This lab demonstrates how to use Google Cloud Managed Service for Prometheus (GMP) to collect metrics from infrastructure sources using exporters in a GKE cluster.

---

## 🎯 Objectives
- Deploy a GKE cluster
- Configure node-exporter for metrics collection
- Use PodMonitoring custom resource
- Apply Prometheus configuration
- Collect and analyze metrics

---

## 🛠️ Technologies Used
- Google Kubernetes Engine (GKE)
- Managed Service for Prometheus (GMP)
- Node Exporter
- Kubernetes YAML
- Cloud Monitoring

---

## ⚙️ Steps Performed

### 1️⃣ GKE Cluster Deployment
- Created GKE cluster using gcloud CLI

![Cluster Setup](screenshots/01_gke-cluster-setup.png)

---

### 2️⃣ Deploy Node Exporter
- Installed node-exporter to collect system-level metrics

![Node Exporter](screenshots/02_node-exporter-deployment.png)

---

### 3️⃣ Configure PodMonitoring
- Created PodMonitoring YAML resource
- Enabled metric scraping

![PodMonitoring](screenshots/03_podmonitoring-config.png)

---

### 4️⃣ Apply Prometheus Configuration
- Applied configuration to start metrics collection

![Prometheus Metrics](screenshots/04_prometheus-metrics-collection.png)

---

### 5️⃣ Metrics Visualization
- Verified metrics in Cloud Monitoring

![Metrics Dashboard](screenshots/05_metrics-dashboard.png)

---

## ⚠️ Issues Faced
- Configuration errors in YAML
- Exporter connectivity issues

---

## ✅ Learning Outcomes
- Hands-on with Managed Prometheus
- Kubernetes monitoring setup
- Exporter-based metrics collection
- Debugging monitoring configurations

---

## 📂 Repository Structure
