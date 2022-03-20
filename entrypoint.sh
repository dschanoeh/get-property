#!/bin/sh -l
set -euo pipefail

value=$(props "$@")
echo "::set-output name=value::$value"