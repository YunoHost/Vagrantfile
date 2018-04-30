#!/bin/bash

DEBIAN_VERSION="stretch"
YNH_VERSION="unstable"

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
