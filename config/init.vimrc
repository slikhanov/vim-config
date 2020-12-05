" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'IN3D/vim-raml'
Plug 'nfvs/vim-perforce'
Plug 'neomake/neomake'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'liuchengxu/vista.vim'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
Plug 'psliwka/vim-smoothie'
Plug 'jesseleite/vim-agriculture'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'AndrewRadev/sideways.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'hzchirs/vim-material'
Plug 'arcticicestudio/nord-vim'

call plug#end()

