#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

#general
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="alacritty"
export DMENUFONT="Inconsolata-14"

#clipmenu config
export CM_IGNORE_WINDOW="Bitwarden"

#if [[ "$(tty)" == "/dev/tty2" ]]; then
#        pgrep i3 || startx
#else
figlet "Welcome   back, master." | lolcat
#fi
