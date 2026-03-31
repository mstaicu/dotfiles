call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

set termguicolors
set background=dark

let g:gruvbox_contrast_dark = 'medium'

colorscheme gruvbox

syntax on
filetype plugin indent on

set number
set cursorline
