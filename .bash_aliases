# ls-deluxe aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# docker
dockList() {
	# pass options 
	sudo docker ps $1  
}

dockRun() {
  	read -p "Please enter the Docker image to use: " image
	
	# Postgres is usual for me others can be handled here as well
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

# switch themes - Some Harry Potter Spells :)
# Dark Theme
nox() {
	bash -c '~/Desktop/.dark.sh'
}

# Light Theme
lumos() {
	bash -c '~/Desktop/.light.sh'
}
