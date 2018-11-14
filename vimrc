"Spaces & Tabs
set softtabstop=2
set shiftwidth=2
set expandtab

"UI Config
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch

"Searching
set incsearch
set hlsearch

"Key Mappings
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
"force myself not to use arrow keys

noremap - ddp
noremap _ ddkP

inoremap jk <esc>
inoremap <c-d> <esc>ddi

nnoremap ; :
nnoremap : ;
nnoremap H 0
nnoremap L $

"Note: H and L functions are overwritten

vnoremap ; :
vnoremap : ;

"Leader Mappings
let mapleader=","
let maplocalleader="\\"
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel"

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'sjl/badwolf'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

"Colors
syntax enable
set t_Co=256 
colorscheme badwolf

"TODO: common abbreviations + typo fixes with iabbrev
