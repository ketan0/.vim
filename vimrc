"Spaces & Tabs
set softtabstop=2
set shiftwidth=2
set expandtab
set bs=2

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

"force myself not to use arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"moving lines up/down
noremap - ddp
noremap _ ddkP

"jump up/down on long wrapped lines
nnoremap j gj
nnoremap k gk

inoremap jk <esc> "exit to normal mode w/ jk 
inoremap <c-d> <esc>ddi "delete a line in insert mode

"convenient remappings
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap H 0
nnoremap L $
"Note: H and L native functions are overwritten

"Leader Mappings
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel"

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
"Plug 'Valloric/YouCompleteMe'
call plug#end() "to install new plugins: save vimrc, source vimrc, and run :PlugInstall 

"Colors
syntax enable
set t_Co=256
" colorscheme molokai
set background=dark
colorscheme PaperColor

let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

"TODO: common abbreviations + typo fixes with iabbrev
