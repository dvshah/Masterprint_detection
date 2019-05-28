#!/bin/zsh
rm -rf zips
if [ ! -d zips ]
then
	mkdir zips
	mkdir zips/2000
	mkdir zips/2002
	mkdir zips/2004
fi

for j in `seq 2000 2 2004`
do
	for i in `seq 1 4`
	do
		arq="DB${i}_B.zip"
		if [ ! -f zips/$j/$arq ]
		then
			wget "http://bias.csr.unibo.it/fvc${j}/Downloads/${arq}"
			mv $arq zips/$j/
		fi
	done
done
rm -rf images/
for j in `seq 2000 2 2004`
do
	mkdir -p images/$j
	for i in `seq 1 4`
	do
		mkdir -p images/$j/db$i
		unzip zips/${j}/DB${i}_B.zip -d images/$j/db$i/
	done
done
exit 0
