export EDITOR=vim
export PATH=/usr/local/bin:$PATH

if [ -d $HOME/go ]; then
    export GOROOT=$HOME/go
    export PATH=$GOROOT/bin:$PATH
    export GOPATH=$HOME
    export PATH=$GOPATH/bin:$PATH
fi

nitro=$HOME/tr/nitro
if [ -d $nitro ]; then
    export GOPATH=$GOPATH:$nitro/open-nitro:$nitro/lib:$nitro
fi

export CDPATH=.:$GOPATH/src/github.com/kisielk:$GOPATH/src

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
