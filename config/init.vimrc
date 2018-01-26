" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'IN3D/vim-raml'

" Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'

call plug#end()

