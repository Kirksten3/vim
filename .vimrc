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
" turn off search highlighting with leader and space
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader> t CommandT

" movement
" move up/down visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
" quick jump to top with g, bottom with v
" use j and k to jump (j for down, k for up)
" nnoremap t gg
" nnoremap g G
" nnoremap gg <nop>
" nnoremap G <nop>

" jk combo is new escape
inoremap jk <esc>

set encoding=utf-8      " encoding for files
set nowrap              " lines do not wrap visually

" leader d, quick delete, or leader y quick yank
nnoremap <leader>d dd
nnoremap <leader>y yy

" finish this jump function later, zz centers screen
function MiddleScroll()
    for lineno in range(t:firstline, t:lastline)
        let line = getline(lineno)
        let line = line + 30
        setline(line)
    endfor
endfunction

" command -range MiddleScroll <line1>,<line2>call MiddleScroll()
