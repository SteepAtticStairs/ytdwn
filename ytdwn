#!/bin/bash

bold=$(tput bold) # bold text
normal=$(tput sgr0) # normal text
black='\e[30m'
red='\e[91m'
green='\e[92m'
yellow='\e[93m'
blue='\e[38;5;27m'
magenta='\e[35m'
cyan='\e[36m'
lightgray='\e[37m'
darkgray='\e[90m'
darkred='\e[31m'
darkgreen='\e[32m'
darkyellow='\e[33m'
lightblue='\e[\e[38;5;39m'
lightmagenta='\e[95m'
lightcyan='\e[96m'
white='\e[97m'
nocolor='\e[0m'

shopt -s nocasematch

# yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --format mp4 your-video
# yt-dlp -f 'ba' -x --audio-format mp3 your-video

########################################################################################################

##############################################################################
##############################################################################

res() {

    printf "\n"
    printf "${blue}What quality would you like to download the video in?${red}\n"
    printf "${blue}You can chose ${green}1080, 720, 480, 360, 240, 144${red}\n"
    printf "${blue}If you want 1080 quality, I reccomend restarting the script and typing in 1080p60 in the prompt above, as this is slightly more reliable. Typing in 1080 here sometimes gives you only 720.${red}\n"
    read quality

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -v -S 'res:'$quality'' --format mp4 $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -v -S 'res:'$quality'' --format mp4 $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -v -S 'res:'$quality'' --format mp4 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -v -S 'res:'$quality'' --format mp4 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

mpthree () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f 'ba' -x --audio-format mp3 $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f 'ba' -x --audio-format mp3 $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f 'ba' -x --audio-format mp3 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f 'ba' -x --audio-format mp3 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################
    
bestmpfour () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################
    
best () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "bestvideo+bestaudio" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "bestvideo+bestaudio" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "bestvideo+bestaudio" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "bestvideo+bestaudio" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

teneighty_thirty () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "137+140" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "137+140" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "137+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "137+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

teneighty_sixty () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "299+140" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "299+140" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "299+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "299+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

seventwenty_thirty () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "22" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "22" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "22" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "22" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

seventwenty_sixty () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f "298+140" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "298+140" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "298+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "298+140" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##########################

check () {

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "${nocolor}"
    printf "\n"


    if [ $cookies == no ]; then
        yt-dlp -F $link

    elif [ $cookies == yes ]; then
        yt-dlp --cookies $cookies -F $link

    fi
}

##########################

number () {

    printf "\n"
    printf "${blue}What format number would you like to download?${red}\n"
    read formatNumber

    printf "\n"
    printf "${blue}Would you like to add a cookies file? Type ${green}NO${blue} if no, if yes, please provide the filepath to the cookies file.${red}\n"
    read cookies

    printf "\n"
    printf "${blue}Would you like to use aria2 to speed up your download? Must be pre-installed.${red}\n"
    printf "${green}YES / NO${red}\n"
    read aria2yn

    ariacookies=$cookies$aria2yn
    printf "${nocolor}"
    printf "\n"


    if [ $ariacookies == nono ]; then
        yt-dlp -f $formatNumber $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f $formatNumber $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f $formatNumber $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f $formatNumber $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi
}

##############################################################################
##############################################################################

printf "\n"
printf "${blue}What is the video/playlist URL you want to download?${red}\n"
read link

printf "\n"
printf "${blue}Which directory would you like to download the video to?${red}\n"
printf "${lightblue}Defaults are Desktop, Documents, and Downloads.${red}\n"
read filePath

    if [[ $filePath == desktop ]]; then
        cd $HOME/Desktop
    elif [[ $filePath == downloads ]]; then
        cd $HOME/Downloads
    elif [[ $filePath == documents ]]; then
        cd $HOME/Documents
    elif [[ $filePath != desktop ]] || [[ $filePath != downloads ]] || [[ $filePath != documents ]]; then
        cd "$filePath"
fi

printf "${lightblue}"
pwd
printf "${red}"

printf "\n"
printf "${blue}Would you like to download the video to"
printf "\n"
printf "\n"
printf "${green}mp3${blue} (audio),"
printf "\n"
printf "\n"
printf "${green}1080${blue}p30 (video mp4),"
printf "\n"
printf "${green}1080p60${blue} (video mp4),"
printf "\n"
printf "\n"
printf "${green}720${blue}p30 (video mp4),"
printf "\n"
printf "${green}720p60${blue} (video mp4),"
printf "\n"
printf "\n"
printf "the ${green}BESTmp4${blue} video + audio format available (specifically mp4),"
printf "\n"
printf "the ${green}BEST${blue} video + audio format available (generally webm),"
printf "\n"
printf "\n"
printf "a specific video ${green}RES${blue}olution (video mp4),"
printf "\n"
printf "\n"
printf "a specific format ${green}NUMBER${blue},"
printf "\n"
printf "\n"
printf "or ${green}CHECK${blue} avaliable formats?${red}"
printf "\n"
read format

if [[ $format == mp3 ]]; then
    mpthree
elif [[ $format == res ]]; then
    res
elif [[ $format == 1080 ]]; then
    teneighty_thirty
elif [[ $format == 1080p60 ]]; then
    teneighty_sixty
elif [[ $format == 720 ]]; then
    seventwenty_thirty
elif [[ $format == 720p60 ]]; then
    seventwenty_sixty
elif [[ $format == bestmp4 ]]; then
    bestmpfour
elif [[ $format == best ]]; then
    best
elif [[ $format == number ]]; then
    number
elif [[ $format == check ]]; then
    check
fi