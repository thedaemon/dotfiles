#-- thedaemon's xinitrc -------------------------------------------------#

#-- General Settings ----------------------------------------------------#

if [ -d /usr/local/etc/X11/xinit/xinitrc.d ] ; then
	for f in /usr/local/etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#-- setup the keyboard mapping
export LC_ALL=en_US.UTF-8

#-- set keys for killing the xsession
setxkbmap -option terminate:ctrl_alt_bksp

#-- start the plumber for plan9ports if it's not already running.
if ! pgrep -x "plumber" > /dev/null
then
    9 plumber &
fi

#-- Wacom Tablet Settings ------------------------------------------------#

#-- configure Wacom O8 Pen Display 13
#-- sets the single button to be RMB, or button 3
xsetwacom set 'Wacom One Pen Display 13 Pen stylus' Button 2 "button +3"
xinput map-to-output 8 HDMI-1
xinput map-to-output 18 HDMI-1

#-- Applications --------------------------------------------------------#

#-- configure in .xbindkeysrc
xbindkeys &

#-- sets the cursor, as x doesn't do it by default.
xsetroot -cursor_name left_ptr &

#-- wallpaper
feh --bg-scale /home/thedaemon/images/wallpapers/theuniverseisnord.png &

#-- turns on nom nom lock
numlockx on &

#-- compositor, ~/.config/picom/*.* is where the config for it is.
#-- this thing be hardlocking my system, so it's disabled by default
#picom -b &


#-- Opened Applications -------------------------------------------------#

stats -W 200x200 -lmiCe &

clockbar | lemonbar -B#9EEEEE -b -g260x32+2300 -f "Kurinto Mono Regular" &

xconsole -notify -verbose -fn fixed -exitOnFail -file /var/log/console.log &

#-- Window Manager ------------------------------------------------------#

#configuration in .cwmrc
exec cwm
