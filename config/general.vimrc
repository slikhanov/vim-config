" Essential
"
set nocompatible              " be iMproved
set encoding=utf-8

set history=200
filetype plugin on
"filetype indent on

set shiftwidth=4
set expandtab
set tabstop=4

" Ignores case when using all lowercase letters in search.
set ignorecase smartcase

set number
set relativenumber

" Set command line height to 2
set ch=2

" Turn the beep off
set vb

" Colors
syntax enable

try
    colorscheme nord
catch
endtry

let g:airline_powerline_fonts=1

" Use deoplete
let g:deoplete#enable_at_startup=1

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader>t :EasyAlign*<Bar><Enter>
