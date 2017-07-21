# Build your own YunoHost Vagrant box

## Get Debian base boxes

```bash
vagrant box add debian/contrib-jessie64
```

*Note:* You can only add Jessie base box as Wheezy support is now discontinued for YunoHost

## Build YunoHost boxes

Download the vagrant file to build from debian boxes

```bash
wget https://raw.githubusercontent.com/YunoHost/Vagrantfile/master/prebuild/Vagrantfile
```

## Run your homemade boxes

Run the box you need by calling `vagrant up DEBIAN_CODENAME-YUNOHOST_VERSION`

```bash
vagrant up jessie-stable
```

- `DEBIAN_CODENAME`: Only `jessie` for now.
- `DISTRIB`: `stable`, `testing` and `unstable`.

You can now log into your box with `vagrant ssh jessie-stable`

## Package your own boxes

You can package it to use it more quickly later:

```bash
vagrant up jessie-stable
vagrant package jessie-stable  --output ./my-yunohost-stable.box
vagrant box add my-yunohost/stable ./my-yunohost-stable.box
```
