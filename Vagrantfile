# -*- mode: ruby -*-
# vi: set ft=ruby :
BOX_IMAGE = "ubuntu/trusty64"
NODE_COUNT = 2

Vagrant.configure("2") do |config|

  (1..NODE_COUNT).each do |i|
    config.vm.define "ansible-node#{i}" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "node#{i}"
      subconfig.vm.network :private_network, ip: "10.0.0.#{i + 10}"
      subconfig.vm.provision "shell" do |shell|
        #shell.privileged = false
        shell.path = 'D:\Vagrant\Test\client-sudoer.sh'
      end
    end
  end
  config.vm.define "ansible-control" do |control|
    control.vm.box = "bento/ubuntu-16.04"
    control.vm.network "private_network", ip: "10.0.0.10"
    control.vm.hostname = "ansible-control"
    control.vm.synced_folder ".", "/vagrant", type: "nfs"
    control.vm.provision "shell", path: 'D:\Vagrant\Test\ansible-setup.sh'
    control.vm.provision "shell" do |shell|
      shell.privileged = false
      shell.path = 'D:\Vagrant\Test\update-sudoer.sh'
    end
  end
  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "public_network"
end
