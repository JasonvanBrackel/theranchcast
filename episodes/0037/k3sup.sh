#!/bin/sh

# Install Docker
curl -s https://releases.rancher.com/install-docker/19.03.sh | bash -s
sudo usermod -aG docker root

# Install kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin/

# Install k3sup
curl -sLS https://get.k3sup.dev | sh