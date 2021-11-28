#!/bin/zsh

setopt AUTO_CD                  # Go to folder path without using cd.

# HISTORY
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Do not auto update brew
export HOMEBREW_NO_AUTO_UPDATE=1

# PATHS
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/go/bin/:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# aliases and functions
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/functions.zsh

# plugins
source $ZDOTDIR/plugins/git.zsh
source $ZDOTDIR/plugins/bd.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-z/zsh-z.plugin.zsh
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)

# source $ZDOTDIR/plugins/zsh-history-substring-search.zsh
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

# search history
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# [Ctrl-RightArrow] - move forward one word
bindkey -M emacs '^[[1;5C' forward-word
bindkey -M viins '^[[1;5C' forward-word
bindkey -M vicmd '^[[1;5C' forward-word

# [Ctrl-LeftArrow] - move backward one word
bindkey -M emacs '^[[1;5D' backward-word
bindkey -M viins '^[[1;5D' backward-word
bindkey -M vicmd '^[[1;5D' backward-word

autoload -U compinit; compinit -d "$ZSH_COMPDUMP"

# PROMPT
fpath=($ZDOTDIR/prompt $fpath)
autoload -U promptinit && promptinit
prompt purity

# FNM
eval "$(fnm env)"

