set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Quramy/tsuquyomi'

call vundle#end()

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd vimenter * NERDTree


