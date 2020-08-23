#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

#communicate to java that wm is non-reparanting (neccessary for phpstorm eg)
export _JAVA_AWT_WM_NONREPARENTING=1

#general
export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="alacritty"
export READER="zathura"
export DMENUOPTIONS="-fn 'Inconsolata-16' -b -i"

#cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"


#schulproxy
#http_proxy="http://proxy.its-stuttgart.de:3128/"
#https_proxy="http://proxy.its-stuttgart.de:3128/"
#ftp_proxy="http://proxy.its-stuttgart.de:3128/"
#no_proxy="localhost,127.0.0.1,.its-stuttgart.de"
#HTTP_PROXY="http://proxy.its-stuttgart.de:3128/"
#HTTPS_PROXY="http://proxy.its-stuttgart.de:3128/"
#FTP_PROXY="http://proxy.its-stuttgart.de:3128/"
#NO_PROXY="localhost,127.0.0.1,.its-stuttgart.de"

#clipmenu config
export CM_IGNORE_WINDOW="Bitwarden"

#if [[ "$(tty)" == "/dev/tty2" ]]; then
#        pgrep i3 || startx
#else
figlet "Welcome   back, master." | lolcat
#fi
