" Begin .vimrc

set encoding=utf-8

let mapleader=' '

set number          " show line numbers
set rnu

set mouse=a
set ruler
set scrolloff=5

set tabstop=2       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<    " :set list shows all everything but whitespace

set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ 
set statusline+=%m
set statusline+=\ 
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\ 
set statusline+=\[%{&fileformat}\]
set statusline+=\ 
set statusline+=%4l
set statusline+=/
set statusline+=%L
set statusline+=L
set statusline+=\ 
set statusline+=%4c
set statusline+=/
set statusline+=%{strwidth(getline('.'))}
set statusline+=C

syntax on           " enable Syntax processing

" Set Gui Font of MacVim larger
set gfn=Monaco:h14

set cursorline      " highlight current line
" set clipboard+=unnamedplus
set completeopt-=preview

set showmatch       " highlight matching

noremap <tab> gt
noremap <S-tab> gT
noremap <Leader>y "+y
noremap <Leader>p "+p

vnoremap > >gv
vnoremap < <gv

noremap - ddp
noremap _ ddkP
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU

set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set showcmd         " show command in bottom bar

set termguicolors
set background=dark

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
autocmd FileType java set shiftwidth=4 softtabstop=0

" End .vimrc

