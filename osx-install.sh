#!/bin/bash

# Install tools for YouCompleteMe
# sudo apt-get install build-essential python-dev cmake -y

# Create vim bundle/ftplugin folders and parent directories
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/ftplugin
mkdir -p ~/projects

# Get Vundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

# Get Vim Colorschemes prior to running Vim
git clone https://github.com/flazz/vim-colorschemes ~/.vim/bundle/vim-colorschemes

# Get and configure tmux Powerline
brew install rainbarf
git clone https//github.com/erikw/tmux-powerline ~/projects/tmux-powerline
mkdir -p ~/projects/tmux-powerline/segments
cp weather.sh ~/projects/tmux-powerline/segments
ls -s $PWD/.tmux.conf ~/.tmux.conf

# Create a symbolic link of .vimrc in home directory
ln -s $PWD/.vimrc ~/.vimrc

# Create a symbolic link of typescript.vim in filetype plugins
ln -s $PWD/typescript.vim ~/.vim/ftplugin/typescript.vim

# Install plugins
vim +PluginInstall +PlugInstall +NeoPluginInstall +qall

# Create a symbolic link of typescript_filter.vim in NERDTree filetype plugins
ln -s $PWD/typescript_filter.vim ~/.vim/bundle/nerdtree/nerdtree_plugin/typescript_filter.vim

# Install Vimproc
(cd ~/.vim/bundle/vimproc.vim && make)
