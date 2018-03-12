# docker-gsutil


Alpine Docker image with gcloud/gsutil installed. 

Use the `ENV` variable `SERVICE_ACCOUNT_JSON_PATH` to set the current service account to use, or manually via

`gcloud auth activate-service-account --key-file /var/run/secret/cloud.google.com/service-account.json`