TOKEN="BAhJIiUyYjljNDhjMTljNGIwN2M5NmZjMWZlMWUzZWIwMDE1YQY6BkVG--3bea207d9fc9497c5c5de941a7656ff1e0c4fbee"
USER_ID="2"
YTID="g3a4jA0jfrk"
TEXT="This is rif 1000"
STAMP="3"
FLAGGED="false"

API="http://localhost:4741"
URL_PATH="/riffs"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "riff": {
      "user_id": "'"${USER_ID}"'",
      "text": "'"${TEXT}"'",
      "ytid": "'"${YTID}"'",
      "text": "'"${TEXT}"'",
      "stamp": "'"${STAMP}"'",
      "flagged": "'"${FLAGGED}"'"
    }
  }'
