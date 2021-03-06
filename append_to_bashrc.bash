### BEGIN append_to_bashrc.bash

# Save the file as "append_to_bashrc.bash", and source the contents using:
#     source ~/projects/riceissa.github.com/append_to_bashrc.bash
# or something similar inside ".bashrc".

PS1='[\u:\W]> '

alias temp='sensors | grep -v "N/A"'
alias swapswap='sudo swapoff -a && sudo swapon -a'
alias {update,upgrade}='sudo aptitude update && sudo aptitude upgrade'

# For git

alias gstat='git status'
alias gadd='git add'
alias gpull='git pull origin master'
alias gpush='git push origin master'
alias gdiff='git diff --color'
alias gdiffstage='git diff --cached --color'

# Surfraw

alias yjisho='surfraw duckduckgo -browser=elinks \!yjisho '
alias jisho='surfraw duckduckgo -browser=elinks \!yjisho '
alias j='surfraw duckduckgo -browser=elinks \!yjisho '

alias duck='surfraw duckduckgo -browser=elinks '

alias d='surfraw duckduckgo -browser=elinks \!d '
alias define='surfraw duckduckgo -browser=elinks \!d '

alias google='surfraw google -browser=elinks '
alias goog='surfraw google -browser=elinks '
alias g='surfraw google -browser=elinks '

### END append_to_bashrc.bash
