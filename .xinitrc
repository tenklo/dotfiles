feh --recursive --randomize --bg-fill ~/documents/bgs &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
dunst &
xmodmap ~/.Xmodmap &
sxhkd &
picom -b &
exec i3
