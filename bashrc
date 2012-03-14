export PATH=/usr/local/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [[ -s "/usr/local/etc/bash_completion.d/git-completion.bash" ]]; then
  source "/usr/local/etc/bash_completion.d/git-completion.bash"
fi

NO_COLOR='\e[0m'
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/@ \1/'
 }
 
export PS1="\u:\[$CYAN\] \w \[$YELLOW\]\$(parse_git_branch)\[$CYAN\]\n$ \[$NO_COLOR\]"

# shell variables
PS1='\w `git-branch 2>&1 | grep "*" | awk -F" " "{print \\\$2}"`$ '

PS1='\[\033[01;30m\]\h \[\033[01;34m\] \w  \[\033[01;31m\]`git branch 2>&1 | grep "*" | awk -F" " "{print \\\$2}"`$  \[\033[0m\]'
PS1="$PS1 "
PS2=": "

# environment variables
export CVSROOT=/usr/local/cvsroot
export CVS_RSH=/usr/bin/ssh
export JAVA_HOME=/Library/Java/Home
export ANT_HOME=/usr/local/ant
export CLASSPATH=/Users/dave/FVL/xerces.jar

# the path is initially set to "/bin:/sbin:/usr/bin:/usr/sbin"
export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin:/opt/local/bin

# aliases
alias l="ls -l"
alias ll="ls -al"
alias mckoi="java com.mckoi.runtime.McKoiDBMain"

function g() {
  grep -R $1 * $2 $3 --always=colour --exclude=*.log

}


if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
