#
# ~/.bashrc
#
neofetch
fortune -s
echo -e "\n"
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

if [[ $UID -ge 1000 && -d $HOME/.scripts/statusbar && -z $(echo $PATH | grep -o $HOME/.scripts/statusbar) ]]
then
    export PATH="${PATH}:$HOME/.scripts/statusbar"
fi

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

lf () {
    tmp="$(mktemp)"
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(command cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
