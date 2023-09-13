sh root@s17 -i s17




sudo apt-get -y install curl software-properties-common nvme-cli curl lm-sensors  nginx parted iotop htop iftop mc hdparm bcache-tools mdadm iotop htop smartmontools dstat python3.7-venv python3.7-distutils git net-tools -y
###sudo apt-get -y install  nfs-kernel-server


######


sudo adduser anton

#####

sudo adduser ilya

#####

sudo mcedit /etc/sudoers
#
%sudo   ALL=(ALL:ALL) NOPASSWD: ALL

 NOPASSWD:
######

#net nginx
sudo mcedit /etc/nginx/sites-available/default
    root /mnt/disk;
####

mkdir /mnt/disk
sudo systemctl restart nginx

###

#gcc g++
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

#gdrive
sudo add-apt-repository ppa:alessandro-strada/ppa


sudo adduser anton sudo
sudo adduser ilya sudo


mkdir /home/anton/.ssh
echo "" >> /home/anton/.ssh/authorized_keys
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIXAHj2yMrQZiKrc/tHfhTdSyLq7CI8XQZXkvAJ0/My0 a" >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkfeMAaQXSM8Ef26h9yF7Uqt/BP6eF1YUDzy5l+w6Q1N0E0wIBUC/ddlge1EEEqAMjhfsn9Df4aki36zDJZ+BbhWWf4n/d08XtjqibOY7wZ/kcFEOO4y9RdWpKixVN6bimIjtZk2gocXOERNJwQuEwscC7CP8kvfqCIbIJIOskoSwLpdfjWDxfpFwboCCqTpPhU0S2vYvs6Hc3FdBzGON2hcCoCos5VAeFDw5tIvXclBNUvoG99OlOc31dSTYzdP0YzTbBfmYDY4j4Hs1gDF3DplPs+QaoaWFfIlCngjmWEXRDgzHSTYIkNt7T+u8j8okP5O2ABiYGByQ3Vp3CnlyPw== i" >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgbyueZB8WCBOmVj9vxA5MqMAcDiG1GUKszpAqqkrndyjaDg5bf1jWHTnEwwCjmEj7gjCxvPPWlhE/5WrdRMkjO/wQrB0KkZM7ATPT2sgv1Qn0YF52Qu57frq6VCN2DBY0W+jc2Qiu4F5eX3N3Lyd8VasZr15/8UKnjEWQspf7OrALA/2vBFFmQ1xqIDvFT/nyBWhZQ6n3xbLCucA/KrYfyW50xAwOE1bKLQ64xaUbk5EtKSBXTxP7TA3QpsdrwbzUt7xHzJu0upnDPrES6zuQy1GtZqhcadbqHEkWqFtwDbJYZyOKFimZWLJmLYTG6fpJXxK/ZpnkwXaiy6uRVrFpQ==" >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAj7YObZ2e4A1Jo7PbtSXtFIAG4Q0reZH5cXzucgPBvcXX5miGrg/mmgne2AFP0cEhP9YlrHdUvvEW8jvq7XsO3OKB+HyV6nGomfsXrZqKnImSC3Cq7nfIbbMwpwjaeYDaUFdyU7x2xfMl6nQLgGPJU4X5ZFta5HfTqNGvJ9ZLPZuH5fsnDo7DAYQQGMyjBeZUOTMZOet+GbbvAX9sYvYhn0apcRr8Uhc88P2OqjWoJm9w50mL5g0uBn1GF4B3O7Q5EVy9VkuVWGPywqwwttoSuBr7IDuHBhV9tBU7RY4pBNXjbBRMSfIUes8JIlWuUvzwvjU21aVNSKT+rG/wZqkhnQ=="  >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAxtSFFbVYZPKpv2rOAyQwsoxvleEGNlkiJKNs4J8v1o3VsZ/hTQjIRhFHsZGKqd3kq3cKZEvlMDiJ07K+hk0SlLlkPWza57hXSwJMEXwnJcl2WUzZd5nWDVFoahr2ftS+B6qSDTaj7YTYoEwS+5tB9NSSuZXbVInU5CkW6FQJ9h3GKxh9fWgXNHbxFC98DKVcl0Kr844SSl0M2D1mqXLNT/XUbTo2boxRU8KzI4z5Ye8AkowJycDA0ooU5Zzr9Hf433zj0/seDSzp7O2Nui/mDCK7LpQkvjAC5MDEr1a+aXy8arPgApGJhD1gT+oGasU+zV9Cc8vG5dXetmI0uO7Pmw=="  >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDydYVgq6o8V+au/0fb1Eilr1yomm9zcT5KW+o+AyZ7QBOulHKeNV0C/eixlnR6lPMXYHLkjt/VRPCXubHb4XdrZVreTQduvwN22sdYiRdwpMvzUHLCoTBs1pEVrepwbnKqhvLOVlAOk3wVgh5r6v5B4bi/Kdg2TY19TiDrOP54Yc1yi+K0SMi4HMG/bhVpxsSaYv5Mxg0YUrVZWn3p5mPEuSzOuZOtWivkGFZmPcDCpyempc7XkFo6WGlgiECxbpBKGFJiNG2fk65XTX+x1tfr31qsYbbicI2oZ5W/+Sd5G7clnyHWmZewEPaNmfhx5kkoscBp69a7CTQfdhnzpVD" >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2maCaT/GTkWSDpYGHXA8gLtsk/54zkFJhzqM4u+aUv2PrT9Ji1QKlMmqcVH06/wfs918UeVRB9kfm1ObW4HM3holkAOawSC8UdeOrYNHuCCiU0qB8X03PAR6lWTjZeaoyalHTXVKxesvhYCgttyjt2bw+PnOstOSn3UwvgdDzXltGZIgw7kuT5Y8Y4HgIGNduRkv3JX/wcR9rJ3h5yYXEYbRRYwasycYXn6TuE/PvaIGAeflTuqojjh/dCHJKHjN8Pr91rY4hFKCicUGZBr+Tkvzn0wB4of0qif7kE4sGANGnOVsUPw3hFh+g3xUITjGtVeZt6wQDXsh85tynXWTj" >> /home/anton/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCaZVeZL38SqVujN5/XF/GNfYWImh/niTDnIbrKMn0GezeHx0Xm2wUH7pED+2hFVwvt4kCLcqTu9xUCM+Q1tFnC19gVXDOzE0QkOjUxNwAi8oU7RyCJDMN9P+q6Cp+esPwYkYyQp7ouYC6v29JgE6TTNOU8jDTY3KFP4BX8uiXumdTUnCPt/hkZz3BlIiOa9JXAsUhPLNf8f7r5r7XeF+7nQR4ewbky3GrJsaDWcmyMAeRlrV90WplhEnX4adj0Z5YySs9i+sFCyVHUzFrGBd1vyw3bzCcndlhtcolbKmGTX/x4D2pUJWeW9IG1BJDXGtBZXoeQO8sAttMg4qgkCUG9" >> /home/anton/.ssh/authorized_keys


echo "" >> /home/anton/.ssh/authorized_keys

mkdir /home/ilya/.ssh
echo "" >> /home/ilya/.ssh/authorized_keys
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIXAHj2yMrQZiKrc/tHfhTdSyLq7CI8XQZXkvAJ0/My0 a" >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkfeMAaQXSM8Ef26h9yF7Uqt/BP6eF1YUDzy5l+w6Q1N0E0wIBUC/ddlge1EEEqAMjhfsn9Df4aki36zDJZ+BbhWWf4n/d08XtjqibOY7wZ/kcFEOO4y9RdWpKixVN6bimIjtZk2gocXOERNJwQuEwscC7CP8kvfqCIbIJIOskoSwLpdfjWDxfpFwboCCqTpPhU0S2vYvs6Hc3FdBzGON2hcCoCos5VAeFDw5tIvXclBNUvoG99OlOc31dSTYzdP0YzTbBfmYDY4j4Hs1gDF3DplPs+QaoaWFfIlCngjmWEXRDgzHSTYIkNt7T+u8j8okP5O2ABiYGByQ3Vp3CnlyPw== i" >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAgbyueZB8WCBOmVj9vxA5MqMAcDiG1GUKszpAqqkrndyjaDg5bf1jWHTnEwwCjmEj7gjCxvPPWlhE/5WrdRMkjO/wQrB0KkZM7ATPT2sgv1Qn0YF52Qu57frq6VCN2DBY0W+jc2Qiu4F5eX3N3Lyd8VasZr15/8UKnjEWQspf7OrALA/2vBFFmQ1xqIDvFT/nyBWhZQ6n3xbLCucA/KrYfyW50xAwOE1bKLQ64xaUbk5EtKSBXTxP7TA3QpsdrwbzUt7xHzJu0upnDPrES6zuQy1GtZqhcadbqHEkWqFtwDbJYZyOKFimZWLJmLYTG6fpJXxK/ZpnkwXaiy6uRVrFpQ==" >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAj7YObZ2e4A1Jo7PbtSXtFIAG4Q0reZH5cXzucgPBvcXX5miGrg/mmgne2AFP0cEhP9YlrHdUvvEW8jvq7XsO3OKB+HyV6nGomfsXrZqKnImSC3Cq7nfIbbMwpwjaeYDaUFdyU7x2xfMl6nQLgGPJU4X5ZFta5HfTqNGvJ9ZLPZuH5fsnDo7DAYQQGMyjBeZUOTMZOet+GbbvAX9sYvYhn0apcRr8Uhc88P2OqjWoJm9w50mL5g0uBn1GF4B3O7Q5EVy9VkuVWGPywqwwttoSuBr7IDuHBhV9tBU7RY4pBNXjbBRMSfIUes8JIlWuUvzwvjU21aVNSKT+rG/wZqkhnQ=="  >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAxtSFFbVYZPKpv2rOAyQwsoxvleEGNlkiJKNs4J8v1o3VsZ/hTQjIRhFHsZGKqd3kq3cKZEvlMDiJ07K+hk0SlLlkPWza57hXSwJMEXwnJcl2WUzZd5nWDVFoahr2ftS+B6qSDTaj7YTYoEwS+5tB9NSSuZXbVInU5CkW6FQJ9h3GKxh9fWgXNHbxFC98DKVcl0Kr844SSl0M2D1mqXLNT/XUbTo2boxRU8KzI4z5Ye8AkowJycDA0ooU5Zzr9Hf433zj0/seDSzp7O2Nui/mDCK7LpQkvjAC5MDEr1a+aXy8arPgApGJhD1gT+oGasU+zV9Cc8vG5dXetmI0uO7Pmw=="  >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDydYVgq6o8V+au/0fb1Eilr1yomm9zcT5KW+o+AyZ7QBOulHKeNV0C/eixlnR6lPMXYHLkjt/VRPCXubHb4XdrZVreTQduvwN22sdYiRdwpMvzUHLCoTBs1pEVrepwbnKqhvLOVlAOk3wVgh5r6v5B4bi/Kdg2TY19TiDrOP54Yc1yi+K0SMi4HMG/bhVpxsSaYv5Mxg0YUrVZWn3p5mPEuSzOuZOtWivkGFZmPcDCpyempc7XkFo6WGlgiECxbpBKGFJiNG2fk65XTX+x1tfr31qsYbbicI2oZ5W/+Sd5G7clnyHWmZewEPaNmfhx5kkoscBp69a7CTQfdhnzpVD" >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2maCaT/GTkWSDpYGHXA8gLtsk/54zkFJhzqM4u+aUv2PrT9Ji1QKlMmqcVH06/wfs918UeVRB9kfm1ObW4HM3holkAOawSC8UdeOrYNHuCCiU0qB8X03PAR6lWTjZeaoyalHTXVKxesvhYCgttyjt2bw+PnOstOSn3UwvgdDzXltGZIgw7kuT5Y8Y4HgIGNduRkv3JX/wcR9rJ3h5yYXEYbRRYwasycYXn6TuE/PvaIGAeflTuqojjh/dCHJKHjN8Pr91rY4hFKCicUGZBr+Tkvzn0wB4of0qif7kE4sGANGnOVsUPw3hFh+g3xUITjGtVeZt6wQDXsh85tynXWTj" >> /home/ilya/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCaZVeZL38SqVujN5/XF/GNfYWImh/niTDnIbrKMn0GezeHx0Xm2wUH7pED+2hFVwvt4kCLcqTu9xUCM+Q1tFnC19gVXDOzE0QkOjUxNwAi8oU7RyCJDMN9P+q6Cp+esPwYkYyQp7ouYC6v29JgE6TTNOU8jDTY3KFP4BX8uiXumdTUnCPt/hkZz3BlIiOa9JXAsUhPLNf8f7r5r7XeF+7nQR4ewbky3GrJsaDWcmyMAeRlrV90WplhEnX4adj0Z5YySs9i+sFCyVHUzFrGBd1vyw3bzCcndlhtcolbKmGTX/x4D2pUJWeW9IG1BJDXGtBZXoeQO8sAttMg4qgkCUG9" >> /home/ilya/.ssh/authorized_keys
echo "" >> /home/ilya/.ssh/authorized_keys

echo "bcache bch_cutoff_writeback=70" >> /etc/initramfs-tools/modules
echo "bcache bch_cutoff_writeback_sync=90" >> /etc/initramfs-tools/modules

cat /etc/initramfs-tools/modules
sudo update-initramfs -u

sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get -y install google-drive-ocamlfuse gcc-10 g++-10


cd /opt/
ls
git clone https://github.com/Chia-Network/chia-blockchain.git
mv chia-blockchain c


cd /opt/c
git checkout 1.1.5
sh install.sh
. ./activate
chia init

mkdir /opt/pre
mkdir /opt/pre/log

mkdir /mnt/disk
mkdir /mnt/disk/sd1
