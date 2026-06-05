#!/usr/bin/env bash
set -euo pipefail

TARGET="${TARGET:-distro}"
DISTRIBUTION="${DISTRIBUTION:-helmet-core}"
PACKAGE_SET="${PACKAGE_SET:-default}"
CLEAN_LEVEL="${CLEAN_LEVEL:-none}"

