#!/usr/bin/bash

#Convert binary to decimal echo "$((2#11111111))"
while getopts ":c,h" option; do
	case ${option} in
		c)
			read -p "Enter CIDR: " cidr
			echo $(expr 32 - $cidr)
			exit;;
		h)
			"TODO_help message"	
			exit;;
		\?)
			echo "Incorrect option. Type -h for help"
			exit;;
	esac
done

exit
