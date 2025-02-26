#!/bin/sh

# Check for --debug flag
if [ "$1" = "--debug" ]; then
  exec os_server "$@"
else
  exec os_server "$@" >/dev/null 2>&1 &
fi
