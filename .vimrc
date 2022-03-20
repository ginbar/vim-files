" Show the line and column number of the cursor position
set ruler

" Display the incomplete commands in the bottom right-hand side of your screen.  
"set showcmd

" Display completion matches on your status line
set wildmenu

" Show a few lines of context around the cursor
set scrolloff=5

" Highlight search matches
set hlsearch

" Enable incremental searching
set incsearch

" Ignore case when searching
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" Turn on line numbering
set number

" Allow modified buffers to be hidden
set hidden

" Copy the indentation from the current line.
set autoindent

" Enable smart autoindenting.
set smartindent

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Specifiy a color scheme.
colorscheme desert

" Tell vim what background you are using
set background=dark

" Turn off error bells
set belloff=all

" Always split to the right
" set nosplitleft

" Show hidden folders on NERDTree
let NERDTreeShowHidden=1

" OmniSharp related stuff
filetype indent plugin on
syntax enable
