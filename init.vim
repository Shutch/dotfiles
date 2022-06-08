set nocompatible                	"Use Vim settings, rather than Vi settings
set encoding=utf-8
set clipboard+=unnamedplus
set hidden

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cocopon/iceberg.vim'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'davidhalter/jedi'
Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'vimwiki/vimwiki'

call plug#end()

colorscheme iceberg
set background=dark
let g:airline_theme = 'iceberg'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" basic vim options
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set nu rnu
set nowrap
set colorcolumn=88

" Folding code
au BufNewFile,BufRead *.py
    \ set foldmethod=indent

au BufNewFile,BufRead *.rs
    \ set foldmethod=syntax

nnoremap <space> za

" Linters
let g:ale_linters = {
      \   'python': ['flake8'],
      \   'rust': ['rls'],
      \}

" Jump to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format-selected)

" Display docs
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Renaming 
nmap <leader>rn <Plug>(coc-rename)

" Tab completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

