#!/bin/bash
if [ ! -d $HOME/.homesick/repos/homeshick ]; then
    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
fi

if [ ! -d $HOME/.homesick/repos/dotfiles ]; then
    $HOME/.homesick/repos/homeshick/bin/homeshick clone mattlong/dotfiles
fi
