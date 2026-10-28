#!/usr/bin/env bash
# Shell utilities
set -euo pipefail

usage() {
  cat <<EOF
usage: $0 [-k key] [-v value] [-h]

  -k  item key
  -v  item value
  -h  this help
EOF
}

KEY=""
VALUE=""
while getopts "k:v:h" opt; do
  case "$opt" in
    k) KEY="$OPTARG" ;;
    v) VALUE="$OPTARG" ;;
    h) usage; exit 0 ;;
    *) usage; exit 1 ;;
  esac
done

if [[ -z "$KEY" ]]; then
  echo "nothing to do" >&2
  exit 1
fi

echo "$KEY=$VALUE"
