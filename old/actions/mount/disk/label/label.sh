umount "/media/anton/My Passport"
ntfslabel /dev/sda1 "ANDREW26"
lsblk -o +label,partlabel