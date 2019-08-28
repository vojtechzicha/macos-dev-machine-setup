# Mac OS Dev Setup

These are the files I use to set up my MacBook Pro 13'' 2016.

## Shell updates

```sh
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

defaults write com.apple.LaunchServices LSQuarantine -bool false

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

## Manual install applications

- AdGuard
- ABRA FlexiBee

## PlayOnMac installations

- Enterprise Architect
- Hadaka Shitsuji
- No Thank You!!!
- Simutrans
- Steam
  - Age of Empires II (see <https://gist.github.com/contra/554f541f7fa93c12499e0829439860eb>)
