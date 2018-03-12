#!/usr/bin/with-contenv bash

if [ -n "$SERVICE_ACCOUNT_JSON_PATH" ]; then
   echo "Enabling Service account $SERVICE_ACCOUNT_JSON_PATH";

    /google-cloud-sdk/bin/gcloud auth activate-service-account --key-file $SERVICE_ACCOUNT_JSON_PATH
fi
