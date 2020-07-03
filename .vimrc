set nocompatible                	"Use Vim settings, rather than Vi settings
set encoding=utf-8
set clipboard=unnamedplus

filetype off                    	"required!

set rtp+=~/.vim/bundle/Vundle.vim 	"Sets runtime path to include and init Vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jacoborus/tender.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'Yggdroot/indentLine'
Plugin 'dense-analysis/ale'
Plugin 'JamshedVesuna/vim-markdown-preview'

call vundle#end()		" required
filetype plugin indent on	" required

" Color scheme things
if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme tender

let g:airline_theme = 'tender'
" End color scheme things

" keyboard shortcuts
inoremap jk <Esc>
nmap <F6> :NERDTreeToggle<CR>

" markdown preview configs
let vim_markdown_preview_github=1
let vim_markdown_preview_use_xdg_open=1

" basic vim options
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set nu rnu
set nowrap
set colorcolumn=88
