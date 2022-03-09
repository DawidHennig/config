set rnu
syntax on
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
colorscheme peachpuff 
highlight Comment ctermfg=green
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
call plug#end()
let g:airline_theme='base16_nord'
