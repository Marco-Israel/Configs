# Setup fzf
# ---------
if [[ ! "$PATH" == */home/marco/.vim/plugged/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/marco/.vim/plugged/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/marco/.vim/plugged/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/marco/.vim/plugged/fzf/shell/key-bindings.bash"