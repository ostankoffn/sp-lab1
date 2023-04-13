#!/bin/sh

echo
echo "The script name is: ${0##*/}."
echo "Description of the script: File system navigator script."
echo "The developer of the script is: Ostankov Nikita Grigorievich gr. 738-1"

while :
do
	echo
	echo "Actions:"
	echo "	1: show the current directory;"
	echo "	2: go to the directory above;"
	echo "	3: go to the selected directory;"
	echo "	4: stop executing the script."
	echo

	read -p "Choose your action: " ACTION

	case $ACTION in
		1)
			echo
			echo "The current directory is: ${PWD}"
			;;
		2)
			echo
                        echo "The current directory is: ${PWD}"
			cd ..
			echo "The directory is one level higher than the current one: ${PWD}"
			;;
		3)
			while :
			do
				echo
                        	echo "The current directory is: ${PWD}"
				ls
				echo
				read -p "Select the directory you want to go to: " DIRECTORY
				if [ -d "$DIRECTORY" ]; then
					cd $DIRECTORY
					echo "The current directory is: ${PWD}"
					break
				else
					echo "$DIRECTORY does not exist! Try again."
					continue;
				fi
			done
			;;
		4)
			echo
			echo "Termination of the script was successful!"
			echo
			break
			;;
		*)
			echo
			echo "You have chosen an action not from the suggested list! Try again."
			;;
	esac
done
