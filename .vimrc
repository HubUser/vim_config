set nocompatible              " be iMproved, required
filetype off                  " required

d" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'lifepillar/vim-solarized8'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'andymass/vim-matchup'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" source /apollo/env/envImprovement/var/vimrc

  set autoindent            " always set autoindenting on
  set backspace=2           " allow backspacing over everything in insert mode
  set cindent               " c code indenting
"  set diffopt=filler,iwhite " keep files synced and ignore whitespace
  set expandtab             " Get rid of tabs altogether and replace with spaces
  set foldcolumn=2          " set a column incase we need it
  set foldlevel=0           " show contents of all folds
  set foldmethod=indent     " use indent unless overridden
  set hidden                " hide buffers instead of closing
  set history=50            " keep 50 lines of command line history
  set ignorecase            " Do case insensitive matching
  set incsearch             " Incremental search
  set laststatus=2          " always have status bar
  set linebreak             " This displays long lines as wrapped at word boundries
  set matchtime=10          " Time to flash the brack with showmatch
  set nobackup              " Don't keep a backup file
  set nocompatible          " Use Vim defaults (much better!)
  set nofen                 " disable folds
  set notimeout             " i like to be pokey
  set ttimeout              " timeout on key-codes
  set ttimeoutlen=100       " timeout on key-codes after 100ms
  set ruler                 " the ruler on the bottom is useful
  set scrolloff=1           " dont let the curser get too close to the edge
  set shiftwidth=4          " Set indention level to be the same as softtabstop
  set showcmd               " Show (partial) command in status line.
  set showmatch             " Show matching brackets.
  set softtabstop=4         " Why are tabs so big?  This fixes it
  set textwidth=0           " Don't wrap words by default
"  set textwidth=80          " This wraps a line with a break when you reach 80 chars
  set virtualedit=block     " let blocks be in virutal edit mode
  set wildmenu              " This is used with wildmode(full) to cycle options
  set cursorcolumn
  set cursorline

"Longer Set options
"  set cscopequickfix=s-,c-,d-,i-,t-,e-,g-,f-   " useful for cscope in quickfix
  set listchars=tab:>-,trail:-                 " prefix tabs with a > and trails with -
  set tags+=./.tags;/,./tags;/                 " set ctags
"  set whichwrap+=<,>,[,],h,l,~                 " arrow keys can wrap in normal and insert modes
  set wildmode=list:longest,full               " list all options, match to the longest
   set wildmode=list:longest,full               " list all options, match to the longest
"
"  set helpfile=$VIMRUNTIME/doc/help.txt
"  set guifont=Courier\ 10\ Pitch\ 10
"  set path+=.,..,../..,../../..,../../../..,/usr/include

"Disabled options
  set list                    " Make tabs and trails explicit
  "set noswapfile              " this guy is really annoyoing sometimes
  "set wrapmargin=80           " When pasteing, use this, because textwidth becomes 0
                               " wrapmargin inserts breaks if you exceed its value
  "set cscopeprg=~/bin/cscope  "set cscope bin path

"Set colorscheme.  This is a black background colorscheme
"  colorscheme darkblue
colorscheme solarized8
set background=dark

"Turn on filetype plugins to automagically
  "Grab commands for particular filetypes.
  "Grabbed from $VIM/ftplugin
  "filetype on
  filetype plugin on
  filetype indent on

  autocmd BufNewFile,BufRead *.py set ft=python

"Turn on syntax highlighting
syntax on

set nu rnu
set hlsearch
set directory=~/.vim/swapfiles//
set backupdir=~/.vim/backups//

let mapleader = " "

let NERDTreeWinSize = 46
let g:NERDTreeShowLineNumber = 1
noremap <C-n> :NERDTreeToggle<cr>
autocmd FileType nerdtree setlocal relativenumber

inoremap jk <esc>
nnoremap HL :nohl<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>fa :Buffers<CR>
nnoremap <leader>fs :Ag <C-R>=expand('<cword>')<CR><CR>
