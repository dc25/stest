  rm -rf _site
  jekyll build
  git branch -D gh-pages
  git checkout --orphan gh-pages
  git rm -rf .
  git --work-tree _site/ add .
  git --work-tree _site commit -a -m 'gh-pages commit'
  git --work-tree _site push -f origin gh-pages
  git checkout master
