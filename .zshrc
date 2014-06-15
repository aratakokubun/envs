# Created by newuser for 4.3.10

# vi ライクな操作
bindkey -v

# 自動補完
autoload -U compinit; compinit

# ls -lahをデフォルト
alias ls='ls -lah'
alias p='pwd'
alias gi='git'
alias gis='git status'
alias v='vim'
alias sc='screen'
alias ru='ruby'

# 入力したコマンドが存在せず，じゃつディレクトリと一致するなら，ディレクトリにcdする
setopt auto_cd
# さらに..., ....で2つ上や3つ上に移動できるようにする
alias ...='cd ../..'
alias ....='cd ../../..'

# 特定のディレクトリへの移動
hash -d pv27=.virtualenvs/v2.7.5
hash -d pv33=.virtualenvs/v3.3.5

# cdした先のディレクトリをディレクトリスタックに追加する
setopt auto_pushd
# pushed したとき，ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# 拡張globを有効にする
setopt extended_glob

# 入力したコマンドが既にコマンド履歴に含まれる場合，履歴から古いほうのコマンドを削除する
setopt hist_ignore_all_dups

# コマンドがスペースで始まる場合，コマンド履歴に追加しない
setopt hist_ignore_space

# Tab2回で補完候補を選択
zstyle ':completion:*:default' menu select=1

# 単語の一部として扱われる文字のセットを指定する
# Ctrl-W でカーソル前の1単語を削除したとき，/までで削除が止まる
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

PATH=$PATH:$HOME/.rvm/bin:$HOME/.rbenv/bin # Add RVM to PATH for scripting
eval '$(rbenv init -)'
