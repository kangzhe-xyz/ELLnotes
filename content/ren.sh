#!/bin/sh

for FILE in *.tex
do
	echo -e "editing file $FILE"
	sed "s/section/chapter/g" $FILE > test.tex 
	sed "s/subchapter/section/g" test.tex > $FILE
done
rm test.tex
