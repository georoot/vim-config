" Global configuration
set nocompatible
syntax enable
filetype on
set number
let mapleader=","
set hlsearch
set incsearch
set backspace=indent,eol,start
set autoread
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'honza/vim-snippets'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'wakatime/vim-wakatime'
"Plugin 'digitaltoad/vim-pug'
Plugin 'digitaltoad/vim-jade'

call vundle#end()

filetype plugin indent on

" File controls
nnoremap <Leader>q :q!<CR>
nnoremap ss :w!<CR>
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Insert mode controls
inoremap jj <Esc>
inoremap ddd <Esc>ddO
"inoremap <Esc> <nop>

" Movement mappings
onoremap p i(
onoremap b ap

" Indentation settings
set tabstop=4
set shiftwidth=4
set expandtab

" Colorscheme
colorscheme molokai

" Gist configuration
let g:gist_show_privates = 1
let g:gist_post_private = 1

" YCM Configuration
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Undo configuration
set undodir=~/.vim/undo
set undofile

" functions
function GitCommit()
    exec ':silent !git add .&&git commit -S -m "WIP"'
    redraw!
    echo "Commit made to repo"
endfunction

nnoremap <Leader>gc :call GitCommit()<CR>

" Easymotion
let g:EasyMotion_leader_key = 's'

" Ctrp ignore files
set wildignore+=tmp/**
set wildignore+=Session.vim
set wildignore+=node_modules/**
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*

" Window motions
nnoremap <S-j> <C-W>j
nnoremap <S-k> <C-W>k
nnoremap <S-h> <C-W>h
nnoremap <S-l> <C-W>l

" Visual mode controls
vnoremap < <gv
vnoremap > >gv

" Airline configuration
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Emmet configuration
let g:user_emmet_leader_key=','
