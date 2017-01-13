ID="4"
TOKEN="BAhJIiUyYjljNDhjMTljNGIwN2M5NmZjMWZlMWUzZWIwMDE1YQY6BkVG--3bea207d9fc9497c5c5de941a7656ff1e0c4fbee"
USER_ID="3"
YTID="g3a4jA0jfrk"
TEXT="tee hee"
STAMP="3"
FLAGGED="false"

API="http://localhost:4741"
URL_PATH="/riffs"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
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
