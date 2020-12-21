#!/usr/bin/env bash

# local serve
# gitbook serve

gitbook build

cd "./_book"


move ./_book ./note
rm -rf .idea
rm -rf package.json
rm -rf package-lock.json
rm -rf .DS_Store
rm -rf LICENSE
rm -rf zbuild.sh
rm -rf zpublish.sh
rm -rf zserver.sh

cd ..

cp -R "./_book/" "../note/"

git add --all

git commit -am "$(date '+%Y-%m-%d %H:%M:%S') default commit message"

git push

#--------------------------------------------------------------------------------

cd "../note"

# git config user.name "stonej00" && git config user.email "stone000807@gmail.com"

rm -rf .idea
rm -rf package.json
rm -rf package-lock.json
rm -rf .DS_Store
rm -rf LICENSE
rm -rf zbuild.sh
rm -rf zpublish.sh
rm -rf zserver.sh

git add --all

git commit -am "$(date '+%Y-%m-%d %H:%M:%S') default commit message"

git push

#--------------------------------------------------------------------------------