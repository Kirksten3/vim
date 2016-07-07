set nocompatible
filetype off

execute pathogen#infect()

filetype plugin indent on

let mapleader=","

syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set clipboard=unnamed   " allow copying to clipboard

set tabstop=4           " number of spaces per tab
set softtabstop=4       " number of spaces in tab while editing
set expandtab           " convert tabs to spaces

set number
set showcmd             " show last command used
set cursorline          " cursor line under current line

set backspace=2         " allow backspace to go over newlines

set showmatch           " highlight matching braces

" search
set hlsearch            " highlight searches

" KEY REMAPPING
" turn off search highlighting with leader and space
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader> t CommandT
map <C-n> :NERDTreeToggle<CR>

" movement
" move up/down visual line
nnoremap j gj <bar> zz
nnoremap k gk <bar> zz

" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
" quick jump to top with g, bottom with v
" <bar> zz scrolls to middle of screen on jump instead of pressing zz after
nnoremap t gg <bar> zz
nnoremap g G <bar> zz
nnoremap gg <nop>
nnoremap G <nop>

" quickly use tab to jump to different screen splits in vim
map <Tab> <C-w>w

" jk combo is new escape
inoremap jk <esc>

set encoding=utf-8      " encoding for files
set nowrap              " lines do not wrap visually

" leader d, quick delete, or leader y quick yank
noremap <leader>d dd
nnoremap <leader>y yy

" INDENTION FIXING
" USE :set ft? to check filetype when in a file
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
