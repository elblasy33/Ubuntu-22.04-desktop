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



       sudo wget https://download.nomachine.com/download/8.4/Linux/nomachine_8.4.2_1_amd64.deb
       sudo apt install -f ./nomachine_8.4.2_1_amd64.deb



sub-configue-nomachine-user ()
{
 echo ""
 echo ""
 echo "================================================================="
 echo " Set up nomachine user "
 echo "-----------------------------------------------------------------"
 read -p "Proceed ? (Y/n)" choice
 if [ "$choice" = "n" ]
    then 
        echo "Bypassing...." 
    elif [ "$choice" = "N" ]
	then
       echo "Bypassing...." 
    else 
    echo "Running..."
    sudo adduser nomachine
         #(example password : paste  se7ye8pc5hs0  )
    sudo usermod -aG sudo,adm,lp,sys,lpadmin nomachine
   
fi
}
# MAIN ROUTINE FOLLOWS #
# ---------------------#
sudo apt-get update 
run-cmd sudo apt-get upgrade -y
sudo apt-get install ubuntu-desktop -y
sudo apt-get install stacer -y
sudo apt-get install mmv -y
sudo apt-get install firefox -y
sudo apt-get install qdirstat -y
sub-build-swapfile
sub-install-nomachine
sub-configue-nomachine-user
sudo reboot
