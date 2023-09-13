#echo '
#SUBSYSTEMS=="usb", ACTION=="add", ENV{DEVTYPE}=="usb_device", RUN+="/bin/usb_load.sh"
#SUBSYSTEMS=="usb", ACTION=="remove", ENV{DEVTYPE}=="usb_device", RUN+="/bin/usb_unload.sh"
#' > /etc/udev/rules.d/10-local.rules


#KERNEL=="sd*[0-9]",SYSFS{idVendor}=="04fc",SYSFS{idProduct}=="0c25", SYMLINK+="usbdrive"
#echo '
#KERNEL=="sd*[0-9]", ENV{DEVTYPE}=="usb_device", SYMLINK+="usbdrive"
#' > /etc/udev/rules.d/60-persistent-storage.rules


echo '
KERNEL=="sd?", ENV{DEVTYPE}=="usb_device", NAME="sdf"
KERNEL=="sd??", ENV{DEVTYPE}=="usb_device", NAME="sdf%n"
' >/etc/udev/rules.d/00-corrections.rules


udevadm control --reload