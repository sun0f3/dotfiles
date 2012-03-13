

PS1='\[\033[01;30m\]\h \[\033[01;34m\] \w  \[\033[01;31m\]`git branch 2>&1 | grep "*" | awk -F" " "{print \\\$2}"`$  \[\033[0m\]'

PS1="$PS1 "
PS2=": "


alias ls='ls -G'
alias ll='ls -hl'


#Color for mac leopard bash terminal

export CLICOLOR=1
export TERM=xterm-color


# environment variables
export CVSROOT=/usr/local/cvsroot
export CVS_RSH=/usr/bin/ssh
export JAVA_HOME=/Library/Java/Home
export ANT_HOME=/usr/local/ant
export CLASSPATH=/Users/dave/FVL/xerces.jar


# the path is initially set to "/bin:/sbin:/usr/bin:/usr/sbin"
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin
export MANPATH=$MANPATH:/opt/local/share/man

function g() {
  grep -R $1 * $2 $3 --colour=always --exclude=/*.log/
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# BASH completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
