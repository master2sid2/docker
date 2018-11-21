#!/bin/sh
sentry upgrade --noinput
sentry createuser --no-input --email test@test.com --password 12345678 --superuser
$1 $2 $3
