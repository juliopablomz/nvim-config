" Plugins ================================================================
set nocompatible

call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'bluz71/vim-moonfly-colors'
Plug 'windwp/nvim-autopairs'
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
call plug#end()

" loading plugin configs
lua << EOF
require'config.treesitter'
require'config.autopairs'
require'config.cmp'
require'config.lsp'
EOF

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

" Usability ==============================================================

" disable mouse support.
set mouse=

" better splits.
set splitright
set splitbelow

" ensuring that ".h/.hpp" files are treated correctly.
autocmd BufRead,BufNewFile *.h set filetype=c
autocmd BufRead,BufNewFile *.hpp set filetype=cpp

" Mappings ===============================================================

" the leader key.
let mapleader = " "

" save current file.
nnoremap <leader>w :w<CR>

" close current file.
nnoremap <leader>q :q<CR>

" rename the label above the cursor.
nnoremap <leader>r :lua vim.lsp.buf.rename()<CR>

" go to the definition of the item above the cursor.
nnoremap gD :lua vim.lsp.buf.definition()<CR>

" go to the declaration of the item above the cursor.
nnoremap gd :lua vim.lsp.buf.declaration()<CR>
