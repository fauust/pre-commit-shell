#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
((DEBUG == 1)) && set -o xtrace

command -v shfmt &>/dev/null || {
  echo >&2 "shfmt command not found"
  exit 1
}

shfmt "$@"
