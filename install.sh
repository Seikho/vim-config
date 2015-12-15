#!/bin/bash

mkdir -p ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py)

cp .vimrc ~/.vimrc
vim +PluginInstall
