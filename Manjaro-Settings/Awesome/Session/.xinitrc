
#!/bin/sh

#
##puts this in ->  ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

case $1 in
  xfce) exec dbus-launch xfce4-session DEFAULT_SESSION=xfce4-session ;;
  awesome) exec awesome DEFAULT_SESSION=awesome ;;	
  *) exec dbus-launch  DEFAULT_SESSION ;;
esac
