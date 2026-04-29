
# --- History Control ---
export HISTSIZE=10000
export HISTFILESIZE=10000

# Ignore duplicate commands in history
export HISTCONTROL=ignoredups

alias build="sudo nixos-rebuild boot --flake .#myMachine"
alias ls="ls -a"














fastfetch

eval "$(starship init bash)"
