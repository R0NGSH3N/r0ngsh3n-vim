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


" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
endfunction

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
Plugin 'easymotion/vim-easymotion'
Plugin 'ryanoasis/vim-devicons'
Plugin 'JamshedVesuna/vim-markdown-preview'


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
" easymotion search
noremap  <Leader>f  <Plug>(easymotion-bd-w)
nnoremap  <Leader>f <Plug>(easymotion-overwin-w)
" tab switcher
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
"noremap <Leader><Tab> :Bw<CR>
"noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap :W :w
nnoremap :Q :q

let g:airline_theme='simple'
let g:NERDTreeWinSize=60
let g:buffet_show_index=1

let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let vim_markdown_preview_github=1
