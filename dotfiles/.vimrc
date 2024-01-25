" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Mouse scroll
set mouse=nvi

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" So the # dont go to newline, see :help fo-table
set formatoptions-=cro

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Color scheme (terminal)
set t_Co=256
set background=dark
colorscheme night-owl