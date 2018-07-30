#!/bin/bash
#apt-get update -y
apt-get install wget sshpass  -y
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get install ansible -y
#cd /opt
#wget https://sourceforge.net/projects/sshpass/files/sshpass/1.06/sshpass-1.06.tar.gz/downloadpt-get
#tar -xvf download
#cd sshpass-1.06
#./configure
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers


# sudo make install 

#Make sure to do  below configuration

rm -rf  /home/vagrant/.ssh/id_rsa*

#=====================#
#passing ssh password via sshpass
#sshpass -p vagrant ssh-copy-id vagrant@10.0.0.11
#sshpass -p vagrant ssh-copy-id vagrant@10.0.0.12
#https://sourceforge.net/directory/?q=sshpass-1.06.tar.gz
#https://osdn.net/frs/g_redir.php?m=kent&f=sshpass%2Fsshpass%2F1.06%2Fsshpass-1.06.tar.gz -O sshpass-1.06.tar.gz