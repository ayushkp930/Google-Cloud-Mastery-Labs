# 🛡️ GCP Web Security Scanner: XSS Vulnerability Lab

## 📌 Project Overview
This project demonstrates a hands-on cloud security lab focusing on discovering and remediating **Cross-Site Scripting (XSS)** vulnerabilities. The lab involves deploying a vulnerable web application on Google Cloud Compute Engine, exploiting the vulnerability, detecting it using the native **Google Cloud Web Security Scanner**, and finally applying a code-level fix.

## 🛠️ Tools & Technologies
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Compute:** GCP Compute Engine (VM)
* **Security Tool:** Web Security Scanner API
* **CLI/Access:** Cloud Shell & SSH
* **Vulnerability:** Cross-Site Scripting (XSS)

---

## 📸 Lab Implementation & Visual Evidence

### 1️⃣ Cloud Environment Setup
Provisioning the GCP environment and deploying the Compute Engine instance.

*GCP Console Project Setup:*
![GCP Console Project](lab_screenshots/01-gcp-console-project.png)

*VM Instance Successfully Created:*
![VM Instance Created](lab_screenshots/02-vm-instance-created.png)

### 2️⃣ Deploying the Vulnerable Application
Using Cloud Shell and SSH to configure the server and host the application.

*Executing Cloud Shell Commands:*
![Cloud Shell Commands](lab_screenshots/03-cloud-shell-commands.png)

*Deploying App via SSH:*
![SSH VM Deployment](lab_screenshots/04-ssh-vm-deployment.png)

*Vulnerable Web App Running Live:*
![Vulnerable App Running](lab_screenshots/05-vulnerable-app-running.png)

### 3️⃣ The Attack (XSS Injection)
Demonstrating the vulnerability by injecting a malicious script payload into the application.

*Active XSS Injection Demo:*
![XSS Injection Demo](lab_screenshots/06-xss-injection-demo.png)

### 4️⃣ Vulnerability Detection (Web Security Scanner)
Configuring and executing the GCP Web Security Scanner to automatically detect the injected XSS flaw.

*Enabling Web Security Scanner API:*
![Web Security Scanner API](lab_screenshots/07-web-security-scanner-api.png)

*Creating Scan Configuration:*
![Create Scan Config](lab_screenshots/08-create-scan-config.png)

*Security Scan in Progress:*
![Scan Running](lab_screenshots/09-scan-running.png)

*Scanner Successfully Detects XSS Vulnerability:*
![XSS Vulnerability Detected](lab_screenshots/10-xss-vulnerability-detected.png)

### 5️⃣ Security Remediation
Applying a security patch to the application's source code to sanitize inputs and prevent payload execution.

*Code Remediation Implemented:*
![Code Remediation](lab_screenshots/11-code-remediation.png)

---

## ✅ Conclusion & Key Learnings
* Successfully deployed and managed infrastructure using GCP Compute Engine.
* Understood the mechanics of Cross-Site Scripting (XSS) attacks.
* Learned how to configure and leverage GCP's native **Web Security Scanner** to automate vulnerability discovery.
* Implemented secure coding practices to remediate the identified vulnerability.

---
**Author:** Ayush Kumar Patel | **Role:** Cloud Security Enthusiast
