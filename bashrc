# If not running interactively, don't do any more
[ -z "$PS1" ] && return

uname=$(uname)

# Completion on Linux / older Mac OS X
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Completion on new OS X
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

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

export PS1='\u $? \j \w \$ '
