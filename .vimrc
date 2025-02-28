call plug#begin('~/.vim/plugged')

" Fuzzy Finder (File Navigation)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status line (Better bottom bar)
Plug 'vim-airline/vim-airline'

" Git integration
Plug 'tpope/vim-fugitive'

" Syntax highlighting for many languages
Plug 'sheerun/vim-polyglot'

" Commenting with `gc`
Plug 'tpope/vim-commentary'

" Auto-close brackets and quotes
Plug 'jiangmiao/auto-pairs'

" File explorer
Plug 'preservim/nerdtree'

call plug#end()

" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Enable mouse support
set mouse=a

" Enable relative line number
set relativenumber

" Highlight matching brackets
set showmatch

" Better search: ignore case unless uppercase is used
set ignorecase
set smartcase
set hlsearch    " Highlight search results
set incsearch   " Incremental search (shows results as you type)

" Enable mouse support (useful for resizing & scrolling)
set mouse=a

" Enable clipboard integration (copy-paste between Vim & system clipboard)
" set clipboard=unnamedplus

" Set indentation (4 spaces per tab)
set tabstop=4
set shiftwidth=4
set expandtab    " Use spaces instead of tabs
set autoindent   " Copy indentation from the previous line
set smartindent  " Smarter auto-indentation

" Set a better command-line height for messages
set cmdheight=2

" Disable Vim swap files (optional)
set noswapfile
set nobackup
set nowritebackup

" Faster redrawing (improves performance)
set lazyredraw

" Allow backspacing over everything
set backspace=indent,eol,start

" Display a status line
set laststatus=2

" Show cursor position
set ruler

" Always show at least 3 lines when scrolling
set scrolloff=3

" Change themes
" Enable 256-color support
set t_Co=256
set termguicolors  " Enables true color support

" Set colorscheme
colorscheme desert " Try 'desert', 'murphy', murphy 'elflord', or 'industry'

" Set leader key to space
let mapleader=" "

" Disable arrow keys (forces you to use hjkl)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
