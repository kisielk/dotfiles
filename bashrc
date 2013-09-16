uname=$(uname)

# If not running interactively, don't do any more
[ -z "$PS1" ] && return

# Completion on Linux / Mac OS X
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Completion on FreeBSD
[ -f /usr/local/share/bash-completion/bash_completion.sh ] && \
        source /usr/local/share/bash-completion/bash_completion.sh

# ls colors
case "$uname" in
"linux")
    eval `dircolors $HOME/.dir_colors`
    alias ls="ls --color=auto";
    ;;
"Darwin"|"FreeBSD")
    export CLICOLOR=1
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
    ;;
esac
