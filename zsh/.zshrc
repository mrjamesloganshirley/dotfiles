export TERM=xterm-256color

autoload -U colors && colors
. /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh

EDITOR=vim

# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && tmux new-session
fi
