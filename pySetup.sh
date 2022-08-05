#!/bin/bash

# https://stackoverflow.com/questions/13122137/how-to-source-virtualenv-activate-in-a-bash-script
# without the '.' it creates a new shell when running these commands and leaves it, which means 
# the virtualenv gets activated elsewhere
if [[ "$0" = "$BASH_SOURCE" ]]; then
	echo "Needs to be run using source: . pySetup"
 
else
  git init
	python3 -m venv my_env
	source my_env/bin/activate

fi
