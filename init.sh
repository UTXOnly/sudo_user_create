#!/bin/bash

echo "Please enter the username you could like to create and press ENTER: "
read USERNAME
echo "Enter user password: "
read PASSWD
#create user, prompt for password, add to sudo group
#sudo useradd -m ${username} -p ${passwd}# -D -s /bin/bash
#usermod -aG sudo ${username}

sudo useradd -m -u $USERNAME  -o -d /home/$USERNAME -s /bin/bash $USERNAME && \
usermod -aG sudo $USERNAME


echo -e "Do you want to sign in as this user now?\n(yes|no)\n"
read answer
if [ $answer == yes ]; then
    su $USERNAME
else
    echo "user created....exiting"
fi


