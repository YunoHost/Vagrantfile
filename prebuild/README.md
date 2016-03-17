# Build your own YunoHost Vagrant box

## Get Debian base boxes

```bash
vagrant box add debian/jessie64 https://atlas.hashicorp.com/debian/boxes/jessie64/versions/8.2.0/providers/virtualbox.box
vagrant box add debian/wheezy64 https://atlas.hashicorp.com/debian/boxes/wheezy64/versions/7.9.0/providers/virtualbox.box
```

*Note:* You can only add Jessie base box as Wheezy support is now discontinued for YunoHost

## Build YunoHost boxes

Download the vagrant file to build from debian boxes

```bash
wget https://raw.githubusercontent.com/zamentur/yunohost-vagrant/master/prebuild/Vagrantfile
```

## Run your homemade boxes

Run the box you need by calling `vagrant up DISTRIB+DEBIAN_NUMBER`

```bash
vagrant up stable8
```

- `DISTRIB`: `stable`, `testing` and `unstable`.
- `DEBIAN_NUMBER`: `8` for Jessie, `7` for Wheezy (discontinued).

You can now log into your box with `vagrant ssh stable8`

## Package your own boxes

You can package it to use it more quickly later:

```bash
vagrant package --output ./my-yunohost-stable8.box
vagrant box add my-yunohost/stable8 ./my-yunohost-stable8.box
```
