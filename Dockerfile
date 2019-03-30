FROM lucacri/alpine-base:latest

LABEL maintainer="lucacri@gmail.com"

ARG GCLOUD_VERSION=240.0.0

RUN apk upgrade --update-cache && \
    apk add --update \
    curl \
    bash \
    python \
    py-pip \
    py-cffi \
    py-cryptography \
    && pip install --upgrade pip \
    && apk add --virtual build-deps \
    gcc \
    libffi-dev \
    python-dev \
    linux-headers \
    musl-dev \
    openssl-dev \
    && apk del build-deps \
    && rm -rf /var/cache/apk/* \
    && curl -o google-cloud.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-$GCLOUD_VERSION-linux-x86_64.tar.gz \
    && tar xvfz google-cloud.tar.gz \
    && rm google-cloud.tar.gz \ 
    && google-cloud-sdk/install.sh --quiet

COPY rootfs/ /

ENV SERVICE_ACCOUNT_JSON_PATH=''