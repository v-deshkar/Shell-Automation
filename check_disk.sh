#!/usr/bin/env bash
# Alerts if any filesystem crosses 80% usage
threshold=80
df -P | awk 'NR>1 {print $5 " " $6}' | while read use mount; do
  pct=${use%%%}
  if [ "$pct" -ge "$threshold" ]; then
    echo "ALERT: $mount at ${pct}%"
  fi
done
