set number
set ts=8
syntax on
set noshowmode
set noswapfile
set hlsearch
set incsearch
colorscheme gruvbox
set bg=dark
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
