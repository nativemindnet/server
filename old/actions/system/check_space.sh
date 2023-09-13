FREE=`df /mnt/disk/sd1 | grep dev | awk '{print $4}' | sed '{s/.$//;}'`
echo $FREE
