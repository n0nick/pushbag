#!/usr/bin/env bash

TFILE=`mktemp /tmp/pushbag.XXXX`
cp ./README.md $TFILE

git checkout gh-pages
POSTFILE=`ls ./_posts/ | head -1`

cp $TFILE ./_posts/$POSTFILE
git add .
git commit --all -m "Merge page content from master"
git push

git checkout master
echo "Done."
