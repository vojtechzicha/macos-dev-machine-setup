TODO! - Include https://github.com/mathiasbynens/dotfiles/blob/master/.macos

defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

defaults write com.apple.LaunchServices LSQuarantine -bool false

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Step 1 - Terminal

https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7

- https://gist.github.com/AlexBlokh/eddc5e0dab0fb07edebd6d12b6be63c5
- https://github.com/lukechilds/zsh-nvm
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
- https://github.com/athityakumar/colorls#installation
- https://github.com/rbenv/rbenv#homebrew-on-macos
- https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell
- https://github.com/wesbos/hyperterm-cobalt2-theme

# Step 2 - Git & GitHub

- brew install git
- http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/

# Visual Studio Code

Install extension `Settings Sync`. Use GitHub PAT.
