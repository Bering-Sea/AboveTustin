#!/bin/bash
#
# This is just a simple script that loads the correct python enviroment
# and then loops forever restarting the tracker program if it ever exits.
# if youre running it on adsb-receiver do not change directory. 
# if youre not change directory to cd /home/pi/AboveTustin below

cd /home/pi/adsb-receiver/build/abovetustin/AboveTustin


while :
do
	echo
	echo '***** Restarting AboveTustin ' `date --utc --rfc-3339=ns`
	echo

	python3 tracker.py

	echo
	echo '***** AboveTustin exited ' `date --utc --rfc-3339=ns`
	echo

	sleep 5

done

