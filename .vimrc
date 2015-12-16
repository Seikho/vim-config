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
set t_Co=256

autocmd vimenter * NERDTree
autocmd vimenter * AirlineTheme murmur

au BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

let NERDTreeShowHidden=1

" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" let g:airline_section_b = '%{strftime("%c")}'



