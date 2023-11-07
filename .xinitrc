#-- thedaemon's xinitrc -------------------------------------------------#
#------------------------------------------------------------------------#
#-- General Settings ----------------------------------------------------#
#------------------------------------------------------------------------#
if [ -d /usr/local/etc/X11/xinit/xinitrc.d ] ; then
	for f in /usr/local/etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
#-- Setup the keyboard mapping ------------------------------------------#
export LC_ALL=en_US.UTF-8
#-- Set keys for killing the xsession -----------------------------------#
setxkbmap -option terminate:ctrl_alt_bksp
#-- Start the plumber for plan9ports if it's not already running --------#
if ! pgrep -x "plumber" > /dev/null
then
    9 plumber &
fi
#-- Wacom Tablet Settings -----------------------------------------------#
#-- Configure Wacom O8 Pen Display 13 -----------------------------------#
#-- Sets the single button to be RMB, or button 3 -----------------------#
xsetwacom set 'Wacom One Pen Display 13 Pen stylus' Button 2 "button +3"
xinput map-to-output 8 HDMI-1
xinput map-to-output 18 HDMI-1
#-- Applications --------------------------------------------------------#
#------------------------------------------------------------------------#
#-- Configure in .xbindkeysrc -------------------------------------------#
xbindkeys &
#-- sets the cursor, as x doesn't do it by default. ---------------------#
xsetroot -cursor_name left_ptr &
#-- Wallpaper -----------------------------------------------------------#
feh --bg-scale /home/thedaemon/images/wallpapers/theuniverseisnord.png &
#-- Turns on nom nom lock -----------------------------------------------#
numlockx on &
#-- Compositor, ~/.config/picom/*.* is where the config for it is. ------#
#-- This thing be HARDLOCKING my system, so it's DISABLED by DEFAULT ----#
#picom -b &
#-- Opened Applications -------------------------------------------------#
stats -W 200x200 -lmiCe &
clockbar | lemonbar -B#9EEEEE -b -g260x32+2300 -f "Kurinto Mono Regular" &
xconsole -notify -verbose -fn fixed -exitOnFail -file /var/log/console.log &
#-- Window Manager ------------------------------------------------------#
#-- Configuration in .cwmrc ---------------------------------------------#
exec cwm
#------------------------------------------------------------------------#
#-- thedaemon's xinitrc le end-------------------------------------------#
