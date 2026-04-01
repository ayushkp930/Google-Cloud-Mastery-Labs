#!/bin/bash

# Set project
PROJECT_ID=$(gcloud config get-value project)

echo "Using project: $PROJECT_ID"

# Create App Engine
gcloud app create --region=us-west1

# Deploy app
gcloud app deploy --quiet

# Open app
gcloud app browse