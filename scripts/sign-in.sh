#!/bin/bash

EMAIL="herp@derp.com"
PASSWORD="herp"

EMAILA="beep@thing.com"
PASSWORDA="beep"

API="http://localhost:4741"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAILA}"'",
      "password": "'"${PASSWORDA}"'",
      "password_confirmation": "'"${PASSWORDA}"'"
    }
  }'

echo
