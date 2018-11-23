"Spaces & Tabs
set softtabstop=2
set shiftwidth=2
set expandtab "expand tabs to spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode

"UI Config
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

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
"Colors
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'

"Utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Python autocomplete/linting
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
"Python autocomplete/linting
" Plug 'vim-syntastic/syntastic'
" Plug 'diraol/python-mode', { 'branch': 'fix_six_import' }
"let g:pymode_run = 1
" let g:pymode_run_bind = '<leader>r'
" let g:pymode_python = 'python'
" let g:pymode_lint_on_write = 1
" let g:pymode_lint_ignore = ["W"]

 " Plug 'davidhalter/jedi-vim'
"Plug 'Valloric/YouCompleteMe'
call plug#end() "to install new plugins: save vimrc, source vimrc, and run :PlugInstall 


""old vim-powerline symbols
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kolor'
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

let g:deoplete#enable_at_startup = 1
"Colors
syntax enable
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

"TODO: common abbreviations + typo fixes with iabbrev
