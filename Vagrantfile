# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.network :forwarded_port, guest: 7474, host: 7474
  config.vm.network :forwarded_port, guest: 7484, host: 7484
  config.vm.provision :shell, :inline => "apt-get update --fix-missing"
  config.vm.provision :shell, :inline => "sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring"
  config.vm.provision :docker do |docker|
  end
end
