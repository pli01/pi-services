#!/bin/bash

apt-get install openssh-client -y
apt-get install openssh-server -y

useradd deploy-user -m
sudo -u deploy-user bash -c "mkdir -p /home/deploy-user/.ssh"
sudo -u deploy-user bash -c "ssh-keygen -t rsa -N '' -f /home/deploy-user/.ssh/id_rsa"
echo -e "password\npassword" | passwd root
echo -e "password\npassword" | passwd deploy-user
