# load the additional completions from zsh-users zsh-completions plugin
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)

# load the built-in zsh completions
zmodload zsh/complist

# up and down arrow keys for history selection
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

autoload -U compinit; compinit
_comp_options+=(globdots)

# +---------+
# | options |
# +---------+

setopt MENU_COMPLETE      # Highlight first element of menu
setopt AUTO_LIST          # List choices from approximate completion
setopt COMPLETE_IN_WORD   # Complete from both ends of word

# +---------+
# | zstyles |
# +---------+

# define completers
zstyle ':completion:*' completer _extensions _complete _approximate

# use cache from commands using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

zstyle ':completion:*' menu select

# autocomplete options for cd instead of dir stack
zstyle ':completion:*' complete-options true

# sort files by date/time of modification
zstyle ':completios:*' file-sort modification

zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*:' group-order aliases builtins functions commands

# match based on partial words (see ZSHCOMPWID "completion matching control")
zstyle 'completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:\=*'

# Ignore subdirectors when completing executable file or directory (i.e. when './exe')
# https://stackoverflow.com/a/27643846
zstyle -e ':completion::complete:-command-::executables' ignored-patterns '
  [[ "$PREFIX" == ./* ]] && {
    local -a tmp; set -A tmp ./*(/)
    : ${(A)tmp::=${tmp// /\\ }}
    reply=(${(j:|:)tmp})
  }
'

zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
