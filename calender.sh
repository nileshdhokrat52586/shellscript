#! /bin/bash

read -p "enter the month " m
read -p "enter the day " d
read -p "enter the year " y
y0=$((y-(14-m)/12))
x=$((y0+y0/4-y0/100+y0/400))
m0=$((m+12*((14-m)/12)-2))
d0=$(((d + x + 31*m0 / 12)%7))
echo "y0 answer is:" $y0
echo "x answer is:" $x
echo "m0 answer is:" $m0
echo "d0 answer is :" $d0
