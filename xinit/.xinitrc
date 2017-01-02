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

feh --bg-center ~/Pictures/Backgrounds/wallup-138896.jpg

xsetroot -cursor_name left_ptr &

sxhkd &
exec bspwm
