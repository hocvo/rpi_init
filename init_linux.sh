#!/bin/sh
# this script requires sudo
echo "create ssh key on github to continue"
#exit -1
#sudo su
sudo apt update
sudo apt upgrade -y
sudo apt install -y git

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage reset HEAD --
git config --global alias.logs "log --date=format:'%b-%d-%y' --pretty='%C(auto)%h%Creset %ad %C(black bold)%aN%Creset %s'"
git config --global alias.logss "log --all --graph --date=format:'%b-%d-%y' --pretty='%C(auto)%h%Creset %ad %C(black bold)%aN%Creset %C(auto)%d %s'"
git config --global alias.cp cherry-pick
git config --global user.email "chohocvo@gmail.com"
git config --global user.name "Hoc Vo"

sudo apt install -y vim
cd ~
#git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh vimrc/install_awesome_vimrc.sh
mv ~/.bashrc ~/.bashrc.old
cp bashrc ~/.bashrc
