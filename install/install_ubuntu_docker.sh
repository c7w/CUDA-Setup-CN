#!/bin/bash
set -x 
set -e

apt-get -o Acquire::http::proxy="$HTTP_PROXY" update

apt-get -o Acquire::http::proxy="$HTTP_PROXY" -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get -o Acquire::http::proxy="$HTTP_PROXY" update
apt-get -o Acquire::http::proxy="$HTTP_PROXY" install -y docker-ce docker-ce-cli containerd.io
