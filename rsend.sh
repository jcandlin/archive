#!/bin/bash
if [ $# -eq 2 ]
then
	hostlist=$1
	filelist=$2
	OLDIFS=$IFS
	IFS=":"
	set -f
	for host in $hostlist
	do
		for file in $filelist
		do
			scp ./$file "jcandlin@${host}:/home/jcandlin/${file}"
		done
	done
	set +f
	IFS=$OLDIFS
else
	echo "Usage : rsend.sh <IP> <FILE>"
	echo "Usage : rsend.sh <IP1:IP2:IP3> <FILE:FILE>"
fi	
