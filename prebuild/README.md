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

1. `git clone https://github.com/vagrant-libvirt/vagrant-libvirt.git`
1. `cd vagrant-libvirt`
1. `VAGRANT_VERSION=v2.2.6 rake build`
1. `vagrant plugin install pkg/vagrant-libvirt-0.0.45.gem`

Then

1. `vagrant up stretch`
1. `VAGRANT_LIBVIRT_VIRT_SYSPREP_OPERATIONS="defaults,-ssh-userdir,-ssh-hostkeys,-lvm-uuids" vagrant package stretch --output ./yunohost-unstable-stretch.box`
1. `vagrant box remove yunohost/unstable`
1. Be sure to remove a old one if you have `sudo virsh vol-delete yunohost-VAGRANTSLASH-unstable_vagrant_box_image_0.img --pool default`
1. `vagrant box add ./yunohost-unstable-stretch.box --name yunohost/unstable`

