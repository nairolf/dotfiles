# add local shellscript dir to PATH 
export PATH=~/bin:$PATH

# phpenv settings
export PHPENV_ROOT="$HOME/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

# see https://github.com/zsh-users/antigen/issues/669
case $(uname -a) in
   *Microsoft*) unsetopt BG_NICE ;;
esac

export TERM=xterm-256color

ANTIGEN_PATH=~/dotfiles/antigen
ZSH_PATH=~/dotfiles/zsh

## plugin options

# zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=true

# tmux (https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#tmux)
# Automatically start a tmux session upon logging in
ZSH_TMUX_AUTOSTART='true'
#When running tmux, the variable $TERM is supposed to be set to screen or one of its derivatives. This option will set the default-terminal option of tmux to screen-256color if 256 color terminal support is detected, and screen otherwise.
ZSH_TMUX_FIXTERM=true

## theme options
# powerline10k
POWERLEVEL9K_MODE='nerdfont-complete'

source $ANTIGEN_PATH/bin/antigen.zsh

antigen init $ZSH_PATH/antigenrc.sh

source $ZSH_PATH/aliases.sh
