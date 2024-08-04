#! /bin/bash


GREEN='\033[0;32m'
RESET='\033[0m'


echo -e "${GREEN}  
______ _____ ___________ _____ _   _ _____ 
|  _  \_   _/  ___| ___ \_   _| \ | |  __ \
| | | | | | \ `--.| |_/ / | | |  \| | |  \/
| | | | | |  `--. \  __/  | | | . ` | | __ 
| |/ / _| |_/\__/ / |    _| |_| |\  | |_\ \
|___/  \___/\____/\_|    \___/\_| \_/\____/
                                           

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
