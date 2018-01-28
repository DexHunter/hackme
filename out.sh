#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "need to commit current branch"
    exit 1;
fi

echo "deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public

echo "checking out <gh-pages> into public"
git worktree add -B gh-pages public origin/gh-pages

echo "removing /public"
rm -rf public/*

echo "generating site"
hugo

echo "updating <gh-pages>"
cd public && git add --all && git commit -m "new publish" && git push && cd ..
