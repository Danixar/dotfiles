echo "Welcome to zsh!"

#############################################################################################################
# Aliases and Functions

# etc
alias c=clear

# cd
cd(){
	if [[ "$#" -eq 0 ]]
	then
		builtin cd ~
	else
		builtin cd "$1"
	fi
	pwd
	ls -a
}
alias ..='cd ..'
alias ~='cd'

# git
alias push='git push origin'
alias pull='git pull origin'
commit(){
	if [[ "$#" -eq 1 ]]
	then
		git add .
		git commit -m "$1"
	else
		echo "Error: Missing Argument"
	fi
}
clone(){
	if [[ "$#" -eq 1 ]]
	then
		git clone "$1"
		NAME=$(echo "$1" | awk -F / '{print $(NF)}' | sed 's/.git//')
		cd $NAME
	else
		echo "Error: Missing Argument"
	fi
}

#############################################################################################################
# ENV Variables

if [ -f ./secrets.sh ]; then
  source ./secrets.sh
elif [ -f $HOME/secrets.sh ]; then
  source $HOME/secrets.sh
fi
