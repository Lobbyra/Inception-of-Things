#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt install git vim make tree btop gcc perl curl wget

sudo bash ./scripts/install-vbox.sh
sudo bash ./scripts/install-vagrant.sh