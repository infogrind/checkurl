#!/bin/bash

# Here we make some assumptions, that the following URLs are always available.
LEGIT="https://www.google.com https://www.facebook.com \
	https://www.twitter.com"
BOGUS="http://www.asiojrandomblabla.com http://eweas.sdfs.net \
	http://www33.bumbalabalabumm.org"

ERROR=0

for url in $LEGIT; do
	echo -n "Testing $url..."
	./checkurl.sh "$url"
	if [ $? -eq 0 ]; then
		echo OK
	else
		echo FAIL
		ERROR=1
	fi
done

for url in $BOGUS; do
	echo -n "Testing $url..."
	./checkurl.sh "$url"
	if [ $? -ne 0 ]; then
		echo OK
	else
		echo FAIL
		ERROR=1
	fi
done

echo ""
if [ $ERROR -eq 1 ]; then
	echo "Some tests failed!"
else
	echo "All tests passed!"
fi
