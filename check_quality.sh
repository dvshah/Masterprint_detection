#!/bin/zsh

for i in `seq 2002 2 2004`
do
	for j in `seq 1 4`
	do
		for a in $i/db$j/*.wsq
		do
			echo $a
			echo $(nfiq $a)
		done
	done
done
