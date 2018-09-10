#!/bin/bash
#BASIC MENU FOR VARIOUS FUNCTONS
function mem {
	df -h
}
function user {
	last
}
function process {
	ps
}
PS3="Enter OPtion: "
select option in "Disk Space" "Last login" "Process Running" "EXIT"
do
	case $option in
		"Disk Space")
			mem ;;
		"Last LOgin")
			user ;;
		"Process Running")
			process ;;
		"EXIT")
			break ;;
	esac
done
