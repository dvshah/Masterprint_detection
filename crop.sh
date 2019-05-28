#!/bin/zsh

for i in `seq 2000 2 2004`
do
	for j in `seq 1 4`
	do
		for a in $i/db$j/*.jpg
		do
			h=$(identify -format "%h" $a)
			w=$(identify -format "%w" $a)
			echo "$h*$w"
			for x in `seq 0 75 $(($w - 150))`
			do
				for y in `seq 0 75 $(($h - 150))`
				do
					convert $a -crop 150x150+$x+$y "${a/.jpg/}"_"$(($x / 75))"_"$(($y / 75))".jpg
				done
			done

		done
	done
done
