#!/bin/bash

# Static IP
gcloud compute addresses create lb-ipv4-1 \
--ip-version=IPV4 \
--global

# Health check
gcloud compute health-checks create http http-basic-check \
--port 80

# Backend service
gcloud compute backend-services create web-backend-service \
--protocol=HTTP \
--port-name=http \
--health-checks=http-basic-check \
--global

# Add backend
gcloud compute backend-services add-backend web-backend-service \
--instance-group=lb-backend-group \
--instance-group-zone=us-east1-d \
--global

# URL map
gcloud compute url-maps create web-map-http \
--default-service web-backend-service

# Proxy
gcloud compute target-http-proxies create http-lb-proxy \
--url-map web-map-http

# Forwarding rule
gcloud compute forwarding-rules create http-content-rule \
--global \
--target-http-proxy=http-lb-proxy \
--ports=80 \
--address=lb-ipv4-1