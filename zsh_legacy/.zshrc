# zmodload zsh/zprof

# TODO: use https://github.com/zplug/zplug
# source $HOME/.zsh/antigen/antigen.zsh

setopt nobeep
setopt auto_cd

source $HOME/.zsh/paths.zsh

# load zsh/*.zsh
for config_file ($HOME/.zsh/*.zsh); do
  source $config_file
done

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

# zprof

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
