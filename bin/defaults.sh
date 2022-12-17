#!/bin/bash

# ファイルを開くときのアニメーションを無効化
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# ツールチップ表示までのタイムラグなし
defaults write -g NSInitialToolTipDelay -int 0
# ダイアログ表示やウィンドウリサイズ速度を高速化する
defaults write -g NSWindowResizeTime -float "0.01"
# スクロールバーを常時表示する
defaults write -g AppleShowScrollBars -string "Always"
# キーリピートまでの時間を最短にする
defaults write -g KeyRepeat -int 1
# キーリピート開始までの時間を短くする
defaults write -g InitialKeyRepeat -int 10
# 全ての拡張子のファイルを表示する
defaults write -g AppleShowAllExtensions -bool true
# ファイル保存時に常に詳細表示する
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
# 印刷時に常に詳細表示する
defaults write -g PMPrintingExpandedStateForPrint -bool true
# ダッシュボードの削除
defaults write com.apple.dashboard mcx-disabled -bool true
# ダウンロードアプリの警告を無効化する
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
defaults write com.apple.iphonesimulator ScreenShotSaveLocation -string "~/Screenshots"

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
"Mos"
"Xcode"
"Simulator"
)

for app in "${apps[@]}"; do
  killall "${app}" &> /dev/null
done
