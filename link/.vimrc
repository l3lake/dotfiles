set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" My Plugins
Plugin 'bling/vim-airline'
Plugin 'ddollar/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'garbas/vim-snipmate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'bronson/vim-trailing-whitespace'


call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Map leader
let mapleader = ","
let g:mapleader = ","

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

" Quickly toggle line numbers
:nmap <C-N><C-N> :set invnumber<CR>

" Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

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
