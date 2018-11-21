#!/bin/sh
/usr/local/bin/sentry upgrade --noinput && /usr/local/bin/sentry createuser --email test@test.com --password 12345678 --superuser --no-input
$1 $2 $3
