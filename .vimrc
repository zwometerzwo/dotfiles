" Begin .vimrc

set encoding=utf-8

let mapleader=' '

set number          " show line numbers
set rnu

set mouse=a
set ruler
set scrolloff=5

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<    " :set list shows all everything but whitespace
set timeoutlen=1000 ttimeoutlen=0

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

colorscheme torte
set termguicolors
set background=dark

" Set Gui Font of MacVim larger
set gfn=Monaco:h14

hi Normal ctermbg=black guibg=black
set cursorline      " highlight current line
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorLine cterm=NONE ctermbg=darkgrey guibg=darkgrey
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" set clipboard^=unnamed,unnamedplus
set completeopt-=preview

set showmatch       " highlight matching

noremap <tab> gt
noremap <S-tab> gT
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>Y "+Y

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap > >gv
vnoremap < <gv

noremap ä ddp
noremap - ddp
noremap ü ddkP
noremap _ ddkP

nnoremap <Leader>d "_d
vnoremap <Leader>d "_d
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D

inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU

set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase
set smartcase

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
hi CurSearch guibg=LightGreen guifg=Black

set showcmd         " show command in bottom bar

" set list

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
autocmd FileType java set tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType md set tabstop=4 shiftwidth=4 softtabstop=4
" autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" End .vimrc

