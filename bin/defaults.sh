#!/bin/bash

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g NSInitialToolTipDelay -int 0
defaults write -g NSWindowResizeTime -float "0.1"
defaults write -g AppleShowScrollBars -string "Always"
defaults write -g com.apple.springing.delay -float "0" 
defaults write -g com.apple.springing.enabled -bool true
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10
defaults write -g NSWindowResizeTime -float "0.001"
defaults write -g AppleShowAllExtensions -bool true
defaults write -g NSToolbarTitleViewRolloverDelay -float "0"
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g PMPrintingExpandedStateForPrint -bool true

defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Dock
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float "0.25"
defaults write com.apple.dock autohide-delay -float "0"
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock workspaces-edge-delay -float "0.2"
defaults write com.apple.dock expose-animation-duration -float "0.1"
defaults write com.apple.dock use-new-list-stack -bool true
defaults write com.apple.dock mouse-over-hilite-stack -bool true
defaults write com.apple.dock no-bouncing -bool true
defaults write com.apple.dock magnification -bool true

# Screenshots
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture location -string "~/Screenshots"
defaults write com.apple.screencapture show-thumbnail -bool false

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder CreateDesktop -bool false

# Menu Bar
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true
defaults write com.apple.menuextra.clock DateFormat -string "\"EEE d MMM HH:mm:ss\""
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true
defaults write com.apple.dt.Xcode IDEIndexShowLog -bool true
defaults write com.apple.dt.Xcode IDEShowPrebuildLogs -bool true
defaults write com.apple.dt.Xcode IDEDisableStateRestoration -bool true

# Simulator
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Screenshots"

# Mos
defaults write com.caldis.Mos smooth -bool true
defaults write com.caldis.Mos reverse -bool true
defaults write com.caldis.Mos toggle -int 56
defaults write com.caldis.Mos step -string "33.00"
defaults write com.caldis.Mos speed -string "3.30"
defaults write com.caldis.Mos duration -string "3.30"

apps=(
"Dock"
"Finder"
"SystemUIServer"
)

for app in "${apps[@]}"; do
  killall "${app}" &> /dev/null
done
