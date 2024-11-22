export LANG=ja_JP.UTF-8
export PATH=/opt/homebrew/bin/:$PATH

eval "$(rbenv init - zsh)"

setopt auto_cd                # cd なしでもディレクトリ移動
setopt auto_list              # 補完候補が複数あるとき、自動でメニューをリストアップする
setopt complete_in_word       # wordの途中でも補完
setopt no_beep                # beep音を鳴らさない
setopt print_eight_bit        # 日本語を正しく表示
setopt mark_dirs              # ファイル名展開でディレクトリにマッチすると / をつける
setopt correct                # コマンド名のスペル修正を試みる
setopt list_packed            # 補完候補を詰めて表示
setopt magic_equal_subst      # = 以降も補完
setopt hist_ignore_all_dups   # history内の重複を消す
setopt hist_ignore_space      # スペースから始まるものはヒストリに追加しない
setopt hist_reduce_blanks     # history記録時に余分なスペースを削除する
setopt rm_star_silent         # "rm * " を実行する前に確認

HISTFILE=~/.zsh_history       # historyを保存するファイル名
HISTSIZE=10000                # メモリに展開する履歴数
SAVEHIST=30000                # HISTFILEに保存する履歴数

alias h='fc -lt '%F %T' 1'
alias ll='ls -al --color=auto'
alias so='source'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias lg='lazygit'

# ffmpegでgifを作るcommandを簡略化
function gif() {
  for file in "${@}";
  do
    echo -e "\e[32m===========================\e[m"
    echo -e "\e[32mexec ffmpeg ${file}...\e[m"
    echo -e "\e[32m===========================\e[m"
    command ffmpeg -hide_banner -i ${file} -r 24 ${file}.gif
  done
}

# PR番号でサクッとチェックアウト
function pr() {
  set -o pipefail

  if [ $(git rev-parse --abbrev-ref HEAD) != "release" ]; then
      # releaseブランチをチェックアウトしていない場合はチェックアウトする
      git checkout release || { echo "releaseブランチをチェックアウトできませんでした"; exit 1; }
  fi

  git fetch --all

  # PR-$1 ブランチが存在するか確認
  if git show-ref --verify --quiet refs/heads/PR-$1; then
      # PR-$1 ブランチが存在する場合は削除
      git branch -D PR-$1
  fi

  git fetch origin pull/$1/head:PR-$1 &&
  git switch PR-$1
}

# secretファイルを読み込む
SECRET_FILE=~/.secret.zshrc
if [[ -f $SECRET_FILE ]]; then
  source $SECRET_FILE
fi
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
