# If not running interactively, don't do any more
[ -z "$PS1" ] && return

uname=$(uname | tr '[:upper:]' '[:lower:]')

# Completion on Linux / older Mac OS X
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Completion on new OS X
if [ -f /usr/local/bin/brew ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
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
"darwin"|"freebsd")
    export CLICOLOR=1
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
    ;;
esac

source $HOME/.git-prompt
export GIT_PS1_SHOWDIRTYSTATE="yes"
export GIT_PS1_SHOWSTASHSTATE="yes"
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1='\h:\w$(__git_ps1 " (%s)") \$ '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
