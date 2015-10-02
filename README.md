# My vim setup

To use this vim setup, clone the repository in your home directory 

## Go to your user's home directory
```
cd ~
```

## You may need to create the .vim folder first, if it doesn't exist
```
mkdir .vim
```
## Now, clone the repo into the ~/.vim directory using --recursive (this repo uses git submodules, so none of the packages will download without that flag)
```
git clone --recursive https://amatusko@bitbucket.org/amatusko/vim-setup.git .vim/
```
## Next, you need to symlink the .vimrc file to ~ from inside the ~/.vim directory to ~/.vimrc so it can be read by vim when you open it.
```
ln -s .vim/.vimrc .vimrc
```
## And now you should have all of the plugins installed in the ~/.vim/bundle folder, and the individual package files should have contents.

## Using Nerdtree
### I have mapped "Ctrl+N to toggle nerdtree on and off. To get familiar with the commands, type :help NERDTree, or hit the ? character while in the tree.

## The packages installed with this repo are:
```
dash.vim  
fugitive  
gundo   
jslint  
nerdcommenter
nerdtree  
syntastic  
--tlib_vim
--vim-addon-mw-utils
tagbar     
vim-airline
vim-fugitive
```
## if you are looking for a simpler setup, add the following lines to your .vimrc file in your home ~/ directory:
## These are basic settings that set defaults for your vim setup. Any of these lines can be entered while using vim by just preceding it with a ":" (e.g. ":set nowrap" to remove line wrapping)
```
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
" show matching bracket for 0.2 second
set matchpairs+=<:>
set confirm
" Can't forget the colorscheme. Other good options are: ron, murphy, koehler, and lots of others.
" You can see all the options if you enter :colorscheme <TAB> with the above configuration
```
