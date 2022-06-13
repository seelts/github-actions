#!/usr/bin/env sh

FIELD=$1
PACKAGE=${TEST_PACKAGE_FILEPATH:-package.json}

{
  jq --arg field "$FIELD" '.[$field]' "$PACKAGE" \
  || \
  echo null
} \
2>/dev/null
