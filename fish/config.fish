set -x NVM_DIR $HOME/.nvm

# pnpm
set -gx PNPM_HOME "/Users/andrewmarushko/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

