#!/bin/zsh

for i in `seq 2000 2 2004`
do
	for j in `seq 1 4`
	do
		for a in $i/db$j/*_*_*.xyt
		do
			b=$( wc -l $a | awk '{print $1}' )
			echo $b
			if [ $b -ge 10 ]; then
				print $a
				cp  "$a" masterprint
			fi
		done
	done
done
