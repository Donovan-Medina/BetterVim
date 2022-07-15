#!/bin/bash

# Installing dependencies
sudo apt install cmake vim-gtk3

# Cloning repos
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/zivyangll/git-blame.vim.git ~/.vim/bundle/

# compiling YouCompleteMe
python3 .~/.vim/bundle/YouCompleteMe/install.py --all

# Installing Plugins in vim
mv ~/.vimrc ~/.vimrc_backup
cp ~/BetterVim/.vimrc ~/.vimrc

vim -N -u NONE -c ":PluginInstall" -c ":q" ~/.vimrc

