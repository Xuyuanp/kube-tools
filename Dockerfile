FROM alpine:3.7

RUN apk add -U --no-cache make git curl

RUN curl -sSL https://storage.googleapis.com/kubernetes-release/release/v1.9.3/bin/linux/amd64/kubectl > /bin/kubectl && \
        chmod +x /bin/kubectl && \
        curl -sSL https://storage.googleapis.com/kubernetes-helm/helm-v2.10.0-linux-amd64.tar.gz > helm.tar.gz && \
        tar xf helm.tar.gz && \
        mv linux-amd64/helm /bin && \
        chmod +x /bin/helm && \
        rm -rf helm.tar.gz linux-amd64
