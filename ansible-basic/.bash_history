cd /home/vagrant/ansible.cfg
cd /home/vagrant/
ssh 10.0.0.11
ssh-copy-id 10.0.0.11
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.11
ssh-keygen -t rsa
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.11
ssh 10.0.0.11
chmod 600 /home/vagrant/.ssh/id_rsa*
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.11
ssh 10.0.0.11
sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no vagrant@10.0.0.12
ssh 10.0.0.12
cd /home/vagrant/
ansible test -i hosts -m ping --ask-pass
ansible test -i hosts -m ping 
ssh 10.0.0.11
cd /home/vagrant/.ssh/
ls -slrt
chmod 600 id_rsa*
ls -slrt
sudo chmod u-rx id_rsa*
ls -slrt
sudo -i
ssh-keygen
ls -slrt
chmod 600 id_rsa
ls -slrt
exit
