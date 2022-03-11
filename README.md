# ytdwn

This is a small shell script designed to make simple tasks with the CLI youtube downloader [yt-dlp](https://github.com/yt-dlp/yt-dlp) easier to excecute. I have designed this to work on MacOS, but the script is so simple that if you wanted to get it running on a Linux/Unix based machine, you would be able to modify any filepaths to fit with how you would like it.

# Prerequisites

You must have yt-dlp installed. On MacOS you can do this by running `brew install yt-dlp`, and once that installs, you can run this script and you are good to go.

# Making this a custom command

If you want to access this script from anywhere by only running the name of the script, e.g. by typing `ytdwn` in your terminal, do this. This is not neccessary, but only for convenience's sake. This has only been tested on MacOS, but it will likely be similar for another Linux/Unix based system.
```
# assuming you have cloned the ytdwn repo to your Downloads directory,
# this copies ytdwn.sh to /usr/local/bin, which is where executables are
# located

# copies ytdwn.sh from the repo folder to the Downloads folder
$    cp ~/Downloads/ytdwn/ytdwn.sh ~/Downloads/ytdwn.sh
# copies ytdwn.sh to /usr/local/bin
$    sudo cp ~/Downloads/ytdwn.sh /usr/local/bin/ytdwn

# gives ownership to root
$    sudo chown root: /usr/local/bin/ytdwn

# allows it to be readable and executable for everyone
$    sudo chmod 755 /usr/local/bin/ytdwn
```

If you want to remove a previous `ytdwn` in `/usr/local/bin`, run
```
sudo rm -rf /usr/local/bin/ytdwn
```
However, you must always be careful with `sudo rm -rf`, as this can be easily misused on accident.

# Installing with `homebrew`

I have also ported this script to homebrew. To install this with `brew`, do
```
brew tap steepatticstairs/ytdwn && brew install ytdwn
```

<br></br>

## Working with my formula <i>(this section is basically only for my personal reference)</i>
<b>Much of this info is taken from [HERE](https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74)</b>

<br></br>

To create a formula with a repository as such:

`/.git/` <br>
`/.gitignore/` <br>
`/README.md/` <br>
`/ytdwn/` - The executable to be used <br>
`/ytdwn.sh/` <br>

<br></br>

Make the changes you want to your repo, and push them as normal.

`cd` into the directory with all of these files and create a git tag:
```
git tag -a v0.0.1 -m "version 0.0.1"
```
Push that tag:
```
git push origin v0.0.1
```

On github.com, create a new release with your tag. "Choose a tag" --> make sure it then says "Existing tag". Make a description and publish your release.

Copy the link for the `Source code (tar.gz)` field.

Run `brew create your-link`, replace "your-link" with the URL you just copied.

This should create a new ruby file at `/opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/ytdwn.rb`, and it should open it in your git configured text editor. For me, it is VSCode.

Create a new repo called `homebrew-ytdwn`. Make sure the repo name has `homebrew` at the start. [Link to my repo](https://github.com/SteepAtticStairs/homebrew-ytdwn)

Add a file called `ytdwn.rb` into that empty repo. The contents of this file will be very similar to what was created with the previous `brew create` command.

These are the contents of my `ytdwn.rb` file:

```ruby
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ytdwn < Formula
  desc "A small shell script designed to make simple tasks with the CLI youtube downloader YT-DLP easier to excecute"
  homepage "https://steepatticstairs.github.io"
  url "https://github.com/SteepAtticStairs/ytdwn/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "88ce59b32f3d0c568924d674c85e53ff66b07d434517145011e5bdd5f196f3b0"
  license ""

  def install
    bin.install 'ytdwn'
  end
end
```
The only things I had to change were adding a homepage, and condensing the `def install` section to what is shown above. You need to do the prior `brew create` to get the URL and sha256 sections right.

In the `homebrew-ytdwn` repo, you need to add, commit and push:
```
git add .

git commit -m "v0.0.1"

git push
```

Next, remove the `ytdwn.rb` file from the Homebrew directory:
```
sudo rm /opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/ytdwn.rb
```
Your formula should be good to go!

Tap:
```
brew tap steepatticstairs/ytdwn
```
And install:
```
brew install ytdwn
```

To uninstall, do
```
brew uninstall ytdwn
```

## To update your formula

Make your changes and push.

Create a new tag like above:
```
git tag -a v0.0.2 -m "version 0.0.2"
```
Push that tag:
```
git push origin v0.0.2
```

Create a new release, copy the link for the `Source code (tar.gz)` field, and do `brew create your-link` like above.

Navigate into the `homebrew-ytdwn` directory, and on the `ytdwn.rb` file, update the URL value (with the new tar.gz link) and the sha256 value (given to you with the `brew create` command).

Add, commit, and push these changes.

Remove the `ytdwn.rb` file from the Homebrew directory again, so as to avoid conflicts:
```
sudo rm /opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/ytdwn.rb
```

You are good to go! Finally, upgrade homebrew:
```
brew upgrade
```
And then tap and install:
```
brew tap steepatticstairs/ytdwn && brew install ytdwn
```

<i><b>NOTE:</b></i> You do not need to tap every time you do a fresh install, you only need to if you have untapped `steepatticstairs/ytdwn`. It doesn't matter, but it is a note worth having.