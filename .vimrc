" Enable vim enhancements
set nocompatible

" Set utf-8 encoding
set encoding=utf-8

" Show line numbers
set number

" Allow mouse clicking and scrolling
set mouse=a
set ttymouse=sgr

" Smooth scroll
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

" Show syntax highlighting
syntax on

" Always show current postion
set ruler

" Always display the status line
set laststatus=2

" Get rid of sound bell 
set visualbell

" Set tabs to four spaces
set shiftwidth=4
set softtabstop=4

" Smart tab
set smarttab

" Use spaces instead of tabs
set expandtab

" Auto and smart indent
set ai
set si

" Set colorscheme
colorscheme desert

" Show commands when typing
set showcmd

" Autocomplete command menu
set wildmenu

" Set search and highlighting
set incsearch
set hlsearch

" Move vertically by each visual line
:nmap j gj
:nmap k gk
