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
vagrant box add yunohost/stable8 https://atlas.hashicorp.com/yunohost/boxes/stable8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/testing8 https://atlas.hashicorp.com/yunohost/boxes/testing8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/unstable8 https://atlas.hashicorp.com/yunohost/boxes/unstable8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/stable7 https://atlas.hashicorp.com/yunohost/boxes/stable7/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/testing7 https://atlas.hashicorp.com/yunohost/boxes/testing7/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/unstable7 https://atlas.hashicorp.com/yunohost/boxes/unstable7/versions/1.0.0/providers/virtualbox.box
```

*Note:* Debian Wheezy (7) support is now discontinued for next stable releases.

- Download the main Vagrant file
```bash
wget https://raw.githubusercontent.com/zamentur/yunohost-vagrant/master/Vagrantfile
```

- Run the box you need by calling vagrant up `DISTRIB+DEBIAN_NUMBER`
```bash
vagrant up stable8
```

- `DISTRIB`: `stable`, `testing` and `unstable`.
- `DEBIAN_NUMBER`: `8` for Jessie, `7` for Wheezy (discontinued).

- You can use it by calling
```bash
vagrant ssh stable8
```

## Associated ip

To test on your computer, add this lines to your /etc/hosts .
```
192.168.33.80 yuno-s8.local
192.168.33.81 yuno-t8.local
192.168.33.82 yuno-u8.local
192.168.33.70 yuno-s7.local
192.168.33.71 yuno-t7.local
192.168.33.72 yuno-u7.local
```

VMs have different ip to be able to run twice.
You can put your own domain name and change the ip in the vagrant file.

## Don't forget to run postinstall

After doing vagrant ssh run the postinstall by cli or into your browser

### CLI
```bash
vagrant ssh stable8
sudo yunohost tools postinstall
Main domain: yuno-s8.local
New administration password: 
Confirm new administration password:
```

### Browser
Go to the coresponding domain in your browser and follow the instructions.

- https://yuno-s8.local for stable8
- https://yuno-t8.local for testing8
- https://yuno-u8.local for unstable8
- https://yuno-s7.local for stable7
- https://yuno-t7.local for testing7
- https://yuno-u7.local for unstable7

## How build these boxes yourself instead of using prebuild boxes ?

See README.md file in the [prebuild](prebuild/) folder.