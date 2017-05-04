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
*For 64 bit boxes*
```bash
vagrant box add yunohost/jessie-amd64-stable https://build.yunohost.org/yunohost-jessie-amd64-stable.box
vagrant box add yunohost/jessie-amd64-testing https://build.yunohost.org/yunohost-jessie-amd64-testing.box
vagrant box add yunohost/jessie-amd64-unstable https://build.yunohost.org/yunohost-jessie-amd64-unstable.box
```
*For 32 bit boxes*
```bash
vagrant box add yunohost/jessie-i386-stable https://build.yunohost.org/yunohost-jessie-i386-stable.box
vagrant box add yunohost/jessie-i386-testing https://build.yunohost.org/yunohost-jessie-i386-testing.box
vagrant box add yunohost/jessie-i386-unstable https://build.yunohost.org/yunohost-jessie-i386-unstable.box
```

- Download the main Vagrant file
```bash
wget https://raw.githubusercontent.com/Yunohost/Vagrantfile/master/Vagrantfile
```

- Run the box you need by calling vagrant up `DISTRIB`, example:
```bash
vagrant up stable64
```

- `DISTRIB`: `stable64`, `testing64`, `unstable64`, `stable32`, `testing32` and `unstable32`.


## Associated ip

To test on your computer, add this lines to your /etc/hosts .
```
192.168.33.80 ynh-stable64.local
192.168.33.81 ynh-testing64.local
192.168.33.82 ynh-unstable64.local
192.168.33.83 ynh-stable32.local
192.168.33.84 ynh-testing32.local
192.168.33.85 ynh-unstable32.local
```

VMs have different ip to be able to run twice.
You can put your own domain name and change the ip in the vagrant file.

## Don't forget to run postinstall

After doing vagrant ssh run the postinstall by cli or into your browser

### CLI
```bash
vagrant ssh stable64
sudo yunohost tools postinstall -d ynh-stable64.local -p myAdminPassword
```

### Browser
Go to the coresponding domain in your browser and follow the instructions.

- https://ynh-stable64.local for stable64
- https://ynh-testing64.local for testing64
- https://ynh-unstable64.local for unstable64
- https://ynh-stable32.local for stable32
- https://ynh-testing32.local for testing32
- https://ynh-unstable32.local for unstable32

## How build these boxes yourself instead of using prebuild boxes ?

See README.md file in the [prebuild](prebuild/) folder.
