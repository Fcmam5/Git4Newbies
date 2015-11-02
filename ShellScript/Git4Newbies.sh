#!/bin/bash
# Done by Fortas Abdeldjalil Check : https://github.com/Fcmam5/Git4Newbies/blob/master/ShellScript/Git4Newbies.sh
echo "Welcome to Git4Newbies script"

read -p "

 Please choose an item :
[1] Setting up Git configuration.
[2] Pushing a new Git to a repository.
[3] Rest origin (Remove origin)
[4] Reset All (Removing git origin and deleting local git repository)


[!] About /~ Git4Newbies ~/

Your choice is: " choice

if [ $choice = 1 ]; then
	read -p "Enter your user name: " usrname
			 git config --global user.name "\"$usrname\""
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

elif [ $choice = 3 ]; then
	echo "I will remove your git orign"
		git remote remove origin
		
elif [ $choice = 4 ]; then
	echo "Reset to default by delting local git repository"
	git remote remove origin
	sudo rm -rf .git/	

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
