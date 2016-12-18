export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias vim='/usr/local/bin/vim'
alias sc='osascript cisco.scpt'
alias g='git'
function br() {
        if [ -f 'app.js' ]
        then
          nvm use v0.10.25 && NODE_ENV=development node app.js
        else
          ./build.sh && ./run.sh
        fi
}
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
export PATH=/usr/local/php5/bin:$PATH
source ~/.iterm2_shell_integration.`basename $SHELL`

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# bash: Place this in .bashrc.
function iterm2_print_user_vars() {
  iterm2_set_user_var currentDirectory $(pwd | cut -d "/" -f6-)
}
