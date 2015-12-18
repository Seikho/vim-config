#!/bin/bash

# Install tools for YouCompleteMe
sudo apt-get install build-essential python-dev cmake -y

# Create vim bundle/ftplugin folders and parent directories
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/ftplugin

# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

# Get Vim Colorschemes prior to running Vim
git clone https://github.com/flazz/vim-colorschemes ~/.vim/bundle/vim-colorschemes

# Clone, build and install YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py)

# Create a symbolic link of .vimrc in home directory
ln -s $PWD/.vimrc ~/.vimrc

# Create a symbolic link of typescript.vim in filetype plugins
ln -s $PWD/typescript.vim ~/.vim/ftplugin/typescript.vim

# Install Vundle plugins
vim +PluginInstall +qall

# Create a symbolic link of typescript_filter.vim in NERDTree filetype plugins
ln -s $PWD/typescript_filter.vim ~/.vim/bundle/nerdtree/nerdtree_plugin/typescript_filter.vim

# Install Vimproc
(cd ~/.vim/bundle/vimproc.vim && make)
