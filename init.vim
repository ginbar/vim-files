
""""""""""""""""""""""""""General"""""""""""""""""""""""""""

set ruler                    " Show the line and column number of the cursor position
set wildmenu                 " Display completion matches on your status lineu
set scrolloff=5              " Show a few lines of context around the cursor  
set hlsearch                 " Highlight search matches
set incsearch                " Enable incremental searching
set ignorecase               " Ignore case when searching
set smartcase                " Override the 'ignorecase' option if the search pattern contains upper case characters
set number                   " Turn on line numbering
set hidden                   " Allow modified buffers to be hidden 
set autoindent               " Copy the indentation from the current line
set smartindent              " Enable smart autoindenting.
set expandtab                " Use spaces instead of tabs
set smarttab                 " Enable smart tabs
set cc=80                    " Vertical ruler for coding
syntax on                    " Sytax highlight  
set cursorline               " Highligh cursor
set nowrap                   " Disable line wrapping
set autoread                 " Autoreload buffers

set clipboard=unnamedplus    " Use system clipboard

set belloff=all              " Turn off error bells
set nobackup                 " Disable backup
set nocompatible             " Disable compatibility to vi
set noswapfile               " Disable swapfiles

set shiftwidth=4             " Make a tab equal to 4 spaces
set tabstop=4                           
set softtabstop=4

"""""""""""""""""""""Remaps n commands"""""""""""""""""""""""

nnoremap <C-N> :bnext<CR>                     " vim-buftabline tab switch  
nnoremap <C-P> :bprev<CR>
command! SQ :NERDTreeClose | :mks! | :xa      " Save everything(session and files) and then exit
command! BDA :bd <C-a> <ENTER>                        " Delete all buffers 
command! CA :%y+                              " Select and copy all

"""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'ap/vim-buftabline'
Plug 'jlcrochet/vim-razor'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

"""""""""""""""""""""""""""Apparence"""""""""""""""""""""""""""

let s:fontsize = 10
let g:airline_theme='one'
colorscheme onedark
set background=dark

""""""""""""""""""""""""""""""ALE""""""""""""""""""""""""""""""

let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\ 'javascript': ['tsserver']
\}
let g:ale_sign_error = '🔴'
let g:ale_sign_warning = '🟡'


"""""""""""""""""""""""""""Omnisharp"""""""""""""""""""""""""""

filetype indent plugin on 
syntax enable
let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_popup = 1

augroup omnisharp_commands
  autocmd!

  autocmd CursorHold *.cs OmniSharpTypeLookup

  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

"""""""""""""""""""""""""""NERDTree""""""""""""""""""""""""""""

let NERDTreeShowHidden=1        " Display .gitignore, .dockignore, etc.

