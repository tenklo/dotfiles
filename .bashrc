#
# ~/.bashrc
#
neofetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source aliases
[ -f ~/.config/bash/bash_aliases ] && source ~/.config/bash/bash_aliases
[ -f ~/.config/bash/shortcuts ] && source ~/.config/bash/shortcuts

PS1='[\u@\h \W]\$ '

# vi mode im terminal
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

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}
