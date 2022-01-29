" Disable compatibility with vi 
set nocompatible

" Enable type file detection 
filetype on

" Plugin and Filetype Plugin
filetype plugin on 

" Filetype indentation
filetype indent on

" Syntax highlighting
syntax on

" Line numbers 
set number 
set relativenumber

" Higlight cursor horizontally
set cursorline

" Highlight cursor vertically
set cursorcolumn

" word wrap off
set nowrap

" colorscheme
colorscheme molokai 


" PLUGINS ---------------------------------------------------------------- {{{
	" Vim-plug : curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim	
	call plug#begin('~/.vim/plugged')

	" To add plugin 
	" Plug 'username/plugin-name'


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

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{
" Powerline status bar for vim
set rtp+=/home/nrjbwj/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Clear status line when vimrc is reloaded.
"set statusline=

" Status line left side.
" set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
" set statusline+=%=

" Status line right side.
" set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
" set laststatus=2

" }}}
