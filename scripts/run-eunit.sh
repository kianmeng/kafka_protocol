#!/bin/bash

if [ ! $# -eq 1 ]; then
  echo "Usage: $0 <module_name>"
  exit 1
fi

CWD="$(dirname $0)"

erl -pa $CWD/../_build/test/lib/*/ebin \
    -pa $CWD/../_build/test/lib/*/test \
    -eval "eunit:test($1, [verbose])"
