# save each command right after it has been executed
# export HISTSIZE=10000
# export HISTFILESIZE=10000
PROMPT_COMMAND='history -a'

# custom PS1 for git
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# c: nice tab separated visualization
alias c="column -s$'\t' -t -n"

# c folloed by less without breaklines
cless() {
    c "$1" | less -SN
}
