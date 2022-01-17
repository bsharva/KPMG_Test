#!/usr/nin/env bash

echo "Info: Set environment"

gcloud config set project abc-1234-prod
gcloud config set account xyz.abc@xyz.com
gcloud config set proxy/port 1123
gcloud config set proxy/address googleapis-dev.xyz

echo "Info: Retrieving the meta data from the gcp instance in jason format"

curl -s -H 'Metadata-Flavor: Google' http://metadata.google.internal/computeMetadata/v1/instance/disks/1/mode?alt=json
curl -s -H 'Metadata-Flavor: Google' http:/metadata.google.internal/computeMetadata/v1/instance/attributes/env?alt=json


