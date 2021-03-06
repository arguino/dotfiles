#Vim Mode
bindkey -v 

#History management
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

#Prompt thingy
export PS1="%B%n%b %~ %% "

#Export terminal
export TERM=xterm-256color

#Completion
zstyle :compinstall filename '/home/alone/.zshrc'
autoload -Uz compinit
compinit
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#shortcut aliases
alias hist="history"

#idea aliases
alias webstorm="nohup sh ~/Programming/WebStorm-173.3727.108/bin/webstorm.sh &"
alias intellij="nohup sh ~/Programming/idea-IU-183.5429.30/bin/idea.sh &"
alias rubymine="nohup sh ~/Programming/RubyMine-2017.3/bin/rubymine.sh &"
alias android="nohup sh ~/Programming/android-studio/bin/studio.sh &"

#Repo and current bloggging alias shortcut
alias repos="cd ~/Programming/Repos"
alias prog="cd ~/Programming"
alias tho="cd ~/thoughts/"

#Config alias for the shell
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

#School VPN
alias school='sudo openconnect -u jean-raphael.poulin-arguin.1@ens.etsmtl.ca -passwd-on-stdin accesvpn.etsmtl.ca'

#Git aliases
alias gad='git add .'
alias gca='git commit --amend'
# Git Commit Today
alias gct='git commit -m $(date '+%Y-%m-%d')'
alias gpfwl='git push --force-with-lease'

#Elixir/Phoenix aliases
alias mdc='mix deps.get'
alias mdg='mix deps.get'
alias mps='mix phx.server'

#Screenshot
alias miammm='maim -s | xclip -selection clipboard -t image/png'


#Set theme using an image using wal
function theme() {
	wal -i ~/Pictures/Wallpaper/$1 -a 80
}

#Concatenate every markdown file in the folder
function concmd() {
	tail -n +1 *.md >>$1
}

#Concatenate every file in the folder
function conc() {
	tail -n +1 * >>$1
}

#Concatenate every file in the folder
function convmd() {
	pandoc -f markdown -t html -o $2 $1
}

#Opens today's entry in the logbook
function lb() {
    nvim ~/thoughts/logbook/$(date '+%Y-%m-%d').md
}

#Opens today's life logs
function ll() {
    nvim ~/thoughts/lifelogs/$(date '+%Y-%m-%d').md
}

#Opens today's blog post
function lblog() {
    nvim ~/thoughts/blogging/$(date '+%Y-%m-%d').md
}
