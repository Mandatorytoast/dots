#!/usr/bin/env bash
notified=false
while [ 0 ]
do
	info="$(acpi)"
	info_array=($info)
	stat=${info_array[2]}
	percentage=${info_array[3]}
	if [ ${percentage:0:-2} -lt 10 ] && [ $notified = false ] && [ ${stat:0:-1} = 'Discharging' ]
	then
		dunstify 'battery' 'I need power'
		notified=true
	fi
	if [ ${stat:0:-1} = "Charging" ] && [ $notified = true ]
	then
		notified=false
	fi	
	sleep 60

done
