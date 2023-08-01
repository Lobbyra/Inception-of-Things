#!/bin/bash

echo "Deploying the argoCD app..."
sleep 3
sudo kubectl apply -n argocd -f confs/miniweb.argocd.yaml

echo
echo
echo "Now all is installed, you can access to the argoCD panel with this command: sudo bash scripts/port-forward-argocd.sh &"
echo
echo
echo "And access to miniweb with this command: sudo bash scripts/port-forward-miniweb.sh &"
echo
echo
echo "WARNING: if you update the remote version, the port-forwarding will be broken."
