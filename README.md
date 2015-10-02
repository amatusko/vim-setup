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
## Now, clone the repo into the ~/.vim directory using --recursive
## (this repo uses git submodules, so none of the packages will download without that flag)
```
git clone --recursive https://amatusko@bitbucket.org/amatusko/vim-setup.git .vim/
```
## Next, you need to symlink the .vimrc file to ~ from inside the ~/.vim directory (makes it easier for versioning)
```
ln -s .vim/.vimrc .vimrc
```
## And now you should have all of the plugins installed in the ~/.vim/bundle folder, and the individual package files should have contents.

## The packages installed with this repo are:

dash.vim  
gundo   
neocomplcache.vim  
nerdtree  
syntastic  
vim-airline
fugitive  
jslint  
nerdcommenter      
snipmate  
tagbar     
vim-fugitive
