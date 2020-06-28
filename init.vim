" taken from https://github.com/gcapizzi/nvim

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ajh17/VimCompletesMe'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
call plug#end()


" Settings and mappings
colorscheme elflord
highlight Pmenu ctermbg=gray guibg=gray
" set cursorline
highlight clear CursorLine
highlight clear CursorLineNr
" highlight CursorLineNr gui=bold guifg=#121212 guibg=#7d7d7d

set hidden
set autoindent
set ignorecase
set smartcase
set undofile
set tabstop=2
set shiftwidth=2
set expandtab
set guicursor=

set laststatus=0 " always show status line
" status line
set statusline =%0*\[%n]                          " buffer no.
set statusline+=\ %<%F\                           " file path
set statusline+=\ %y\                             " file type
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''} " encoding 1
set statusline+=\ %{(&bomb?\",BOM\":\"\")}\       " encoding 2
set statusline+=\ %{&ff}\                         " format
"set statusline+=\ \[%{v:register}]\               " active reg
set statusline+=\ %=\ %l\ /\ %L\ (%3p%%)\         " line no. and pct
set statusline+=\ :%03v\                          " column no.
set statusline+=\ \ %m%r%w\ %P\ \                 " modified, ro, screen pos

" hi statusline guibg=#cccccc ctermfg=1 guifg=#2e2e2e ctermbg=0

" Signify color
" highlight SignColumn guibg=#131313 

"" idk
" map <c-l> :noh<cr>

"" Files fzf search
map <c-p> :Files<cr>

"" Rg ripgrep search
map <c-i> :Rg<cr>

"" C-w C-w for switching window 
map <C-n> :NERDTreeToggle<CR>

" Hide tmux status when in vim
" autocmd VimEnter,VimLeave * silent !tmux set status
