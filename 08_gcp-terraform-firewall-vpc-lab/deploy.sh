
---

# ⚡  deploy.sh (Automation Script)

```bash
#!/bin/bash

echo "🚀 Starting Terraform Deployment..."

# Set Project ID
read -p "Enter your GCP Project ID: " PROJECT_ID
export GOOGLE_CLOUD_PROJECT=$PROJECT_ID

echo "Project set to $PROJECT_ID"

# Initialize Terraform
terraform init

# Apply Terraform
terraform apply -auto-approve

echo "✅ Deployment Completed!"