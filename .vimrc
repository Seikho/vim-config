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
Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set t_Co=256
set number

let NERDTreeDirArrows=0

autocmd vimenter * NERDTree
autocmd vimenter * AirlineTheme murmur

colorscheme monokai-chris

au BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

let NERDTreeShowHidden=1

map <C-E><C-R> :CtrlP<CR>


