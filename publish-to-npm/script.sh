#!/usr/bin/env sh

npm publish \
  ${NPM_PACKAGE_PATH:+"$NPM_PACKAGE_PATH"} \
  ${NPM_PRIVATE:---access public} \
  ${NPM_CONFIG_PATH:+--userconfig "$NPM_CONFIG_PATH"} \
  ${NPM_DRY_RUN:+--dry-run}
