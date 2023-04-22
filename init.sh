#!/bin/bash
cd
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=37
sudo dnf install -y neovim python3-neovim
sudo dnf install git-all
cd
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir /.config /.config/nvim
cd /.config /.config/nvim
mkdir /lua /lua/magenz /after after/plugin
cd
sudo dnf system-upgrade reboot