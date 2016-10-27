#!/bin/bash


base_url='/home'
declare -a back_url=( '/Documents' '/Downloads' '/Pictures' '/cs352s16' '/cs352w16' '/cs352f16' '/cs352f15' '/cs352w15' )  

for user in $( ls /home/ ); do 
	for x in ${back_url[@]}; do 
		current=$base_url/$user$x
		 ls -a  $current 2> /dev/null 
		if [ $? -eq 0 ]; then 
			echo $current
		fi
	done
done

 
		
	
