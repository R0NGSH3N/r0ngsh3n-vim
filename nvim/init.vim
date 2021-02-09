" change leader key
let mapleader="\<Space>"

" set up tab/space
set tabstop=4 softtabstop=4 expandtab

" setup shift width
set shiftwidth=4 ">> << == 4 characters
set smartindent

set nocompatible "not compatible with vi
syntax enable
syntax on  "set highlight
set showmode "show it is n/i/v mode at the bottom
set showcmd "show incomplete command
"set mouse=a "enable mouse
set encoding=utf-8
set t_Co=256 "set color 256


"set line number
"set number
set relativenumber "show the current line number and relative line number for other
set cursorline    "draw line in current line

"text
set textwidth=80
set nowrap
set laststatus=2 "show status line
"set linebreak "only break when not in word
"set wrpmargin=2
set scrolloff=5
set ruler
set colorcolumn=80


"search
set showmatch "show match on parens
set hlsearch  "set highlight on search
set incsearch "set incremental search
set ignorecase smartcase

"spelling
"set spell spelllang=en_us

" no backup, no swap
set nobackup noswapfile undofile "no backup
set undodir=~/.vim/undodir

" set up bell
set noerrorbells visualbell
set autochdir "change current work directory to the file current in edit

set history=1000 "1000 history
set autoread

set list lcs=trail:·,tab:»· "listchars

set wildmenu
set wildmode=longest:list,full

" color scheme
let g:alduin_Shout_Dragon_aspect = 1
colorscheme alduin

nnoremap :W :w
nnoremap :Q :q


" Vundle config start
filetype off

"set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/.vim/path/to/install')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "use git in vim
Plugin 'airblade/vim-gitgutter' "list git diff
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bagrat/vim-buffet'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Vundle config send
call vundle#end()


"indent
filetype indent on "based on different type of file, use different indent policy
set autoindent   "autoindent

"NerdTree Config
autocmd vimenter * if !argc()|NERDTree|endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"set line number relative or not
noremap  <leader>t : NERDTreeToggle<CR>
nnoremap <leader>l : set relativenumber! set number! \| set number? set relativenumber? <CR>
nnoremap <leader>ps : sp<CR>
nnoremap <leader>pv : vsp<CR>

let g:airline_theme='simple'

