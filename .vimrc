" Vundle Configuration
set nocompatible         " be iMproved
filetype off             " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'scrooloose/syntastic'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'


let g:session_autoload = 'yes' " for vim-session
let g:session_autosave = 'yes' " for vim-session

set laststatus=2 " for airline
let g:airline#extensions#tabline#enabled = 1 " airline tab bar

filetype plugin indent on     " required!

syntax on " Enable syntax highlighting

set background=dark " Brighten foreground colours

set mouse= " disable mouse in terminal

if has('gui_running')
    set guioptions=m " Hide everything but menu bar
    set mouse=a
    set guifont=Menlo:h13
    colorscheme solarized
    highlight clear SignColumn " for gitgutter
endif

let mapleader = ","

nnoremap <silent> <Leader>f :bn<CR> " Next Buffer

nnoremap <silent> <Leader>b :bp<CR> " Previous Buffer

nnoremap <silent> <Leader>x :bd<CR> " Delete Buffer

nmap <silent> <C-o> :NERDTreeToggle<CR>

"set showcmd	" Show (partial) command in status line.

set smartcase " Do smart case matching
set ignorecase " Do case insensitive matching

set incsearch " Incremental search

set mousehide " ide the mouse pointer while typing

set backspace=indent,eol,start "Allow backspace in insert mode

set history=1000 "Store lots of :cmdline history

set showmode "Show current mode down the bottom

set gcr=a:blinkon0 "Disable cursor blink

set novb "No bell visual or otherwise
autocmd! GUIEnter * set vb t_vb= " hack in macvim to turn off belll


set autoread "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

set undolevels=1000
set undoreload=1000

set autoindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

source ~/.vim/kde-devel-vim.vim
