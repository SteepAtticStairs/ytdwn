#!/bin/bash

shopt -s nocasematch

# yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' --format mp4 your-video
# yt-dlp -f 'ba' -x --audio-format mp3 your-video

echo "Test for colored text."

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

    echo " "
    echo "Would you like to use aria2 to speed up your download? Must be pre-installed."
    echo "YES / NO"
    read aria2yn

    ariacookies=$cookies$aria2yn


    if [ $ariacookies == nono ]; then
        yt-dlp -v -S 'res:'$quality'' --format mp4 $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -v -S 'res:'$quality'' --format mp4 $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -v -S 'res:'$quality'' --format mp4 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -v -S 'res:'$quality'' --format mp4 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi

##########################

elif [ $format == mp3 ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    echo " "
    echo "Would you like to use aria2 to speed up your download? Must be pre-installed."
    echo "YES / NO"
    read aria2yn

    ariacookies=$cookies$aria2yn


    if [ $ariacookies == nono ]; then
        yt-dlp -f 'ba' -x --audio-format mp3 $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f 'ba' -x --audio-format mp3 $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f 'ba' -x --audio-format mp3 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f 'ba' -x --audio-format mp3 $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi

##########################
    
elif [ $format == best ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies

    echo " "
    echo "Would you like to use aria2 to speed up your download? Must be pre-installed."
    echo "YES / NO"
    read aria2yn

    ariacookies=$cookies$aria2yn


    if [ $ariacookies == nono ]; then
        yt-dlp -f "bestvideo+bestaudio" $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f "bestvideo+bestaudio" $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f "bestvideo+bestaudio" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f "bestvideo+bestaudio" $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi

##########################

elif [ $format == check ]; then

    echo " "
    echo "Would you like to add a cookies file? Type NO if no, if yes, please provide the filepath to the cookies file."
    read cookies


    if [ $cookies == no ]; then
        yt-dlp -F $link

    elif [ $cookies == yes ]; then
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

    echo " "
    echo "Would you like to use aria2 to speed up your download? Must be pre-installed."
    echo "YES / NO"
    read aria2yn

    ariacookies=$cookies$aria2yn


    if [ $ariacookies == nono ]; then
        yt-dlp -f $formatNumber $link

    elif [ $ariacookies == yesno ]; then
        yt-dlp --cookies $cookies -f $formatNumber $link

    elif [ $ariacookies == noyes ]; then
        yt-dlp -f $formatNumber $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    elif [ $ariacookies == yesyes ]; then
        yt-dlp --cookies $cookies -f $formatNumber $link --external-downloader=aria2c --external-downloader-args '--min-split-size=1M --max-connection-per-server=16 --max-concurrent-downloads=16 --split=16'

    fi

fi