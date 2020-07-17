alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias p="python"
alias g="git"
alias gs="git status"
alias n="nano"
alias e="emacs"
alias sudo="sudo -p '[sudo] %h:%u'"
alias ps="ps aux"
alias s="emacs"

# DB-connections
alias db1a.sg="pgcli -U trinitysys -h10.2.2.1 capture_user_sg_1"
alias db2a.sg="pgcli -U trinitysys -h10.2.2.2 capture_user_sg_2"
alias db3a.sg="pgcli -U trinitysys -h10.2.2.3 capture_user_sg_3"

alias db1a.no="pgcli -U trinitysys comoyo_trinity_0 -h 10.2.2.1"
alias db2a.no="pgcli -U trinitysys comoyo_trinity_1 -h 10.2.2.2"
alias db3a.no="pgcli -U trinitysys capture_user_no_3 -h 10.2.2.3"

#ag_aliases
alias f="ag -g"
alias r=ag

# Always use color output for `ls`
#alias ls="command ls $colorflag -hF"
#set -xU LS_COLORS 


alias week='date +%V'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias whois="whois -h whois-servers.net"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

#export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"



#[ -e "$HOME/.config/ssh_config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.config/ssh_config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

