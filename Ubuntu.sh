#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
#sudo apt-get dist-upgrade


#view and clear bash history
sudo cat .bash_history
sudo cat /dev/null>-/.bash_history && history -C && exit

#flush DNS cache
sudo systemd-resolve --flush-caches
sudo systemctl status systemd-resolved

#allow ports
sudo ufw enable
sudo ufw allow 22
#sudo service ssh restart

#clears bash and command history
history -c && history -w

#enable openssh
#sudo apt-get install openssh-server

#checks for listening ports and services
sudo netstat aux | grep LISTEN

#disables ftp service
sudo apt search ftp
#sudo apt-get remove ftp

#enables ssh in terminal
sudo apt update
#sudo apt install openssh-server
#sudo ufw allow ssh

#sudo service ssh enable
