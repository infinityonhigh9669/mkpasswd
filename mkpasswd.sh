#!/bin/bash

array=(^ % \* \# @ ! $ % _ + = \~ \: \; \| \
a b c d e f g h i j k m n o p q r s t u v w x y z \
0 1 2 3 4 5 6 7 8 9 \
A B C D E F G H I J K L M N P Q R S T U V W X Y Z)

mun=`echo ${#array[@]}`
mininum=12
maxinum=`expr 12 + $((RANDOM%3))`

for x in {1..10}
do
	for i in `seq 1 $maxinum`
	do
		echo -n "${array[$((RANDOM%${mun}))]}"
	done 
	echo
done