set nocompatible               " be iMproved
filetype off                   " required!

" Check for windows or linux and set up vundle appropriately
if !empty(glob("~/.vim"))
   " folder .vim/ exists, assume on linux
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
else
   " no folder .vim/ exists, assume on windows and use vimfiles/
   set rtp+=~/vimfiles/bundle/vundle/
   let path='~/vimfiles/bundle'
   call vundle#begin(path)
endif

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'duff/vim-scratch'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'thisivan/vim-bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'bitfyre/vim-indent-html'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

runtime! macros/matchit.vim

if has('gui_running')
  set guifont=Inconsolata\ 13
endif

" Set temporary directory (don't litter local dir with swp/tmp files)
"set directory=~/tmp/vim_temp
set nobackup
set nowritebackup
set noswapfile
set hidden

"Use case-smart searching
set ignorecase
"set smartcase

" show the `best match so far' as search strings are typed:
set incsearch
set hlsearch

set title
set scrolloff=3
set shortmess=atI

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" Enable filetype-specific indenting, syntax, and plugins
syntax on

let mapleader = ","
" NERDTree CONFIGURATION

" Enable nice colors
let NERDChristmasTree = 1

" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1

" Make bookmarks visible
let NERDTreeShowBookmarks = 1

" Show hidden files
let NERDTreeShowHidden = 1

" Don't hijack NETRW
let NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\.$', '\~$']

" Make F2 open NERDTree
nmap <F2> :NERDTreeToggle<CR>

syntax enable
set background=dark
silent!  colorscheme solarized

" bitfyre/vim-indent-html
" Add tags that increase indent with let g:html_indent_inctags = "html,body,head,tbody"
" Remove tags with let g:html_indent_autotags = "th,td,tr,tfoot,thead" 
let g:html_indent_inctags = "html,body,head,tbody"

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" WINDOW SPLITTING

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" STATUS BAR CONFIG

set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset


