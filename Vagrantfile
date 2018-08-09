# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian

  
  config.vm.provider "virtualbox" do |vb|
    # Default folder sharing
    vb.vm.synced_folder ".", "/vagrant", id: "vagrant-root",
    owner: "root",
    group: "sudo",
    mount_options: ["dmode=775,fmode=774"]
  
    vb.vm.define "unstable" do |unstable|
      unstable.vm.box = "yunohost/jessie-unstable"
      unstable.vm.box_url = "https://build.yunohost.org/yunohost-unstable.box"
      unstable.vm.network :private_network, ip: "192.168.33.82"
    end

    vb.vm.define "stretch-unstable" do |stretch_unstable|
      stretch_unstable.vm.box = "yunohost/stretch-unstable"
      stretch_unstable.vm.box_url = "https://build.yunohost.org/yunohost-stretch-unstable.box"
      stretch_unstable.vm.network :private_network, ip: "192.168.33.83"
    end
    
    vb.vm.define "buster-unstable" do |buster_unstable|
      buster_unstable.vm.box = "yunohost/buster-unstable"
      buster_unstable.vm.box_url = "https://build.yunohost.org/yunohost-buster-unstable.box"
      buster_unstable.vm.network :private_network, ip: "192.168.33.84"
    end

    ### START AUTOMATIC YNH-DEV VIRTUALBOX ZONE ###
    ### END AUTOMATIC YNH-DEV ###

  end
  
  config.vm.provider "lxc" do |lxc|
    # Default folder sharing
    lxc.vm.synced_folder ".", "/vagrant", id: "vagrant-root"
  
    lxc.vm.define "unstable" do |unstable|
      unstable.vm.box = "yunohost/jessie-unstable"
      unstable.vm.box_url = "https://build.yunohost.org/yunohost-jessie-unstable-lxc.box"
      unstable.vm.network :private_network, ip: "192.168.33.82", lxc__bridge_name: 'lxcbr0'
    end

    lxc.vm.define "stretch-unstable" do |stretch_unstable|
      stretch_unstable.vm.box = "yunohost/stretch-unstable"
      stretch_unstable.vm.box_url = "https://build.yunohost.org/yunohost-stretch-unstable-lxc.box"
      stretch_unstable.vm.network :private_network, ip: "192.168.33.83", lxc__bridge_name: 'lxcbr0'
    end
    
    lxc.vm.define "buster-unstable" do |buster_unstable|
      buster_unstable.vm.box = "yunohost/buster-unstable"
      buster_unstable.vm.box_url = "https://build.yunohost.org/yunohost-buster-unstable-lxc.box"
      buster_unstable.vm.network :private_network, ip: "192.168.33.84", lxc__bridge_name: 'lxcbr0'
    end
 
    ### START AUTOMATIC YNH-DEV LXC ZONE ###
    ### END AUTOMATIC YNH-DEV ###
  
  end



end
