call plug#begin('~/.local/share/nvim/plugged')
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'vim-scripts/indentLine.vim'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" See https://hackernoon.com/5-vim-plugins-i-cant-live-without-for-javascript-development-f7e98f98e8d5 for more info on the following plugins
" Quick Example. Use :NR to put selected text alone in a buffer
Plug 'chrisbra/NrrwRgn'
Plug 'mxw/vim-jsx'
Plug 'sonph/onehalf'
Plug 'jremmen/vim-ripgrep'
call plug#end()

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>
set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

set number
syntax on
set t_Co=256
set cursorline
" colorscheme onehalflight
" colorscheme onehalfdark
colorscheme inkpot
" colorscheme atom-dark
" colorscheme jellybeans

" set background=dark
" colorscheme PaperColor

" colorscheme harlequin
" colorscheme distinguished

" colorscheme challenger_deep

" let g:airline_theme='onehalfdark'
" " lightline
" let g:lightline.colorscheme='onehalfdark'

let g:jsx_ext_required = 1

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" default, palenight, ocean, lighter, darker, 
" default-community, palenight-community, ocean-community, lighter-community, darker-community
" let g:material_theme_style = 'default'
" colorscheme material
" set number

nnoremap <C-p><C-h> :cd %:p:h<CR>
nnoremap <C-n><C-t> :NERDTreeToggle %:p:h<CR>
" Open terminal in the current directory
nnoremap <C-o><C-t> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
" Ignore .git directory and whatnot and respect .gitignore when searching
nnoremap <expr> <C-_> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
map <space> <C-w>

command! JKgetconf :e ~/.config/nvim/init.vim
command! JKreconf source ~/.config/nvim/init.vim

