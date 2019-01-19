set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Core
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jiangmiao/auto-pairs'


Plugin 'https://github.com/w0rp/ale.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'


" Language
Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'andymass/vim-matchup'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'



" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'rakr/vim-one'
Plugin 'joshdick/onedark.vim'


call vundle#end()            " required


set number
set encoding=utf-8
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set visualbell


filetype plugin indent on


set tabstop=4
set expandtab
set shiftwidth=4

set autoindent
set smartindent

let g:airline_theme='minimalist'


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu
syntax on
colorscheme onedark


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1


map <C-n> :NERDTreeToggle<CR>


set hidden
