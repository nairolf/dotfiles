" see https://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
source ~/dotfiles/vim/install-vundle.vim

" Configuration options
" General
set number          " Show line numbers
set linebreak	    " Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=120	" Line wrap (number of cols)
set showmatch	    " Highlight matching brace
set visualbell	    " Use visual bell (no beeping)

set hlsearch	    " Highlight all search results
set smartcase	    " Enable smart-case search
set ignorecase	    " Always case-insensitive
set incsearch	    " Searches for strings incrementally

set autoindent	    " Auto-indent new lines
set expandtab	    " Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	    " Enable smart-indent
set smarttab	    " Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

" set mouse=a

" Advanced
set ruler	" Show row and column ruler information

set undolevels=1000         	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" Always show statusline (needed for airline)
set laststatus=2

" theme options
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" commands
map <C-o> :NERDTreeToggle<CR>

" resize window CTRL+(h|j|k|l)
" noremap <C-j> :resize +1<CR>
" noremap <C-k> :resize -1<CR>
" noremap <C-h> :vertical resize -1<CR>
" noremap <C-l> :vertical resize +1<CR>