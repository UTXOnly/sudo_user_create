#!/bin/bash

echo "Please enter the username you could like to create and press ENTER: "
read username

#create user, prompt for password, add to sudo group
sudo useradd -m ${username} -D -s /bin/bash
sudo passwd ${username}
usermod -aG sudo ${username}

echo "Do you want to sign in as this user now?\n(yes|no)\n"
read answer
if [ $answer == yes ]; then
    su -l ${username}
else
    echo "user created....exiting"
fi


