# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ptxdist/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ptxdist/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ptxdist/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/ptxdist/.fzf/shell/key-bindings.bash"
