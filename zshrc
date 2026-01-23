# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 14

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ $(uname) == "Darwin" ]]; then
    alias vim="/Users/han/git/nvim/bin/nvim"
else
    alias vim="~/git/nvim/bin/nvim"
fi


alias w="watchcmd"
alias g="google"
alias wgd="watchcmd 'git diff' *"

alias gl="git log"
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbv='git branch -v'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpl='git pull'
alias gp='git push'
alias gpoh='git push origin HEAD'
alias gf='git fetch'
alias gri='git rebase -i'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gch='git checkout $@'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstc='git stash clear'
alias gcm='git commit -m'
alias gca='git commit --amend'

alias git_mad="git reset --hard HEAD"

alias simulate=$HOME/git/mujoco/build/bin/simulate

export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.cargo/bin

for file in ~/.scripts/*; do
    source "$file"
done

source $HOME/miniconda3/bin/activate
export PATH=$HOME/miniconda/bin/:$PATH
