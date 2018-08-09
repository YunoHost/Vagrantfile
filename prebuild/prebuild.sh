#!/bin/bash

DEBIAN_VERSION="stretch"
YNH_VERSION="unstable"
PROVIDER="virtualbox"

# Compute box name
BOX="$DEBIAN_VERSION-$YNH_VERSION"

# Create box
vagrant up $BOX --provider $PROVIDER

# Package box
vagrant package $BOX  --output /tmp/yunohost-$BOX-$PROVIDER.box --provider $PROVIDER

# Add box
vagrant box add "yunohost/$BOX" /tmp/yunohost-$BOX-$PROVIDER.box --provider $PROVIDER

# Destroy current box
vagrant destroy $BOX

# User message, and exit
echo ""
echo "Your Vagrant box was packaged to /tmp/yunohost-$BOX-$PROVIDER.box"
exit
