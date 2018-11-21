#!/bin/sh
sentry upgrade --noinput
sentry createuser --no-input --email test@test.com --superuser --no-password
$1 $2 $3
