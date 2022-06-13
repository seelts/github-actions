#!/usr/bin/env sh

JSON=$1

2>/dev/null jq --null-input --raw-output --argjson json "$JSON" '$json'
