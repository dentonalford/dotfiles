#!/usr/bin/bash

echo "Updating ubuntu dependencies"
sudo apt-get update
sudo apt-get upgrade

echo "Installing zsh"
sudo apt install zsh

echo "Setting zsh as default shell"
chsh -s $(which zsh)

echo "Cloning Dracula ZSH Repo"
cd ~/Code
mkdir dracula
cd dracula
git clone https://github.com/dracula/zsh.git
cd

echo "Installing neovim"
sudo apt-get install neovim

echo "Installing tmux"
sudo apt-get install tmux
