#
# ~/.bashrc
# (c) by Marco Israel

# If not running interactively, don't do anything

[[ $- != *i* ]] && return


##########Configurations#####
#ignore Ctrl-C to exit the shell
set -o ignoreeof
#enable vi mode in bash
set -o vi



##########Alias##########
eval `dircolors ~/.dir_colors` #Neue Dircolors einlesen
alias cdmanuals='cd /cygdrive/c/app/Aurix/Documentation/00_Manuels'
alias cda2lemdd='cd /cygdrive/c/app/Aurix/WKS_Aurix2Lemdd'
alias vbrc='vim ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias vol='pacmd set-sink-volume'
alias ls='ls --color=auto' #colore ls
alias dir='dir --color=auto' #colore dir
alias vdir='vdir --color=auto' #colore vdir
alias grep='grep --color=auto' #colore grep
alias fgrep='fgrep --color=auto' #colore fgrep
alias egrep='egrep --color=auto' #colre egrep
#alias vlc='~/.i3/wrapper_sumi_vlc.sh' #start vlc at root acc
alias ff='firefox &' #firefox as new prosess
alias ts='texstudio &' #Texstudio as new process
alias vbx='virtualbox &' #vbox as new process
alias virtualbox='virtualbox &' #vbox as new process
alias scs='shutter &' #launch shutter as a new process
alias msda3='mount /dev/ubuntu-vg/root /home/sda3/' #mound internal hdd to  /home/sda3
alias susp='systemctl suspend' #Schicke den Rechner in Sleep. Einstellungen werden im RAM gespechert --> Bracucht Strom!!!!!
alias shutter='shutter &' #snapshottool mit bildbearbeitung, starten als neuen Prozess.

alias zmanual_aurixXX_v14='zathura  /cygdrive/c/app/Aurix/Documentation/00_Manuels/00_AURIX/UserManuels/tc27x_um_v1.4.pdf &'
alias zmanual_aurix_instrset='zathura /cygdrive/c/app/Aurix/Documentation/00_Manuels/00_AURIX/UserManuels/TC_Architecture_vol2__INSTRUCTIONSET__TC161_TCS_TC16P_TC16E.pdf &'
alias zmanual_tasking='zathura /cygdrive/c/app/Aurix/Documentation/00_Manuels/02_TASKING/Tasking_debugger_user_guide.pdf &'




#alias mirage='mirage &' #Image Viewer und Browser, starten als neuen Prozess.
#alias geeqie='geeqie &' #Small Image Viewer, als neuen Proess starten
#alias xv='xv &' #Small Image Viewer, als neuen Proess starten
#alias feh='feh &' #Small Image Viewer, als neuen Proess starten
#alias eog='eog &' #Small Image Viewer und ordnervorschau, als neuen Proess starten
#alias mcomix='mcomix &' Image Viewer und Image Browser (like 'mirage' layout)mmage
#alias gimmage ='gimmage &' #Small Image Viewer, als neuen Proess starten
#alias fbv ='fbv &' #Output the  image size/resolution
alias libre='libreoffice &'
#alias ranger='python /etc/ranger-master/ranger.py' #Vim Like filemanager, als neuen Prozess starten
alias emelfm2='emelfm2  &' #Commander filemanager, als neuen Prozess starten
alias pcmanfm='pcmanfm  &' #Dateibrowser, als neuen Prozess starten
alias hibern='systemctl hibernate' #Schicke den Rechner in Ruhemodus. Einstellungen werden auf der HDD in der SWAP Partion gespechert. Diese muss im Bootloader (z.B. Grup) erst definiert werden. Sonst funktioniert der Befehl nicht.
alias savea="cp -ruv /home/sda3/home/install/Schreibtisch/abschlussarbeit /home/mi/" #Abschlussarbeit auf externe hdd sichern
alias synca="rsync -rltuvc /home/sda3/home/install/Schreibtisch/abschlussarbeit /home/mi/" #Sync der Abschlussarbeit auf externe hdd.
alias peepdf='python2.7 /usr/local/peepdf_0.3/peepdf.py'
alias dvir='xrandr --output VGA1 --right-of LVDS1 --auto'
alias dvil='xrandr --output VGA1 --left-of LVDS1 --auto'
alias dvio='xrandr --output LVDS1 --auto --output VGA1 --above LVDS1 --auto'
alias dviu='xrandr --output VGA1 --under LVDS1 --auto'
alias office='libreoffice &'
alias libreoffice='libreoffice &'
alias fileroller='file-roller &'
alias vlsongs='nvlc --random --loop  --recursive collaps /home/data/musik/{charts120116,coversongs,CD*} --no-video --recursive expand'
alias vlnsongs='nvlc --random --loop  --recursive --no-video collaps /home/data/musik/{charts120116,coversongs,CD*} --no-video --recursive expand'
alias vlcharts='nvlc /home/data/musik/charts120116/* --loop --random --recursive expand'
alias vlpiano='nvlc /home/data/musik/youtub-piano/ghibli/* --random --no-video --loop  --recursive expand'
alias vlwebradio='nvlc /musik/webradio.m3u --loop'
alias mount='sudo mount'
alias mountb1='sudo mount /dev/sdb1 /mnt/sdb1 && cd /mnt/sdb1'
alias mountc1='sudo mount /dev/sdc1 /mnt/sdc1 && cd /mnt/sdc1'
alias mountd1='sudo mount /dev/sdb1 /mnt/sdd1 && cd /mnt/sdd1'
alias umount='sudo umount'
alias umountb1='sudo umount /mnt/sdb1'
alias umountc1='sudo umount /mnt/sdc1'
alias umountd1='sudo umount /mnt/sdd1'
alias lpr2sl='lpr -o number-up=2 -o sides=two-sided-long-edge'
alias lprpr='lpr -o page-ranges'
alias avr_wf="echo 'avrdude -p m88a -c stk500 -e -U flash:w:diag.hex'"
alias avr_rf="echo 'avrdude -p m128 -c stk500 -U flash:r:~/avr_downloads/diagflash.bin:r' "
alias avr_rfu='avrdude -p m128 -u -U '
alias avr_we='avrdude -c jtag2 -p m128 -P usb:xx -v -U eeprom:w:eeprom.hex -U efuse:w:0xff:m  -U hfuse:w:0x89:m -U lfuse:w:0x2e:m'
alias make='make -j4'
alias fn='find -name'
alias wpasup='sudo wpa_supplicant -D wext -c /etc/wpa_supplicant/wpa_supplicant_7270home.conf -i wlp12s0 -B'



##########CD################
alias cddesk='cd /cygdrive/c/Users/Z651633/Desktop/'
alias cdwksvectorAppl='cd C:/app/Aurix/WKS_Vector/Appl/Applications/SipAddon/StartApplication/Appl'
alias cdwksvectorMakeSupport='cd C:/app/Aurix/WKS_Vector/Appl/Applications/MakeSupport'
alias cdwksvector='cd /cygdrive/c/Users/Z651633/Desktop/marco/linkZF_Vector'
alias cddownloads='cd /cygdrive/c/Users/Z651633/Downloads'
alias cdt52='cd /cygdrive/c/UserData/tools/TriCorev5.0r2/ctc/include.lsl'
alias cdzfbuild='cd /cygdrive/c/app/Aurix/ZF_AURIX_BUILDSYSTEM'
alias cda2lutest='cd /cygdrive/c/app/Aurix/WKS_Aurix2Lemdd/UTest_Aurix2Simulink_TC27xD'
alias cdlebuild='cd $PROJECT_HOME'
alias cdlebuildap='cd $PROJECT_HOME/aurix_app/productive'
alias cdlebuildat='cd $PROJECT_HOME/aurix_app/unittest'
alias cdlebuildpp='cd $PROJECT_HOME/pic_app/productive'
alias cdlebuildpt='cd $PROJECT_HOME/pic_app/unittest'

### open ##################
alias open='cygstart .'
alias opendesk='cygstart /cygdrive/c/Users/MI/Desktop'
alias openbuild='cygstart $PROJECT_HOME'
alias openproject='cygstart $PROJECT_HOME'

### reload ###############
alias reload='source ~/.bashrc && source ~/.bash_profile'
alias reloadtmux='tmux source-file ~/.tmux.conf'

### Ctags ################
alias ctags_project='ctags -R -f ~/.tags/project $PROJECT_HOME --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_aurix='ctags -R -f ~/.tags/aurix $PROJECT_HOME/aurix_app --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_pic='ctags -R -f ~/.tags/pic $PROJECT_HOME/pic_app --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_pic2='ctags -R -f ~/.tags/pic $PROJECT_HOME/pic_app --extra=+fq --c++-kinds=+p --fields=+iaS --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_cpputest='ctags -R -f ~/.tags/cpputest $PROJECT_HOME/bin/cpputest --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_tasking='ctags -R -f ~/.tags/tasking $PROJECT_HOME/bin/tasking/ --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'
alias ctags_microchip='ctags -R -f ~/.tags/microchip $PROJECT_HOME/bin/microchip/ --extra=+fq --c++-kinds=+p --fields=+afikKlmnsSzt --tag-relative=yes --languages=C,C++,Make -I'


##########Funktions##########

function whb { #Funktion to turn WLAN on at home inside
 sudo killall wpa_supplicant
 sudo killall dhcpcd
 sudo ip link set wlo1 down
 sudo ip link set wlo1 up
 sudo wpa_supplicant -c /etc/wpa_supplicant/wpa_supplicant_7270home.conf -i wlo1 -B
 sudo sleep 3
 sudo dhcpcd -4
}


function cupsstart {
sudo systemctl start avahi-daemon.service
sudo systemctl start org.cups.cupsd.service
}

function cupsstop {
sudo systemctl stop avahi-daemon.service
sudo systemctl stop org.cups.cupsd.service
}

function extr { #alias to extract different files
 if [ -f $1 ] ; then
     case $1 in
         *.tar.bz2)   tar xjf $1        ;;
         *.tar.gz)    tar xzf $1     ;;
         *.tar.xz)    tar xjf $1     ;;
         *.bz2)       bunzip2 $1       ;;
         *.rar)       rar x $1     ;;
         *.gz)        gunzip $1     ;;
         *.tar)       tar xf $1        ;;
         *.tbz2)      tar xjf $1      ;;
         *.tgz)       tar xzf $1       ;;
         *.zip)       unzip $1     ;;
         *.Z)         uncompress $1  ;;
         *.7z)        7z x $1    ;;
         *)           echo "'$1' cannot be extracted via extract()" ;;
     esac
 else
     echo "'$1' is not a valid file"
 fi
}

########Scrips at Startup###########
#~/bin/battery_alert &
########Exports###########
export HISTCONTROL=ignoredups # don't put duplicate lines in the history. See bash(1) for more options
#AVR-Toolchain
#New Promt
#Dunkelgelb grau1
export PS1="\[\033[38;5;243m\][\[$(tput sgr0)\]\[\033[38;5;214m\]\!\[$(tput sgr0)\]\[\033[38;5;243m\]][\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;243m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;87m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;243m\]\\$:\[$(tput sgr0)\]"

#########Other##########
if [ -f /etc/bash_completion ]; then #turn on outocompleat if exist
. /etc/bash_completion
fi

# 256 Colors
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
export TERM=xterm-256color
fi

#echo -e "\033]12;magenta\007"
echo -e "\033[6 q"
#'startxwin & -- -listen tcp'

alias xc8='"/cygdrive/c/Program Files (x86)/Microchip/xc8/v2.05/bin/xc8-cc" @cf.xc8'

export PROJECT_HOME="~/programming/MIS_BUILD"




