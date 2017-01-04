HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

export TERM=xterm-256color
# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && tmux new-session
fi


# advanced autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# better history search
# powerline
autoload -U colors && colors
. /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh

EDITOR=vim
bindkey -v

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down


