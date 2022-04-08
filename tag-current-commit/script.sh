#!/usr/bin/env sh

TAG=$1
git tag "$TAG"
git push --tags
