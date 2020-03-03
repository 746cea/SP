#!/bin/bash
echo "Razrabotchik: Chistyakova Ekaterina"
echo "Vremennye metky faila"
echo "Dannaya programma prednaznachena dlya prosmotra vremeny poslednego dostupa, poslednego izmeneniya i izmenenya indexnogo descryptora faila po ukazanomy puti"
put=""
vibor=yes
while [ $vibor != "no" ]
do
	echo "Vvedite polniy put k failu"
	read put
	if [ -e $put ] 
	then 
		echo "Vremya poslednego dostupa: "; stat -c%x $put
		echo "Vremya poslednego izmenenya: "; stat -c%z $put
	       	echo "Vremya izmenenya indexnogo descryptora: "; stat -c%y $put
	else 
		echo "Oshibka! Takoy fail ne naiden!"
		
	fi
	echo "Naity fail eshe raz? yes/no?"
	read vibor
	if [ $vibor != "yes" -a $vibor != "no" ]
	then
		echo "Oshibka! Nuzhno vvesti yes ili no"
		read vibor
	fi
done

