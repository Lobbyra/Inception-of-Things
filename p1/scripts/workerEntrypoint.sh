#!/bin/bash
echo coucou cest le worker > /tmp/start.log

# Install requirements
sudo apt update && sudo apt -y install curl

# Install k3s master
echo
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN=$(cat /tmp/hostConfs/node-token) sh -

# Assign common interfaces between with the VM and the k8s cluster
sudo cp /tmp/hostConfs/k3s-agent.service /etc/systemd/system/k3s-agent.service
sudo systemctl daemon-reload
sudo systemctl restart k3s-agent

sudo rm /tmp/hostConfs/node-token
