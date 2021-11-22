#!/bin/zsh

setopt AUTO_CD                  # Go to folder path without using cd.

# HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
export HISTSIZE=32768            # Larger bash history (allow 32³ entries; default is 500)
export HISTFILESIZE=$HISTSIZE
export HISTFILE="$ZDOTDIR/.zhistory"

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

autoload -U compinit; compinit

# PROMPT
fpath=($ZDOTDIR/prompt $fpath)
autoload -U promptinit && promptinit
prompt purity

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pankaj/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pankaj/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pankaj/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pankaj/google-cloud-sdk/completion.zsh.inc'; fi

# eval "$(starship init zsh)"
# SPACESHIP_GIT_PREFIX="${SPACESHIP_GIT_PREFIX=''}"
