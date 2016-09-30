alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias d="cd ~/Dropbox"
alias ca="cd ~/Capture"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="python"
alias g="git"

alias ssh="ssh -F ~/Capture/.osx/ssh_config"

# Always use color output for `ls`
alias ls="command ls $colorflag -hF"

alias week='date +%V'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias whois="whois -h whois-servers.net"

alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

#export HISTCONTROL=ignoredups
# Make some commands not show up in history
#export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"


#[ -e "$HOME/Capture/.osx/ssh_config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/Capture/.osx/ssh_config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh
