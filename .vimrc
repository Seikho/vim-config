set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'kien/ctrlp.vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'groenewege/vim-less'

call vundle#end()

filetype plugin indent on
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set t_Co=256
set number

let NERDTreeDirArrows=0
let NERDTreeIgnore=['node_modules', '.git', '.map']
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=0


autocmd vimenter * NERDTree
autocmd vimenter * AirlineTheme murmur

colorscheme Monokai

au BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

map <C-E><C-R> :CtrlP<CR>
map <C-b> :!npm run build<CR>
