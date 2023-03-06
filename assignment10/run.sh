#!/usr/bin/env bash
echo $1 > token.file
gcloud compute instances create test-vm --project=adnan-project-374418 --machine-type=e2-medium --network-interface=network=mynew,subnet=mysubnet --zone=us-central1-a --access-token-file=token.file
