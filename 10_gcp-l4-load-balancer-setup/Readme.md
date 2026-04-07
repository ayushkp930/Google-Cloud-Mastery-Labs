# 🌐 GCP Network Load Balancer Setup (L4)

## 🚀 Overview

This project demonstrates how to configure a **Layer 4 Network Load Balancer** on Google Cloud using Compute Engine instances.

---

## 🧠 Skills Learned

* Compute Engine VM setup
* Apache Web Server deployment
* Firewall configuration
* Load balancing (L4)
* Target pools & forwarding rules

---

## ⚙️ Architecture

* 3 VM instances (www1, www2, www3)
* Apache installed on each
* Load Balancer distributes traffic
* Health checks ensure availability

---

## 📦 Setup Steps

### 1. Create VMs

```bash
chmod +x scripts/create-vms.sh
./scripts/create-vms.sh
```

### 2. Configure Firewall

```bash
chmod +x scripts/firewall.sh
./scripts/firewall.sh
```

### 3. Setup Load Balancer

```bash
chmod +x scripts/load-balancer.sh
./scripts/load-balancer.sh
```

---

## 🖼️ Screenshots

### VM Creation

![VM1](screenshots/vm-www1-creation.png)

### Multiple Instances

![VM2](screenshots/vm-www2-creation.png)

### All Instances Running

![VM3](screenshots/vm-www3-creation.png)

### Load Balancer Setup

![LB](screenshots/load-balancer-setup.png)

---

## 🎯 Outcome

* Successfully deployed 3 web servers
* Configured L4 Load Balancer
* Traffic distributed across instances

---

## 🔐 Concept

This lab uses **Network Load Balancer (Layer 4)** which routes traffic based on:

* IP Address
* Port number

---

## 🏆 Author
  Ayush Kumar Patel
Student Cloud Security Engineer 🚀

---

## 📌 Note

Part of Google Cloud Skill Badge Lab (GSP007)
