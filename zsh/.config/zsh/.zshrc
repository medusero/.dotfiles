# Use powerline
USE_POWERLINE="true"
#powerlevel10k
if [[ -r ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh ]]; then
  source ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
fi
if [[ -r $HOME/.local/repos/zsh/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source $HOME/.local/repos/zsh/powerlevel10k/powerlevel10k.zsh-theme
fi

#syntax highlighting
if [[ -r $HOME/.local/repos/zsh//fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]]; then
  source $HOME/.local/repos/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fi

#autosuggestions
if [[ -r $HOME/.local/repos/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source $HOME/.local/repos/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

#zsh completions
if [[ -r $HOME/.local/repos/zsh/zsh-completions/zsh-completions.plugin.zsh ]]; then
  source $HOME/.local/repos/zsh/zsh-completions/zsh-completions.plugin.zsh
fi

#external aliases archive
if [ -f "$HOME/.config/aliasrc" ] ;
    then . $HOME/.config/aliasrc
fi

#alternative paths
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/share/npm/bin" ] ;
  then PATH="$HOME/.local/share/npm/bin:$PATH"
fi

if [ -d "$HOME/.local/share/cargo/bin" ] ;
  then PATH="$HOME/.local/share/cargo/bin:$PATH"
fi

if [ -d "$HOME/.config/polybar/scripts/" ] ;
  then PATH="$HOME/.config/polybar/scripts/:$PATH"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#do not require a leading ‘.’ in a filename to be matched explicitly.
setopt GLOB_DOTS

#share commands between terminal instances or not
setopt SHARE_HISTORY

#ignore duplicate commands in history file
setopt hist_ignore_dups

#vi mode
bindkey -v

##FUNCTIONS
#extraction
extract () {
  if [ -f $1 ] ; then
      case $1 in
            *.tar.bz2)      tar xvjf $1   ;;
            *.tar.gz)       tar xvzf $1   ;;
	    *.tar.xz)       tar xvJf $1   ;;
            *.bz2)          bunzip2 $1    ;;
            *.rar)          unrar x $1    ;;
            *.gz)           gunzip $1     ;;
            *.tar)          tar xvf $1    ;;
            *.tbz2)         tar xvjf $1   ;;
            *.tgz)          tar xvzf $1   ;;
	    *.txz)          tar xvJf $1   ;;
            *.rar)          unrar $1      ;;
            *.zip)          unzip $1      ;;
            *.Z)            uncompress $1 ;;
            *.7z)           7z e $1       ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

#fetch
ownfetch

#zoxide
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
