#!/bin/bash

sudo apt-get install build-essential python-dev cmake -y

mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py)

cp .vimrc ~/.vimrc
vim +PluginInstall

(cd ~/.vim/bundle/vimproc.vim && make)
