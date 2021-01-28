#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
((DEBUG == 1)) && set -o xtrace

command -v shellcheck &>/dev/null || {
  echo >&2 "shellcheck command not found"
  exit 1
}

shellcheck "$@"
