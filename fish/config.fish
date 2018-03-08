setenv EDITOR "nano"
export GREP_OPTIONS="--color=auto"

if test -d "/usr/local/opt/coreutils/libexec/gnubin"
   set PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH
end

source $HOME/.config/fish/functions/fish_right_prompt.fish
source $HOME/.config/fish/functions/fish_prompt.fish
source $HOME/.config/fish/functions/fish_user_key_bindings.fish
source $HOME/.config/fish/functions/fish_aliases.fish
source $HOME/.config/fish/functions/dcolors.fish

#set -xU SSH_AUTH_SOCK 'gpgconf --list-dirs agent-ssh-socket'
#export SSH_AUTH_SOCK=gpgconf --list-dirs agent-ssh-socket
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish



