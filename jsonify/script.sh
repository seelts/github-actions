#!/usr/bin/env sh

VALUE=$1

2>/dev/null jq --null-input --arg value "$VALUE" '$value'
