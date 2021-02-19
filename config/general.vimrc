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
set signcolumn=yes

" Enable unified system clipboard
set clipboard+=unnamedplus

" Set command line height to 2
set cmdheight=2

" Turn the beep off
set vb

" Colors
syntax enable

try
    colorscheme nord
catch
endtry

if has('nvim')
    set inccommand=nosplit
endif

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
nmap <leader>sl :set list!<CR>

" Shortcut to rapidly toggle column cursor.
nmap <leader>cc :set cursorcolumn!<CR> 
"
" Shortcut to rapidly toggle line cursor.
nmap <leader>cl :set cursorline!<CR> 

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
nmap <leader>/ <Plug>RgRawSearch
vmap <leader>/ <Plug>RgRawVisualSelection
nmap <leader>* <Plug>RgRawWordUnderCursor

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

" See `man fzf-tmux` for available options
"if exists('$TMUX')
"  let g:fzf_layout = { 'tmux': '-p90%,60%' }
"else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
"endif

" Perforce integration 
let g:perforce_open_on_change=1
let g:perforce_prompt_on_open=0

" Neomake configuration
let g:neomake_open_list = 2

" Sideways configuration
nmap <leader>> :SidewaysRight<cr>
nmap <leader>< :SidewaysLeft<cr>

" AsyncRun configuration
let g:asyncrun_open = 6

