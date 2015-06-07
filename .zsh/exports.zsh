# Currently this path is appendend to dynamically when picking a ruby version
export PATH="/home/owner/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$PATH"

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'
export GREP_COLORS='ms=01;33:mc=01;33:sl=:cx=:fn=35:ln=32:bn=32:se=36'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='most'
export EDITOR='vim'
#export PYTHONPATH=/usr/local/lib/python2.6/site-packages

# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH

#Init Anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
