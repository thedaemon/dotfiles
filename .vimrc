set nocompatible
set backspace=indent,eol,start
set background=dark
set laststatus=2
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline_theme = 'solarized'
"This sets tabs to be spaces with 4 spaces. use :retab to update a document
set expandtab
set tabstop=4
set shiftwidth=4
