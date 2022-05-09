if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
# added by Miniconda3 4.5.12 installer
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mattlong/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mattlong/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mattlong/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mattlong/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="$HOME/.poetry/bin:$PATH"
. "$HOME/.cargo/env"
