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
    fi

pwd

echo " "
echo "Would you like to download the video to mp3 or mp4, or CHECK avaliable formats?"
read format

if [ $format = mp4 ]; then
    echo " "
    echo "What quality would you like to download the video in?"
    echo "You can chose 1080, 720, 480, 360, 240, 144"
    read quality

    yt-dlp -v -S 'res:'$quality'' --format mp4 $link

elif [ $format = mp3 ]; then

    yt-dlp -f 'ba' -x --audio-format mp3 $link

elif [ $format = check ]; then

    yt-dlp -F $link

fi