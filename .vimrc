" More vim than vi
set nocompatible

" Vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
Plugin 'Mustang2'
Plugin 'itchyny/lightline.vim'

call vundle#end()

" Indentation
filetype indent plugin on
set autoindent
set smartindent
set cindent

" Colorscheme
syntax enable
set t_Co=256
colorscheme Mustang

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Completion
set wildmenu
set wildmode=list:longest,list:full
set completeopt=menu,longest 

" Highlight search
set hls

" Show matching bracket
set showmatch

" Show line and column number of cursor position
set ruler

" Show line number
set number

" Enable mouse
set mouse=a

" Case insensitive when searching
set ignorecase

" Automatically reload file if changed outside vim
set autoread

" Tags
map <C-g>t :!ctags -R .<CR>
map <C-g>p :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Taglist
map <C-g>l :TlistToggle <CR>

" NerdTree
map <C-g>n :NERDTreeToggle <CR>
let NERDTreeHijackNetrw = 0

" Automatic session load
if filereadable("session.vim")
    source session.vim
endif

" GUI options 
" Remove menus and icons
set guioptions-=T

if has("gui_win32")
    set guifont=Consolas:h11:cANSI
endif

