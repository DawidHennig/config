set rnu
syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
highlight Comment ctermfg=green
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf.vim'
call plug#end()
colorscheme nord
