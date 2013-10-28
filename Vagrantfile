# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.hostmanager.enabled = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.hostmanager.manage_host = true

  config.vm.provision :hostmanager


  config.vm.define "db" do |node|

    node.vm.network :private_network, ip: "192.168.33.2"
    node.vm.hostname = "db"

    config.vm.provider "virtualbox" do |v|
      #v.gui = true
      v.name = node.vm.hostname
    end

    aliases = %w(db.petshop.example.com db.dev.petshop.example.com db.staging.petshop.example.com)
    node.hostmanager.aliases = aliases

  end


  config.vm.define "www" do |node|

    node.vm.network :private_network, ip: "192.168.33.3"
    node.vm.hostname = "www"

    config.vm.provider "virtualbox" do |v|
      #v.gui = true
      v.name = node.vm.hostname
    end

    aliases = %w(www.petshop.example.com www.dev.petshop.example.com www.staging.petshop.example.com)
    node.hostmanager.aliases = aliases

  end


end
