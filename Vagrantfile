# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Default folder sharing
  config.vm.synced_folder ".", "/vagrant"
  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian
  
  config.vm.define "stable8", primary: true do |stable8|
    stable8.vm.box = "yunohost/stable8"
    stable8.vm.network :private_network, ip: "192.168.33.80"
  end

  config.vm.define "testing8" do |testing8|
    testing8.vm.box = "yunohost/testing8"
    testing8.vm.network :private_network, ip: "192.168.33.81"
  end

  config.vm.define "unstable8" do |unstable8|
    unstable8.vm.box = "yunohost/unstable8"
    unstable8.vm.network :private_network, ip: "192.168.33.82"
  end

end
