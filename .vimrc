"-------------- ricgabzZz --------------"
set nocompatible              			" be improved, required
filetype off                  			" required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'ap/vim-css-color'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'isRuslan/vim-es6'
Plugin 'kaicataldo/material.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            			" required
filetype plugin indent on    			" required

"---------NERDTREE----------------------"
execute pathogen#infect()
filetype plugin indent on
set t_CO=256

"---------VIM JSX SYNTAX HIGLIGHTER-----"
augroup filetype javascript syntax=javascript

"---------VCOOLOR-----------------------"
let g:vcoolor_lowercase = 1

"---------USED FOR POWERLINE------------"
set laststatus=2
set guifont=SpaceMono_Nerd_Font:h17
"set guifont=FiraCode:h17
"set guifont=Hack:h17
"set guifont=DankMono:h17

"---------COLOR SCHEMES-----------------"
"colorscheme Tomorrow-Night-Eighties
"colorscheme firewatch
colorscheme zenburn
syntax on
"highlight Normal ctermfg=grey
"highlight Comment cterm=italic

"---------TABBING-----------------------"
set number
set encoding=utf-8
"set tabstop=2 shiftwidth=2
set softtabstop=2
"show existing tab with 4 spaces width
set tabstop=2
"when indenting with '>', use 4 spaces width
set shiftwidth=2
"On pressing tab, insert 4 spaces
set expandtab

set nobackup
set nowritebackup
set noswapfile
set guioptions-=L
set guioptions-=r
set relativenumber
set scrolloff=999

"--------SHOW INVISIBLE MARKS-------"
set lcs=tab:\.\ ,trail:.,eol:¬,nbsp:_
set list

"------------MAPPINGS--------------"
nmap ne :NERDTreeToggle<cr>
nmap ,ev :tabedit ~/.vimrc<cr>
nmap ,tn :tabNext<cr>
nmap ,tp :tabprevious<cr>
nmap ,tc :tabclose<cr>
nmap ,r :source ~/.vimrc<cr>
nmap ,c :VCoolor<cr>
set cursorline
set noexpandtab

"-----------AUTO COMMANDS----------"
autocmd VimEnter * NERDTree
"remove trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
cd ~/Documents/projects/krh

"-----------FOR MACVIM-------------"
set belloff=all
set noerrorbells
set novisualbell
set nocursorline
set t_vb=
autocmd! GUIEnter * set vb t_vb=
set mouse=c
"autocmd VimLeave * macaction terminate:

"--------SPLIT MANAGEMENT----------"
set splitbelow
set splitright

"-----------CODING STYLE-----------"
set colorcolumn=100
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--------CUSTOM MAPPINGS-----------"
nmap ,jp :tabedit /Applications/MAMP/htdocs/sanyoutekkoujo-frontend/app/translation/jp.js<cr>
nnoremap <F3> :set hlsearch!<CR>

