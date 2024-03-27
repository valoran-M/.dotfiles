#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

export ZSH="${HOME}/.oh-my-zsh"
export EDITOR=nvim
export OPENCV_LOG_LEVEL=ERROR
export XDG_CONFIG_HOME="${HOME}/.config"
export BAT_THEME="gruvbox-dark"

# ZSH THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH PLUGINS
plugins=(
  git
  sudo
  dirhistory
  zsh-autosuggestions
  fast-syntax-highlighting
)

source ${ZSH}/oh-my-zsh.sh

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias vi="nvim"
alias vc="nvim ~/.config/nvim/"

# Colorize grep output (good for log files)
alias grep="grep --color=auto"

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

#ocamllsp
alias ocamllsp="ocamllsp --fallback-read-dot-merlin"

#dotfiles
alias dotfiles='/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'

## vim related ignore ##
export MICRO_TRUECOLOR=1
export VISUAL=vim

# export OCAMLRUNPARAM=b

# zsh-syntax-highlighting call
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# opam configuration
[[ ! -r ${HOME}/.opam/opam-init/init.zsh ]] || source ${HOME}/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

THEME=$(readlink -f ~/.config/waybar/theme.css | rev | cut -d '/' -f1 | rev )
if [ $THEME = "light.css" ]; then
  export THEME="light"
else
  export THEME="dark"
fi

