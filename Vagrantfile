# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Default folder sharing
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root",
  owner: "root",
  group: "sudo",
  mount_options: ["dmode=775,fmode=774"]

  # Force guest type, because YunoHost /etc/issue can't be tuned
  config.vm.guest = :debian
  
  # Base box
  config.define = "yunohost-debian10"
  config.vm.box = "debian/buster64"
  
  # Install yunohost on the base image
  # They can be re-run with `vagrant provision --provision-with ynh-core`
  config.vm.provision "ynh-core", type: "shell" do |shell|
    shell.path = "https://install.yunohost.org/buster"
    shell.sha256 = "830f59f819ba62bc342df1e30359621f64d83b0db257095f07a46d6cd57e0d78"
    shell.args = ["-a"]
  end
  
  # Run postinstall commands
  # They can be re-run with `vagrant provision --provision-with ynh-postinstall`
  config.vm.provision "ynh-postinstall", type: "shell", inline: "yunohost tools postinstall -d yunohost.local -p vagrantboxadmin"

  ### START AUTOMATIC YNH-DEV ZONE ###
  ### END AUTOMATIC YNH-DEV ###
end
