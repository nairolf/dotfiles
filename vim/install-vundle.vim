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
    " https://github.com/tpope/vim-fugitive
    Plugin 'tpope/vim-fugitive'                 " So awesome, it should be illegal
    " https://github.com/vim-airline/vim-airline"
    Plugin 'vim-airline/vim-airline'
    " https://github.com/vim-airline/vim-airline-themes"
    Plugin 'vim-airline/vim-airline-themes'
    " https://github.com/airblade/vim-gitgutter"
    Plugin 'airblade/vim-gitgutter'
    " https://github.com/preservim/nerdtree"
    Plugin 'scrooloose/nerdtree'
    " https://github.com/aserebryakov/vim-todo-lists"
    Plugin 'aserebryakov/vim-todo-lists'

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
