#!/bin/bash
#script for me to learn bash
echo what is your name? 
read name 
echo -e "hello, $name! the current date and time is `date`.\nplease type the path of a folder. i will tell you how many items are in it." 
read path 
echo the folder has `ls -A $path|wc -l` items in it, including hidden items.
echo what is 3+4? 
read number 
if [ $number = 7 ];then echo correct!;else echo incorrect!;fi 
sleep 1 
echo countdown... 
sleep 1 
for countdown in {5..1};do echo $countdown;sleep 1;done
echo liftoff!
sleep 1
while true;do
echo do you want to view information about your system? type y for yes and n for no
read yn
case $yn in y)break;;n)break;;*)echo invalid response;esac
done
if [ $yn = y ];then hostnamectl;fi
echo -e "the script has finished. goodbye, $name!"
