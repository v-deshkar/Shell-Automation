#!/usr/bin/env bash
# Tail and flag lines containing ERROR from an app log
log="${1:-/var/log/app/app.log}"
echo "Monitoring $log (Ctrl+C to stop)"
tail -Fn0 "$log" | while read line; do
  echo "$line" | grep -q "ERROR" && echo "[ERROR] $line"
done
