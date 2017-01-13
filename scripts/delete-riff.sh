ID="3"
TOKEN="BAhJIiUyYjljNDhjMTljNGIwN2M5NmZjMWZlMWUzZWIwMDE1YQY6BkVG--3bea207d9fc9497c5c5de941a7656ff1e0c4fbee"

API="http://localhost:4741"
URL_PATH="/riffs"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
