#!/usr/bin/env sh

TAG=$1

if [ "$TAG" = "" ]; then
  exit 1
fi

git push origin :refs/tags/"$TAG"
git tag --delete "$TAG"
