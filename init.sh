#! /usr/bin/env sh

set -e

echo "use flake" > .envrc
echo "PATH_add ./bin" >> .envrc
direnv allow # Install direnv or nix-direnv first

git init
git config user.signingkey 0xE1D631009F9086E1

forester build forest.toml
cd ./output/
git init
git config user.signingkey 0xE1D631009F9086E1
