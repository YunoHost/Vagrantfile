#!/bin/bash

DEBIAN_VERSION="jessie"
YNH_VERSION=$1
ARCH=${2:-"amd64"}
OUTDIR=${3:-/tmp}
case $YNH_VERSION in
    stable|testing|unstable) echo "Building YunoHost $YNH_VERSION box.";;
    --help|-h) echo "./prebuid.sh <ynh-version> [arch] [outdir]. ynh-version could be stable, testing or unstable. arch could be i386 or amd64 (amd64 by default). outdir is /tmp by default.";exit 0;;
    *)             echo "Unknown YunoHost version: $YNH_VERSION";exit 1;;
esac

case $ARCH in
    i386) echo "Building a 32 bit box.";;
    amd64) echo "Building a 64 bit box.";;
    *) echo "Unknow architecture $ARCH. Exiting...";exit 1;;
esac

# Compute box name
BOX="$DEBIAN_VERSION-$ARCH-$YNH_VERSION"

# Create box
vagrant up $BOX

# Package box
vagrant package $BOX  --output $OUTDIR/yunohost-$BOX.box

# Add box
vagrant box add "yunohost/$BOX" $OUTDIR/yunohost-$BOX.box

# Destroy current box
vagrant destroy $BOX

# User message, and exit
echo ""
echo "Your Vagrant box was packaged to $OUTDIR/yunohost-$BOX.box"
exit
