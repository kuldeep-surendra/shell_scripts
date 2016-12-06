#!/bin/sh
clear
i="y"
sum=0
echo "enter first number"
read num1
echo "enter second number"
read num2
while [ $i="y" ]
do
echo "1.Addition"
echo "2.subtraction"
echo "3.multiplication"
echo "4.division"
echo "Enter your choice"
read ch
case $ch in
	1)sum=$(echo "$num1 + $num2"|bc)
	echo "sum ="$sum;;
#	sum=`expr $num1 - $num2`
	2)sum=$(echo "$num1 - $num2"|bc)
	echo "sub=$sum";;
	3)sum=$(echo "$num1 * $num2"|bc)
	echo "Multiplication="$sum;;
	4)sum=$(echo "$num1 / $num2"|bc -l)
	echo "Division="$sum;;
	*)echo "Invalid choice"
esac
echo "Do you want to continue??"
read i
if [ $i != "y" ]
then
	exit
fi
done
