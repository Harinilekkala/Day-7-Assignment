#!/bin/bash -x
echo "Write a program Then find the 2nd largest and the 2nd smallest element without sorting the array"
echo "-------------------------------------------------------------------------------------------------------"
for((index=0;index<10;index++))
do
	array[index]=$(( (RANDOM%900)+100 ))
done
echo "The numbers are: " ${array[@]}

echo "-------------------------------------------------------------------------------------------------------"
max=${array[0]}
min=${array[0]}
for  index in ${!array[@]}
do

	if [ $max -lt ${array[index]} ]
	then
	max2=$max
	max=${array[index]};
	elif [[ $max2 -lt ${array[index]} ]]
	then
		max2=${array[index]}
	fi

	if [ $min -gt ${array[index]} ]
	then
	min2=$min
	min=${array[index]}
	elif [[ $min2 -gt ${array[index]} ]]
	then
		min2=${array[index]}
	fi
done
echo "--------------------------------------------------------------------------------------------------------"
echo "The second largest element is: " $max2
echo "The second smallest element  is: " $min2
