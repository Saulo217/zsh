#!/bin/env zsh

export PATH="/home/saulo/.local/bin/":$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/saulo/.local/sdkman"
[[ -s "/home/saulo/.local/sdkman/bin/sdkman-init.sh" ]] && source "/home/saulo/.local/sdkman/bin/sdkman-init.sh"
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# Asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
