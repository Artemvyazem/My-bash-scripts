#!/bin/bash

echo "Введите подсеть/ip:"
read use

if [ "$use" = "subnet" ]; then
echo "Введите подсеть:"
read subnet

echo "Введите порт:" 
read port

nmap -p $port -sT $subnet -oG res #p - скан портов, sT - скан портов исключительно типа TCP, oG - создание файла с результом

cat res |grep open >result
cat result 

else 
echo "Введите IP:"
read IP
nmap -PE $IP -oN resultip
cat resultip
fi