#--------------------#
#-thedaemon's bashrc-#
#--------------------#

#--------------------#
# Bootstraping
#--------------------#
# If not running interactively, don't do anything.
if [[ $- != *i* ]] ; then
    return
fi
#--------------------#
# Basic setup
#--------------------#

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/plan9/bin:/usr/local/libexec/ccache:$HOME/.local/bin:$HOME/bin:$PATH
export PLAN9=/usr/local/plan9
export font=/usr/local/plan9/font/kurinto/kurinto.18.mono.font
export CCACHE_PATH=/usr/bin:/usr/local/bin
export CCACHE_DIR=/usr/.ccache
export XDG_RUNTIME_DIR=/var/run/usr/`id -u`
export RANGER_LOAD_DEFAULT_RC=FALSE
export EDITOR=micro

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Negative value means infinite
HISTSIZE=-666

# Append to the history file, don't overwrite it.
shopt -s histappend

# custom prompt with colors
# the [1 is bold [0 is regular thickness
# color chart black 30,red 31, green 32, brown 33, blue 34, purple 35, cyan 36
# \W is current directory
# \h is host name
#PS1="( \e[1;31m😈\h \e[m\e[0;35m\W\e[m ) "
#PS1="⋐ \h ∙\e[m\e[0;36m \W\e[m ⋑ "
PS1=" \h ∙\e[m\e[0;36m \W\e[m "

# Black and White, useful for plan9ports
# I use this mainly for simplicities sake
#PS1=" \h ∙ \W "

# changes pager to a colorful one
PAGER=most export PAGER

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [[ -n $force_color_prompt ]]; then
    if [[ -x /usr/bin/tput ]] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
            color_prompt=yes
    else
            color_prompt=
    fi

fi
# Enable Bash completion.
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

#--------------------#
# Aliases
#--------------------#

source ~/.bash_aliases

#--------------------#
# Plugins
#--------------------#

# fzf
if [[ -d '/usr/local/share/examples/fzf/' ]]; then
    source /usr/local/share/examples/fzf/shell/completion.bash
    source /usr/local/share/examples/fzf/shell/key-bindings.bash
fi

#--------------------#
#-thedaemon's bashrc-#
#--------------------#