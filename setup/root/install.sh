#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="python2 python2-pip unrar deluge lynx links"

# install pre-reqs
pacman -Sy --needed $pacman_packages --noconfirm
pip2 install --upgrade setuptools
pip2 install service_identity
pip2 install flexget
pip2 install transmissionrpc
pip2 install deluge
pip2 install rarfile
pip2 install subliminal
pip2 install irc_bot

# call aor script (arch official repo)
# source /root/aur.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
