#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/valeran/.oh-my-zsh"
export EDITOR=nvim
export OPENCV_LOG_LEVEL=ERROR
export MESA_LOADER_DRIVER_OVERRIDE=i965

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



source $ZSH/oh-my-zsh.sh

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


# pacman and yay
alias pacsyu="sudo pacman -Syyu"                 # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs (yay)
alias yaysyu="yay -Syu --noconfirm"              # update standard pkgs and AUR pkgs (yay)
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Colorize grep output (good for log files)
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

#ocamllsp
alias ocamllsp="ocamllsp --fallback-read-dot-merlin"

#dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

autoload run-help
alias help=run-help

## vim related ignore ##
export MICRO_TRUECOLOR=1
export VISUAL=vim

## exports
export LANG=fr_FR.UTF-8
export HISTCONTROL=ignoreboth
export BROWSER=brave
export EDITOR=nvim
export PATH
export TERMINAL=konsole

# export OCAMLRUNPARAM=b

# zsh syntax highlighting stuff
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=magenta,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=magenta,underline'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=green,bold-italic'

# zsh-syntax-highlighting call
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# opam configuration
[[ ! -r /home/valeran/.opam/opam-init/init.zsh ]] || source /home/valeran/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
