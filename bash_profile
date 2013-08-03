export EDITOR=vim
export GOROOT=$HOME/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH
export CDPATH=.:$GOPATH/src/github.com/kisielk:$GOPATH/src

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
