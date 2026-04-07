#!/bin/bash

gcloud compute firewall-rules create www-firewall-network-lb \
--target-tags network-lb-tag \
--allow tcp:80