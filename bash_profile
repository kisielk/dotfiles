export EDITOR=vim
export PATH=/usr/local/bin:$PATH

export GOROOT=$HOME/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

export CDPATH=$GOPATH/src/github.com/kisielk:$GOPATH/src
if [ -d $HOME/kiip ]; then
    export CDPATH=$HOME/kiip:$CDPATH
fi
export CDPATH=.:$CDPATH

PLAN9=$HOME/plan9port
if [ -d $PLAN9 ]; then
    export PLAN9
    export PATH=$PATH:$PLAN9/bin
fi

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

if [ -d  "/Applications/VMware Fusion.app" ]; then
    export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
fi
