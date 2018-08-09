# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

NETWORK = "192.168.33."


HOSTS = {
   "unstable" => ["82", "jessie-unstable"],
   "stretch-unstable" => ["83", "stretch-unstable"],
   "buster-unstable" => ["84", "buster-unstable"],
   ### START AUTOMATIC YNH-DEV ZONE ###
   ### END AUTOMATIC YNH-DEV ZONE ###
}



Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian
  
  HOSTS.each do | (name, cfg) |
    ipaddr, version = cfg
    
    config.vm.define name do |machine|
      machine.vm.box = "yunohost/" + version
      # Force guest type, because YunoHost /etc/issue can't be tuned
      machine.vm.guest = :debian

      machine.vm.provider "virtualbox" do |vbox|
        vbox.vm.box_url = "https://build.yunohost.org/yunohost-" + version + ".box" 
        vbox.vm.synced_folder ".", "/vagrant", id: "vagrant-root",
        owner: "root",
        group: "sudo",
        mount_options: ["dmode=775,fmode=774"]
        vbox.vm.network 'private_network', ip: NETWORK + ipaddr
        vbox.name = name
      end

      machine.vm.provider "lxc" do |lxc|
        config.vm.box_url = "https://build.yunohost.org/yunohost-" + version + "-lxc.box" 
        config.vm.synced_folder ".", "/vagrant", id: "vagrant-root"
        config.vm.network :private_network, ip: NETWORK + ipaddr, lxc__bridge_name: 'lxcbr0' 
      end
    end
  
  
  end # HOSTS-each

end
