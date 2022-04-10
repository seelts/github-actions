#!/usr/bin/env sh

JSON1=$1
JSON2=$2

2>/dev/null jq --null-input --argjson json1 "$JSON1" --argjson json2 "$JSON2" '$json1 == $json2'
