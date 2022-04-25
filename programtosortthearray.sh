#!/bin/bash -x
echo "-------------------------------------------------------------------------------------------------------------------"
echo "Extend the above program to sort the array and then find the 2nd largest 
                and the 2nd smallest element."
echo "------------------------------------------------------------------------------------------------------------------------"

for((index=0;index<10;index++))
do
	array[index]=$(( (RANDOM%900)+100 ))
done
echo "Before Sorting Numbers are : " ${array[@]}

temp=0
for((i=0;i<${#array[@]};i++))
do
	for((j=$(($i+1));j<${#array[@]};j++))
	do
		if [ ${array[i]} -gt ${array[j]} ]
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done

echo "The numbers after sorting  are: " ${array[@]}
b=$((${#array[@]}-2))
echo "The second largest element is: " ${array[$b]}
echo "The second smallest element is: " ${array[1]}
