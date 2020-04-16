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

" Scrolling
set scrolloff=3

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,space:·,eol:¬

let g:airline_powerline_fonts=1

" Use deoplete
let g:deoplete#enable_at_startup=1

" This is probably will be moved to separate file that defines keybindings
let mapleader = ";"

" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader>tb :EasyAlign*<Bar><Enter>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Relative path  (src/foo.txt)
nnoremap <leader>cf :let @*=expand("%")<CR>

" Absolute path  (/something/src/foo.txt)
nnoremap <leader>cF :let @*=expand("%:p")<CR>

" Filename       (foo.txt)
nnoremap <leader>ct :let @*=expand("%:t")<CR>

" Directory name (/something/src)
nnoremap <leader>ch :let @*=expand("%:p:h")<CR>

" Fzf mappings
nmap <leader>f :Files<CR>
nmap <leader>F :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>' :Marks<CR>
nmap <Leader>/ <Plug>RgRawSearch
vmap <Leader>/ <Plug>RgRawVisualSelection
nmap <Leader>* <Plug>RgRawWordUnderCursor

" Fzf settings
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Perforce integration 
let g:perforce_open_on_change=1
let g:perforce_prompt_on_open=0

" Neomake configuration
let g:neomake_open_list = 2

" Gutentags configuration
set statusline+=%{gutentags#statusline()}
let g:gutentags_project_root = ['.gutctags']
let g:gutentags_cache_dir = "~/guttags"

