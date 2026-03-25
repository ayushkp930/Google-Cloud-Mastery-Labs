# Create Custom Role
gcloud iam roles create orca_storage_editor_621 \
  --project=PROJECT_ID \
  --permissions=storage.buckets.get,storage.objects.get,storage.objects.list,storage.objects.update,storage.objects.create \
  --stage=GA

# Create Service Account
gcloud iam service-accounts create orca-private-cluster-810-sa

# Bind Roles
gcloud projects add-iam-policy-binding PROJECT_ID \
  --member="serviceAccount:SA_EMAIL" \
  --role="roles/monitoring.viewer"

# Create Private Cluster
gcloud container clusters create orca-cluster-604 \
  --zone=us-east1-d \
  --network=orca-build-vpc \
  --subnetwork=orca-build-subnet \
  --enable-private-nodes \
  --enable-private-endpoint

# Deploy App
kubectl create deployment hello-server \
  --image=gcr.io/google-samples/hello-app:1.0