# YunoHost Vagrantfile

Vagrantfile to use YunoHost boxes for Jessie/Wheezy, using the
stable/testing/unstable releases.

## Prerequisite

Install Vagrant and Virtualbox provider

```bash
apt-get install vagrant virtualbox
```

## How use these yunohost boxes ?

- Install Vagrant and the configure_networks plugin
```bash
vagrant plugin install configure_networks
```

- Add prebuild YunoHost boxes in vagrant
```bash
vagrant box add yunohost/jessie-unstable https://build.yunohost.org/yunohost-unstable.box
vagrant box add yunohost/stretch-unstable https://build.yunohost.org/yunohost-stretch-unstable.box
```

- Download the main Vagrant file
```bash
wget https://raw.githubusercontent.com/Yunohost/yunohost-vagrant/master/Vagrantfile
```

- Run the box you need by calling vagrant up `DISTRIB`, example:
```bash
vagrant up unstable
```

- `DISTRIB`: `unstable` and `stretch-unstable`.


## Associated ip

To test on your computer, add this lines to your /etc/hosts .
```
192.168.33.82 ynh.local
192.168.33.82 ynh-stretch.local
```

VMs have different ip to be able to run twice.
You can put your own domain name and change the ip in the vagrant file.

## Don't forget to run postinstall

After doing vagrant ssh run the postinstall by cli or into your browser

### CLI
```bash
vagrant ssh stable
sudo yunohost tools postinstall -d ynh.local -p myAdminPassword
```

### Browser
Go to the coresponding domain in your browser and follow the instructions.

- https://ynh.local for stretch
- https://ynh-stretch.local for unstable

## How build these boxes yourself instead of using prebuild boxes ?

See README.md file in the [prebuild](prebuild/) folder.
