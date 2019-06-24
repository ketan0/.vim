let mapleader=" "

"Plugins
call plug#begin('~/.vim/plugged')
"Colors
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'

"vim hardtime
Plug 'takac/vim-hardtime'

"Utilities
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'nvie/vim-togglemouse'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug '~/.fzf'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"autocomplete/linting
" note: if using vim 8, need python 3.5+ (check with vim --version, should
" show +python3)
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'
else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'w0rp/ale'
"NOTE: to get this working on sherlock, you're going to have to monkey around
"with some python config (i.e., deoplete needs python3 loaded, but some
"linters for ale may need python2?)
"
"note: to look nice, install powerline fonts
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-syntastic/syntastic'
" Plug 'python-mode/python-mode', { 'branch': 'develop' }

" Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
call plug#end() "to install new plugins: save vimrc, source vimrc, and run :PlugInstall 

let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l"] 

"tab completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:ale_linters = {
\   'python': ['pylint'],
\}

" let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '--rcfile ~/.pylintrc'
let g:ale_python_pylint_use_global = 0


" let g:ale_python_flake8_options = '--ignore=E501,E722'

let g:ale_fixers = {
\   'python': [
\       'autopep8',
\       'isort',
\       'remove_trailing_lines',
\       'trim_whitespace', 
\       'yapf',
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
let g:pymode_lint = 0  " ALE takes care of this
let g:pymode_folding = 0  
let g:pymode_run = 1
let g:pymode_breakpoint = 0
let g:pymode_options = 0
let g:pymode_doc = 0
let g:pymode_rope = 0
let g:pymode_debug = 0
let g:pymode_run_bind = '<leader>r'

" Change this
let g:python3_host_prog = '/Users/ketanagrawal/anaconda2/envs/cs231n/bin/python'
"Spaces & Tabs
set softtabstop=4
set shiftwidth=4
set expandtab "expand tabs to spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode

"UI Config
set mouse=a "Can click on places, select in visual mode w/ mouse
syntax enable
set number
set showcmd
set cursorline
set smartindent
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
set encoding=utf-8

"Searching
set incsearch " Incremental search (jumps to first result)
set hlsearch " Highlight search

"Key Mappings

"so it behaves like C (c$) and D (d$)
map Y y$

"For vim-togglemouse
noremap <F6> :call <SID>ToggleMouse()<CR>


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

"easily switch between split windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"exit to normal mode w/ jk 
inoremap jk <esc> 
"delete a line in insert mode
inoremap <c-d> <esc>ddi 

"convenience remappings
" nnoremap ; :
" vnoremap ; :
" nnoremap : ;
" vnoremap : ;

"Note: Overwrites native functions for H and L (jump to top and bottom of window)
nmap H 0
onoremap H 0

nmap L $
onoremap L $

"Leader Mappings

"Save easily
nnoremap <leader>w :w!<CR>

"Clear highlights from search
nnoremap <leader><space> :nohlsearch<CR>

"Edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :w<CR>:source $MYVIMRC<CR>

"shortcuts for closing adjacent windows
nnoremap <leader>xh <C-w>hZZ
nnoremap <leader>xj <C-w>jZZ
nnoremap <leader>xk <C-w>kZZ
nnoremap <leader>xl <C-w>lZZ

"Colors
syntax enable
set t_Co=256
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

nnoremap <leader>n :ALENextWrap<CR>
nnoremap <leader>p :ALEPreviousWrap<CR>
nnoremap <leader>f :ALEFix<CR>

"TODO: make linting work nicely, tabs for autocomplete, etc.
"TODO: experiment with different linters, silence warnings, yet.
"TODO: look into hover definition features (Language Server Protocol??)
"TODO: gundo-tree, or something like that
"TODO: fzf
"TODO: nerdtree, or something like that
"TODO: vim-fugitive, the other tpope plugins
"TODO: explore code folding, in python and otherwise
"TODO: python text objects plugin
"TODO: make sure this works in normal vim
