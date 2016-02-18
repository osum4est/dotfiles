#!/bin/bash

DOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# Confirm actions
read -p 'This will erase all current dotfiles and the contents of ~/bin. Are you sure you want to continue? (Y/N)' answer
accept=0
case "${answer}" in [yY]|[yY][eE][sS])
    accept=1
esac
if [[ $accept = 0 ]]; then
    exit
fi

# Reset Current Files
rm -f ~/.config/i3/config
rm -f ~/.config/i3/i3blocks.conf
rm -f ~/.tmux.conf
rm -f ~/.vimrc
rm -f ~/.xinitrc
rm -f ~/.Xresources
rm -f ~/.zshrc
rm -rf ~/bin
echo "Reset current files"

# Link New Files
ln -s ${DOTDIR}/config/i3/config ~/.config/i3/config
ln -s ${DOTDIR}/config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -s ${DOTDIR}/tmux.conf ~/.tmux.conf
ln -s ${DOTDIR}/vimrc ~/.vimrc
ln -s ${DOTDIR}/xinitrc ~/.xinitrc
ln -s ${DOTDIR}/Xresources ~/.Xresources
ln -s ${DOTDIR}/zshrc ~/.zshrc
ln -s ${DOTDIR}/bin ~/
echo "Linked new files"

echo "Please read readme for further installation!"
