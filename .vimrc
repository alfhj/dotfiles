set nocompatible

call plug#begin('~/.vim/vimplugs')
Plug 'lifepillar/vim-solarized8'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine'
Plug 'vim-syntastic/syntastic'
call plug#end()

au BufWrite *.js :Autoformat

colorscheme gruvbox
syntax enable
"set termguicolors
set background=dark
set t_ut=

set number
"set noexpandtab
"set mouse=a
set expandtab
set tabstop=2
set shiftwidth=2
set colorcolumn=80
"set list listchars=tab:\|\ ,nbsp:·,trail:·,extends:>,precedes:<
"set verbose=1
let g:indentLine_char = '│'
let g:indentLine_enabled = 0

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'
