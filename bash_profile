export GOROOT=$HOME/go
export GOPATH=$HOME
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export CDPATH=.:$GOPATH/src

PLAN9=$HOME/plan9port
if [ -d $PLAN9 ]; then
	export PLAN9
	export PATH=$PATH:$PLAN9/bin
fi

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
