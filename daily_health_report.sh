#!/usr/bin/env bash
# Quick health snapshot
echo "=== $(date) ==="
uptime
echo
echo "[TOP CPU]"
ps -eo pid,comm,pcpu,pmem --sort=-pcpu | head -n 6
echo
echo "[DISK]"
df -h
