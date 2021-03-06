#!/usr/bin/env zsh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ ! -f ~/.localrc ]; then
  echo "Creating $HOME/.localrc for your personal settings"
  echo "!!! Please edit !!!"
  cp $SCRIPTPATH/localrc.example $HOME/.localrc
else
  echo "!!! File $HOME/.localrc already exists. Doing nothing !!!"
fi

source $HOME/.localrc
