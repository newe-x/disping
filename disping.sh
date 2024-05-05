#! /bin/bash


GREEN='\033[0;32m'
RESET='\033[0m'


echo -e "${GREEN}       __
      |  |
 _____|  |  ___    ______   ______    ___   _____   __   ________
|  ___   | |   |  /  ____) |   __ \  |   | |     \ |  | /   _____|
| |   |  |  | |  |  (___   |  |__) |  | |  |  |\  \|  | |  |  ___
| |   |  |  | |   \____  \ |   ___/   | |  |  | \     | |  | |_  |
| |___|  |  | |    ____) | |  |       | |  |  |  \    | |  |___| |
|________| |___|  (______/ |__|      |___| |__|   \___| \________|

				By newe-x
${RESET}"

echo "Enter your IP: "
read ip

if  [$ip == ""]
then
	echo "NONE IP FOUND "
	echo "USAGE: 192.168.0.X"
else
	for host in {1..254}
	do
 		ping -c1 $ip.$host | grep "64 bytes" | cut  -d ":" -f 1 | cut -d " " -f 4 
	done
fi
