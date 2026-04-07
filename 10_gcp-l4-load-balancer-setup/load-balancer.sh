#!/bin/bash

# Create static IP
gcloud compute addresses create network-lb-ip-1 \
--region europe-west1

# Health check
gcloud compute http-health-checks create basic-check

# Target pool
gcloud compute target-pools create www-pool \
--region europe-west1 \
--http-health-check basic-check

# Add instances
gcloud compute target-pools add-instances www-pool \
--instances www1,www2,www3

# Forwarding rule
gcloud compute forwarding-rules create www-rule \
--region europe-west1 \
--ports 80 \
--address network-lb-ip-1 \
--target-pool www-pool