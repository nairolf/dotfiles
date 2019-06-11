" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    " Add your bundles here

    Plugin 'scrooloose/syntastic'               " uber awesome syntax and errors highlighter
    Plugin 'altercation/vim-colors-solarized'   " T-H-E colorscheme
    Plugin 'tpope/vim-fugitive'                 " So awesome, it should be illegal
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'scrooloose/nerdtree'

    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()
    " must be last

    filetype plugin indent on " load filetype plugins/indent settings
    syntax on                      " enable syntax
    set background=dark
    colorscheme solarized

" Setting up Vundle - the vim plugin bundler end