for i in `seq 2000 2 2004`
do
	for j in `seq 1 4`
	do
		for a in $i/db$j/*.tif
		do
			echo "$a"
			b="${a/.tif/}.jpg"
			convert $a $b
		done
	done
done
