# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/depot_tools:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

export EDITOR='nvim'
export SHELL=$(which zsh)
alias vim='nvim'
alias vi='nvim'

# theme
ZSH_THEME="powerlevel10k/powerlevel10k"

export FZF_DEFAULT_COMMAND='fd'

plugins=(
  git
  pyenv
  fzf
  fd
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export GOROOT=/usr/local/Cellar/go/1.15.6/libexec
# export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
