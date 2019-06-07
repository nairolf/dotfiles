# see https://github.com/zsh-users/antigen/issues/669
case $(uname -a) in
   *Microsoft*) unsetopt BG_NICE ;;
esac

export TERM=xterm-256color

ANTIGEN_PATH=~/.dotfiles
source $ANTIGEN_PATH/antigen/antigen.zsh

antigen init $ANTIGEN_PATH/zsh/antigenrc.sh


## theme options
# powerline10k
POWERLEVEL9K_MODE='nerdfont-complete'
