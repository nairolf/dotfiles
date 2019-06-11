alias vi=vim

if hash exa 2>/dev/null; then
    #exa - A modern replacement for ls (https://the.exa.website/)
    alias ee="exa --long --header --git --modified --created --time-style=default -F"
    alias ea="exa --long --header --git --modified --created --time-style=default -F -a"
    alias et="exa --long --header --git --modified --created --time-style=default -F -a --sort=modified -r"
    alias etree="exa --tree --long --header --git --modified --created --time-style=default -F -L=2"
fi