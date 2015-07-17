# Joel's Dotfiles

My dotfiles setup, including a recipe for getting a new Mac (Yosemite++) up and running from scratch.

For setting up all the dotfiles there is an **install_dotfiles.sh** script that does the job. For setting up a brand new Mac there are som additional scripts in the **new_mac/** folder and a list of recommended apps, settings and preferences further down.

## Installing dotfiles

The **install_dotfiles.sh** script will pull in the latest version and copy the files to your home folder. It will **not** copy the files in the **new_mac/** folder. If you are setting up a new mac run those files manually (as described in the later sections).

You need to have set up **git** to get started:

### Initial Git setup

:exclamation: [Skip this part if you already have git set up on your Mac](#installation).

```bash
# Generate ssh key
ssh-keygen -t rsa -C "joel.chelliah@bekk.no"

# Add ssh key to ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Copy ssh key to github.com
subl ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Set git config values
git config --global user.name "Joel Chelliah"
git config --global user.email "joel.chelliah@bekk.no"
```

### Installation

Clone project anywhere and run the **install_dotfiles.sh** script.

```bash
git clone ??? && cd dotfiles && source install_dotfiles.sh
```
If you get any errors in the terminal after installation, it's probably due to missing dependecies (like a newer version of **git** or **bash**). They should all go away after running **new_mac/.brew_setup** later on.


## Setting up a new Mac
Essential apps, preferences and default settings for getting started on a new Mac.

### Install software (from App store)
- Alfred
- Xcode
- Slack


### Install software (from the web)
- [Chrome](http://www.google.com/chrome/)
- [Firefox](https://www.mozilla.org/en-US/firefox)
- [Sublime 3](http://www.sublimetext.com/3)
- [Spotify](https://www.spotify.com/no/download/mac/)
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
- [Iterm2](https://www.iterm2.com/)
- [Spectacle](http://spectacleapp.com/)


### Sublime setup
- Add **subl** command:

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```
- Install **package control**: https://packagecontrol.io/installation#st3
- Install package: **Theme Afterglow**
- Sublime Text > Preferences > *Settings - User*:

```json
{
	"bold_folder_labels": true,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Vintage"
	],
	"tab_size": 2,
	"spell_check": false,
	"theme": "Afterglow.sublime-theme",
	"color_scheme": "Packages/Theme - Afterglow/Afterglow.tmTheme",
	"translate_tabs_to_spaces": false
}
```

### iTerm setup
- Profiles > Terminal > *Scrollback Lines*: 5000
- More settings installed through **new_mac/.osx**.
	
### Other setup
- Settings for other apps (including Google Chrome and Spectacle.app) installed through **new_mac/.osx**.


### OSX defaults :floppy_disk:
Sensible defaults to OS X Preferences, settings, and some apps!

Most effective when run on a brand new Mac (so that it doesn't overwrite any existing settings). Run this once from the **new_mac** folder.

```bash
./new_mac/.osx
```

### Homebrew :beer:
Install brew and some essential brew formulaes!

Run this once from the **new_mac** folder.

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"	
brew doctor

# Install things with brew
./new_mac/.brew-setup

```
## Thanks to
- [Kevin Elliot's Yosemite setup](https://gist.github.com/kevinelliott/0726211d17020a6abc1f)
- [Mathias Bynen's dotfiles](https://github.com/mathiasbynens/dotfiles)
- and a bunch of other dotfile repos on github!
