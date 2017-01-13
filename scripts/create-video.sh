TOKEN="BAhJIiU5ZWM2YTQ5ZjhhNDFhMDA0ZTNlZmM1YzBiMGRjZDZlMAY6BkVG--b2980646bb59ac6120d8eb9409e8a799fcfdf741"
YTID="Nm2LwG8Jbio"

API="http://localhost:4741"
URL_PATH="/videos"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "video": {
      "ytid": "'"${YTID}"'"
    }
  }'
