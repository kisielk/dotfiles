eval `dircolors $HOME/.dir_colors`
alias ls="ls --color"

export GOROOT=/home/kamil/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export CDPATH=.:$GOPATH/src
