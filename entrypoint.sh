#!/bin/bash

URL=$1
LEVEL=${2:-"error"}

RESULT=$(pa11y $URL -l $LEVEL -r json | jq length)

echo "::set-output name=count::$RESULT"

if [ "$RESULT" -gt 0 ]; then
	exit 1
else
	exit 0
fi
