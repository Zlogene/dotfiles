call plug#begin('~/.vim/plugged')
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()

set number
set relativenumber
set cursorline
set ts=8
syntax on
set noshowmode
set noswapfile
set hlsearch
set incsearch
set bg=dark
colorscheme onedark
set backspace=indent,eol,start
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:Tex_DefaultTargetFormat='pdf'

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
