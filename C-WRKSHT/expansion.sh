#!/bin/bash 
echo "Control Structure In Shell"
echo 
acceptedAge=18
echo "Enter Age Please : "
read input
if [ $input -ls $acceptedAge ]
then
echo "You're Not Eligible"
else 
echo "You're Old Enough, Mate!"
fi 
