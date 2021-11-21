# Create a new directory and enter it
function mkd() {
   mkdir -p "$@" && cd "$@"
}

function weather() {
   city="$1"

   if [ -z "$city" ]; then
      city="Berlin"
   fi

   eval "curl http://wttr.in/${city}"
}

#  Commit everything
function commit() {
  commitMessage="$1"

  if [ "$commitMessage" = "" ]; then
     commitMessage="wip"
  fi

  git add .
  eval "git commit -a -m '${commitMessage}'"
}

function silent() {
   "$@" >& /dev/null
}

function tat {
  name=$(basename `pwd` | sed -e 's/\.//g')

  if tmux ls 2>&1 | grep "$name"; then
    tmux attach -t "$name"
  elif [ -f .envrc ]; then
    direnv exec / tmux new-session -s "$name"
  else
    tmux new-session -s "$name"
  fi
}


function newScratchpad(){
  fileName=$(date +$'%d-%m-%Y-%H%M%S').md
  spath="$HOME/Documents/scratchpad"

  touch "$spath/$fileName" && subl "$spath/$fileName"
}
