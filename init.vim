set nocompatible
set number
set relativenumber
set hidden
set mouse=a
set clipboard=unnamedplus
set updatetime=300
set timeoutlen=400
set signcolumn=yes
set termguicolors
set smartindent
set ignorecase
set tabstop=4
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set hlsearch
set cursorline
set wrap
set linebreak
set syntax=asm
set scrolloff=8
set sidescrolloff=8
set splitright
set splitbelow
set undofile
set undodir=~/.config/nvim/undo


let mapleader=" "
let maplocalleader=" "

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :nohlsearch<CR>


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

call plug#end()

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>

nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>o :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeFind<CR>

let NERDTreeShowHidden=1
let NERDTreeMinmalUI=1
let NERDTreeDirArrows=1

let g:NERDTreeGitStatusWithFlags = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

