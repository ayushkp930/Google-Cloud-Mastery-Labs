#!/bin/bash

gcloud config set compute/region europe-west1
gcloud config set compute/zone europe-west1-d

# VM 1
gcloud compute instances create www1 \
--zone=europe-west1-d \
--tags=network-lb-tag \
--machine-type=e2-small \
--image-family=debian-11 \
--image-project=debian-cloud \
--metadata=startup-script='#!/bin/bash
apt-get update
apt-get install apache2 -y
service apache2 restart
echo "<h3>Web Server: www1</h3>" > /var/www/html/index.html'

# VM 2
gcloud compute instances create www2 \
--zone=europe-west1-d \
--tags=network-lb-tag \
--machine-type=e2-small \
--image-family=debian-11 \
--image-project=debian-cloud \
--metadata=startup-script='#!/bin/bash
apt-get update
apt-get install apache2 -y
service apache2 restart
echo "<h3>Web Server: www2</h3>" > /var/www/html/index.html'

# VM 3
gcloud compute instances create www3 \
--zone=europe-west1-d \
--tags=network-lb-tag \
--machine-type=e2-small \
--image-family=debian-11 \
--image-project=debian-cloud \
--metadata=startup-script='#!/bin/bash
apt-get update
apt-get install apache2 -y
service apache2 restart
echo "<h3>Web Server: www3</h3>" > /var/www/html/index.html'