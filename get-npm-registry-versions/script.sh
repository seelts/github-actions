#!/usr/bin/env sh

PACKAGE=$1

{
  npm view --json "$PACKAGE" versions | \
  jq --compact-output '.'
} \
2>/dev/null
