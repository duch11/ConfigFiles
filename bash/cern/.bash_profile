# CERN PC:
# Common:
alias lsa='ls -A --color=always --group-directories-first -X'
alias ls='ls --color=always --group-directories-first -X'
alias pyv='python --version'
alias pcv='uname -snr'

#versions
alias cm_setup='source /afs/cern.ch/atlas/project/tdaq/cmake/cmake_tdaq/bin/cm_setup.sh'
alias setup_cm_setup_nightly='source /afs/cern.ch/atlas/project/tdaq/cmake/cmake_tdaq/bin/cm_setup.sh nightly'
alias tdaqcode='(setup_cm_setup_nightly && env | grep PYTHONPATH | grep -v TDAQ_PYTHONPATH > pypath) && export pypath && code CastorScript'

#bashrc and profile
alias bashrc='nano /home/jholm/.bashrc'
alias bashprofile='nano /home/jholm/.bash_profile'

#go to script
alias dev='cd /home/jholm/CastorScript'

# Tests:
alias tst='/home/jholm/CastorScript/runtests.sh'
alias runtests='tst'

#git pull  and test
alias utst='git add * && git stash && git pull && tst'
alias runtestsupdated='utst'

# fix ssh
alias fixssh='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/gitlab-cernkey'


#PS1='\w lolo $ '

# Path to the bash it configuration
export BASH_IT="/home/jholm/code/scripts/bash-it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='powerline'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
#export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
#export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
#export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
