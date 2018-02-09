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
Plugin 'jistr/vim-nerdtree-tabs'
" sensible default vim settings
Plugin 'tpope/vim-sensible'
" git intergration
Plugin 'tpope/vim-fugitive'
" easy commenting
Plugin 'tpope/vim-commentary'
" bracket changer
Plugin 'tpope/vim-surround'
" auto completion
Plugin 'Valloric/YouCompleteMe'
" code snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" templates
Plugin 'tibabit/vim-templates'

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
set shiftround                  " >> indents to next multiple of 'shiftwidth'
set smarttab                    "be smart when using tabs
set showcmd                     "show command in bottom bar
filetype indent on              "indent based on filetype
set autoindent                  "turn on autoindentation
set smartindent                 "be smart when indenting
set wildmenu                    "visual autocomplete for command menu
set showmatch                   "highlight matching brackets
set lazyredraw                  "only redraw when we need to (good for macros)
set ttyfast                     "faster redrawing
set pastetoggle=<F2>            "toggle paste mode on and off using F2
set incsearch                   "search as characters are entered
set hlsearch                    "highlight search maches
set autochdir                   "auto change to directory of current file
set hidden                      "allow switching buffers without saving
set scrolloff=8                 "start scrolling when 8 lines from the margins
set ignorecase                  "ignore case when searching
set smartcase                   "unless we type a capital
set backspace=indent,eol,start  "make backspace work as you would expect
set laststatus=2                "always show the status line
set cursorline                  "find the current line quickly
set wrapscan                    "searches wrap around end-of-file
set report=0                    "always report changed lines
set cmdheight=3                 "increase cmd line height

"----------------------------
" custom key mappings
"----------------------------

" disable arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
" set <Leader> key to spacebar
let mapleader=" "
" make leader+tab switch windows
nnoremap <Leader><Tab> <C-w><C-w>
" faster tabs
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>ts :tabnext<CR>
nnoremap <Leader>te :tabedit 
" easy vsplit
nnoremap <Leader>ws :vs<CR>
" vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
" smart indent whole file
nnoremap <Leader>si @i
" quick escape from insert mode
inoremap jj <Esc>
" faster moving in normal mode
nnoremap <Leader>j 25j<CR>
nnoremap <Leader>k 25k<CR>
" load c++ templates
nnoremap <Leader>ch :Template *.h<CR>
nnoremap <Leader>cc :Template *.c<CR>
" easy edit
nnoremap <Leader>en :e 
" fast global search and replace
nnoremap <Leader>sr :%s/
" easy macro
nnoremap <Leader>m @q
" turn on spell checker
nnoremap <Leader>as :set spell spelllang=en_us<CR>
" turn off spell checker
nnoremap <Leader>so :set nospell<CR>
" go to ipython
nnoremap <Leader>gip :!/usr/bin/ipython<CR>
" run 'make opt' command
nnoremap <Leader>rm :!make opt<CR>
" run 'clear' command
nnoremap <Leader>cc :!clear<CR>
" turn off search highlighting
nnoremap <Leader>nh :noh<CR>
" fast close
nnoremap <Leader>q :q<CR>
nnoremap <Leader>fq :q!<CR>
" fast write
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>

"----------------------------
" my macros
"----------------------------

" smart indent whole file
let @i='mv:normal gg=G``'

"----------------------------
" plugin configurations
"----------------------------

" vim-nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup=1

" templates 
let g:tmpl_author_email = 'joseph.liping@gmail.com'
let g:tmpl_author_name  = 'Joseph Carmack'

" ultisnips
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsEditSplit        = 'horizontal'
let g:UltiSnipsSnippetDir       = '~/.vim/mySnippets'

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
