"Disable compatibility with vi"
set nocompatible

"Enable type file detection"
filetype on

"Enable plugsins"
filetype plugin on

"Load an indent file for the detected file type."
filetype indent on

"Turn syntax highlighting on."
syntax on

"Relative line numbers"
set rnu

"highlight line underneath cursor horizontally"
set cursorline

set shiftwidth=4
set tabstop=4

"Enable auto completetion"
set wildmenu
set wildmode=list:longest

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

