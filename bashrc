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

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/plan9/bin:$HOME/.local/bin:$HOME/bin; export PATH
PLAN9=/usr/local/plan9 export PLAN9
font=/usr/local/plan9/font/fixed/unicode.10x20.font export font

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

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

source ~/.aliases

#--------------------#
# Plugins
#--------------------#

# fzf
if [[ -d '/usr/local/share/examples/fzf/' ]]; then
    source /usr/local/share/examples/fzf/shell/completion.bash
    source /usr/local/share/examples/fzf/shell/key-bindings.bash
fi
