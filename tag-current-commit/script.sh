#!/usr/bin/env sh

TAG=$1

if [ "$TAG" = "" ]; then
  exit 1
fi

git tag "$TAG"
git push --tags
