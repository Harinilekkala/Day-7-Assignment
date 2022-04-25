#!/bin/bash -x

read -p "Enter number:" number

if [ $number -le 100 ]
then
        for (( i=2; i<=$number; i++ ))
        do
                tem=$(($number%$i))

                if [ $tem -eq 0 ]
                then
                        prime=$i
                        a[$i]=$prime
                fi
        done

        echo ${a[@]}
else
        echo Invalid Number
fi
