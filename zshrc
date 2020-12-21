source ~/dotfiles/zsh/zshrc.sh
export PHPENV_ROOT="${HOME}/.phpenv"
if [[ -d "${PHPENV_ROOT}" ]]; then
  # phpenv settings
  export PATH="${PHPENV_ROOT}/bin:${PATH}";
  eval "$(phpenv init -)";
fi
