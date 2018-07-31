Ansible set-up using Vagrant
This repo contains:
    - Vagrantfile to create:
        - Ansible-controller box
        - Two Ansible managed nodes
    - Shell scripts to:
        - Install ansible on Ansible-controller box
        - Add "vagrant" as user to Nodes.
        - Add key for SSH to nodes.
Thus, running "vagrant up" should do the following job of automation:
    - Create 3 vagrant boxes.
    - Update all boxes.
    - Install required packages and Ansible on one of the box.
    - Create a RSA key and copy rsa.pub to managed nodes.
    - Thereby, automating task for setting up Ansible environment.