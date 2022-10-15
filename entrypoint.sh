#!/bin/bash
set -euo pipefail

value=$(props "$@")
echo "value=$value" >> $GITHUB_OUTPUT
