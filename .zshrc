#History management
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

#Prompt thingy
export PS1="%B%n%b %~ %% "

#Completion
zstyle :compinstall filename '/home/alone/.zshrc'
autoload -Uz compinit
compinit
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#idea aliases
alias webstorm="sh /home/alone/Programming/WebStorm-173.3727.108/bin/webstorm.sh"
alias intellij="sh /home/alone//Programming/idea-IU-173.3727.127/bin/idea.sh"
alias rubymine="sh /home/alone/Programming/RubyMine-2017.3/bin/rubymine.sh"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

#Repo alias shortcut
alias repos="cd ~/Programming/Repos"

#Config alias for the shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#Set theme using an image using wal
function theme() {
	wal -i ~/Pictures/Wallpaper/$1 -a 80
}
