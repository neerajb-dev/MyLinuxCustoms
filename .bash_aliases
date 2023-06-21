# ls-deluxe
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# docker
alias dockList='sudo docker ps -a'

dockRun() {
  	read -p "Please enter the Docker image to use: " image
	
	if [ "$image" = "postgres" ]; then
  		read -p "Please enter the container name: " name
  		read -p "Please enter the $image username: " user
  		read -p "Please enter the $image password: " password
		sudo docker run --name "$name" -e POSTGRES_USER="$user" -e POSTGRES_PASSWORD="$password" -p 5432:5432 -d "$image"
	else 
		echo "Exiting..."	  
	fi

	# Display the details of the last created container
    	sudo docker ps -l

	# Prompt the user
    	read -p "Press 's' to start the container, or any other key to exit: " choice

    	# Start or exit
    	if [ "$choice" = "s" ]; then
        	sudo docker start "$name"
    	else
        	echo "Exiting..."
    	fi	
}

dockRunPostgres() {
  		read -p "Please enter the container name: " name
		read -p "Please enter the postgres username: " user
  		read -p "Please enter the postgres password: " password
		sudo docker run --name "$name" -e POSTGRES_USER="$user" -e POSTGRES_PASSWORD="$password" -p 5432:5432 -d postgres
		
		# Display the details of the last created container
    		sudo docker ps -l

		# Prompt the user
    		read -p "Press 's' to start the container, or any other key to exit: " choice

    		# Start or exit
    		if [ "$choice" = "s" ]; then
        		sudo docker start "$name"
    		else
        		echo "Exiting..."
    		fi	
}

dockStart() {
	sudo docker start "$1"
}

dockStop() {
	sudo docker stop "$1"
}

dockRm() {
	sudo docker rm -f "$1"
}

# project aliases
# run development server
alias runDev='yarn run dev'

# export extension
alias extexp='yarn run export'

# switch themes
# Dark Theme
nox() {
	bash -c '/home/nrjbwj/Desktop/.dark.sh'
}

# Light Theme
lumos() {
	bash -c '/home/nrjbwj/Desktop/.light.sh'
}

# run checks then commit changes 
precommit() {
	npm run check-format 
       	 if [ $? -ne 0 ]; then 
       	   	echo "formating....."  
       	   	npm run format && npm run check-lint
       	 else 
        	npm run check-lint	
       	 fi

	if [ $? -eq 0 ]; then 
	  	read -p "No errors found - Committing changes. Enter Commit Message: " msg
		git add . && git commit	-m "$msg"
	else 
		echo "ES Lint check failed, please solve above errors and try again"
	fi
}
