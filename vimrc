"--------------------------------------
" Vundle Stuff
"--------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-------------------------------------
" my plugins
"------------------------------------

" file system explorer plugin
Plugin 'scrooloose/nerdtree'
"sensible default vim settings
Plugin 'tpope/vim-sensible'
"git intergration
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"----------------------------
" my options
"----------------------------
set t_Co=256                    "enable 256 colors. must go before setting the color scheme
colorscheme eldar
set number                      "turn on line numbers
syntax enable                   "turn on sytax highlighting
set tabstop=4                   "number of visual spaces per TAB
set expandtab                   "turn TABS into spaces
set softtabstop=4               "number of spaces inserted when you hit the tab key
set shiftwidth=4                "number of columns to indent when using >> and <<
set smarttab                    "be smart when using tabs
set showcmd                     "show command in bottom bar
filetype indent on              "indent based on filetype
set autoindent                  "turn on autoindentation
set smartindent                 "be smart when indenting
set wildmenu                    "visual autocomplete for command menu
set showmatch                   "highlight matching brackets
set lazyredraw                  "only redraw when we need to (good for macros)
set pastetoggle=<F2>            "toggle paste mode on and off using F2
set incsearch                   "search as characters are entered
set hlsearch                    "highlight search maches
set autochdir                   "auto change to directory of current file
set hidden                      "allow switching buffers without saving

"----------------------------
" custom key mappings
"----------------------------
let mapleader=","                           "set leader key
