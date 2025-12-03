#!/usr/bin/zsh

# +---------+
# | PLUGINS |
# +---------+

fpath=($ZDOTDIR/plugins $fpath)
source $ZDOTDIR/plugins/bd.zsh

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY         # Write events with ':start:elapsed;command' format
setopt SHARE_HISTORY            # Share history with all sessions
setopt HIST_EXPIRE_DUPS_FIRST   # Trim duplicate events first
setopt HIST_IGNORE_DUPS         # Do not write events that were just written
setopt HIST_IGNORE_ALL_DUPS     # Trim old event if new event is duplicate
setopt HIST_FIND_NO_DUPS        # Do not display previously found event
setopt HIST_IGNORE_SPACE        # Do not write event if starting with a space
setopt HIST_SAVE_NO_DUPS        # Do not write duplicate event
setopt HIST_VERIFY              # Do not execute on history expansion

# +---------+
# | ALIASES |
# +---------+

source $ZDOTDIR/aliases

# +--------+
# | PROMPT |
# +--------+

source $ZDOTDIR/simple_prompt

# +------------+
# | COMPLETION |
# +------------+

source $ZDOTDIR/completion.zsh

# +---------------------+
# | SYNTAX HIGHLIGHTING |
# +---------------------+

source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
