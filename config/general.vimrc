" Essential
"
set nocompatible              " be iMproved
set encoding=utf-8

set history=200
filetype plugin on
filetype indent on

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
    colorscheme seoul256
catch
endtry
