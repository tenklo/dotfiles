#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#communicate to java that wm is non-reparanting (neccessary for phpstorm eg)
export _JAVA_AWT_WM_NONREPARENTING=1

#general
export EDITOR="nvim"
export BROWSER="o"
export TERMINAL="st"
export READER="zathura"
export PAGER=w3m
export MANPAGER=less

#cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
# export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE="-"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export AZURE_CONFIG_DIR=$XDG_DATA_HOME/azure
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NVM_DIR="$XDG_DATA_HOME"/nvm
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export HISTFILE="$XDG_DATA_HOME"/bash/history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export ABDUCO_SOCKET_DIR="$XDG_CONFIG_HOME"

#clipmenu config
export CM_IGNORE_WINDOW="Bitwarden|Pass|pass"

if [[ "$(tty)" == "/dev/tty1" ]]; then
    pidof Xorg >/dev/null 2>&1 || startx "$XDG_CONFIG_HOME"/X11/xinitrc
else
    figlet "Welcome   back, master." | lolcat
fi
