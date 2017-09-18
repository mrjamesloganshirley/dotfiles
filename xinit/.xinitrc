if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export LANG=en_US.UTF-8
xrdb -merge ~/.Xresources

## some applications that should be run in the background
xscreensaver -no-splash &
dunst &

xsetroot -cursor_name left_ptr &

sxhkd &
BG_IMAGE=`ls ~/Pictures/Backgrounds/ | shuf -n 1`
feh --bg-center ~/Pictures/Backgrounds/$BG_IMAGE

exec bspwm
