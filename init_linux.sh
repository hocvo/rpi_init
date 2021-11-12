#!/bin/sh
# this script requires sudo
echo "create ssh key on github to continue"
#exit -1
sudo su
apt update
apt upgrade -y
apt install -y git
apt install -y vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone git@github.com:hocvo/rpi_init.git
cp -r ./rpi_init ~/.

