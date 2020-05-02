#!/usr/bin/env sh

# abort on errors
set -e

# last commit message
lastCommitMsg=$(git log -1 --pretty=%B | cat)

# install
npm install

# lint check
npm run lint

# build
npm run build

# if you are deploying to a custom domain
echo 'study.jongwony.com' > dist/CNAME

# deploy dist work-tree
git checkout --orphan gh-pages
git --work-tree dist add --all
git --work-tree dist commit -m "$lastCommitMsg"
git push -f origin HEAD:gh-pages
git checkout -f master
git branch -D gh-pages
