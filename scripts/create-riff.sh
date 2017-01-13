TOKEN="BAhJIiU2MGZiMGUxNGExMTYyY2VhOTZjNmU4OWMxZmVlOTVkZQY6BkVG--f98e72ee004be66badff4334afb077dd041d49e4"
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
