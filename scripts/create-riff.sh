TOKEN="BAhJIiUzYzI1NTliM2EzZjE3NjJiY2I3OTc5OTg5MTNjZDk1OQY6BkVG--8b13fd5ddb5ca57c7bc8e746422374d249637bf1"
USER_ID="1"
YTID="g3a4jA0jfrk"
TEXT="This is a riff"
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
