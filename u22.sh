#!/bin/bash
clear

cat << "EOF"
 ______ _ _     _                                        
|  ____| | |   | |                     /\                
| |__  | | |__ | | __ _ ___ _   _     /  \   _ __  _ __  
|  __| | | '_ \| |/ _` / __| | | |   / /\ \ | '_ \| '_ \ 
| |____| | |_) | | (_| \__ \ |_| |  / ____ \| |_) | |_) |
|______|_|_.__/|_|\__,_|___/\__, | /_/    \_\ .__/| .__/ 
                             __/ |          | |   | |    
                            |___/           |_|   |_|  
EOF
    sleep 6s

	    sudo dd if=/dev/zero of=/swapfile bs=1M count=2048 status=progress
	    sudo chmod 600 /swapfile
	    sudo mkswap /swapfile
	    sudo swapon /swapfile
	    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab



       sudo wget https://download.nomachine.com/download/8.14/Linux/nomachine_8.14.2_1_amd64.deb
     




    sudo adduser elblasyapp
         #(example password : paste  se7ye8pc5hs0  )
    sudo usermod -aG sudo,adm,lp,sys,lpadmin elblasyapp
    sudo usermod -aG sudo elblasyapp

# MAIN ROUTINE FOLLOWS #
# ---------------------#
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install ubuntu-desktop -y
sudo apt-get install stacer -y
sudo apt-get install mmv -y
sudo apt-get install firefox -y
sudo apt-get install qdirstat -y
sudo apt install -f ./nomachine_8.4.2_1_amd64.deb
usermod -aG sudo elblasyapp
sudo reboot
