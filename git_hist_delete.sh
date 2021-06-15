#!/bin/bash

remote_url=$(git remote -v | awk '{print $2}' | sed -n 1p)
rm -rf .git
git init
git add .
git commit -m "first commit"
git remote add origin $remote_url
git push -u origin master -f
#git filter-branch --tree-filter "git rm -f --cached --ignore-unmatch -r ./" HEAD
#git filter-branch --index-filter "git rm -f --cached --ignore-unmatch -r ./" HEAD
#git gc --aggressive --prune=now
#git push -f

