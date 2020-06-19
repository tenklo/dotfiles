#
# ~/.bashrc
#
neofetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source aliases
[ -f ~/.config/bash/bash_aliases ] && . ~/.config/bash/bash_aliases

PS1='[\u@\h \W]\$ '

# vim mode im terminal
set -o vi

#export PATH=$PATH:$HOME/.scripts
# If user ID is greater than or equal to 1000 & if ~/.scripts exists and is a directory & if ~/.scripts is not already in your $PATH
# then export ~/.scripts to your $PATH.
if [[ $UID -ge 1000 && -d $HOME/.scripts && -z $(echo $PATH | grep -o $HOME/.scripts) ]]
then
    export PATH="${PATH}:$HOME/.scripts"
fi

if [[ $UID -ge 1000 && -d $HOME/.local/dwm/dwmblocks/scripts && -z $(echo $PATH | grep -o $HOME/.local/dwm/dwmblocks/scripts) ]]
then
    export PATH="${PATH}:$HOME/.local/dwm/dwmblocks/scripts"
fi
