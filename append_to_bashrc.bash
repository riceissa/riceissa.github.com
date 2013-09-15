### BEGIN append_to_bashrc.bash

# Save the file as "append_to_bashrc.bash", and append the contents to
# .bashrc using the command:
#    cat append_to_bashrc.bash >> ~/.bashrc

PS1='[\u:\W]> '

alias temp='sensors | grep -v "N/A"'
alias swapswap='sudo swapoff -a && sudo swapon -a'
alias {update,upgrade}='sudo aptitude update && sudo aptitude upgrade'

# For git

alias stat='git status'
alias gpull='git pull origin master'
alias gpush='git push origin master'

### END append_to_bashrc.bash
