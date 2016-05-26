# Build your own YunoHost Vagrant box

## Get Debian base boxes

```bash
vagrant box add debian/jessie64 https://atlas.hashicorp.com/debian/boxes/jessie64/versions/8.4.0/providers/virtualbox.box
```

*Note:* You can only add Jessie base box as Wheezy support is now discontinued for YunoHost

## Build YunoHost boxes

Download the vagrant file to build from debian boxes

```bash
wget https://raw.githubusercontent.com/Yunohost/yunohost-vagrant/master/prebuild/Vagrantfile
```

## Run your homemade boxes

Run the box you need by calling `vagrant up DEBIAN_CODENAME-YUNOHOST_VERSION`

```bash
vagrant up jessie-stable
```

- `DEBIAN_CODENAME`: Only `jessie` for now.
- `DISTRIB`: `stable`, `testing` and `unstable`.

You can now log into your box with `vagrant ssh jessie-stable`

## Package your own boxes

You can package it to use it more quickly later:

```bash
vagrant package --output ./my-yunohost-stable8.box
vagrant box add my-yunohost/stable8 ./my-yunohost-stable8.box
```
