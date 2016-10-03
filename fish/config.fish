setenv EDITOR "nano"
alias n nano
alias p python
alias sudo="sudo -p '[sudo] %h:%u'"
export GREP_OPTIONS="--color=auto"

source $HOME/.config/fish/functions/fish_right_prompt.fish
source $HOME/.config/fish/functions/fish_prompt.fish
source $HOME/.config/fish/functions/fish_user_key_bindings.fish
source $HOME/.config/fish/functions/fish_aliases.fish

#[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

#eval (thefuck --alias | tr '\n' ';')

