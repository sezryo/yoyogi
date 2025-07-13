#！/usr/bin/env sh

set -e

forester build forest.toml

cd output

git add -A .
git commit -m 'deploy'

git remote add origin git@github.com:sezryo/yoyogi.git
git branch -M main
git push -f origin main

cd -
