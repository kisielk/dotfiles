export GOROOT=$HOME/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export CDPATH=.:$GOPATH/src

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
