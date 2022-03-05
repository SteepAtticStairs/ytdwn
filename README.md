# Easy_YT-DLP

This is an extremely small shell script designed to make simple tasks with the CLI youtube downloader [yt-dlp](https://github.com/yt-dlp/yt-dlp) easier to excecute. I have designed this to work on MacOS, but the script is so simple that if you wanted to get it running on a Linux/Unix based machine, you would be able to modify any filepaths to fit with how you would like it.

# Prerequisites

You must have yt-dlp installed. On MacOS you can do this by running `brew install yt-dlp`, and once that installs, you can run this script and you are good to go.

# Making this a custom command

If you want to access this script from anywhere by only running the name of the script, e.g. by typing `ytdwn` in your terminal, do this. This is not neccessary, but only for convenience's sake. This has only been tested on MacOS, but it will likely be similar for another Linux/Unix based system.
```
# assuming you have downloaded ytdwn.sh to your Downloads directory,
# this copies ytdwn.sh to /usr/local/bin, which is where executables are
# located
sudo cp ~/Downloads/ytdwn.sh /usr/local/bin/ytdwn

# gives ownership to root
sudo chown root: /usr/local/bin/ytdwn

# allows it to be readable and executable for everyone
sudo chmod 755 /usr/local/bin/ytdwn
```