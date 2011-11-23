alias dev="cd ~/Development"

alias ssh_g="ssh user@10.193.152.32"
alias ssh_ninja="ssh ed@ninja -p30000"

# console coloring
export PS1='\[\033[1;35m\]\h\[\033[1;33m\] \W\[\033[00m\] => '

# root file browser
alias ste="sudo gedit"
alias sn="sudo nautilus"

# edit bashrc
alias bn="nano ~/.bashrc"
alias bna="nano ~/.bash_aliases"

# edit hosts
alias hosts="sudo nano /etc/hosts"

# free memory
alias free="free -m"

# system helpers
alias update="sudo apt-get update"
alias install="sudo apt-get install"
alias upgrade="sudo apt-get update && sudo apt-get safe-upgrade"
alias remove="sudo apt-get remove"
alias clean="sudo apt-get clean"
alias search="sudo apt-get search"

# reload bash aliases
alias reload="source ~/.bashrc"

# git helpers
alias gg="git gui &"
alias gk="gitk &"

alias gu_all="sso && gu && rd && gu && rt & gu & ws & gu"

# git config (globally)
alias ggmyname="git config --global user.name \$1"
alias ggmyemail="git config --global user.email \$1"

# git config (locally)
alias gmyname="git config user.name \$1"
alias gmyemail="git config user.email \$1"

# test cucumber features
alias ct="cucumber features -n"

# bundler
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# start ruby
alias rs="ruby script/server"
alias rc="ruby script/console"

# disk space and cls/clear
alias left="df -h"
alias cls="clear"

# flush dns cache
alias flushdns="sudo /etc/init.d/nscd restart"
alias installdnscache="sudo aptitude install nscd"

# logs
alias ld="tail -f log/development.log"
alias lp="tail -f log/production.log"
alias lt="tail -f log/test.log"
alias lc="tail -f log/cucumber.log"
alias lr="rm log/*.log"

# apache
alias ame="sudo a2enmod \$1"
alias amd="sudo a2dismod \$1"
alias ase="sudo a2ensite \$1"
alias asd="sudo a2dissite \$1"
alias arc="sudo /etc/init.d/apache2 reload"
alias arg="sudo apache2ctl graceful"
alias ars="sudo /etc/init.d/apache2 restart"

# capistrano
alias capsetup="cap deploy:setup"
alias capcheck="cap deploy:check"
alias capcold="cap deploy:cold"
alias capstop="cap deploy:stop"
alias capstart="cap deploy:start"

# rake
alias migrate="rake db:migrate"
alias migrate_t="rake db:migrate RAILS_ENV=test"
alias migrate_all="migrate && migrate_t"
alias redo="rollback && migrate"
alias rollback="rake db:rollback"
alias rollback_t="rake db:rollback RAILS_ENV=test"
alias redo_t="rollback_t && migrate_t"

# processes
alias ps="ps -ef | grep \$1"

