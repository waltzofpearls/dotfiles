syntax on
set background=dark
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab expandtab        " tab and backspace are smart
set shiftwidth=4
set softtabstop=4
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=list:longest,full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

set incsearch                 " incremental search
set ignorecase                " search ignoring case
set smartcase                 " And so is Artificial Intellegence!
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

set foldmethod=marker         " Folding Stuffs
set grepprg=grep\ -nH\ $*

colorscheme molokai           " Color scheme

set mouse=a                   " Enable mouse support in console
set nohidden                  " When I close a tab, remove the buffer
set cursorline                " Highlight current line
set cursorcolumn              " Highlight current column

" This is totally awesome - remap jj to escape in insert mode.  You'll never
" type jj anyway, so it's great!
inoremap jj <Esc>
nnoremap JJJJ <Nop>
" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>
" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>
" New Tab
nnoremap <silent> <C-t> :tabnew<CR>
" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>
