setenv EDITOR "nano"
export GREP_OPTIONS="--color=auto"

source $HOME/.config/fish/functions/fish_right_prompt.fish
source $HOME/.config/fish/functions/fish_prompt.fish
source $HOME/.config/fish/functions/fish_user_key_bindings.fish
source $HOME/.config/fish/functions/fish_aliases.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


