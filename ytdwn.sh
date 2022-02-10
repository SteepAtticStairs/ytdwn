#!/bin/bash

shopt -s nocasematch

# yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --format mp4 your-video
# yt-dlp -f 'ba' -x --audio-format mp3 your-video

echo " "
echo "What is the video/playlist URL you want to download?"
read link

echo " "
echo "Which directory would you like to download the video to?"
echo "Defaults are Desktop, Documents, and Downloads."
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

pwd

echo " "
echo "Would you like to download the video to mp3 (audio), mp4 (video), the BEST video + audio format available (generally webm), a specific format NUMBER, or CHECK avaliable formats?"
read format

if [ $format == mp4 ]; then
    echo " "
    echo "What quality would you like to download the video in?"
    echo "You can chose 1080, 720, 480, 360, 240, 144"
    read quality

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    if [ $cookies == no ]; then

    yt-dlp -v -S 'res:'$quality'' --format mp4 $link

    elif [ $cookies != no ]; then

    yt-dlp --cookies $cookies -v -S 'res:'$quality'' --format mp4 $link

    fi

##########################

elif [ $format == mp3 ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    if [ $cookies == no ]; then

    yt-dlp -f 'ba' -x --audio-format mp3 $link

    elif [ $cookies != no ]; then

    yt-dlp --cookies $cookies -f 'ba' -x --audio-format mp3 $link

    fi

##########################
    
elif [ $format == best ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    if [ $cookies == no ]; then

    yt-dlp -f "bestvideo+bestaudio" $link

    elif [ $cookies != no ]; then

    yt-dlp --cookies $cookies -f "bestvideo+bestaudio" $link

    fi

##########################

elif [ $format == check ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    if [ $cookies == no ]; then

    yt-dlp -F $link

    elif [ $cookies != no ]; then

    yt-dlp --cookies $cookies -F $link

    fi

##########################

elif [ $format == number ]; then

    echo " "
    echo "What format number would you like to download?"
    read formatNumber

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    if [ $cookies == no ]; then

    yt-dlp -f $formatNumber $link

    elif [ $cookies != no ]; then

    yt-dlp --cookies $cookies -f $formatNumber $link

    fi

fi