#!/usr/bin/env sh

git fetch --quiet origin 'refs/tags/*:refs/tags/*'
git tag -l | \
jq --raw-input '.' | \
jq --slurp --compact-output '[.[] | select(test("^v[0-9]")) | ltrimstr("v")]'
