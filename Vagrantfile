# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Default folder sharing
  config.vm.synced_folder ".", "/vagrant"
  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian
  
  config.vm.define "stable", primary: true do |stable|
    stable.vm.box = "yunohost/yunohost-jessie-stable"
    stable.vm.network :private_network, ip: "192.168.33.80"
  end

  config.vm.define "testing" do |testing|
    testing.vm.box = "yunohost/yunohost-jessie-testing"
    testing.vm.network :private_network, ip: "192.168.33.81"
  end

  config.vm.define "unstable" do |unstable|
    unstable.vm.box = "yunohost/yunohost-jessie-unstable"
    unstable.vm.network :private_network, ip: "192.168.33.82"
  end

end
