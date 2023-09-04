#-- thedaemon's xinitrc -------------------------------------------------#

#-- Window Manager Options ----------------------------------------------#
#exec evilwm -snap 10 -bw 4 -fg cyan -bg grey -mask2 mod4 -term 9term
#exec openbox-session
#exec rio -virtuals 2
#exec tinywm

#-- General Settings ----------------------------------------------------#

export LC_ALL=en_US.UTF-8

setxkbmap -option terminate:ctrl_alt_bksp

#-- Applications --------------------------------------------------------#

# configure in .xbindkeysrc
xbindkeys &

xsetroot -cursor_name left_ptr &

feh --bg-scale /home/thedaemon/images/wallpapers/theuniverseisgray.png &

numlockx on &

picom -b &

#-- Current Window Manager ----------------------------------------------#

# configure in .evilwmrc
exec evilwm
