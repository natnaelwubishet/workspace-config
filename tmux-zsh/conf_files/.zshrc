ZSH_THEME="amuse"

# want your terminal to support 256 color schemes? I do...
export TERM="xterm-256color"

setopt RM_STAR_WAIT

setopt interactivecomments

setopt CORRECT

export EDITOR="vim"

export USE_EDITOR=$EDITOR

export VISUAL=$EDITOR

export WORKSPACE=$HOME/Documents

source $HOME/.oh-my-zsh/lib/alias.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
