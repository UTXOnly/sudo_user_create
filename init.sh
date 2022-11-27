#!/bin/bash

echo "Please enter the username you could like to create and press ENTER: "
read USERNAME

sudo useradd -m $USERNAME -s /bin/bash #$USERNAME 
sudo passwd $USERNAME 
usermod -aG sudo $USERNAME

sudo sed '/force_color_prompt=yes/s/^#//' -i ~.bashrc

echo -e "Do you want to sign in as this user now?\n(yes|no)\n"
read answer
if [ $answer == yes ]; then
    su $USERNAME
else
    echo "user created....exiting"
fi


