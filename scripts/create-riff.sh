TOKEN="BAhJIiU0MTVhYWViNWMzMjFhZDA4MmYyZmFhMzA1MDhmM2Y1MAY6BkVG--335ad918347ef3e75d74dd1b6e45ff2926fbe54e"
USER_ID="1"
VIDEO_ID="1"
TEXT="This is rif 1000"
STAMP="30"
FLAGGED="false"

API="https://quiet-lowlands-87275.herokuapp.com"
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
