#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="alacritty"

#if [[ "$(tty)" == "/dev/tty2" ]]; then
#        pgrep i3 || startx
#else
echo "Welcome back, master."
#fi
