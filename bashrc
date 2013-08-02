uname=$(uname)

# If not running interactively, don't do any more
[ -z "$PS1" ] && return

# Completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# ls alias
if [ $uname == "Linux" ]; then
    eval `dircolors $HOME/.dir_colors`
    alias ls="ls --color=auto";
elif [ $uname == "Darwin" ]; then
    alias ls="ls -G";
fi
