alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias s="newScratchpad"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"
alias cleardns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache flushed"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ez="subl $ZDOTDIR/.zshrc"
alias sz="source ~/.zshrc"
alias art="php artisan"
alias code="cd ~/Documents/code"
alias sites="cd ~/Documents/sites"
alias gocode="cd ~/Documents/gocode"
alias esubsnip="subl ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets"
alias ls="lsd -la"
alias essh="subl ~/.ssh"
alias helm2="/usr/local/opt/helm@2/bin/helm"
alias youtdl='youtube-dl -o "~/Documents/Youtube_Videos/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" --all-subs --external-downloader aria2c'
alias n="nvim"
alias nc="n ~/.config"
# GIT
# --------------------------------------------
alias gs="git status"
alias gd="git diff"
alias gnah="git reset --hard; git clean -df;"
alias gf="git fetch -ap"
alias gec="git commit --amend --no-edit && git push -f"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdel="git branch -D"
alias branchclean="git branch | grep -v '^*' | xargs git branch -D"
alias gcm='git checkout master && git pull'

#kube
alias kgp="kubectl get pods"
alias k="kubectl"
alias kdp="kubectl describe pod"

#DOCKER
alias dkall="docker stop $(docker ps -a -q)"
alias dps="docker ps"
alias l="lazydocker"

#GO
alias go-lint="golangci-lint -c .golangci.yml run ./pkg/..."
alias go-format="gofmt -s -w . && goimports -l -w ."

#Laravel
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Lock the screen
alias afk="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,control down}'"
