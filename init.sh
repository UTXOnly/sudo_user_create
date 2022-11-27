#!/bin/bash

echo "Please enter the username you could like to create and press ENTER: "
read username
echo "Enter user password: "
read passwd
#create user, prompt for password, add to sudo group
sudo useradd -m ${username} -p ${passwd}# -D -s /bin/bash
usermod -aG sudo ${username}

echo -e "Do you want to sign in as this user now?\n(yes|no)\n"
read answer
if [ $answer == yes ]; then
    su -${username}
else
    echo "user created....exiting"
fi


