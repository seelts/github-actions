#!/usr/bin/env sh

grep --only-matching --no-messages '"version": "[^"]*' package.json | grep --only-matching '[^"]*$'
