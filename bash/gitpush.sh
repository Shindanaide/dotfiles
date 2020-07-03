#!/bin/bash
# A simple shell script to group git commands (add, commit, push)

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

branch=$(git branch | cut -c3- | dmenu -p "Select the branch to push: ")

git push origin $branch

read
