setbg &
xautolock -time 5 -locker lock &
unclutter &
xsetroot -cursor_name left_ptr &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
dunst &
xmodmap ~/.Xmodmap &
sxhkd &
picom -b &
#nextcloud &
exec i3
exec bspwm
