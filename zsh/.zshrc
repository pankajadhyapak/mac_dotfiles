export DEFAULT_USER=`whoami`
export DOTFILES="$HOME/dotfiles"
export CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export VISUAL="nvim"
export ZDOTDIR=$CONFIG_HOME/zsh
export HISTFILE="$HOME/.zhistory"
export ZSH_COMPDUMP="$HOME/.zcompdump"

source "$CONFIG_HOME/zsh/.zshrc"

if [  -f "$HOME/local.zshrc" ]; then
   source $HOME/local.zshrc
fi
