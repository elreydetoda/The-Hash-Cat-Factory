#!/usr/bin/env bash

# https://elrey.casa/bash/scripting/harden
set -${-//[sc]/}eu${DEBUG:+xv}o pipefail

function main() {
  source "$(pipenv --venv)/bin/activate"
}

# https://elrey.casa/bash/scripting/main
# not using this because vscode passes it like this:
# [[ bash = \.\v\s\c\o\d\e\/\p\i\p\e\n\v\_\a\c\t\i\v\a\t\i\o\n\.\s\h ]]
# if [[ "${0}" = "${BASH_SOURCE[0]:-bash}" ]] ; then
#   main "${@}"
# fi
main "${@}"
