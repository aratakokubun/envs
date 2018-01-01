# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$HOME/.nodebrew/current/bin:/usr/local/Cellar/node/8.2.1/lib/node_modules/@angular/cli/bin:/usr/local/Cellar/node/8.2.1/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

if [ -d /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -Uz compinit
compinit -u

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set alias of kkbnart
alias ls="ls -lah"
alias v="vim"
alias gi="git"
alias p="pwd"
alias matlab="/Applications/MATLAB_R2017a.app/bin/matlab -nodesktop"
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0"
alias cd=cdls
alias mkdir=mkdirls
alias gidn=gitDiffNumStat
# Alias functions
function cdls() {
	\cd $1;ls;
}
function mkdirls() {
	\mkdir $1;ls;
}
function gitDiffNumStat() {
	\git diff --numstat $1|awk '{adds=adds+$1;deletes=deletes+$2;}END{print sprintf("[Git] add[ %d ] deletes[ %d ]",adds,deletes);}';
}

## add pyenv

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)”

# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# pyenv virtualenvwrapper

# Change prompt displayed name
PROMPT=PROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'


# mypath by kkbnart
export PRML=$HOME/Documents/programming/python/sandbox/python278/prml
export PY278=$HOME/Documents/programming/python/sandbox/python278
export PY343=$HOME/Documents/programming/python/sandbox/python343
export PYRAS=$HOME/Documents/programming/python/raspi/RaspiBotTwitter
export CHAINER=$HOME/Documents/programming/python/sandbox/chainer
export PYTHONPATH=$PYTHONPATH:$PY343:$PY278
export PYDL343=$HOME/Documents/programming/python/machineLearning/deeplearning/dl343

export TRUMP=$HOME/Documents/programming/python/sandbox/trump/TrumpScript/bin/TRUMP
alias trump=$TRUMP

# suppress error for no match
setopt nonomatch
