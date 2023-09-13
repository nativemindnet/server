SMBURLS='{
    "rt1_netdisk1":"//192.168.101.101/rt1_netdisk1/",
    "rt1_netdisk2":"//192.168.101.101/rt1_netdisk2/",
    "rt1_netdisk3":"//192.168.101.101/rt1_netdisk3/",
    "rt1_netdisk4":"//192.168.101.101/rt1_netdisk4/",
    "h5_andrew2":"//192.168.101.105/smb_andrew2/",
    "h7_andrew2":"//192.168.101.107/smb_andrew2/",
    "h9_andrew2":"//192.168.101.109/smb_andrew2/",
    "h10_andrew2":"//192.168.101.110/smb_andrew2/",
    "h11_andrew2":"//192.168.101.111/smb_andrew2/",
    "andrew2":"//192.168.107.19/andrew2/",
    "ilyakor":"//192.168.107.8/ilyakor/"
}'

SMBURLS2='{
    "mihail":{
    "rt1_netdisk1":"//192.168.101.101/rt1_netdisk1/",
    "rt1_netdisk2":"//192.168.101.101/rt1_netdisk2/",
    "rt1_netdisk3":"//192.168.101.101/rt1_netdisk3/",
    "rt1_netdisk4":"//192.168.101.101/rt1_netdisk4/"
    },
    "andrew2":{
    "h5_andrew2":"//192.168.101.5/andrew2/",
    "h7_andrew2":"//192.168.101.7/smb_andrew2/",
    "h9_andrew2":"//192.168.101.9/smb_andrew2/",
    "h10_andrew2":"//192.168.101.10/smb_andrew2/",
    "h11_andrew2":"//192.168.101.11/smb_andrew2/",
    "h19_andrew2":"//192.168.101.119/andrew2/"
    }
    "ilyakor":{
    "h8_ilyakor":"//192.168.101.108/ilyakor/"
    }

}'


#echo $AAA | /Users/anton/.local/bin/jq -r '.rt1_disk1'