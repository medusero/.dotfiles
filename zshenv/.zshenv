# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Disable files
export LESSHISTFILE=-

# Ignore redundant entries on zsh history
export HISTCONTROL=ignoreboth:erasedups
export HISTORY_IGNORE="(ls|cd|pwd|exit|reboot|paru| ..)"


# Fixing Paths
# User stuffs
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$XDG_DATA_HOME/zsh/history
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XSERVERRC=$XDG_CONFIG_HOME/X11/xserverrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export QT_QPA_PLATFORMTHEME=qt5ct
export GNUPGHOME=$XDG_DATA_HOME/gnupg

# Programmer languages
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GEM_PATH=$XDG_DATA_HOME/ruby/gems
export GEM_SPEC_CACHE=$XDG_DATA_HOME/ruby/specs
export GEM_HOME=$XDG_DATA_HOME/ruby/gems
export GOPATH=$XDG_DATA_HOME/go
export CARGO_HOME=$XDG_DATA_HOME/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# FZF
export FZF_DEFAULT_COMMAND='rg --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# Programs
export RIPGREP_CONFIG_PATH=$XDG_CONFIG_HOME/ripgrep/ripgreprc
export FFMPEG_DATADIR=$XDG_CONFIG_HOME/ffmpeg
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml
export STARSHIP_CACHE=$XDG_CACHE_HOME/starship
export WGETRC=$XDG_CONFIG_HOME/wgetrc
export _Z_DATA=$XDG_DATA_HOME/z

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export TERM="xterm-kitty"
export TERMINFO="x/xterm-kitty"
export TERMINAL="kitty"
export FILEMANAGER="ranger"
export BROWSER="brave"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="most"

# Pfetch
export PF_INFO="ascii title os uptime pkgs memory"
