export DEFAULT_USER=`whoami`
export DOTFILES="$HOME/dotfiles"
export CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export VISUAL="nvim"
export ZDOTDIR=$CONFIG_HOME/zsh

source "$CONFIG_HOME/zsh/.zshrc"

if [ "$ZDOTDIR/local.zshrc" ]; then
   source $ZDOTDIR/local.zshrc
fi
