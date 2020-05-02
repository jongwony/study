#!/usr/bin/env sh

# abort on errors
set -e

# last commit message
lastCommitMsg=$(git log -1 --pretty=%B | cat)

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'study.jongwony.com' > CNAME

# init
git init
git add -A
git commit -m "$lastCommitMsg"

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:jongwony/study.git master:gh-pages

cd -
