# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
eval "$(/opt/homebrew/bin/brew shellenv)"


export PATH=$PATH:$HOME/bin

alias gs="gitScript.sh"

alias p="python3"

alias pip="pip3"

alias pySetup=". pySetup.sh"
