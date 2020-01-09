# Build your own YunoHost Vagrant box

## Build YunoHost boxes

Download the vagrant file to build from debian boxes

```bash
wget https://raw.githubusercontent.com/YunoHost/Vagrantfile/master/prebuild/Vagrantfile
```

## Run your homemade boxes

Run the box you need by calling `vagrant up DEBIAN_CODENAME`

```bash
YUNOHOST_VERSION=unstable vagrant up stretch
```

- `DEBIAN_CODENAME`: `stretch` or `jessie` for now.
- `YUNOHOST_VERSION`: `stable`, `testing` and `unstable`.

You can now log into your box with `vagrant ssh stretch`

## Package your own boxes

You can package it to use it more quickly later:

```bash
vagrant up stretch
vagrant package stretch --output ./yunohost-unstable-stretch.box
vagrant box add yunohost/unstable ./yunohost-unstable-stretch.box
```


### For libvirt provider

* You need to use vagrant-libvirt master (build from source)

`VAGRANT_LIBVIRT_VIRT_SYSPREP_OPERATIONS="defaults,-ssh-userdir,-ssh-hostkeys,-lvm-uuids" vagrant package stretch --output ./yunohost-unstable-stretch.box`
