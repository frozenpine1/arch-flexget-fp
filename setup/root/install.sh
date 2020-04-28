#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="python python-pip unrar deluge lynx links cronie mime-types wget diffutils"

# install pre-reqs
pacman -Sy --needed $pacman_packages --noconfirm
pip install --upgrade setuptools
pip install --upgrade pip
pip install service_identity
pip install flexget
pip install deluge
pip install deluge-client
pip install rarfile
pip install subliminal
pip install irc_bot

# call aor script (arch official repo)
# source /root/aur.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
