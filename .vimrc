set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'kien/ctrlp.vim'
Plugin 'jason0x43/vim-js-indent'

call vundle#end()

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd vimenter * NERDTree


