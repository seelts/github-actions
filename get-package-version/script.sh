#!/usr/bin/env sh

grep --only-matching --no-messages '"version": "[^"]*' package_.json
 #| grep --only-matching '[^"]*$'
