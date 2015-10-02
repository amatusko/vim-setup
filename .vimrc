" Following lines added by drush vimrc-install on Wed, 21 Jan 2015 21:11:28 +0000.
set nocompatible
call pathogen#infect('/Users/amatusko/.drush/vimrc/bundle/{}')
call pathogen#infect('/Users/amatusko/.vim/bundle/{}')
" End of vimrc-install additions.
execute pathogen#infect()
" Following lines added by drush vimrc-install on Thu, 16 Oct 2014 18:39:34 +0000.
set nocompatible
"call pathogen#infect('/home/quickstart/.drush/vimrc/bundle')
call pathogen#infect('/home/quickstart/.drush/vimrc/bundle/{}')
"call pathogen#infect('/home/quickstart/.vim/bundle')
call pathogen#infect('/home/quickstart/.vim/bundle/{}')
" Enable NerdTree and Load Automatically
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Gundo toggle undo tree
nnoremap <F5> :GundoToggle<CR>
" airline
let g:airline#extensions#tabline#enabled = 1
" Neocompletecache
let g:neocomplcache_enable_at_startup = 1

" End of vimrc-install additions.

syn on
set ruler
set tabstop=2
set expandtab
set shiftwidth=2
set ai
set hlsearch
set incsearch
" set textwidth=80
set autowrite
set highlight=l:ErrorMsg
set ignorecase
set smartcase
set scrolloff=2
set wildmode=longest,list
set nocompatible
set noswapfile

" display settings
set background=dark
" enable for dark terminals
set nowrap              " dont wrap lines 
set scrolloff=2         " 2 lines above/below cursor whe
set number              " show line number
set showmatch
" show matching bracket (briefly jump)
set showmode            " show mode in status bar (insert/replace/..
set showcmd             " show typed command in status b
set ruler               " show cursor position in status ba
set title               " show file in titleba
set wildmenu            " completion with me
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,
set laststatus=2        " use 2 lines for the status bar set matchtime=2      
" # show matching bracket for 0.2 second
set matchpairs+=<:>
set confirm

"Enable iTerm to use 256 colors in vim
set t_Co=256

" I prefer koheler, murphy but setting to slate so I don't mistake dev for prod with both windows open
colorscheme elflord

filetype plugin on

" From http://statico.github.io/vim.html
" Up and down keys go to wrapped section of line insted of skipping lines... Big annoyance!
:nmap j gj
:nmap k gk
" Use \l to toggle line numbers
:nmap \l :setlocal number!<CR>
" Use \o to toggle paste mode
:nmap \o :set paste!<CR>
" a key which toggles the visibility of the tree:
:nmap \e :NERDTreeToggle<CR>
" Everybody has a color scheme they’re comfortable with. Modern terminals support 256 colors, but sometimes you need to kick Vim to recognize this:
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
