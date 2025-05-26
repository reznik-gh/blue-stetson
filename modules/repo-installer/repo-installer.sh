#!/usr/bin/env bash
set -euo pipefail

# Das hier ist mehr oder weniger eine Testplatz für
# die verschiedenen Wege Repos zu installieren.

# rpmfusion free only
# echo "***** Installiere RPMfusion *****"
# dnf5 install --assumeyes https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Ghostty
echo "***** Aktiviere das Ghostty COPR *****"
dnf5 --assumeyes copr enable pgdev/ghostty

# Proton VPN Repo
# dnf5 install --assumeyes https://repo.protonvpn.com/fedora-41-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.2-1.noarch.rpm
