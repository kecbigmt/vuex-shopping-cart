#!/usr/bin/env sh

# This file is used to deploy Vue.js App into GitHub Pages
# ref. https://cli.vuejs.org/guide/deployment.html#github-pages

#abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:kecbigmt/kecbigmt.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:kecbigmt/vuex-shopping-cart.git master:gh-pages

cd -