#!/bin/bash

DOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "These configs need the following:"
echo "* i3"
echo "* i3blocks"
echo "* tmux"
echo "* vim"
echo "* URxvt"
echo "* zsh"
echo

# Reset Current Files
rm -f ~/.config/i3/config
rm -f ~/.config/i3/i3blocks.conf
rm -f ~/.tmux.conf
rm -f ~/.vimrc
rm -f ~/.xinitrc
rm -f ~/.Xresources
rm -f ~/.zshrc
echo "Reset current files"

# Link New Files
ln -s ${DOTDIR}/config/i3/config ~/.config/i3/config
ln -s ${DOTDIR}/config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -s ${DOTDIR}/tmux.conf ~/.tmux.conf
ln -s ${DOTDIR}/vimrc ~/.vimrc
ln -s ${DOTDIR}/xinitrc ~/.xinitrc
ln -s ${DOTDIR}/Xresources ~/.Xresources
ln -s ${DOTDIR}/zshrc ~/.zshrc
echo "Linked new files"

echo "NOTES:"
echo "vim: Run ':PluginInstall'"
echo "vim: instant-markdown: npm -g install instant-markdown-d, install xdg-utils"
