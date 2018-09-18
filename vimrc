"Colors
colorscheme badwolf
syntax enable

"Spaces & Tabs
set tabstop=2
set softtabstop=2
set expandtab

"UI Config
set number
set showcmd
set cursorline
"filetype indent on
set wildmenu
set lazyredraw
set showmatch

"Searching
set incsearch
set hlsearch

"Key Mappings
inoremap jk <esc>
noremap - ddp
noremap _ ddkP
inoremap <c-d> <esc>ddi

"Leader Mappings
let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
