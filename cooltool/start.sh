#!/bin/bash
clear
banner al.taqlbe0
echo "This Tool Made By instagram@al.taqlbe"
sleep 5
echo "Wait...."
clear
echo -e "this tool made by "
echo -e "1)Exit > "
echo -e "2)MD5 Hash > "
echo -e "3)SHA1 Hash > "
echo -e "4)Subdomains Finder > "
echo -e "5)Open Ports Scanning > "
echo -e "6) Vulnerabilities Scanner > "
echo -e "7) Server Side Request Forgery Exploit > "
while true; do
read -p "enter option > " z
if [[ $z -eq '1' ]]; then
read -p "Exit" zzzzz
exit
elif [[ $z -eq '2' ]]; then
read -p "hash  > " pass
read -p "pass list >" pas
hashcat -m 0 -a 0 $pass $pas 
elif [[ $z -eq '3' ]]; then
read -p "Enter hash > " lpo
read -p "Enter passwords list > " lka
hashcat -m 100 $lpo $lka
elif [[ $z -eq '4' ]]; then
read -p "Enter Web target > " jklas
read -p "Where you want to save the domains > " gklas
echo "please install subfinder , sudo apt-get install subfinder "
sleep 3
echo wait
subfinder -d $jklas -o $gklas
elif [[ $z -eq '5' ]]; then
read -p "Enter web target without http/https > " webtarget
nmap $webtarget
elif [[ $z -eq '6' ]]; then
read -p "Enter ip/web Target > " hhost
nikto --host $hhost
elif [[ $z -eq '7' ]]; then
read -p "Target Web > " clp
curl $clp
fi
done
