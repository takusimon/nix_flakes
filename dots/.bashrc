
# --- History Control ---
export HISTSIZE=10000
export HISTFILESIZE=10000

# Ignore duplicate commands in history
export HISTCONTROL=ignoredups

alias buildf="sudo nixos-rebuild boot --flake .#myMachine"
alias nedit="vim ~/nixConf/modules/features/"
alias dedit="vim ~/nixConf/dots/"
alias ls="ls -a"














fastfetch

eval "$(starship init bash)"
