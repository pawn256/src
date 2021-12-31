#!/bin/bash

# ssh -T git@github.com; // if this send "Hi pawn256", ssh connect is success.
# // ~/.ssh/config
# // Host github github.com
# //   HostName github.com
# //   IdentityFile ~/.ssh/id_git_rsa # The key file name in this line is what you use.
# //   User git
# git remote set-url origin git@github.com:pawn256/src.git
remote_url=$(git remote -v | awk '{print $2}' | sed -n 1p)
rm -rf .git
git init
git add *.rar
git add gocryptfs
git add git_hist_delete.sh
git commit -m "first commit"
git remote add origin $remote_url
git branch main
git push -u origin main -f
#git filter-branch --tree-filter "git rm -f --cached --ignore-unmatch -r ./" HEAD
#git filter-branch --index-filter "git rm -f --cached --ignore-unmatch -r ./" HEAD
#git gc --aggressive --prune=now
#git push -f

