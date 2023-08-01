#!/bin/bash

cat << EOF


            _       _              _     
           (_)     (_)            | |    
  _ __ ___  _ _ __  ___      _____| |__  
 | '_ \` _ \| | '_ \| \ \ /\ / / _ \ '_ \ 
 | | | | | | | | | | |\ V  V /  __/ |_) |
 |_| |_| |_|_|_| |_|_| \_/\_/ \___|_.__/ 
                                         
                                         

EOF

echo "Let's first install the requirements"
sleep 3
sudo bash scripts/install-requirements.sh

echo "Now we'll install argoCD"
sleep 3
sudo bash scripts/install-argocd.sh

echo
echo "Wait until all pods are in a RUNNING state. (The last is argocd-server)"
echo "When they are ready, leave this script and run the start.sh one"
sleep 5
echo

sudo kubectl get pods -n argocd -w
