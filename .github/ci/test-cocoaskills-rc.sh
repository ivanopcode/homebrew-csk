#!/usr/bin/env bash
set -euo pipefail

formula="${1:-ivanopcode/csk/cocoaskills-rc}"

brew audit --strict --online "$formula"
brew install --build-from-source "$formula"
brew test "$formula"

csk_path="$(command -v csk)"
test -x "$csk_path"
csk --version

printf 'csk_path=%s\n' "$csk_path"
