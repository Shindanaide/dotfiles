#!/bin/bash
# A simple shell script to group git commands (add, commit, push)
echo 'Starting script...'
git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

branch=$(git branch | cut -c3- | slmenu -p "Select the branch to push: ")

git push origin $branch

echo 'Press any key to exit...'
read
