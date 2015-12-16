set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'kien/ctrlp.vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd vimenter * NERDTree

let NERDTreeShowHidden=1

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
