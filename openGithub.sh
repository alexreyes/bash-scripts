#!/bin/bash

# Purpose: I got tired of having to find the repo I was working in on github by manually going to the github site, so I made this little script to automate that.
#
# All you have to do is run github and it'll open the repo on github (or at least, that's the way I configured the alias)


# Known issues:
# - Opens an empty finder window if it's not a git repo
# - Only works on mac (linux doesnt have an open command)
# But, this is just for me so I'm not fixing that stuff anyway.

remote_url=$(git remote -v | grep "origin" | grep "(fetch)" | awk '{print $2}')

# Check if the URL is in SSH format
if [[ $remote_url == git@* ]]; then
    # Transform from SSH format to HTTPS format
    remote_url="${remote_url/://}"         # Replace ':' with '/'
    remote_url="${remote_url%.git}"         # Remove .git at the end
    remote_url="https://${remote_url#git@}"  # Remove git@ prefix and prepend https://
fi

open "$remote_url"
