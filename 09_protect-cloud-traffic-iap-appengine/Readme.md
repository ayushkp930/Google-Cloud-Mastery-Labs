# 🔐 Protect Cloud Traffic using IAP (Google Cloud Lab)

## 🚀 Overview

This project demonstrates how to deploy a web application on **Google App Engine** and secure it using **Identity-Aware Proxy (IAP)**.

---

## 🧠 Skills Learned

* App Engine deployment
* OAuth Consent Configuration
* Identity-Aware Proxy (IAP)
* IAM role assignment

---

## ⚙️ Tech Stack

* Google Cloud Platform (GCP)
* App Engine (Python 3.10)
* Flask
* IAP (Security)

---

## 📦 Deployment Steps

```bash
git clone https://github.com/<your-username>/gcp-iap-secured-app-engine-lab.git
cd gcp-iap-secured-app-engine-lab/app
gcloud app deploy
```

---

## 🔐 Security Implementation

### 1. OAuth Consent Screen

* External user type
* No scopes required

### 2. Enable IAP

* Enabled via Security → Identity-Aware Proxy

### 3. Restrict Access

* Only authorized users can access app

### 4. Grant Access

* Role: `IAP-secured Web App User`

---

## 🖼️ Screenshots

### GCP Dashboard

![Dashboard](screenshots/gcp-console-dashboard.png)

### App Deployment

![Deployment](screenshots/app-deployment.png)

### OAuth Configuration

![OAuth](screenshots/oauth-consent-config.png)

### IAP Enabled

![IAP](screenshots/iap-enable-popup.png)

### Role Assignment

![IAM](screenshots/iap-role-assignment.png)

---

## 🎯 Outcome

* Successfully deployed secure web app
* Restricted public access using IAP
* Authorized specific users

---

## 🏆 Author

** Ayush Kumar patel **

---

## 📌 Note

This project is part of Google Cloud Skill Badge Challenge Lab.
