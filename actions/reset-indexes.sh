#!/bin/bash

# Write to both stderr and log file
{
    echo "===== $(date) ====="
    echo "Debug: Script is being executed"
    echo "Debug: Current directory is $(pwd)"
    echo "Debug: Listing directory contents:"
    ls -la
} | tee -a /data/fulcrum.log >&2

set -e

# Check if indexes directory exists
if [ -d "/data/indexes" ]; then
    echo "Found indexes directory, removing contents..." | tee -a /data/fulcrum.log >&2
    rm -rf /data/indexes/*
else
    echo "Warning: /data/indexes not found!" | tee -a /data/fulcrum.log >&2
fi
    
# Output success message with ALL required fields
echo '{"version": "0", "success": true, "copyable": false, "message": "Action complete - check fulcrum.log for details", "qr": false, "code": 0}'
