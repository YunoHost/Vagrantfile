# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Default folder sharing
  config.vm.synced_folder ".", "/vagrant"
  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian
  
  config.vm.define "stable64", primary: true do |stable|
    stable.vm.box = "yunohost/jessie-amd64-stable"
    stable.vm.network :private_network, ip: "192.168.33.80"
  end

  config.vm.define "testing64" do |testing|
    testing.vm.box = "yunohost/jessie-amd64-testing"
    testing.vm.network :private_network, ip: "192.168.33.81"
  end

  config.vm.define "unstable64" do |unstable|
    unstable.vm.box = "yunohost/jessie-amd64-unstable"
    unstable.vm.network :private_network, ip: "192.168.33.82"
  end

  config.vm.define "stable32" do |stable|
    stable.vm.box = "yunohost/jessie-i386-stable"
    stable.vm.network :private_network, ip: "192.168.33.83"
  end

  config.vm.define "testing32" do |testing|
    testing.vm.box = "yunohost/jessie-i386-testing"
    testing.vm.network :private_network, ip: "192.168.33.84"
  end

  config.vm.define "unstable32" do |unstable|
    unstable.vm.box = "yunohost/jessie-i386-unstable"
    unstable.vm.network :private_network, ip: "192.168.33.85"
  end

end
