# 🚀 GCP Terraform Firewall & VPC Lab

This project demonstrates how to create a VPC network and firewall rules in Google Cloud using Terraform and Cloud Shell.

---

## 📌 Project Overview

In this lab, we used Infrastructure as Code (IaC) to:

- Create a custom VPC network
- Configure firewall rules
- Allow traffic using ICMP and TCP protocols
- Automate deployment using Terraform

---

## 🛠️ Technologies Used

- Google Cloud Platform (GCP)
- Terraform
- Cloud Shell
- GitHub

---

## 📂 Project Structure
.
├── main.tf
├── backing_file.tf
├── deploy.sh
├── screenshots/
└── README.md


---

## ⚙️ Firewall Configuration

- Protocols:
  - ICMP
  - TCP

- Allowed Ports:
  - 80 (HTTP)
  - 8080
  - 1000–2000

---

## 🚀 Deployment Steps

### 1. Set Project
```bash

export GOOGLE_CLOUD_PROJECT=your-project-id

2. Initialize Terraform
terraform init

3. Apply Configuration
terraform apply

Type: yes

📸 Screenshots
Clone Repo

Terraform Config:

Terraform Init

Terraform Apply:

Success

Output:

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

📚 Learning Outcome
Learned Terraform basics
Understood GCP networking
Automated firewall rules
Practiced Infrastructure as Code (IaC)