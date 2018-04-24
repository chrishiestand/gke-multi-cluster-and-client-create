#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

apt-get update

apt-get install -yy \
    ca-certificates \
    curl \
    git \
    jq


curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod a+x /usr/local/bin/kubectl
