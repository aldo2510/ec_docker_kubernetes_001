# install gke
sudo yum install google-cloud-sdk-gke-gcloud-auth-plugin -y

# conectar cluster en local
gcloud container clusters get-credentials cluster-1 --region us-central1 --project hypnotic-epoch-411523