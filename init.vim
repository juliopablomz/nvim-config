" Plugins ================================================================
set nocompatible

call plug#begin()
Plug 'bluz71/vim-moonfly-colors'
call plug#end()

" Indentation ============================================================
set tabstop=2
set shiftwidth=2

set expandtab
set softtabstop=2

set smarttab
set smartindent

" Files ==================================================================

" disable backup and swap files.
set nobackup
set noswapfile

" enable undo file.
set undofile
set undodir=~/.config/nvim/undo/

" set nvim encoding and file encoding.
set encoding=utf-8
set fileencoding=utf-8

" Aesthetics =============================================================

colorscheme moonfly
syntax on

" more comfortable file navigation.
set cursorline
set number
set relativenumber
set scrolloff=4
set sidescrolloff=4

" showing more information on the screen
set showmode
set showcmd
set signcolumn=yes

" removing because they occasionally cause visual bugs.
set noerrorbells

" better "auto-complete menu".
set wildmenu
set pumheight=10

" use "block" cursor style in insert mode.
set guicursor=i:block 

" Usability ===============================================================

" disable mouse support.
set mouse=

" better splits.
set splitright
set splitbelow

" Mappings ================================================================

" the leader key.
let mapleader = " "

" save current file using "<leader> + w".
nnoremap <leader>w :w<CR>

" close current file using "<leader> + q".
nnoremap <leader>q :q<CR>
