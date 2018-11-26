let mapleader=","

"Plugins
call plug#begin('~/.vim/plugged')
"Colors
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'

"vim hardtime
Plug 'takac/vim-hardtime'

"Utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'


"autocomplete/linting
Plug 'sheerun/vim-polyglot'

" note: if using vim 8, need python 3.5+ (check with vim --version, should
" show "+python3")
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'w0rp/ale'

"note: to look nice, install powerline fonts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-syntastic/syntastic'
Plug 'python-mode/python-mode'

" Plug 'davidhalter/jedi-vim'
"Plug 'Valloric/YouCompleteMe'
call plug#end() "to install new plugins: save vimrc, source vimrc, and run :PlugInstall 

"tab completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:ale_linters = {
  \ 'python': ['flake8', 'pylint'] ,
  \ }

let g:ale_fixers = {
\   'python': [
\       'autopep8',
\       'isort',
\       'remove_trailing_lines',
\       'trim_whitespace', 
\   ],
\}


let g:airline_powerline_fonts = 1
let g:airline_theme = 'kolor'
let g:airline#extensions#ale#enabled = 1

""old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

let g:deoplete#enable_at_startup = 1

let g:pymode_python = 'python'
let g:pymode_lint = 0  " ALE
let g:pymode_folding = 0  " SimplyFold
let g:pymode_run = 1
let g:pymode_breakpoint = 0
let g:pymode_options = 0
let g:pymode_doc = 0
let g:pymode_rope = 0
let g:pymode_debug = 0
let g:pymode_run_bind = '<leader>r'

"Colors
set t_Co=256 
set background=dark
colorscheme molokai

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

"Spaces & Tabs
set softtabstop=4
set shiftwidth=4
set expandtab "expand tabs to spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode

"UI Config
syntax enable
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.pyc,*.DS_Store   
set lazyredraw
set showmatch
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set noshowmode           " let vim-airline display mode instead 

"Searching
set incsearch
set hlsearch

"Key Mappings

"force myself not to use arrow keys
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>

"moving lines up/down
" noremap - ddp
" noremap _ ddkP

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

set mouse=a

"jump up/down on long wrapped lines
nnoremap j gj
nnoremap k gk

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

inoremap jk <esc> "exit to normal mode w/ jk 
inoremap <c-d> <esc>ddi "delete a line in insert mode

"convenient remappings
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nmap H 0
nmap L $
"Note: H and L native functions are overwritten

"Leader Mappings
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel"

nnoremap <leader>n :ALENextWrap<CR>
nnoremap <leader>p :ALEPreviousWrap<CR>
nnoremap <leader>f :ALEFix<CR>

"TODO: make linting work nicely, tabs for autocomplete, etc.
"TODO: experiment with different linters, silence warnings, yet.
"TODO: gundo-tree, or something like that
"TODO: fzf
"TODO: nerdtree, or something like that
