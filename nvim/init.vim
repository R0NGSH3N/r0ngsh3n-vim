" change leader key
let mapleader=" "

" set up tab/space
set tabstop=4 softtabstop=4 expandtab

" setup shift width
set shiftwidth=4 ">> << == 4 characters
set smartindent
set autoindent

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
set whichwrap+=<,>,h,l,[,] "move to next/previous line when click right/left key
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

" Vim-Plug init
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

" vim-plug manage start
call plug#begin('~/.config/nvim/plugged')
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'glepnir/galaxyline.nvim'
Plug 'glepnir/dashboard-nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-jdtls'
Plug 'hrsh7th/nvim-compe'

Plug 'bagrat/vim-buffet'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" vim-plug manage end
call plug#end()

" dashboard-nvim set up
let g:dashboard_default_executive ='telescope'

if has('nvim-0.5')
  augroup lsp
    au!
    "find_root looks for parent directories relative to the current buffer containing one of the given arguments.
    "au FileType java lua require('jdtls').start_or_attach({cmd = {'/home/rongshen/.config/nvim/jdt-language-server/start_jdtls'}})
    au FileType java lua require('jdtls').start_or_attach({cmd = {'/home/rongshen/.config/nvim/jdt-language-server/start_jdtls'}, root_dir = require('jdtls.setup').find_root({'gradle.build', 'pom.xml'})})

  augroup end
endif


"indent
filetype indent on "based on different type of file, use different indent policy
set autoindent   "autoindent

nnoremap <leader>l : set relativenumber! set number! \| set number? set relativenumber? <CR>
nnoremap <leader>ps : sp<CR>
nnoremap <leader>pv : vsp<CR>
"nnoremap <A-F4> : Bw<CR> "close current buffer
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
nnoremap  <silent> <A-F4>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bw<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap :W :w
nnoremap :Q :q

let g:airline_theme='simple'
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let vim_markdown_preview_github=1



"java related
inoremap pris<Space>  private String s;<CR>
inoremap prii<Space>  private Integer i;<CR>


source ~/.config/nvim/plugin-config/telescope.vim
source ~/.config/nvim/plugin-config/nvim-tree.vim
source ~/.config/nvim/plugin-config/nvim-jtdls.vim
source ~/.config/nvim/plugin-config/vim-buffet.vim
source ~/.config/nvim/plugin-config/vim-airline.vim
source ~/.config/nvim/plugin-config/nvim-compe.vim

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"java"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
}
EOF

