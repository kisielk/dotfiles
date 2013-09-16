uname=$(uname)

# If not running interactively, don't do any more
[ -z "$PS1" ] && return

# Completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# ls alias
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
