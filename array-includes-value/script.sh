#!/usr/bin/env sh

ARRAY=$1
VALUE=$2

2>/dev/null \
jq --null-input --argjson array "$ARRAY" --argjson value "$VALUE" \
'$array | any(. == $value)'
