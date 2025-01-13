export PATH=$HOME/bin:/usr/local/bin:/opt/bin:/opt/homebrew/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

export PS1="%F{yellow}ü%f %~%F{black} $ "
#export PS1="%F{yellow}ö%f %~%F{black} $ "
#export PROMPT="☁ $USER:~${PWD/$HOME/} $ "

export ZSH=$HOME/.config/zsh
export PLUGINS=$HOME/.config/plugins
export ICLOUD="/Users/taerankim/Library/Mobile Documents/com~apple~CloudDocs"
export OBSI="/Users/taerankim/Library/Mobile Documents/com~apple~CloudDocs/obsi"

#export NVM_DIR="$HOME/.nvm"
#[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#### ZSH HOME
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

#### EDITOR

#export EDITOR="/opt/homebrew/bin/nvim"


#### ---- history config -------------------------------------
#export HISTFILE=$ZSH/.zsh_history

## How many commands zsh will load to memory.
#export HISTSIZE=10000

## How many commands history will save on file.
#export SAVEHIST=10000

## History won't save duplicates.
#setopt HIST_IGNORE_ALL_DUPS

## History won't show duplicates on search.
#setopt HIST_FIND_NO_DUPS

#### --- plug-in ------------------------------------------------

source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $CONFIG/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
#source $ZSH/plugins/zsh-git/git.plugin.zsh
#source $ZSH/plugins/zsh-tmux/tmux.plugin.zsh
#source $ZSH/plugins/zsh-docker/zsh-docker.plugin.zsh
#source $ZSH/plugins/zsh-docker-compose/docker-compose.plugin.zsh
#source $ZSH/plugins/zsh-fzf/fzf.plugin.zsh
#fpath=($ZSH/plugins/zsh-completions/src $fpath)

#[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

##### autosuggest

#bindkey '  ' autosuggest-accept

#### --- custom-alias ------------------------------------------------

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#alias c-="cd -"
alias ic="cd '$ICLOUD'"
##alias vi="lvim"
alias viz="vi $ZSH/.zshrc"
alias coz="code $ZSH/.zshrc"
#alias vig="vi ~/.gitconfig"
#alias viw="vi $HOME/.config/wezterm/wezterm.lua"
#alias vin="vi $HOME/.config/nvim/init.vim"
#alias vit="vi $HOME/.config/tmux/tmux.conf"
#alias vitr="vi $HOME/.config/tmux/tmux.reset.conf"
#alias vil="vi $HOME/.config/lvim/config.lua"
#alias vis="vi $HOME/.config/starship/starship.toml"
#alias ~="cd ~"
#alias pi="ssh jgopi"

#eval "$(starship init zsh)"

#alias ls="eza --icons"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias lt="ls --tree"
alias sz="source $ZSH/.zshrc"

alias cxf="c++ -Wall -Werror -Wextra"
alias goin="cd ~/goinfre"
alias algo="cd ~/goinfre/algorithm"
alias ma="make all"
alias mb="make bonus"
alias mc="make clean"
alias mf="make fclean"
alias mr="make re"
alias mde="make DEBUG=1"
alias mbde="make bonus DEBUG=1"

alias obsi="cd '$OBSI'"
alias obup="(obsi; git add .; git commit -m \"update\"; git push)"
alias obdw="(obsi; git pull)"

#alias stardew="cd /Users/taerankim/.config/StardewValley/Saves"
##alias cat="bat"

#export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

#export FPATH=/opt/homebrew/bin/eza:$FPATH

#### autosuggest
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#if type brew &>/dev/null; then
#    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
#    autoload -Uz compinit
#    compinit
#fi

#autoload -Uz compinit && compinit
#setopt AUTO_CD
#bindkey ";3D" backward-word
#bindkey ";3C" forward-word

#source $HOME/.config/zsh/valgrind.zsh
