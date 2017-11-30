#!/bin/bash
export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

export GOPATH=$HOME
export PATH
PATH=$GOPATH/bin:$PATH
PATH=$(go env GOROOT)/bin:$PATH
export CDPATH=.:$GOPATH/src/github.com/kisielk:$GOPATH/src:$HOME/intellijel

PLAN9=$HOME/plan9port
if [ -d "$PLAN9" ]; then
    export PLAN9
    export PATH=$PATH:$PLAN9/bin
fi

ARM_TOOLS=/Users/kamil/gcc-arm-none-eabi-4_9-2014q4/bin
if [ -d $ARM_TOOLS ]; then
    export PATH=$ARM_TOOLS:$PATH
fi

AVR32_TOOLS=/Users/kamil/monome/avr32-tools/bin
if [ -d "$AVR32_TOOLS" ]; then
    export PATH=$AVR32_TOOLS:$PATH
fi

if [ -f "$HOME/.bashrc" ]; then
    source "${HOME}"/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -d "$HOME/.rbenv" ]] && eval "$(rbenv init -)"

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

if [ -d  "/Applications/VMware Fusion.app" ]; then
    export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
fi

MACVIM_BIN=/Applications/MacVim.app/Contents/bin
if [ -d "$MACVIM_BIN" ]; then
    export PATH=${MACVIM_BIN}:$PATH
fi

# added by Anaconda3 4.4.0 installer
export PATH="/Users/kamil/anaconda/bin:$PATH"
