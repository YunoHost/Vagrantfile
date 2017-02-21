# Build your own YunoHost Vagrant box

## Get Debian base boxes

### For the 64 bit box

```bash
vagrant box add debian/contrib-jessie64
```
### For the 32 bit box

```bash
vagrant box add bento/debian-8.6-i386
```

*Note:* You can only add Jessie base box as Wheezy support is now discontinued for YunoHost

## Build YunoHost boxes

Download the vagrant file to build from debian boxes

```bash
wget https://raw.githubusercontent.com/YunoHost/Vagrantfile/master/prebuild/Vagrantfile
```

## Run your homemade boxes

Run the box you need by calling `vagrant up DEBIAN_CODENAME-ARCHITECTURE-YUNOHOST_VERSION`

```bash
vagrant up jessie-amd64-stable
```

- `DEBIAN_CODENAME`: Only `jessie` for now.
- `ARCHITECTURE`: `i386` and `amd64` (32 or 64 bits).
- `DISTRIB`: `stable`, `testing` and `unstable`.

You can now log into your box with `vagrant ssh jessie-amd64-stable`

## Package your own boxes

You can package it to use it more quickly later:

```bash
vagrant up jessie-amd64-stable
vagrant package jessie-amd64-stable  --output ./my-yunohost-stable.box
vagrant box add my-yunohost/stable ./my-yunohost-stable.box
```
