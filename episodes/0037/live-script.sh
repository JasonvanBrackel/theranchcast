#!/bin/sh

# Live Coding - The RanchCast 18 Aug 2020

# Get K3s
curl -JLO 'https://github.com/rancher/k3s/releases/download/v1.18.8%2Bk3s1/k3s'

# Make K3s excutable
chmod +x ./k3s

# Move that over to /usr/bin/k3s
sudo mv ./k3s /usr/bin/k3s

# Start a K3s Server
sudo k3s server &

# Move K3s config to .kube
cp /etc/rancher/k3s/k3s.yaml ~/.kube/k3s.conf

# Set our Kubeconfig variable
export KUBECONFIG="$HOME/.kube/k3s.conf"

# Make k3s.yaml readable
sudo chmod +r $KUBECONFIG
