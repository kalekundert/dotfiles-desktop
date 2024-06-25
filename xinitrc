# When gnome-keyring needs to prompt for passwords, the request for a pinentry
# GUI passes through dbus.  If dbus doesn't know about X, then the prompt won't
# appear.  Because dbus is started before X, by systemd, it doesn't know about
# X by default.  The following command basically informs dbus about X
# after-the-fact, by providing some relevant environment variables.

# https://bbs.archlinux.org/viewtopic.php?id=202754

dbus-update-activation-environment --systemd DISPLAY

exec openbox-session
