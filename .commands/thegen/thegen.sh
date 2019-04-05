#!/bin/bash

if [ "$1" == "-w" ]
then
  wal -e -t -i "$2"
  source ~/.commands/thegen/wallpaper # Set Wallpaper
fi

# Import wal colors scheme
FILE=~/.cache/wal/colors.sh
source $FILE

# Partial
term(){
  cat ~/.cache/wal/sequences
  cd ~/APP/st/
  dunstify -r 2594 "Compiling st" &
  make clean install
}
tabbed(){
  cd ~/APP/tabbed/
  dunstify -r 2594 "Compiling tabbed" &
  make clean install
}
warnai(){
  bash ~/APP/warnai/warnai -w -g fantome -ob mek-oes -xf vela # Generate gtk, openbox, xfce theme with "warnai"
}
source ~/.commands/thegen/notify #import notify
source ~/.commands/thegen/tint2rc

notify&
bash ~/.cache/wal/telegram/wal-telegram # generate telegram theme
term
tabbed
warnai
