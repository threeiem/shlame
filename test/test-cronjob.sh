#!/bin/sh

. "$1"
exec /bin/env -i "$SHELL" -c ". $1; $2"
