" Map leader
let mapleader = ","
let g:mapleader = ","

" Local dirs
set backupdir=$DOTFILES/caches/vim
set directory=$DOTFILES/caches/vim
set undodir=$DOTFILES/caches/vim
" let g:netrw_home = expand('$DOTFILES/caches/vim')

let g:airline#extensions#tabline#enabled = 1

set nocompatible   " Disable vi-compatibility
set t_Co=256

colorscheme xoria256
set guifont=menlo\ 16
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" gui settings
set guifont=Menlo\Regular:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell                  " don't beep
set noerrorbells                " don't beep
set autowrite                   " Save on buffer switch
set mouse=a
set showcmd                     "Show (partial) command in the status line

" Fast saves
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>x :x!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

highlight Search cterm=underline

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote
imap <C-a> <esc>wa

" Zoom in
map <silent> ,gz <C-w>o

" Source current file Cmd-% (good for vim development)
nmap <silent> ,so :so %<CR>

"-------------------------------------------------------------------
"
" My Additions
"
"-------------------------------------------------------------------
" Toggle paste mode
nmap <silent> <leader>p :set invpaste<CR>:set paste?<CR>
imap <silent> <leader>pp :set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR

" Quickly toggle line numbers
:nmap <C-N><C-N> :set invnumber<CR>

" Toggle NERDTree
" map <leader>n :NERDTreeToggle<CR>

" Automatically open Nerdtree
autocmd vimenter * NERDTree

" Quickly write file as using sudo
map <leader>ww :!sudo tee > /dev/null %<cr>

" Quickly open vimrc.after
nmap <leader>vi :e ~/.vimrc.after<cr>

" Edit todo list for project
nmap ,todo :e todo.txt<cr>

" Quickly go forward or backward to buffer
"nmap <leader>bp :BufSurfBack<cr>
"nmap <leader>bn :BufSurfForward<cr>
nmap <leader>bh :bp<cr>
nmap <leader>bl :bn<cr>

" Quickly swtich between alternate buffers
nnoremap <leader><leader> <c-^>

" Create new tab
nmap <leader>nt :tabe<cr>

" Quickly go forward or backward b/t tabs
nmap <leader>tp gt<cr>
nmap <leader>tn gT<cr>

" Quickly turn off highlights
"nnoremap <leader><space> :noh<cr>
noremap nn :noh<cr>
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" Swap files out of the project root
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

" Gist https://github.com/mattn/gist-vim/blob/master/README.mkd#usage
let g:gist_clip_command = 'pbcopy'                      " Mac
let g:gist_clip_command = 'putclip'                     " Others
let g:gist_clip_command = 'xclip -selection clipboard'  " Linux
let g:gist_detect_filetype = 1                          " Let Gist detect filetype

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" redo
nmap <leader>r :red<cr>

"Load the current buffer in Chrome (mac)
nnoremap <leader>g :exe ':silent !open -a /Applications/Google\ Chrome.app %'<CR>

"Load the current buffer in Chrome (pc)
"map <silent> ,pc :!open -a Google\ Chrome %<CR><CR>

"-------------------------------------------------------------------
"
" Cowboy Additions
"
"-------------------------------------------------------------------

" Airline
" let g:airline_powerline_fonts = 1 " TODO: detect this?
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s '
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#fnamecollapse = 0
"let g:airline#extensions#tabline#fnamemod = ':t'

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMouseMode = 2
let NERDTreeMinimalUI = 1
" Open automatically if no files were specified on the CLI.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>n :NERDTreeToggle<CR>

" Buffer navigation
nnoremap <leader>b :CtrlPBuffer<CR> " List other buffers
map <leader><leader> :b#<CR> " Switch between the last two files
map gb :bnext<CR> " Next buffer
map gB :bprev<CR> " Prev buffer

" Indent Guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" https://github.com/junegunn/vim-plug
" Reload .vimrc and :PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ddollar/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'garbas/vim-snipmate'
Plug 'terryma/vim-multiple-cursors'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'bronson/vim-trailing-whitespace'
Plug 'flazz/vim-colorschemes'
" Plug 'spf13/spf13-vim'
" Plug 'fatih/vim-go'
" Plug 'tpope/vim-vinegar'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-commentary'
" Plug 'pangloss/vim-javascript'
" Plug 'mhinz/vim-signify'
call plug#end()
