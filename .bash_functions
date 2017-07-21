#!/bin/bash

# Create new web project folder and grab html5 boilerplate
website() {
mkdir $1
cd $1
git init
git remote add origin https://github.com/Gazaunga/HTML5-Boilerplate.git
git pull origin master
ls -a
$EDITOR index.html
}

# List contents after cd
cd()
{
 builtin cd "$*" && ls
}

# Create a new directory and enter it
mkd() { mkdir $1 && cd $1; }

