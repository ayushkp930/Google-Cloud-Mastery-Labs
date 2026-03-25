# 🔐 Implement Cloud Security Fundamentals on Google Cloud

⭐ Hands-on Google Cloud Security Lab with Private GKE Cluster

---

## 🚀 Project Overview

This project demonstrates the implementation of **cloud security best practices on Google Cloud Platform (GCP)** by building a **secure private Kubernetes (GKE) cluster**.

The lab focuses on **IAM security, least privilege access, and private infrastructure deployment**, simulating a real-world production environment.

---

## 🎯 Objectives

* Create a **custom IAM role** with limited permissions
* Configure a **secure service account**
* Apply **IAM role bindings (least privilege)**
* Deploy a **private GKE cluster**
* Restrict access using **Master Authorized Networks (/32)**
* Use a **jumphost VM for secure cluster access**
* Deploy and verify an application using **kubectl**

---

## 🛠️ Technologies Used

* ☁️ Google Cloud Platform (GCP)
* ⚙️ Kubernetes Engine (GKE)
* 🔐 Identity and Access Management (IAM)
* 💻 Cloud Shell
* 📦 kubectl

---

## 📸 Screenshots (Step-by-Step)

### 🖥️ GCP Dashboard

![Dashboard](screenshots/01-gcp-dashboard.png)

### 🔐 Custom IAM Role Created

![IAM Role](screenshots/02-custom-iam-role-created.png)

### 👤 IAM Role Bindings

![IAM Binding](screenshots/03-iam-role-bindings.png)

### ⚙️ GKE Cluster Creation

![Cluster Creation](screenshots/04-gke-cluster-creation.png)

### ☁️ Cluster Running

![Cluster Running](screenshots/05-gke-cluster-running.png)

### 🔑 Jumphost Access

![Jumphost](screenshots/06-jumphost-ssh.png)

### 🚀 Kubernetes Deployment

![Pods](screenshots/07-kubectl-pods-running.png)

---

## 🔐 Security Concepts Applied

* **Principle of Least Privilege (PoLP)**
* **Custom IAM Role Design**
* **Service Account Security**
* **Private Kubernetes Cluster (No Public Endpoint)**
* **Master Authorized Networks (/32 CIDR restriction)**
* **Secure Access via Jumphost**

---

## ⚙️ Key Commands Used

```bash
# Create custom IAM role
gcloud iam roles create orca_storage_editor_621 \
  --project=PROJECT_ID \
  --permissions=storage.buckets.get,storage.objects.get,storage.objects.list,storage.objects.update,storage.objects.create \
  --stage=GA

# Create service account
gcloud iam service-accounts create orca-private-cluster-810-sa

# Bind roles
gcloud projects add-iam-policy-binding PROJECT_ID \
  --member="serviceAccount:SA_EMAIL" \
  --role="roles/monitoring.viewer"

# Create private GKE cluster
gcloud container clusters create orca-cluster-604 \
  --zone=us-east1-d \
  --network=orca-build-vpc \
  --subnetwork=orca-build-subnet \
  --enable-private-nodes \
  --enable-private-endpoint

# Deploy application
kubectl create deployment hello-server \
  --image=gcr.io/google-samples/hello-app:1.0
```

---

## 📌 Outcome

Successfully built and configured a **secure, private Kubernetes cluster** with restricted access and deployed an application using industry-standard cloud security practices.

---

## 🧠 Learning Outcomes

* Practical understanding of **GCP IAM & security**
* Experience with **secure Kubernetes deployments**
* Knowledge of **private networking in cloud**
* Hands-on exposure to **DevOps + Cloud Security integration**

---

## 🔗 Author

**Akl**
Aspiring Cloud Security / DevOps Engineer 🚀

---

## ⭐ If you found this useful

Give this repo a ⭐ and connect with me on LinkedIn!
