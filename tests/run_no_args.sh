#!/bin/bash
# Basic test to ensure run.sh requires a domain argument
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
cd "$ROOT_DIR"

output=$(./run.sh 2>&1) && status=$? || status=$?

if [ "$status" -eq 0 ]; then
    echo "Expected non-zero exit status when no arguments are given" >&2
    exit 1
fi

echo "$output" | grep -iq "usage" || {
    echo "Expected usage information in output" >&2
    exit 1
}

printf 'Test passed.\n'
