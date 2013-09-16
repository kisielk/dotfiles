#!/usr/bin/env bash
shopt -s extglob
dotfiles=$(pwd)
for f in !(*.sh); do
    ln -svf $dotfiles/$f $HOME/.$f
done
