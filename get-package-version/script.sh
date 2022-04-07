#!/usr/bin/env sh

2>/dev/null jq --raw-output '.version | select(.)' package.json
