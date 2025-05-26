#!/usr/bin/env bash
set -euo pipefail

## RPMfusion aktivieren
echo "***** Installiere RPMfusion *****"
dnf5 install --assumeyes https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf5 install --assumeyes https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

## Treiber installieren
echo "***** Installiere Treiber *****"
dnf5 install -y akmod-nvidia
dnf5 install -y xorg-x11-drv-nvidia

## Noveau blacklisten. 
rpm-ostree kargs --append=rd.driver.blacklist=nouveau --append=modprobe.blacklist=nouveau --append=nvidia-drm.modeset=1

