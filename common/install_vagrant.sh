#!/bin/bash

curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
sudo apt update
sudo apt install ./vagrant_2.2.6_x86_64.deb
vagrant --version
