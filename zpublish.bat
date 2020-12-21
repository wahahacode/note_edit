@echo off

# local serve
# gitbook serve

gitbook build

cd "$HOME/git_repository/note_edit/_book"

rm -rf .idea
rm -rf package.json
rm -rf package-lock.json
rm -rf .DS_Store
rm -rf LICENSE
rm -rf zbuild.sh
rm -rf zpublish.sh
rm -rf zserver.sh

cd "$HOME/git_repository/note_edit"

cp -R "$HOME/git_repository/note_edit/_book/" "$HOME/git_repository/note/"

git add --all

git commit -am "$(date '+%Y-%m-%d %H:%M:%S') default commit message"

git push

#--------------------------------------------------------------------------------

cd "$HOME/git_repository/note"

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

/usr/local/bin/git push

#--------------------------------------------------------------------------------

pause