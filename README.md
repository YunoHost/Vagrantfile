# yunohost-vagrant
Vagrantfile to create yunohost box jessie/wheezy and stable/testing/unstable.

You can build the image or use directly box in prebuild directory.

## Build boxes from debian boxes
1. Install vagrant and the configure_networks plugin
```bash
vagrant plugin install configure_networks```

2. Add debian boxes in vagrant
```bash
vagrant box add debian/jessie64 https://atlas.hashicorp.com/debian/boxes/jessie64/versions/8.2.0/providers/virtualbox.box
vagrant box add debian/wheezy64 https://atlas.hashicorp.com/debian/boxes/wheezy64/versions/7.9.0/providers/virtualbox.box```

3. Download the vagrant file to build from debian boxes
```bash
wget https://raw.githubusercontent.com/zamentur/yunohost-vagrant/master/Vagrantfile
```

4. Run the box you need by calling vagrant up DISTRIB+DEBIAN_NUMBER
```bash
vagrant up stable8
```

DISTRIB = stable | testing | unstable
DEBIAN_NUMBER = 7 | 8

5a. You can use it by calling
```bash
vagrant ssh stable8
```

5b. OR you can package it to use it more quickly in future:
```bash
vagrant package --output ./prebuild/yunohost-stable8.box
vagrant add yunohost/stable8 ./prebuild/yunohost-stable8.box
```


## Use prebuild boxes
1. Install vagrant and the configure_networks plugin
```bash
vagrant plugin install configure_networks```

2. Add prebuild yunohost boxes in vagrant
```bash
vagrant box add yunohost/stable8 https://atlas.hashicorp.com/yunohost/boxes/stable8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/testing8 https://atlas.hashicorp.com/yunohost/boxes/testing8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/unstable8 https://atlas.hashicorp.com/yunohost/boxes/unstable8/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/stable7 https://atlas.hashicorp.com/yunohost/boxes/stable7/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/testing7 https://atlas.hashicorp.com/yunohost/boxes/testing7/versions/1.0.0/providers/virtualbox.box
vagrant box add yunohost/unstable7 https://atlas.hashicorp.com/yunohost/boxes/unstable7/versions/1.0.0/providers/virtualbox.box```

3. Download the vagrant file located in prebuild directory
```bash
wget https://raw.githubusercontent.com/zamentur/yunohost-vagrant/master/prebuild/Vagrantfile```

4. Run the box you need by calling vagrant up DISTRIB+DEBIAN_NUMBER
```bash
vagrant up stable8
```

DISTRIB = stable | testing | unstable
DEBIAN_NUMBER = 7 | 8

5. You can use it by calling
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

To test on your computer, add this lines to your /etc/hosts .
```
192.168.33.80 yuno-s8.local
192.168.33.81 yuno-t8.local
192.168.33.82 yuno-u8.local
192.168.33.70 yuno-s7.local
192.168.33.71 yuno-t7.local
192.168.33.72 yuno-u7.local
```

Next run the postinstall by cli or into your browser

### CLI
```bash
vagrant ssh stable8
sudo yunohost tools postinstall

```

### Browser
Call the good domain in your browser : https://yuno-XY.local and follow the instructions.