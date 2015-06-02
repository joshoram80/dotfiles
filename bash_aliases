#Aliases
alias restart-rtorrent='sudo /etc/init.d/rtorrent restart'
alias restart-irssi='sudo /etc/init.d/autodl-1000 restart'


# rtorrent related stuff
alias start-rtorrent='sudo /etc/init.d/rtorrent start'
alias stop-rtorrent='sudo /etc/init.d/rtorrent stop'
alias start-irssi='sudo /etc/init.d/irssi start'
alias stop-irssi='sudo /etc/init.d/irssi stop'
alias rtorrent-ps='screen -dmS rtorrent rtorrent-ps-extended -n -o import=~/.rtorrent-ps.rc'



#Extract Archives
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

## Colorize the ls output ##
alias ls='ls --color=auto' 
## Use a long listing format ##
alias ll='ls -la'
## Show hidden files ##
alias l.='ls -d .* --color=auto'


## get rid of command not found ##
alias cd..='cd ..'
# 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto''

## Create parent directories on demand
alias mkdir='mkdir -pv'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
  
## confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
   
## Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

## this one saved by butt so many times ##
alias wget='wget -c'

#If you pass no arguments, it just goes up one directory.
##If you pass a numeric argument it will go up that number of directories.
##If you pass a string argument, it will look for a parent directory with that name and go up to it.
up()
{
    dir=""
    if [[ $1 =~ ^[0-9]+$ ]]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
         dir=..
    fi
    cd "$dir";
}

alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias bashaliases="vim ~/.bash_aliases && source ~/.bash_aliases"

to() {

CUR_DIR=$PWD

if [ -z "${1}" ]

then

if [ ! -z "${MY_PREV_DIR}" ]

then

cd $MY_PREV_DIR

MY_PREV_DIR=$CUR_DIR

else

echo "No where to go!"

fi

else

cd ${1}> /dev/null 2>&1

retVal=$?

if [ ${retVal} = 0 ]

then

MY_PREV_DIR=$CUR_DIR

else

cd $reportJobsRoot/${1}> /dev/null 2>&1

retVal=$?

if [ ${retVal} = 0 ]

then

MY_PREV_DIR=$CUR_DIR

else

echo to: ${1}: not found

echo to: $reportJobsRoot/${1} not found

fi

fi

fi

}

#############
## FUNCTIONS #
##############
# 
# #kill a process by name
pskill()
{
    if [ -z $1 ]; then
        echo -e \e[0;31;1mUsage: pskill [processName]\e[m;
    else
	ps -au $USER | grep -i $1 |awk {print kill -9 $1}|sh
    fi
}
  
#  #jump to a directory
jd()
{
    if [ -z $1 ]; then
         echo -e \e[0;31;1mUsage: jd [directory]\e[m;
    else
         findresults=( $(find . -type d -name $1) )
         count=${#findresults[@]}
         if [ $count = 1 ]; then
             file=${findresults[0]}  
             cd $file
         else
             if [ $count = 0 ]; then
                 echo No such directory
             else echo Ambiguous: $count directories found
             fi
         fi
         unset findresults
         unset count
    fi
}

               
##display directory tree structure
#tree()
#{
#    echo -e \033[1;35m
#               
#    (cd ${1-.} ; pwd)
#    find ${1-.} -print | sort -f | sed \
#    \
#    -e s,^${1-.},, \
#    -e /^$/d \
#    -e s,[^/]*/\([^/]*\)$,\ |-->\1, \
#    -e s,[^/]*/, | ,g
#                  
#    echo -e \033[0m
#}
                  
#mkdir and cd combined
mkcd()
{
    if [ -z $1 ]; then
        echo -e \e[0;31;1mUsage: mkcd [directory]\e[m;
    else
        if [ -d $1 ]; then
            echo Changed to $1.;
            cd $1;
        else
            mkdir $1;
            echo Created $1;
            cd $1;
        fi;
    fi
}
#                        
#                        #######
#                        # END #
#                        #######
