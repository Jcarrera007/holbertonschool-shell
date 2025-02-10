#!/bin/bash

if [[ $(git status) ]];
then
	read -p "File name: " file
	chmod +x $file
	git add .
	read -p "The commit message: " message
	git commit -m "$message"
	git push
fi
