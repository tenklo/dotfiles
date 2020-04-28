setbg &
unclutter &
xsetroot -cursor_name left_ptr &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
dunst &
xmodmap ~/.Xmodmap &
sxhkd &
picom -b &
exec i3
