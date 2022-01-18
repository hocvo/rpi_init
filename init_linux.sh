#!/bin/bash
# this script requires sudo
sudo apt update

if [[ $? -ne 0 ]]; then
  exit 100
fi
sudo apt upgrade -y
sudo apt install -y git
sudo apt install -y vim

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage "reset HEAD --"
git config --global alias.logs "log --date=format:'%b-%d-%y' --pretty='%C(auto)%h%Creset %ad %C(black bold)%aN%Creset %s'"
git config --global alias.logss "log --all --graph --date=format:'%b-%d-%y' --pretty='%C(auto)%h%Creset %ad %C(black bold)%aN%Creset %C(auto)%d %s'"
git config --global alias.cp cherry-pick
git config --global user.email "chohocvo@gmail.com"
git config --global user.name "Hoc Vo"
git config --global core.editor vim

#git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
mv ~/.bashrc ~/.bashrc.old
cp bashrc ~/.bashrc
source ~/.bashrc

mkdir ~/.vim_runtime
cp -r vim/* ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
