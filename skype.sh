	#!/bin/bash

####### Install Skype
function installskype {
clear	
echo -e "\e[1;33mThis option will install skype\e[0m"
	echo "Do you want to install it ? (Y/N)"
	read install
			if [[ $install = Y || $install = y ]] ; then	
							
				echo -e "\e[1;33m[+] Downloading Skype\e[0m"
					wget https://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb				
				echo -e "\e[31m[-] Done with download!\e[0m"
				echo -e "\e[1;33m[+] Installing Skype\e[0m"		
						dpkg -i skype-debian_4.3.0.37-1_i386.deb
						rm skype-debian_4.3.0.37-1_i386.deb
				echo -e "\e[34m[-] Done installing Skype\e[0m"
			else
				echo -e "\e[34m[-] Ok,maybe later !\e[0m"
			fi

}

######### Install Hacking Tools
function hackingtools {

echo -e "
\033[31m#######################################################\033[m
 ____        
| __ ) _   _ 
|  _ \| | | | www.elite-hacking.blogspot.com
| |_) | |_| | www.youtube.com/channel/UCGPt6EfllXSNAJOFj8wrL9w
|____/ \__, |
        |___/ 
 _____ _            _   _       _                              
|_   _| |__   ___  | | | |_ __ | | ___ __   _____      ___ __  
  | | | '_ \ / _ \ | | | | '_ \| |/ / '_ \ / _ \ \ /\ / / '_ \ 
  | | | | | |  __/ | |_| | | | |   <| | | | (_) \ V  V /| | | |
  |_| |_| |_|\___|  \___/|_| |_|_|\_\_| |_|\___/ \_/\_/ |_| |_|
                                                              
\033[31m#######################################################\033[m"

select menusel in "Skype" "Back to Main"; do
case $menusel in

	"Skype")
		installskype
		clear ;;

		
	"Back to Main")
		clear
		hackingtools ;;
		
	*)
		screwup
		clear ;;
	
		
esac

break

done
}

while true; do hackingtools; done
