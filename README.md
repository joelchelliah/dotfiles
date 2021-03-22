# 🚀 Dotfiles and setup for new Mac!

If running on a new Mac, remember to update it to the lastest version before proceeding.

**LET'S DO THIS!**


## 🛠️ Essential apps, tools and settings
Run `setup.sh` and follow instructions.

Might need to run again partially if there are any hiccups.


## 📝 Git config
Copy **.gitconfig** to the `$HOME` folder.


## 💃 Fancy diffs!
Install **diff-so-fancy** via `npm install -g diff-so-fancy`.  
> NB: `git diff` won't work until this step is done.

No extra configuration needed (it's already set up in **.gitconfig**).
- 📚 Find more info [here](https://github.com/so-fancy/diff-so-fancy).


## 🐚 Oh my ZSH setup
Should have already been installed during `setup.sh`. Check by running `omz`. If not yet install, run:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- 📚 Find more info [here](https://github.com/robbyrussell/oh-my-zsh).

#### :octocat: Clone custom settings
```bash
# Delete existing custom folder
rm -rf ~/.oh-my-zsh/custom

# Clone custom folder from repo
git clone git@github.com:joelchelliah/oh-my-zsh-custom.git ~/.oh-my-zsh/custom
```

#### 🦾 Install powerlevel9k theme
```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```
- 📚 Find more info [here](https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh)

#### :link: Symlink `.zshrc`
```bash
# Delete existing .zshrc
rm ~/.zshrc

# Link .zshrc from custom folder
ln -s ~/.oh-my-zsh/custom/zshrc ~/.zshrc
```

## :tophat: Iterm2 configuration
Download and install iterm2 theme and powerlevel9k-supported font [here](https://github.com/joelchelliah/oh-my-zsh-custom/tree/master/iterm2-config)


## 📱 For iPhone development
- Install **Xcode** from the `App Store`.
- Run `sudo xcodebuild -license` in the terminal and accept the license manually.

