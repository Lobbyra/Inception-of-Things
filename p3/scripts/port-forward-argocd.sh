#!/bin/bash

echo "Default username is: admin"
echo "The password is: " $(sudo kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath='{.data.password}' | base64 -d)

sudo kubectl port-forward -n argocd svc/argocd-server 8080:443