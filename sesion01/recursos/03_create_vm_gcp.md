# Crear máquina virtual en GCP
```console
printf 'yes' | gcloud compute --project=hypnotic-epoch-411523 firewall-rules create all-inbound --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0


printf 'yes' | gcloud compute --project=hypnotic-epoch-411523 firewall-rules create all-outbound --direction=EGRESS --priority=1000 --network=default --action=ALLOW --rules=all --destination-ranges=0.0.0.0/0

gcloud compute instances create devops-jenkins-server \
--project=<project-id> \
--zone=us-west4-b \
--machine-type=e2-standard-4 \
--network-interface=network-tier=PREMIUM,subnet=default \
--metadata=ssh-keys=jenkins:ssh-rsa\ AAAAB3NzaC1yc2EAAAABJQAAAQEAgLIVhWfDJ6jA7vjw8CEKB4CLZ4OKWFOqrejmh0oXyKfJ8cF/DD2aGX9LMW72YN4IBPY5nch3N\+lDvNahEtD9/hE71TeKPyyWMFTihFmiqVo3nnvhh0Nrf6\+A1wbvXU1Yl5SQa8416OOx\+UoZ7MXVIiNXMmSwoss\+8zC\+CWSwZ\+h2uCNmqNFwecZ4uF2huuc\+eDeGY90wGPkdmaxkc8A3rgJA\+BR8TX3OjXw5nodNwAKdEKtjK30BHYmkDhQ7ZWGJnAJTWdDHUkbZGwH4QpCdgHgUmiB1Oc3XURlvWS2wkaFG8FH0WHmmMcJrhGd0NOYWSKPVj5eiax1amholbw8mhQ==\ jenkins \
--maintenance-policy=MIGRATE --provisioning-model=STANDARD \
--tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=devops-jenkins-server,image=projects/centos-cloud/global/images/centos-stream-9-v20241112,mode=rw,size=50,type=projects/<project-id>/zones/us-west4-b/diskTypes/pd-balanced \
--no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
```
