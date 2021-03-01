#！/bin/bash
apt-get update
apt-get upgrade
apt-get install ubuntu-desktop

cd /usr/share/lightdm/lightdm.conf.d/

#rm -rf 50-ubuntu.conf
wget -N --no-check-certificate -O 50-ubuntu.conf https://raw.githubusercontent.com/pockyyang/ubuntu-desktop/main/50-ubuntu.conf
chmod 777 50-ubuntu.conf


cd /root/
wget -N --no-check-certificate -O .profile https://raw.githubusercontent.com/pockyyang/ubuntu-desktop/main/.profile

reboot
#rm -rf .profile
