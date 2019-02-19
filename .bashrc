# Bashrc shorthands
alias refresh=". ~/.bashrc"
alias bashrc="vim ~/.bashrc && refresh"

# Git shorthands
alias ga="git add"
alias gc="git commit -v"
alias gp="git push"
alias gco="git checkout"
alias gst="git status"

# Add new source file to bashrc
function addsource() {
  if [ -e "$1" ]; then
    echo "Adding source `pwd`/$1 to .bashrc"

    # Insert new source before end of tag
    sed -i "/# Added by Unoper's Bashrc/a . $(pwd)/$1" ~/.bashrc
    echo "Added source successfully."
    refresh
  else
    echo "File $1 does not exist."
  fi 
}
