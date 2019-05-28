#!/bin/zsh

for i in `seq 2000 2 2004`
do
	for j in `seq 1 4`
	do
		for a in $i/db$j/*.xyt
		do
			echo "[$a]"
			bozorth3 -m1 -A outfmt=spg -T 10 -p $a $i/db$j/*.xyt
			echo
		done
	done
done
