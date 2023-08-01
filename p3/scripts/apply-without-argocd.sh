#!/bin/bash

sudo kubectl create namespace dev
sudo kubectl apply -n dev -f https://raw.githubusercontent.com/lobbyra/iot-p3-jecaudal/main/p3.yaml