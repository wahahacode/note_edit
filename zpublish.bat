@echo off
rem gitbook build
xcopy "./_book" "../note" /y /e
git add --all
git commit -am "default commit message"
git push
cd "../note"
git add --all
git commit -am "default commit message"
git push