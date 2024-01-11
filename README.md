# 🚀 Dotfiles and setup for new Mac!

When running on a brand new Mac, remember to update it to the lastest version before proceeding (**About this mac** → **Software update**).


## 🛠️ Base setup
1. Clone this repo: `git clone git@github.com:joelchelliah/dotfiles.git`.
2. Run `setup.sh` and follow the instructions. Might need to run again partially if there are any hiccups.


## 🐚 Oh my ZSH setup
Should have already been installed during `setup.sh`.

Check by running `zsh`. If not yet installed, run:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- More info [here](https://github.com/robbyrussell/oh-my-zsh).

#### :octocat: Clone custom settings
```bash
# Delete existing custom folder
rm -rf ~/.oh-my-zsh/custom

# Clone custom folder from repo
git clone git@github.com:joelchelliah/oh-my-zsh-custom.git ~/.oh-my-zsh/custom
```

#### 🦾 Install powerlevel10k theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- More info [here](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

#### 🔗 Symlink `.zshrc` and `.p10k.zsh`
```bash
# Delete existing .zshrc and .p10k.zsh
rm ~/.zshrc  ~/.p10k.zsh

# Link .zshrc and .p10k.zsh from custom folder
ln -s ~/.oh-my-zsh/custom/zshrc ~/.zshrc
ln -s ~/.oh-my-zsh/custom/p10k.zsh ~/.p10k.zsh
```

## 🎩 Powerlevel10K Config
- Download and install Powerlevel10k-supported fonts [here](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- Restart terminal to flush fonts, then select the downloaded fonts in the preferences.
- The Warp AI terminal should now be fully set up by now, based on the cloned configs. Further changes to the customization can be done here: https://www.warp.dev/blog/how-to-set-up-powerlevel10k-on-warp


## 📱 iPhone dev config
- Install **Xcode** from the `App Store`.
- Run `sudo xcodebuild -license` in the terminal and accept the license manually.
