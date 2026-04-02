call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

set termguicolors

let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

syntax on
filetype plugin indent on

set tabstop=2        " width of a tab character
set shiftwidth=2     " spaces used for indentation
set expandtab        " convert tabs to spaces
set smartindent      " auto-indent new lines

set ignorecase       " case-insensitive search
set smartcase        " case-sensitive if uppercase used
set incsearch        " show matches while typing
set hlsearch         " highlight matches

set number           " show line numbers
set cursorline       " highlight current line
