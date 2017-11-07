set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath+=~/.vim/bundle/neobundle.vim/

if &compatible
  set nocompatible               " Be iMproved
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'jason0x43/vim-js-indent'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'groenewege/vim-less'
call vundle#end()


call neobundle#begin(expand('~/.vim/bundle'))
" Required - Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim', { 'build': { 'mac': 'make -f make_mac.mak' } }
NeoBundle 'Quramy/tsuquyomi'
call neobundle#end()

call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', { 'for': ['javascript', 'typescript', 'json', 'graphql'] }
call plug#end()

filetype plugin indent on
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set t_Co=256
set number

let NERDTreeDirArrows=0
let NERDTreeIgnore=['node_modules', '\.git', '\.map']
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore ='node_modules\|DS_Store\|git'
let g:tsuquyomi_completion_detail = 1

autocmd vimenter * NERDTree
autocmd vimenter * AirlineTheme murmur

colorscheme Monokai

au BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

map <C-E><C-R> :CtrlP<CR>
map <C-b> :!npm run build<CR>

if filereadable(".vimrc_proj")
	    so .vimrc_proj
endif
