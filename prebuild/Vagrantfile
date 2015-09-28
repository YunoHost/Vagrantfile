# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
echo -e "yunohost\nyunohost" | sudo passwd root
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y install git
sudo git clone https://github.com/zamentur/install_script.git /tmp/install_script
cd /tmp/install_script/
sudo git checkout patch-1
sudo hostname yunohost.yunohost.org
sudo bash -c 'echo yunohost.yunohost.org > /etc/hostname'
sudo bash -c 'echo 127.0.1.1 yunohost.yunohost.org yunohost >> /etc/hosts'
sudo /tmp/install_script/install_yunohostv2 -a -d $1
sudo apt-get clean -y
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.synced_folder "./", "/vagrant"
  
  config.vm.define "stable8", primary: true do |stable8|
    stable8.vm.box = "debian/jessie64"
    stable8.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'stable'"
    end
    stable8.vm.network :private_network, ip: "192.168.33.80"
  end

  config.vm.define "testing8" do |testing8|
    testing8.vm.box = "debian/jessie64"
    testing8.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'testing'"
    end
    testing8.vm.network :private_network, ip: "192.168.33.81"
  end

  config.vm.define "unstable8" do |unstable8|
    unstable8.vm.box = "debian/jessie64"
    unstable8.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'unstable'"
    end
    unstable8.vm.network :private_network, ip: "192.168.33.82"
  end
  
  config.vm.define "stable7", primary: true do |stable7|
    stable7.vm.box = "debian/wheezy64"
    stable7.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'stable'"
    end
    stable7.vm.network :private_network, ip: "192.168.33.70"
  end

  config.vm.define "testing7" do |testing7|
    testing7.vm.box = "debian/wheezy64"
    testing7.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'testing'"
    end
    testing7.vm.network :private_network, ip: "192.168.33.71"
  end

  config.vm.define "unstable7" do |unstable7|
    unstable7.vm.box = "debian/wheezy64"
    unstable7.vm.provision "shell" do |s|
      s.inline = $script
      s.args   = "'unstable'"
    end
    unstable7.vm.network :private_network, ip: "192.168.33.72"
  end
end
