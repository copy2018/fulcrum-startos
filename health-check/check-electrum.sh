#!/bin/bash

DURATION=$(</dev/stdin)
if ((DURATION <= 5000)); then
    exit 60
fi

json_version='{"jsonrpc": "2.0", "method": "server.version", "id": 0}'
if echo "$json_version" | netcat -w 1 127.0.0.1 50003 &>/dev/null; then
    exit 0
fi

fulcrum_log="$(tail -n1 /data/fulcrum.log)"
if [ -z "$fulcrum_log" ]; then
   echo "Fulcrum interface is unreachable" >&2
   exit 1
fi

# echo log message, removing timestamp and <Controller>
# echo "${fulcrum_log#*> }" >&2
# exit 61
