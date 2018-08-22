#!/bin/bash

ssh-keygen -t rsa -b 4096 -f /home/vagrant/.ssh/id_rsa -N ""
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.11 
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.12
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.13


#mkdir -p /home/vagrant/ansible-setup/
#chown -R vagrant:vagrant /home/vagrant/ansible-setup/
#-o StrictHostKeyChecking=noex
