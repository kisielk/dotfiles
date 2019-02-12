#!/bin/bash
export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

export GOPATH=$HOME
export PATH
PATH=$GOPATH/bin:$PATH
if [ "$(which go)" ]; then
    PATH=$(go env GOROOT)/bin:$PATH
fi
export CDPATH=.:$GOPATH/src/github.com/kisielk:$GOPATH/src:$HOME/intellijel

PLAN9=$HOME/plan9port
if [ -d "$PLAN9" ]; then
    export PLAN9
    export PATH=$PATH:$PLAN9/bin
fi

DOT_LOCAL_BIN=$HOME/.local/bin
if [ -d "$DOT_LOCAL_BIN" ]; then
    export PATH=$PATH:$DOT_LOCAL_BIN
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

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

if [ -d  "/Applications/VMware Fusion.app" ]; then
    export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kamil/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kamil/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kamil/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kamil/Downloads/google-cloud-sdk/completion.bash.inc'; fi

CARGO_PATH=$HOME/.cargo/bin
if [ -d "$CARGO_PATH" ]; then
    export PATH="$CARGO_PATH:$PATH"
fi
