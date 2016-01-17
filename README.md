# Joel's Dotfiles

My dotfiles, and recipe for setting up a new Mac!

For installing all the dotfiles there is an **install_dotfiles.sh** script. For setting up a brand new Mac there are som additional scripts in the **new_mac/** folder and a list of recommended apps, settings and preferences further below.

## Installing dotfiles

The **install_dotfiles.sh** script will pull in the latest version and copy the files to your home folder. It will **not** copy the files in the **new_mac/** folder. You can [run those manually](#osx-defaults-floppy_disk) if you are setting up new Mac.

You need to have set up **git** to get started:

### Initial Git setup

[Skip this part if you already have git set up on your Mac](#installation).

```bash
# Generate ssh key
ssh-keygen -t rsa -C "your.email@xxx.yy"

# Add ssh key to ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Copy ssh key to github.com
subl ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Set git config values
git config --global user.name # <NAME>
git config --global user.email # <EMAIL>
```

### Installation

Clone the project anywhere and run the **install_dotfiles.sh** script.

```bash
git clone ??? && cd dotfiles && source install_dotfiles.sh
```
If you get any errors in the terminal after installation, it's probably due to missing dependecies (like a newer version of **git** or **bash** that you are missing). They should all go away after running **new_mac/.brew_setup**.


## Setting up a new Mac
My apps, preferences and default settings for getting started on a new Mac.

### Install software (from App store)
- Alfred
- Xcode
- Slack
- Todoist
- Dash
- LastPass


### Install software (from the web)
- [Chrome](http://www.google.com/chrome/)
- [Firefox](https://www.mozilla.org/en-US/firefox)
- [Sublime 3](http://www.sublimetext.com/3)
- [Spotify](https://www.spotify.com/no/download/mac/)
- [Skype](http://www.skype.com/en/download-skype/skype-for-computer/)
- [Iterm2](https://www.iterm2.com/)
- [Spectacle](http://spectacleapp.com/)
- [LastPass plugins](https://lastpass.com/misc_download2.php)



### OSX defaults :floppy_disk:
Various OS X tweaks, and some sensible defaults to preferences and settings for OS X. Most effective when run on a brand new Mac (so that it doesn't overwrite any existing settings). Run this once.

```bash
./new_mac/.osx
```

### Homebrew :beer:
Install brew and some essential brew formulaes!

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"	
brew doctor

# Install things with brew
./new_mac/.brew-setup

```

### Final setup and fine tuning :wrench:
Some additional settings that aren't (yet) automated through the **new_mac/.osx** script.

#### Sublime setup
- Add **subl** command:

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```
- Install **package control**: https://packagecontrol.io/installation#st3
- Install package: **Theme Afterglow**
- Install package: **View in Browser**
- Sublime Text > Preferences > **Settings - User**:

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

- Sublime Text > Preference > **Key Bindings - User**:

```json
[
		{ "keys": ["super+d"], "command": "duplicate_line" },
		{ "keys": ["super+backspace"], "command": "run_macro_file", "args": {"file": "res://Packages/Default/Delete Line.sublime-macro"} },
    { "keys": [ "ctrl+alt+v" ], "command": "view_in_browser", "args": { "browser": "chrome" } },
    { "keys": [ "ctrl+alt+shift+v" ], "command": "view_in_browser", "args": { "browser": "firefox" } }
]
```

#### iTerm setup
- Profiles > Terminal > **Scrollback Lines**: 5000
- Profiles > Colors > **Load Preset**: Solarized Joel
  - (should be available if you have run **new_mac/.osx**)


### Done! :boom:

## Thanks to
- [Kevin Elliot's Yosemite setup](https://gist.github.com/kevinelliott/0726211d17020a6abc1f)
- [Mathias Bynen's dotfiles](https://github.com/mathiasbynens/dotfiles)
- and a bunch of other dotfile repos on github!
