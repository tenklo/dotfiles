#
# ~/.bashrc
#
neofetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias v='nvim'
alias vim='nvim'

alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias la='ls -lah'
alias lh='ls -lh'
alias .='ls -lh'

alias gitac='git add .;git commit'
alias killx='killall Xorg'

alias mnt='cd /mnt/; ls -lh'
alias h='cd ~; ls -lh'
alias nas='cd /media/nas; ls -lh'
alias d='cd ~/documents; ls -lh'
alias s='cd ~/documents/schule; ls -lh'
alias D='cd ~/Downloads; ls -lh'
alias n='cd ~/documents/nextcloud'
alias ..='cd ..; ls -lh'
alias .r='cd ~/.rcs; ls -lah'
alias .s='cd ~/.scripts; ls -lh'
alias its='cd ~/documents/schule/its; ls -lh'
alias sae='cd ~/documents/schule/sae; ls -lh'
alias deutsch='cd ~/documents/schule/deutsch; ls -lh'
alias bwl='cd ~/documents/schule/bwl; ls -lh'
alias englisch='cd ~/documents/schule/englisch; ls -lh'
alias gk='cd ~/documents/schule/gk; ls -lh'


#bitwarden unlock
alias unlockbw='export BW_SESSION="$(bw unlock --raw)"'

PS1='[\u@\h \W]\$ '

# vim mode im terminal
set -o vi

export PATH=$PATH:$HOME/.scripts
# If user ID is greater than or equal to 1000 & if ~/.scripts exists and is a directory & if ~/.scripts is not already in your $PATH
# then export ~/bin to your $PATH.
if [[ $UID -ge 1000 && -d $HOME/.scripts && -z $(echo $PATH | grep -o $HOME/.scripts) ]]
then
    export PATH="${PATH}:$HOME/.scripts"
fi
