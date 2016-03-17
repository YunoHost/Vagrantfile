# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.synced_folder ".", "/vagrant"
  
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
  
  config.vm.define "stable7", primary: true do |stable7|
    stable7.vm.box = "yunohost/stable7"
    stable7.vm.network :private_network, ip: "192.168.33.70"
  end

  config.vm.define "testing7" do |testing7|
    testing7.vm.box = "yunohost/testing7"
    testing7.vm.network :private_network, ip: "192.168.33.71"
  end

  config.vm.define "unstable7" do |unstable7|
    unstable7.vm.box = "yunohost/unstable7"
    unstable7.vm.network :private_network, ip: "192.168.33.72"
  end
end
