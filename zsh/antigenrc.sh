## be able to load oh-myzsh plugins
antigen use oh-my-zsh

## theme
antigen theme romkatv/powerlevel10k

## plugins
# oh-my-zsh plugins
antigen bundle docker
antigen bundle git
antigen bundle git-fast
antigen bundle git-flow
antigen bundle tmux
# Change directory based on history (https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#z)
antigen bundle z

# antigen bundle xellos866/php-version_rcfile-switcher
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

# this must be last!!
antigen bundle zsh-users/zsh-syntax-highlighting

## load everything
antigen apply
