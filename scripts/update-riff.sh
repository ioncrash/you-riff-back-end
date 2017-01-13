TOKEN="BAhJIiUzYzI1NTliM2EzZjE3NjJiY2I3OTc5OTg5MTNjZDk1OQY6BkVG--8b13fd5ddb5ca57c7bc8e746422374d249637bf1"
ID="1"
TOKEN="BAhJIiUzYzI1NTliM2EzZjE3NjJiY2I3OTc5OTg5MTNjZDk1OQY6BkVG--8b13fd5ddb5ca57c7bc8e746422374d249637bf1"
USER_ID="1"
YTID="g3a4jA0jfrk"
TEXT="This is another riff"
STAMP="3"
FLAGGED="false"

API="http://localhost:4741"
URL_PATH="/change-password"
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
