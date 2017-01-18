TOKEN="BAhJIiU0MTVhYWViNWMzMjFhZDA4MmYyZmFhMzA1MDhmM2Y1MAY6BkVG--335ad918347ef3e75d74dd1b6e45ff2926fbe54e"
YTID="Nm2LwG8Jbio"

API="https://quiet-lowlands-87275.herokuapp.com"
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
