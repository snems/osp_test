#!/bin/bash
LOG="${1:-build.log}"

if [ ! -f "$LOG" ]; then
    echo "No such file: $LOG" >&2
    exit 2
fi

COUNT=$(grep -cE ':[0-9]+:[0-9]+: warning:' "$LOG")

echo "Warnings in $LOG: $COUNT"
