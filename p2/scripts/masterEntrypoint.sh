#!/bin/bash
echo coucou cest le master > /tmp/start.log

# Install requirements
sudo apt update && sudo apt -y install curl

# Install k3s master
echo
curl -sfL https://get.k3s.io | sudo sh -

# Assign common interfaces between with the VM and the k8s cluster
sudo cp /tmp/hostConfs/k3s.service /etc/systemd/system/k3s.service
sudo systemctl daemon-reload
sudo systemctl restart k3s

sudo k3s kubectl apply -f /tmp/hostConfs/app.dep.yaml
sudo k3s kubectl apply -f /tmp/hostConfs/app.svc.yaml
sudo k3s kubectl apply -f /tmp/hostConfs/ingress.yaml

echo "192.168.56.110 app1.com app2.com app3.com" | sudo tee -a /etc/hosts