export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh
alias gs='git status'
alias cob='git checkout master && git pull && git checkout -b'
alias amd='git add -A && git commit --amend'
function push {
        git add -A && git commit -m $1 && git push -u
}
