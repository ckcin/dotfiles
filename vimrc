set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vundle Bundle/Plugin lines
"Plugin 'altercation/vim-colors-solarized' " http://ethanschoonover.com/solarized color scheme
Plugin 'jeetsukumaran/vim-buffergator' 
Plugin 'tpope/vim-vinegar' " file explorer built on netrw
Plugin 'nacitar/a.vim'

Plugin 'xolox/vim-misc'


"---- retired ----
"Plugin 'wesQ3/vim-windowswap'
"Plugin 'nicoraffo/conque' " Shell terminal
"Plugin 'scrooloose/nerdtree.git' " NERDTree filemanager
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'jistr/vim-nerdtree-tabs' " tabs for NERDTree
"Plugin 'vim-scripts/TabBar'
"Plugin 'bling/vim-bufferline'
"Plugin 'xolox/vim-session'
"Plugin 'vim-scripts/ccase.vim' " ClearCase helper
"---- retired ----

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable solarized settings
syntax enable
set background=dark
"colorscheme solarized

" key mappings
map <leader>f :E<cr> " load vim's builtin file explorer
map <leader>n :bnext<cr> " switch to next buffer
map <leader>p :bprevious<cr> " switch to previous buffer
map <leader>g :e#<cr> " switch to last used buffer

" buffer config
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" ccase config
let g:ccaseNoComment=1

" other settings
set number

" filetype indents
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType c setlocal expandtab tabstop=3 shiftwidth=3
autocmd FileType cpp setlocal expandtab tabstop=3 shiftwidth=3
autocmd FileType sh setlocal autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2
