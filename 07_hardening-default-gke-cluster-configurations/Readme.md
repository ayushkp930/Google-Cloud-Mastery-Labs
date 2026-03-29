# 🔐 Hardening Default GKE Cluster Configurations

This project demonstrates how to secure a default Google Kubernetes Engine (GKE) cluster by identifying insecure configurations and applying security best practices.

---

## 🚀 Lab Overview

In this lab, I deployed a GKE cluster and analyzed its default security posture. Then, I implemented multiple hardening techniques to reduce attack surface and improve cluster security.

---

## 🎯 Objectives

- Deploy a GKE cluster
- Identify insecure configurations (hostPath, metadata exposure)
- Apply Kubernetes security best practices
- Implement RBAC and Pod Security policies
- Restrict access to sensitive resources

---

## ⚙️ Technologies Used

- Google Kubernetes Engine (GKE)
- kubectl
- IAM & RBAC
- Kubernetes Security Context
- Pod Security Standards

---

## 📸 Screenshots

| Step | Description |
|------|------------|
| 1 | GKE Cluster Creation |
| 2 | Node Verification |
| 3 | Insecure Pod Deployment |
| 4 | HostPath Security Risk |
| 5 | Secure Pod Configuration |
| 6 | RBAC & Hardening |

---

## 🔍 Key Security Issues Identified

- Use of **hostPath volume** (high risk)
- Metadata server exposure
- Lack of RBAC restrictions
- Default insecure configurations

---

## 🔐 Security Improvements Implemented

- Removed insecure `hostPath` usage
- Applied **least privilege (RBAC)**
- Restricted metadata access
- Enforced **Pod Security Standards**
- Secured container runtime settings

---
