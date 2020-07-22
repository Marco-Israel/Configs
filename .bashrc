################################################################################
# ~/.bashrc
#
#@author    Marco Israel (MI)
#@date      2018-01
#@authors   Last changed by:  Marco Israel - 2020.
#
################################################################################

[[ $- != *i* ]] && return


### CONFIGURATOION ##########
#ignore Ctrl-C to exit the shell
set -o ignoreeof
#enable vi mode in bash
set -o vi



### ALIAS ##########
if [ -f "${HOME}/.bashrc_alias" ] ; then
  source "${HOME}/.bashrc_alias"
fi



### COLORS ##########
eval `dircolors ~/.dir_colors`

        # 256 Colors
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
export TERM=xterm-256color
fi

echo -e "\033]12;magenta\007"



### EXECUTE ##########
#~/bin/battery_alert &


#'startxwin & -- -listen tcp'


            #Autocompleat if exists
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi


source ~/Configs/fzf-marks/fzf-marks.plugin.bash
if [ -f ~/.fzf.bash ] ; then
   source ~/.fzf.bash
fi


### EXPORTS ##########
export PROJECT_HOME="~/programming/MIS_BUILD"


export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --glob "!.git/*"'


        # no duplicates in the history. bash(1) ==  more options
export HISTCONTROL=ignoredups

        #Promt yellow
#export PS1="\[\033[38;5;243m\][\[$(tput sgr0)\]\[\033[38;5;214m\]\!\[$(tput sgr0)\]\[\033[38;5;243m\]][\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;243m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;87m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;243m\]\\$:\[$(tput sgr0)\]"
        #Promt magenta
export PS1="\[\033[38;5;243m\][\[$(tput sgr0)\]\[\033[38;5;219m\]\!\[$(tput sgr0)\]\[\033[38;5;243m\]][\[$(tput sgr0)\]\[\033[38;5;219m\]\u\[$(tput sgr0)\]\[\033[38;5;243m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;87m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;243m\]\\$:\[$(tput sgr0)\]"




#### EOF #######################################################################
#find -type f -name *.jpg | xargs -I {} convert -strip -interlace Plane -antialias -adaptive-sharpen 1x0,1 -auto-level -quality 30% {} {}
