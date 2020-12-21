alias vi=vim

# Exa, ls on fire!! (https://github.com/ogham/exa)
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons --header --modified --created --long -a -s type'
fi

# if hash exa 2>/dev/null; then
#     #exa - A modern replacement for ls (https://the.exa.website/)
#     alias ee="exa --long --header --git --modified --created --time-style=default -F"
#     alias ea="exa --long --header --git --modified --created --time-style=default -F -a"
#     alias et="exa --long --header --git --modified --created --time-style=default -F -a --sort=modified -r"
#     alias etree="exa --tree --long --header --git --modified --created --time-style=default -F -L=2"
# fi

# docker-compose
alias docc=docker-compose
alias doc=docker
