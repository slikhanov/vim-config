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

" Enable unified system clipboard
set clipboard+=unnamedplus

" Set command line height to 2
" set ch=2

" Turn the beep off
set vb

" Colors
syntax enable

try
    colorscheme nord
catch
endtry

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,space:·,eol:¬

let g:airline_powerline_fonts=1

" Use deoplete
let g:deoplete#enable_at_startup=1

" This is probably will be moved to separate file that defines keybindings
let mapleader = ";"

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader>t :EasyAlign*<Bar><Enter>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Fzf mappings
nmap <leader>f :Files<CR>
nmap <leader>F :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>

" Perforce integration 
let g:perforce_open_on_change=1
let g:perforce_prompt_on_open=1

