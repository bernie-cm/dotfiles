" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Enable mouse support
set mouse=a

" Enable relative line number
" set relativenumber

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
set clipboard=unnamedplus

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

" Enable persistent undo (undo even after closing Vim)
set undofile
set undodir=~/.vim/undodir

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
colorscheme desert " Try 'murphy', 'elflord', or 'industry'

" Set leader key to space
let mapleader=" "

" Disable arrow keys (forces you to use hjkl)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
