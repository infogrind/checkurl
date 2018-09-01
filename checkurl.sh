#!/bin/bash

CURL=curl
URL="$1"

if [ -z "$URL" ]; then
	echo "Syntax error." >&2
	echo "Usage: $(basename $0) <url>" >&2
	exit 2
else
	"$CURL" --output /dev/null --silent --head --fail "$URL"
fi	
