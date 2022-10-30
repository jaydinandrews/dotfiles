# >>> conda initialize >>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jay/.conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jay/.conda/etc/profile.d/conda.sh" ]; then
        . "/home/jay/.conda/etc/profile.d/conda.sh"
    else
        export PATH="/home/jay/.conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# option for tab completion
fpath+=~/.zsh_sources/conda-zsh-completion/
compinit conda
source $ZSH/oh-my-zsh.sh
