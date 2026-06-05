#!/usr/bin/env bash
set -eu

fail() {
  echo "FAIL: $*"
  exit 1
}

pass() {
  echo "PASS: $*"
}

command -v python3.12 >/dev/null 2>&1 || fail "missing python3.12"
python3.12 --version | grep 'Python 3.12' >/dev/null 2>&1 || fail "python3.12 is not Python 3.12"

command -v c++ >/dev/null 2>&1 || fail "missing c++ compiler"