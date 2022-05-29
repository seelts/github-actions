#!/usr/bin/env sh

TAG=$1

{
  git fetch --quiet origin 'refs/tags/*:refs/tags/*'

  git tag -l | \
  jq --raw-input '.' | \
  jq --slurp '.' | \
  jq --arg tag "$TAG" '. | any(. == $tag)'
} \
2>/dev/null
