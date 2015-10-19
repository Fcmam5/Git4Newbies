#!/bin/bash
echo "Welcome to Git4Newbies script"

read -p "

 Please choose an item :
[1] Setting up Git configuration.
[2] Pushing a new Git to a repository.

[!] About /~ Git4Newbies ~/

Your choice is: " choice

if [ $choice = 1 ]; then
	read -p "Enter your user name: " usrname
			 git config --global user.user "\"$usrname\""
	read -p "Enter your email: " usrmail
			 git config --global user.email "\"$usrmail\""
	
elif [ $choice = 2 ]; then
	echo "Make sure that i'm on the path of your project
	"
	echo "Creating a new git repository"
	git init
	read -p "Give me your folder's name: " foldername
	git add $foldername
	git commit -m "Added by Git4Newbies"
	read -p "Now give me your repository's link: " repolink
	git remote add origin $repolink
	git push -u origin master
	
elif [ $choice = ! ]; then 
clear
echo "Script by Fortas Abdeldjalil."
echo "...▄████████..▄████████...▄▄▄▄███▄▄▄▄......▄████████...▄▄▄▄███▄▄▄▄...";
echo "..███....███.███....███.▄██▀▀▀███▀▀▀██▄...███....███.▄██▀▀▀███▀▀▀██▄.";
echo "..███....█▀..███....█▀..███...███...███...███....███.███...███...███.";
echo ".▄███▄▄▄.....███........███...███...███...███....███.███...███...███.";
echo "▀▀███▀▀▀.....███........███...███...███.▀███████████.███...███...███.";
echo "..███........███....█▄..███...███...███...███....███.███...███...███.";
echo "..███........███....███.███...███...███...███....███.███...███...███.";
echo "..███........████████▀...▀█...███...█▀....███....█▀...▀█...███...█▀..";
echo ".....................................................................";
echo ".[Facebook.com/Mr.Fcmam5].[Twitter.com/Fcmam].[Youtube.com/user/Fcmam5]"
echo ".....[Github.com/Fcmam5]..</ Good Luck >..[Launchpad.net/~fcmam5]....."
echo "...............    https://youtu.be/LBEQuPPKyEI    ..................."
echo 
fi

exit
