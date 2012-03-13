
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
