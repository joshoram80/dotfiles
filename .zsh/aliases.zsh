alias zshconfig="vim ~/.zshrc"

# rtorrent related stuff
alias start-rtorrent='sudo /etc/init.d/rtorrent start'
alias stop-rtorrent='sudo /etc/init.d/rtorrent stop'
alias start-irssi='sudo /etc/init.d/irssi start'
alias stop-irssi='sudo /etc/init.d/irssi stop'
alias rtps='screen -dmS rtorrent rtorrent-ps-extended -n -o import=~/.rtorrent-ps.rc'

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

# this one saved by butt so many times ##
alias wget='wget -c'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
### Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

alias 'wordy=wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias 'filecount=find . -type f | wc -l' # number of files (not directories)

# alias to cat this file to display
alias acat='< ~/.dotfiles/.zsh/aliases.zsh'
alias fcat='< ~/.dotfiles/.zsh/functions.zsh'
alias sz='source ~/.zshrc'

#Filebot aliases
alias fbtv='filebot -rename ./**/* --db TheTVDB -non-strict --format "/home/stuntard/Videos/TV/{n}/Season {s.pad(2)}/{n}.{s00e00}.{t}"'

# FTP Servers
alias seedbox='set sftp:connect-program "ssh -a -x -i ~/.ssh/id_dsa"; lftp -u stuntard, sftp://spicywiener.chmuranet.net'
