# https://raid.wiki.kernel.org/index.php/A_guide_to_mdadm
mdadm --create --verbose /dev/md0 --level=5 --raid-devices=3 /dev/sdc1 /dev/sdd1 /dev/sde1
