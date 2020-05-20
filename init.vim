" Set default tabs to two spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Enable mouse support
set mouse=a

" Show line numbers
set number

" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Functionality
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'ycm-core/youcompleteme'
Plug 'bfrg/vim-cpp-modern'

" Appearance
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

" Configure theme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Tagbar Toggle
nmap <C-t> :TagbarToggle<CR>

" NERDTree toggle
nmap <C-n> :NERDTreeToggle<CR>

" Fix highlighting issue in NERDTree
hi NERDTreeFile ctermfg=7

" Configure vim airline
let g:airline#extensions#tabline#enabled = 1

" Show just the filename in tab list
let g:airline#extensions#tabline#fnamemod = ':t'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" always show signcolumns
set signcolumn=yes
