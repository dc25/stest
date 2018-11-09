#! /bin/bash
git --work-tree=_site checkout publish
rm -rf  _site 
jekyll build
git --work-tree=_site add --all 
git --work-tree=_site commit -m "autogen: update site" 
git --work-tree=_site checkout master
# git --git-dir=.git --work-tree=_site push
