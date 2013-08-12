export EDITOR=vim
export GOROOT=$HOME/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH
export CDPATH=.:$GOPATH/src/github.com/kisielk:$GOPATH/src

PLAN9=$HOME/plan9port
if [ -d $PLAN9 ]; then
	export PLAN9
	export PATH=$PATH:$PLAN9/bin
fi

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
