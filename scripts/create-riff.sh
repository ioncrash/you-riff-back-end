TOKEN="BAhJIiU5ZWM2YTQ5ZjhhNDFhMDA0ZTNlZmM1YzBiMGRjZDZlMAY6BkVG--b2980646bb59ac6120d8eb9409e8a799fcfdf741"
USER_ID="1"
VIDEO_ID="1"
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
