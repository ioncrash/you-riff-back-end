TOKEN="BAhJIiUyM2VlNzhlOWU4NTFhZDAxMjg3YmYyNTgwNTQyZTc4YgY6BkVG--e5a705dec773cd4b2423f4714f8d97f3e1b782d7"
USER_ID="100"
VIDEO_ID="2"
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
      "video_id": "'"${VIDEO_ID}"'",
      "text": "'"${TEXT}"'",
      "stamp": "'"${STAMP}"'",
      "flagged": "'"${FLAGGED}"'"
    }
  }'
