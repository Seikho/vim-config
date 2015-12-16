#!/bin/bash

# Install tools for YouCompleteMe
sudo apt-get install build-essential python-dev cmake -y

# Create vim bundle folder and parent directories
mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

# Clone, build and install YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py)

# Create a symbolic link of .vimrc in home directory
ln -s $PWD/.vimrc ~/.vimrc

# Install Vundle plugins
vim +PluginInstall

# Install Vimproc
(cd ~/.vim/bundle/vimproc.vim && make)
