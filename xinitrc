setxkbmap -option caps:escape &
xrandr --dpi 150 &
nm-applet &
razer-service &

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

export GDK_DPI_SCALE=1.75
exec i3
