#！/usr/bin/env sh

set -e

forester build forest.toml

cd output

git config user.signingkey 0xE1D631009F9086E1
git add -A .
git commit -m 'deploy'

git remote add origin git@github.com:sezryo/sezryo.github.io.git
git branch -M main
git push -f origin main

cd -
