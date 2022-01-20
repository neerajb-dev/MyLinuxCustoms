" INITIAL -------------------------------------------------{{{
" Set compatibility
set nocompatible

" Enable type file detection
filetype on

" Enbale plugins and load plugin for the detected file type
filetype plugin on 

" Load an indent file for the detected file type
filetype indent on 

" Syntax highlightin on 
syntax on

" Set Line numbers
set number
set relativenumber

" Highlight cursor
set cursorline
set cursorcolumn

" Wildmenu auto completion press TAB
set wildmenu
set wildmode=list:longest
" Wildmenu ignore files with extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

colorscheme molokai

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/vim/plugged')

" pluggin goes here

call plug#end()
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


" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
