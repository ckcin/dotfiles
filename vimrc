set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vundle Bundle/Plugin lines
Plugin 'altercation/vim-colors-solarized' " http://ethanschoonover.com/solarized color scheme
"Plugin 'scrooloose/nerdtree.git' " NERDTree filemanager
Plugin 'jeetsukumaran/vim-buffergator' 
"Plugin 'nicoraffo/conque' " Shell terminal

Plugin 'wesQ3/vim-windowswap'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'

Plugin 'nacitar/a.vim'

Plugin 'vim-scripts/ccase.vim' " ClearCase helper

"---- retired ----
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'jistr/vim-nerdtree-tabs' " tabs for NERDTree
"Plugin 'vim-scripts/TabBar'
"Plugin 'bling/vim-bufferline'
"---- retired ----

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable solarized settings
syntax enable
set background=dark
colorscheme solarized

" map nerdtree
"map <C-n> :NERDTreeToggle<CR>

" buffer switching
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
"nnoremap <Leader>l :ls<CR>
"nnoremap <Leader>b :bp<CR>
"nnoremap <Leader>f :bn<CR>
"nnoremap <Leader>g :e#<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" ccase config
let g:ccaseNoComment=1

" other settings
set number

" filetype indents
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType cpp setlocal expandtab tabstop=3 shiftwidth=3
autocmd FileType sh setlocal autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2
