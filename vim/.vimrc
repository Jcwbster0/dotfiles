" --- General Settings ---
set nocompatible            " Disable compatibility with old vi bugs
set encoding=utf-8          " Set default terminal encoding
set hidden                  " Allow background buffers without saving

" --- User Interface ---
syntax on                   " Enable syntax highlighting
set number                  " Show line numbers
set relativenumber          " Show relative line numbers for easy jumping
set cursorline              " Highlight the current line
set wildmenu                " Enhanced command-line completion
set t_Co=256                " Enable 256 colors in terminal
colorscheme desert

" Fix background color rendering specifically inside tmux
if &term =~ 'screen' || &term =~ 'tmux' 
        set term=xterm-256color
endif

" --- Search ---
set hlsearch                " Highlight search results
set incsearch               " Search as you type
set ignorecase              " Ignore case when searching
set smartcase               " Override ignorecase if search contains capitals

" --- Indentation & Tabs ---
set tabstop=4               " Number of visual spaces per TAB
set shiftwidth=4            " Number of spaces for autoindenting
set expandtab               " Convert TABs to spaces
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Insert indents automatically where appropriate

" --- Key Remappings ---
let mapleader = " "         " Set spacebar as the leader key
" Quick save and quit shortcuts using leader key
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

