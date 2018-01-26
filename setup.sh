#!/bin/bash

if [ ! -z "$1" ] 
  then
    echo "Installing Janus"
    curl -L https://bit.ly/janus-bootstrap | bash
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Configuring Vim"
ln -s $DIR/janus $HOME/.janus
ln -s $DIR/vimrc.after $HOME/.vimrc.after

echo "Complete"
