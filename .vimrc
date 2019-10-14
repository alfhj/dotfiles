set nocompatible

call plug#begin('~/.vim/vimplugs')
Plug 'lifepillar/vim-solarized8'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
call plug#end()

colorscheme gruvbox
syntax enable
set termguicolors
set background=dark
set t_ut=

set number
set noexpandtab
"set mouse=a
"set shiftwidth=4
set tabstop=4
set colorcolumn=80
