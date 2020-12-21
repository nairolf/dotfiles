# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/sbin:$PATH

# add local shellscript dir to PATH
export PATH=~/bin:$PATH

# add brew installed ruby
export RUBY_HOME=/usr/local/opt/ruby/bin
export PATH=$RUBY_HOME:$PATH

# add brew installed ruby gem PATH
export GEM_PATH=/usr/local/opt/ruby/lib/ruby/gems/2.7.0
export GEM_HOME=$GEM_PATH
export PATH=$GEM_HOME/bin:$PATH

# composer bin directory
export PATH=~/.composer/vendor/bin:$PATH

# see https://github.com/zsh-users/antigen/issues/669
case $(uname -a) in
   *Microsoft*) unsetopt BG_NICE ;;
esac

export TERM=xterm-256color

ANTIGEN_PATH=~/dotfiles/antigen
ZSH_PATH=~/dotfiles/zsh

# install zsh completion with homebrew: brew install zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

## plugin options

# zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=true


## tmux (https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#tmux)
# tmux installed with brew install tmux
# Automatically start a tmux session upon logging in
ZSH_TMUX_AUTOSTART='false'
#When running tmux, the variable $TERM is supposed to be set to screen or one of its derivatives. This option will set the default-terminal option of tmux to screen-256color if 256 color terminal support is detected, and screen otherwise.
ZSH_TMUX_FIXTERM=true

## theme options
# powerlevel10k
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time php_version ip)

# antigen installed with brew install antigen
source /usr/local/share/antigen/antigen.zsh

antigen init $ZSH_PATH/antigenrc.sh

source $ZSH_PATH/aliases.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
