#!/bin/bash

DEBIAN_VERSION="jessie"
YNH_VERSION=$1
case $YNH_VERSION in
    stable|testing|unstable) echo "Building YunoHost $YNH_VERSION box.";;
    --help|-h) echo "./prebuid.sh <ynh-version>. ynh-version could be stable, testing or unstable.";exit 0;;
    *)             echo "Unknown YunoHost version: $YNH_VERSION";exit 1;;
esac

# Compute box name
BOX="$DEBIAN_VERSION-$YNH_VERSION"

# Create box
vagrant up $BOX

# Package box
vagrant package $BOX  --output /tmp/yunohost-$BOX.box

# Add box
vagrant box add "yunohost/$BOX" /tmp/yunohost-$BOX.box

# Destroy current box
vagrant destroy $BOX

# User message, and exit
echo ""
echo "Your Vagrant box was packaged to /tmp/yunohost-$BOX.box"
exit