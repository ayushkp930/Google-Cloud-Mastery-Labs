# 🌐 GCP Application Load Balancer (L7)

## 🚀 Overview

This project demonstrates how to configure a **Layer 7 HTTP Load Balancer** on Google Cloud using Compute Engine and Managed Instance Groups.

---

## 🧠 Skills Learned

* VM provisioning on GCP
* Managed Instance Groups (MIG)
* Health checks configuration
* Backend services
* URL routing (L7)
* Global Load Balancer setup

---

## ⚙️ Architecture

* Instance Template → MIG
* Backend Service
* Health Check
* URL Map → HTTP Proxy
* Global Forwarding Rule

---

## 📦 Setup Steps

### 1. VM Setup

```bash
chmod +x scripts/vm-setup.sh
./scripts/vm-setup.sh
```

### 2. Instance Group

```bash
chmod +x scripts/instance-group.sh
./scripts/instance-group.sh
```

### 3. Firewall

```bash
chmod +x scripts/firewall.sh
./scripts/firewall.sh
```

### 4. Load Balancer

```bash
chmod +x scripts/load-balancer.sh
./scripts/load-balancer.sh
```

---

## 🖼️ Screenshots

### VM Creation

![VM1](screenshots/vm-www1-created.png)

### Instance Group

![MIG](screenshots/instance-group.png)

### Backend Service

![Backend](screenshots/backend-service.png)

### URL Map & Proxy

![URL Map](screenshots/url-map-proxy.png)

### Health Check

![Health](screenshots/health-check-status.png)

---

## 🎯 Outcome

* Built scalable L7 Load Balancer
* Implemented health checks
* Distributed traffic across instances
* Achieved high availability architecture

---

## 🔐 Key Concept

L7 Load Balancer works at:

* HTTP/HTTPS level
* Routes based on URL, headers, etc.

---

## 🏆 Author
  Ayush Kumar Patel
 Cloud & Security Engineer 🚀

---

## 📌 Note

Part of Google Cloud Lab (GSP155)
