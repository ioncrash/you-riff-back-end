TOKEN="BAhJIiU0ZDEyNDczOWNmNjU5NDk1YTIzYmY2N2MyMTFlZDc4MAY6BkVG--c475de7c8d5aa59b5da9741c4bf65a324b568659"
USER_ID="1"
YTID="g3a4jA0jfrk"
TEXT="This is rif 1000"
STAMP="3"
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
      "ytid": "'"${YTID}"'",
      "text": "'"${TEXT}"'",
      "stamp": "'"${STAMP}"'",
      "flagged": "'"${FLAGGED}"'"
    }
  }'
