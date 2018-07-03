alias refresh=". ~/.bashrc"
alias bashrc="vim ~/.bashrc && refresh"

alias gst="git status"
alias gc="git commit -v"
alias gp="git push"
alias gco="git checkout"

function addsource() {
  if [ -e "$1" ]; then
    echo "Adding source $1 to .bashrc"
    echo ". $1" >> ~/.bashrc
    refresh
  else
    echo "File $1 does not exist."
  fi 
}

# ---- Edit above this line ----
# Extra Sources:
