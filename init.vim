
""""""""""""""""""""""""""General"""""""""""""""""""""""""""

set ruler                    " Show the line and column number of the cursor position
set wildmenu                 " Display completion matches on your status lineu
set scrolloff=5              " Show a few lines of context around the cursor  
set hlsearch                 " Highlight search matches
set incsearch                " Enable incremental searching
set ignorecase               " Ignore case when searching
set smartcase                " Override the 'ignorecase' option if the search pattern contains upper case characters.
set number                   " Turn on line numbering
set hidden                   " Allow modified buffers to be hidden 
set autoindent               " Copy the indentation from the current line. 
set smartindent              " Enable smart autoindenting.
set expandtab                " Use spaces instead of tabs
set smarttab                 " Enable smart tabs
set cc=80                    " Vertical ruler for coding
syntax on                    " Sytax highlight  
set cursorline               " Highligh cursor

set clipboard=unnamedplus    " Use system clipboard

set belloff=all              " Turn off error bells
set nobackup                 " Disable backup
set nocompatible             " Disable compatibility to vi
set noswapfile               " Disable swapfiles

set shiftwidth=4             " Make a tab equal to 4 spaces
set tabstop=4                           
set softtabstop=4

"""""""""""""""""""""Remaps n commands"""""""""""""""""""""""

nnoremap <C-N> :bnext<CR>    " vim-buftabline tab switch  
nnoremap <C-P> :bprev<CR>
command! SQ :mks! | :xa      " Save everything(session and files) and then exit

"""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

Plug 'joshdick/onedark.vim'

Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'ap/vim-buftabline'
Plug 'jlcrochet/vim-razor'

Plug 'OmniSharp/omnisharp-vim'

call plug#end()

"""""""""""""""""""""""""""Apparence"""""""""""""""""""""""""""

let s:frontsize = 10
let g:airline_theme='one'
colorscheme onedark
set background=dark

"""""""""""""""""""""""""""Omnisharp"""""""""""""""""""""""""""

filetype indent plugin on 
syntax enable

"""""""""""""""""""""""""""NERDTree""""""""""""""""""""""""""""

let NERDTreeShowHidden=1        " Display .gitignore, .dockignore, etc.

