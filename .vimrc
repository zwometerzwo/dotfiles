" Begin .vimrc

let mapleader=' '

set number          " show line numbers
set rnu

set tabstop=2       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

syntax on           " enable Syntax processing

set cursorline      " highlight current line
set clipboard+=unnamedplus

set showmatch       " highlight matching

noremap <tab> gt
noremap <S-tab> gT

set incsearch       " search as characters are entered
set hlsearch        " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set showcmd         " show command in bottom bar

filetype indent on  "load filetype-specific indent file

set wildmenu        " visual autocomplete for command menu

noremap <C-j> :bnext<cr>
noremap <C-k> :bprev<cr>

" enable filetype detection:
filetype on

filetype plugin on
filetype indent on " file type based indentation

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" End .vimrc

