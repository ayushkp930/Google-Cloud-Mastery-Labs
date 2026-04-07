#!/bin/bash

gcloud config set compute/zone us-east1-d

for i in www1 www2 www3
do
gcloud compute instances create $i \
--zone=us-east1-d \
--tags=network-lb-tag \
--machine-type=e2-small \
--image-family=debian-11 \
--image-project=debian-cloud \
--metadata=startup-script='#!/bin/bash
apt-get update
apt-get install apache2 -y
service apache2 restart
echo "<h3>Web Server: '$i'</h3>" > /var/www/html/index.html'
done